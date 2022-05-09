; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/uverbs_std_types_device.c_pt.bc'
source_filename = "../drivers/infiniband/core/uverbs_std_types_device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uverbs_object_def = type { i16, ptr, i32, ptr }
%struct.anon.182 = type { i16 }
%union.anon.184 = type { ptr }
%struct.uapi_definition = type { i8, i8, %union.anon.181, %union.anon.184 }
%union.anon.181 = type { %struct.anon.183 }
%struct.anon.183 = type { i16, i8, i8, i8 }
%struct.uverbs_method_def = type { i16, i32, i32, ptr, ptr }
%struct.uverbs_attr_def = type { i16, %struct.uverbs_attr_spec }
%struct.uverbs_attr_spec = type { i8, i8, %union.anon.129, %union.anon.133 }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { i16, i16 }
%union.anon.133 = type { %struct.anon.134, [4 x i8] }
%struct.anon.134 = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.ib_uverbs_query_port_resp = type { i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.180, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.180 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.ib_odp_caps = type { i64, %struct.anon.171 }
%struct.anon.171 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.127 }
%union.anon.127 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.128, i16, i16, i8 }
%union.anon.128 = type { i64 }
%struct.ib_uverbs_file = type { %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.list_head, ptr, %struct.xarray }
%struct.ib_uverbs_device = type { %struct.refcount_struct, i32, %struct.completion, %struct.device, [2 x ptr], ptr, i32, %struct.cdev, %struct.rb_root, %struct.mutex, %struct.srcu_struct, %struct.mutex, %struct.list_head, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rb_root = type { ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.uverbs_api = type { %struct.xarray, i32, i32, i32, %struct.uverbs_api_write_method, ptr, ptr }
%struct.uverbs_api_write_method = type { ptr, i8, i8, i8 }
%struct.ib_uverbs_query_port_resp_ex = type { %struct.ib_uverbs_query_port_resp, i16, [6 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ib_uverbs_gid_entry = type { [2 x i64], i32, i32, i32, i32 }
%struct.ib_gid_attr = type { ptr, ptr, %union.ib_gid, i32, i16, i32 }
%union.ib_gid = type { %struct.anon.167 }
%struct.anon.167 = type { i64, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.149, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.166, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.149 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.166 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@ib_uverbs_object_UVERBS_OBJECT_DEVICE = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 0, ptr null, i32 7, ptr @_object_methods_UVERBS_OBJECT_DEVICE498 }, [16 x i8] zeroinitializer }, align 32
@uverbs_def_obj_device = dso_local constant { <{ { i8, i8, { %struct.anon.182, [4 x i8] }, %union.anon.184 }, %struct.uapi_definition }>, [40 x i8] } { <{ { i8, i8, { %struct.anon.182, [4 x i8] }, %union.anon.184 }, %struct.uapi_definition }> <{ { i8, i8, { %struct.anon.182, [4 x i8] }, %union.anon.184 } { i8 3, i8 0, { %struct.anon.182, [4 x i8] } { %struct.anon.182 zeroinitializer, [4 x i8] undef }, %union.anon.184 { ptr @ib_uverbs_object_UVERBS_OBJECT_DEVICE } }, %struct.uapi_definition zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@ib_lid_cpu16.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_DEVICE498 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @ib_uverbs_method_UVERBS_METHOD_GET_CONTEXT, ptr @ib_uverbs_method_UVERBS_METHOD_INVOKE_WRITE, ptr @ib_uverbs_method_UVERBS_METHOD_INFO_HANDLES, ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_PORT, ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_CONTEXT, ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_GID_TABLE, ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_GID_ENTRY], [36 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_GET_CONTEXT = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 3, i32 0, i32 4, ptr @_method_attrs_UVERBS_METHOD_GET_CONTEXT, ptr @ib_uverbs_handler_UVERBS_METHOD_GET_CONTEXT }, [44 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_INVOKE_WRITE = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 0, i32 0, i32 5, ptr @_method_attrs_UVERBS_METHOD_INVOKE_WRITE, ptr @ib_uverbs_handler_UVERBS_METHOD_INVOKE_WRITE }, [44 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_INFO_HANDLES = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 1, i32 0, i32 3, ptr @_method_attrs_UVERBS_METHOD_INFO_HANDLES, ptr @ib_uverbs_handler_UVERBS_METHOD_INFO_HANDLES }, [44 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_QUERY_PORT = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 2, i32 0, i32 2, ptr @_method_attrs_UVERBS_METHOD_QUERY_PORT, ptr @ib_uverbs_handler_UVERBS_METHOD_QUERY_PORT }, [44 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_QUERY_CONTEXT = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4, i32 0, i32 2, ptr @_method_attrs_UVERBS_METHOD_QUERY_CONTEXT, ptr @ib_uverbs_handler_UVERBS_METHOD_QUERY_CONTEXT }, [44 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_QUERY_GID_TABLE = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 5, i32 0, i32 4, ptr @_method_attrs_UVERBS_METHOD_QUERY_GID_TABLE, ptr @ib_uverbs_handler_UVERBS_METHOD_QUERY_GID_TABLE }, [44 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_QUERY_GID_ENTRY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 6, i32 0, i32 4, ptr @_method_attrs_UVERBS_METHOD_QUERY_GID_ENTRY, ptr @ib_uverbs_handler_UVERBS_METHOD_QUERY_GID_ENTRY }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_GET_CONTEXT = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.compoundliteral, ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 0, %struct.uverbs_attr_spec { i8 2, i8 0, %union.anon.129 { %struct.anon.130 { i16 4, i16 4 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 1, %struct.uverbs_attr_spec { i8 2, i8 0, %union.anon.129 { %struct.anon.130 { i16 8, i16 8 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4096, %struct.uverbs_attr_spec { i8 1, i8 16, %union.anon.129 { %struct.anon.130 { i16 -1, i16 0 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 2, i8 16, %union.anon.129 { %struct.anon.130 { i16 -1, i16 0 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_INVOKE_WRITE = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 2, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.129 { %struct.anon.130 { i16 8, i16 8 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 0, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.129 { %struct.anon.130 { i16 -1, i16 4 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 1, %struct.uverbs_attr_spec { i8 2, i8 0, %union.anon.129 { %struct.anon.130 { i16 -1, i16 0 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4096, %struct.uverbs_attr_spec { i8 1, i8 16, %union.anon.129 { %struct.anon.130 { i16 -1, i16 0 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 2, i8 16, %union.anon.129 { %struct.anon.130 { i16 -1, i16 0 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_INFO_HANDLES = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.compoundliteral.11], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 0, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.129 { %struct.anon.130 { i16 8, i16 8 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 1, %struct.uverbs_attr_spec { i8 2, i8 0, %union.anon.129 { %struct.anon.130 { i16 4, i16 4 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 2, %struct.uverbs_attr_spec { i8 2, i8 0, %union.anon.129 { %struct.anon.130 { i16 -1, i16 4 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_QUERY_PORT = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral.12, ptr @.compoundliteral.13], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 0, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.129 { %struct.anon.130 { i16 8, i16 8 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 1, %struct.uverbs_attr_spec { i8 2, i8 -96, %union.anon.129 { %struct.anon.130 { i16 48, i16 48 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_QUERY_CONTEXT = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral.14, ptr @.compoundliteral.15], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 0, %struct.uverbs_attr_spec { i8 2, i8 0, %union.anon.129 { %struct.anon.130 { i16 4, i16 4 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 1, %struct.uverbs_attr_spec { i8 2, i8 0, %union.anon.129 { %struct.anon.130 { i16 8, i16 8 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_QUERY_GID_TABLE = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 0, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.129 { %struct.anon.130 { i16 8, i16 8 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 1, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.129 { %struct.anon.130 { i16 8, i16 4 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 2, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.129 { %struct.anon.130 { i16 -1, i16 0 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 3, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.129 { %struct.anon.130 { i16 8, i16 8 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_QUERY_GID_ENTRY = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @.compoundliteral.25, ptr @.compoundliteral.26], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 0, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.129 { %struct.anon.130 { i16 8, i16 8 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 1, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.129 { %struct.anon.130 { i16 8, i16 8 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 2, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.129 { %struct.anon.130 { i16 8, i16 4 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 3, %struct.uverbs_attr_spec { i8 2, i8 -96, %union.anon.129 { %struct.anon.130 { i16 32, i16 32 } }, %union.anon.133 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.33 = private unnamed_addr constant [38 x i8] c"ib_uverbs_object_UVERBS_OBJECT_DEVICE\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [22 x i8] c"uverbs_def_obj_device\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 500, i32 30 }
@___asan_gen_.40 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 4605, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [40 x i8] c"_object_methods_UVERBS_OBJECT_DEVICE498\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 491, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant [43 x i8] c"ib_uverbs_method_UVERBS_METHOD_GET_CONTEXT\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [44 x i8] c"ib_uverbs_method_UVERBS_METHOD_INVOKE_WRITE\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [44 x i8] c"ib_uverbs_method_UVERBS_METHOD_INFO_HANDLES\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [42 x i8] c"ib_uverbs_method_UVERBS_METHOD_QUERY_PORT\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [45 x i8] c"ib_uverbs_method_UVERBS_METHOD_QUERY_CONTEXT\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [47 x i8] c"ib_uverbs_method_UVERBS_METHOD_QUERY_GID_TABLE\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [47 x i8] c"ib_uverbs_method_UVERBS_METHOD_QUERY_GID_ENTRY\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [40 x i8] c"_method_attrs_UVERBS_METHOD_GET_CONTEXT\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 433, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [41 x i8] c"_method_attrs_UVERBS_METHOD_INVOKE_WRITE\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 51, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [41 x i8] c"_method_attrs_UVERBS_METHOD_INFO_HANDLES\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 448, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [39 x i8] c"_method_attrs_UVERBS_METHOD_QUERY_PORT\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 458, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [42 x i8] c"_method_attrs_UVERBS_METHOD_QUERY_CONTEXT\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 441, i32 1 }
@___asan_gen_.95 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [44 x i8] c"_method_attrs_UVERBS_METHOD_QUERY_GID_TABLE\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 467, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 230, i32 6 }
@___asan_gen_.108 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 214, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 174, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [44 x i8] c"_method_attrs_UVERBS_METHOD_QUERY_GID_ENTRY\00", align 1
@___asan_gen_.114 = private constant [53 x i8] c"../drivers/infiniband/core/uverbs_std_types_device.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 478, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 695, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 723, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @ib_uverbs_object_UVERBS_OBJECT_DEVICE, ptr @uverbs_def_obj_device, ptr @.str, ptr @_object_methods_UVERBS_OBJECT_DEVICE498, ptr @ib_uverbs_method_UVERBS_METHOD_GET_CONTEXT, ptr @ib_uverbs_method_UVERBS_METHOD_INVOKE_WRITE, ptr @ib_uverbs_method_UVERBS_METHOD_INFO_HANDLES, ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_PORT, ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_CONTEXT, ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_GID_TABLE, ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_GID_ENTRY, ptr @_method_attrs_UVERBS_METHOD_GET_CONTEXT, ptr @.compoundliteral, ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @_method_attrs_UVERBS_METHOD_INVOKE_WRITE, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8, ptr @_method_attrs_UVERBS_METHOD_INFO_HANDLES, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @_method_attrs_UVERBS_METHOD_QUERY_PORT, ptr @.compoundliteral.12, ptr @.compoundliteral.13, ptr @_method_attrs_UVERBS_METHOD_QUERY_CONTEXT, ptr @.compoundliteral.14, ptr @.compoundliteral.15, ptr @_method_attrs_UVERBS_METHOD_QUERY_GID_TABLE, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @_method_attrs_UVERBS_METHOD_QUERY_GID_ENTRY, ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @.compoundliteral.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_object_UVERBS_OBJECT_DEVICE to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_def_obj_device to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_DEVICE498 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_GET_CONTEXT to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_INVOKE_WRITE to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_INFO_HANDLES to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_PORT to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_CONTEXT to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_GID_TABLE to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_GID_ENTRY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_GET_CONTEXT to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_INVOKE_WRITE to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_INFO_HANDLES to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_QUERY_PORT to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_QUERY_CONTEXT to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_QUERY_GID_TABLE to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_QUERY_GID_ENTRY to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @copy_port_attr_to_resp(ptr noundef readonly %attr, ptr noundef %resp, ptr noundef %ib_dev, i8 noundef zeroext %port_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %conv = trunc i32 %1 to i8
  %state1 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 8
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %state1, align 2
  %max_mtu = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 2
  %3 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_mtu, align 4
  %conv2 = trunc i32 %4 to i8
  %max_mtu3 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 9
  %5 = ptrtoint ptr %max_mtu3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2, ptr %max_mtu3, align 1
  %active_mtu = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 3
  %6 = ptrtoint ptr %active_mtu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active_mtu, align 8
  %conv4 = trunc i32 %7 to i8
  %active_mtu5 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 10
  %8 = ptrtoint ptr %active_mtu5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4, ptr %active_mtu5, align 4
  %gid_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 5
  %9 = ptrtoint ptr %gid_tbl_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gid_tbl_len, align 8
  %gid_tbl_len6 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 4
  %11 = ptrtoint ptr %gid_tbl_len6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %gid_tbl_len6, align 4
  %port_cap_flags.i = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 7
  %12 = ptrtoint ptr %port_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_cap_flags.i, align 8
  %and.i = and i32 %13, -67108865
  %ip_gids.i = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 6
  %14 = ptrtoint ptr %ip_gids.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %ip_gids.i, align 4
  %15 = and i8 %bf.load.i, -128
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 19
  %spec.select.i = or i32 %17, %and.i
  %18 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select.i, ptr %resp, align 4
  %max_msg_sz = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 8
  %19 = ptrtoint ptr %max_msg_sz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_msg_sz, align 4
  %max_msg_sz7 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 1
  %21 = ptrtoint ptr %max_msg_sz7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %max_msg_sz7, align 4
  %bad_pkey_cntr = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 9
  %22 = ptrtoint ptr %bad_pkey_cntr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bad_pkey_cntr, align 8
  %bad_pkey_cntr8 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 2
  %24 = ptrtoint ptr %bad_pkey_cntr8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %bad_pkey_cntr8, align 4
  %qkey_viol_cntr = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 10
  %25 = ptrtoint ptr %qkey_viol_cntr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qkey_viol_cntr, align 4
  %qkey_viol_cntr9 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 3
  %27 = ptrtoint ptr %qkey_viol_cntr9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %qkey_viol_cntr9, align 4
  %pkey_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 11
  %28 = ptrtoint ptr %pkey_tbl_len to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %pkey_tbl_len, align 8
  %pkey_tbl_len10 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 5
  %30 = ptrtoint ptr %pkey_tbl_len10 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %pkey_tbl_len10, align 4
  %conv11 = zext i8 %port_num to i32
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %ib_dev, i32 0, i32 11
  %31 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %32, i32 %conv11, i32 1, i32 2
  %33 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %core_cap_flags.i, align 4
  %and.i113 = and i32 %34, 10518528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %tobool.i.not = icmp eq i32 %and.i113, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 20
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flags, align 2
  %37 = or i8 %36, 1
  store i8 %37, ptr %flags, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %38 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i115 = getelementptr %struct.ib_port_data, ptr %39, i32 %conv11, i32 1, i32 2
  %40 = ptrtoint ptr %core_cap_flags.i115 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %core_cap_flags.i115, align 4
  %and.i116 = and i32 %41, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %cmp.i.not = icmp eq i32 %and.i116, 0
  %lid31 = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 13
  %42 = ptrtoint ptr %lid31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lid31, align 8
  br i1 %cmp.i.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 49151, i32 %43)
  %cmp = icmp ugt i32 %43, 49151
  %phi.cast111 = trunc i32 %43 to i16
  %spec.select = select i1 %cmp, i16 0, i16 %phi.cast111
  %lid21 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 6
  %44 = ptrtoint ptr %lid21 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %spec.select, ptr %lid21, align 2
  %sm_lid = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 12
  %45 = ptrtoint ptr %sm_lid to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sm_lid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49151, i32 %46)
  %cmp22 = icmp ugt i32 %46, 49151
  %phi.cast112 = trunc i32 %46 to i16
  %cond28 = select i1 %cmp22, i16 0, i16 %phi.cast112
  br label %if.end37

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %43)
  %tobool.not.i = icmp ult i32 %43, 65536
  br i1 %tobool.not.i, label %if.else.ib_lid_cpu16.exit_crit_edge, label %land.rhs.i

if.else.ib_lid_cpu16.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %ib_lid_cpu16.exit

land.rhs.i:                                       ; preds = %if.else
  %.b39.i = load i1, ptr @ib_lid_cpu16.__already_done, align 1
  br i1 %.b39.i, label %land.rhs.i.ib_lid_cpu16.exit_crit_edge, label %if.then.i, !prof !53

land.rhs.i.ib_lid_cpu16.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ib_lid_cpu16.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ib_lid_cpu16.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4605, i32 noundef 9, ptr noundef null) #6
  br label %ib_lid_cpu16.exit

ib_lid_cpu16.exit:                                ; preds = %if.then.i, %land.rhs.i.ib_lid_cpu16.exit_crit_edge, %if.else.ib_lid_cpu16.exit_crit_edge
  %conv.i = trunc i32 %43 to i16
  %lid33 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 6
  %47 = ptrtoint ptr %lid33 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i, ptr %lid33, align 2
  %sm_lid34 = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 12
  %48 = ptrtoint ptr %sm_lid34 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sm_lid34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %49)
  %tobool.not.i117 = icmp ult i32 %49, 65536
  br i1 %tobool.not.i117, label %ib_lid_cpu16.exit.ib_lid_cpu16.exit122_crit_edge, label %land.rhs.i119

ib_lid_cpu16.exit.ib_lid_cpu16.exit122_crit_edge: ; preds = %ib_lid_cpu16.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ib_lid_cpu16.exit122

land.rhs.i119:                                    ; preds = %ib_lid_cpu16.exit
  %.b39.i118 = load i1, ptr @ib_lid_cpu16.__already_done, align 1
  br i1 %.b39.i118, label %land.rhs.i119.ib_lid_cpu16.exit122_crit_edge, label %if.then.i120, !prof !53

land.rhs.i119.ib_lid_cpu16.exit122_crit_edge:     ; preds = %land.rhs.i119
  call void @__sanitizer_cov_trace_pc() #8
  br label %ib_lid_cpu16.exit122

if.then.i120:                                     ; preds = %land.rhs.i119
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ib_lid_cpu16.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4605, i32 noundef 9, ptr noundef null) #6
  br label %ib_lid_cpu16.exit122

ib_lid_cpu16.exit122:                             ; preds = %if.then.i120, %land.rhs.i119.ib_lid_cpu16.exit122_crit_edge, %ib_lid_cpu16.exit.ib_lid_cpu16.exit122_crit_edge
  %conv.i121 = trunc i32 %49 to i16
  br label %if.end37

if.end37:                                         ; preds = %ib_lid_cpu16.exit122, %if.then17
  %conv.i121.sink = phi i16 [ %conv.i121, %ib_lid_cpu16.exit122 ], [ %cond28, %if.then17 ]
  %sm_lid36 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 7
  %50 = ptrtoint ptr %sm_lid36 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i121.sink, ptr %sm_lid36, align 4
  %lmc = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 14
  %51 = ptrtoint ptr %lmc to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %lmc, align 4
  %lmc38 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 11
  %53 = ptrtoint ptr %lmc38 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %lmc38, align 1
  %max_vl_num = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 15
  %54 = ptrtoint ptr %max_vl_num to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %max_vl_num, align 1
  %max_vl_num39 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 12
  %56 = ptrtoint ptr %max_vl_num39 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %max_vl_num39, align 2
  %sm_sl = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 16
  %57 = ptrtoint ptr %sm_sl to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %sm_sl, align 2
  %sm_sl40 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 13
  %59 = ptrtoint ptr %sm_sl40 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %sm_sl40, align 1
  %subnet_timeout = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 17
  %60 = ptrtoint ptr %subnet_timeout to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %subnet_timeout, align 1
  %subnet_timeout41 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 14
  %62 = ptrtoint ptr %subnet_timeout41 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %subnet_timeout41, align 4
  %init_type_reply = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 18
  %63 = ptrtoint ptr %init_type_reply to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %init_type_reply, align 8
  %init_type_reply42 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 15
  %65 = ptrtoint ptr %init_type_reply42 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %init_type_reply42, align 1
  %active_width = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 19
  %66 = ptrtoint ptr %active_width to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %active_width, align 1
  %active_width43 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 16
  %68 = ptrtoint ptr %active_width43 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %active_width43, align 2
  %active_speed = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 20
  %69 = ptrtoint ptr %active_speed to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %active_speed, align 2
  %71 = tail call i16 @llvm.umin.i16(i16 %70, i16 128)
  %72 = trunc i16 %71 to i8
  %active_speed55 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 17
  %73 = ptrtoint ptr %active_speed55 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %active_speed55, align 1
  %phys_state = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 21
  %74 = ptrtoint ptr %phys_state to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %phys_state, align 4
  %phys_state56 = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 18
  %76 = ptrtoint ptr %phys_state56 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %phys_state56, align 4
  %call58 = tail call i32 @rdma_port_get_link_layer(ptr noundef %ib_dev, i32 noundef %conv11) #6
  %conv59 = trunc i32 %call58 to i8
  %link_layer = getelementptr inbounds %struct.ib_uverbs_query_port_resp, ptr %resp, i32 0, i32 19
  %77 = ptrtoint ptr %link_layer to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv59, ptr %link_layer, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_port_get_link_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_GET_CONTEXT(ptr noundef %attrs) #0 align 64 {
entry:
  %num_comp = alloca i32, align 4
  %core_support = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_comp) #6
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %0 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %num_comp_vectors = getelementptr inbounds %struct.ib_uverbs_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_comp_vectors, align 4
  %6 = ptrtoint ptr %num_comp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %num_comp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %core_support) #6
  %7 = ptrtoint ptr %core_support to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1, ptr %core_support, align 8
  %call = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 0, ptr noundef nonnull %num_comp, i32 noundef 4) #6
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 -2, label %entry.if.end_crit_edge33
  ]

entry.if.end_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge33
  %call1 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 1, ptr noundef nonnull %core_support, i32 noundef 8) #6
  %9 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call1, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.if.end6_crit_edge
    i32 -2, label %if.end.if.end6_crit_edge34
  ]

if.end.if.end6_crit_edge34:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %if.end.if.end6_crit_edge34
  %call7 = call i32 @ib_alloc_ucontext(ptr noundef %attrs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = call i32 @ib_init_ucontext(ptr noundef %attrs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.then13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context, align 4
  call void @kfree(ptr noundef %11) #6
  %12 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %context, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.then13 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %core_support) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_comp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_copy_to(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_alloc_ucontext(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_init_ucontext(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_INVOKE_WRITE(ptr noundef %attrs) #0 align 64 {
entry:
  %_val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %0 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %uapi1 = getelementptr inbounds %struct.ib_uverbs_device, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %uapi1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uapi1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_val) #6
  %6 = ptrtoint ptr %_val to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %_val, align 8, !annotation !54
  %call = call i32 @_uverbs_get_const_unsigned(ptr noundef nonnull %_val, ptr noundef %attrs, i32 noundef 2, i64 noundef 4294967295, ptr noundef null) #6
  %7 = ptrtoint ptr %_val to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %_val, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i64 %8 to i32
  %and.i = and i32 %conv, 255
  %and1.i = and i32 %conv, 2147483392
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv)
  %tobool3.not.i = icmp sgt i32 %conv, -1
  br i1 %tobool3.not.i, label %if.end8.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %num_write_ex.i = getelementptr inbounds %struct.uverbs_api, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %num_write_ex.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_write_ex.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %10)
  %cmp.not.i = icmp ult i32 %and.i, %10
  br i1 %cmp.not.i, label %if.end7.i, label %if.then4.i.if.then4_crit_edge

if.then4.i.if.then4_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.end7.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %write_ex_methods.i = getelementptr inbounds %struct.uverbs_api, ptr %5, i32 0, i32 6
  br label %uapi_get_method.exit

if.end8.i:                                        ; preds = %if.end.i
  %num_write.i = getelementptr inbounds %struct.uverbs_api, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %num_write.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_write.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %12)
  %cmp9.not.i = icmp ult i32 %and.i, %12
  br i1 %cmp9.not.i, label %if.end12.i, label %if.end8.i.if.then4_crit_edge

if.end8.i.if.then4_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %write_methods.i = getelementptr inbounds %struct.uverbs_api, ptr %5, i32 0, i32 5
  br label %uapi_get_method.exit

uapi_get_method.exit:                             ; preds = %if.end12.i, %if.end7.i
  %write_methods.sink.i = phi ptr [ %write_methods.i, %if.end12.i ], [ %write_ex_methods.i, %if.end7.i ]
  %13 = ptrtoint ptr %write_methods.sink.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_methods.sink.i, align 4
  %arrayidx13.i = getelementptr ptr, ptr %14, i32 %and.i
  %15 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx13.i, align 4
  %cmp.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %uapi_get_method.exit.if.then4_crit_edge, label %if.end6

uapi_get_method.exit.if.then4_crit_edge:          ; preds = %uapi_get_method.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.then4:                                         ; preds = %uapi_get_method.exit.if.then4_crit_edge, %if.end8.i.if.then4_crit_edge, %if.then4.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %retval.0.i45 = phi ptr [ %16, %uapi_get_method.exit.if.then4_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end8.i.if.then4_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.then4.i.if.then4_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.if.then4_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i45 to i32
  br label %cleanup

if.end6:                                          ; preds = %uapi_get_method.exit
  %ucore = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 1
  call void @uverbs_fill_udata(ptr noundef %attrs, ptr noundef %ucore, i32 noundef 0, i32 noundef 1) #6
  %inlen = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inlen, align 8
  %req_size = getelementptr inbounds %struct.uverbs_api_write_method, ptr %16, i32 0, i32 2
  %20 = ptrtoint ptr %req_size to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %req_size, align 1
  %conv8 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv8)
  %cmp = icmp ult i32 %19, %conv8
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %lor.lhs.false

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end6
  %outlen = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %outlen, align 4
  %resp_size = getelementptr inbounds %struct.uverbs_api_write_method, ptr %16, i32 0, i32 3
  %24 = ptrtoint ptr %resp_size to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %resp_size, align 2
  %conv11 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv11)
  %cmp12 = icmp ult i32 %23, %conv11
  br i1 %cmp12, label %lor.lhs.false.cleanup_crit_edge, label %if.end15

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %uobject = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 4
  %26 = ptrtoint ptr %uobject to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %uobject, align 8
  %27 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %16, align 4
  %call16 = call i32 %28(ptr noundef %attrs) #6
  %29 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %uobject, align 8
  %tobool18.not = icmp eq ptr %30, null
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %if.then19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool21.not = icmp eq i32 %call16, 0
  call void @uverbs_finalize_object(ptr noundef nonnull %30, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext %tobool21.not, ptr noundef %attrs) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end15.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then4 ], [ %call, %entry.cleanup_crit_edge ], [ -28, %lor.lhs.false.cleanup_crit_edge ], [ -28, %if.end6.cleanup_crit_edge ], [ %call16, %if.then19 ], [ %call16, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_uverbs_get_const_unsigned(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uverbs_fill_udata(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uverbs_finalize_object(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_INFO_HANDLES(ptr noundef %attrs) #0 align 64 {
entry:
  %total = alloca i64, align 8
  %_val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %total) #6
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %0 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2, i32 0, i32 2
  %retval.0.i.i = select i1 %tobool.i.not.i.i, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %retval.0.i.i to i32
  br label %uverbs_attr_get_len.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %len.i = getelementptr inbounds %struct.uverbs_ptr_attr, ptr %retval.0.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len.i, align 8
  %conv.i = zext i16 %5 to i32
  br label %uverbs_attr_get_len.exit

uverbs_attr_get_len.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %3, %if.then.i ], [ %conv.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp sgt i32 %retval.0.i, 0
  %rem = and i32 %retval.0.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp1.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end, label %uverbs_attr_get_len.exit.cleanup_crit_edge

uverbs_attr_get_len.exit.cleanup_crit_edge:       ; preds = %uverbs_attr_get_len.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %uverbs_attr_get_len.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_val) #6
  %6 = ptrtoint ptr %_val to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %_val, align 8, !annotation !54
  %call2 = call i32 @_uverbs_get_const_unsigned(ptr noundef nonnull %_val, ptr noundef %attrs, i32 noundef 0, i64 noundef 65535, ptr noundef null) #6
  %7 = ptrtoint ptr %_val to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %_val, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conv = trunc i64 %8 to i16
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %9 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %uapi, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv)
  %cmp.i = icmp eq i16 %conv, -1
  br i1 %cmp.i, label %if.end4.if.then7_crit_edge, label %if.end.i43

if.end4.if.then7_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.end.i43:                                       ; preds = %if.end4
  %15 = trunc i64 %8 to i32
  %and.i.i = and i32 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i43
  %and1.i.i = and i32 %15, 61439
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and1.i.i)
  %cmp.i.i44 = icmp ugt i32 %and1.i.i, 11
  br i1 %cmp.i.i44, label %if.then.i.i.uapi_key_obj.exit.i_crit_edge, label %if.end.i.i

if.then.i.i.uapi_key_obj.exit.i_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uapi_key_obj.exit.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i.i = add nuw nsw i32 %and1.i.i, 20
  br label %if.end6.i.i

if.else.i.i:                                      ; preds = %if.end.i43
  %conv.i42 = and i32 %15, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %conv)
  %cmp3.i.i = icmp ugt i16 %conv, 19
  br i1 %cmp3.i.i, label %if.else.i.i.uapi_key_obj.exit.i_crit_edge, label %if.else.i.i.if.end6.i.i_crit_edge

if.else.i.i.if.end6.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i.i

if.else.i.i.uapi_key_obj.exit.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uapi_key_obj.exit.i

if.end6.i.i:                                      ; preds = %if.else.i.i.if.end6.i.i_crit_edge, %if.end.i.i
  %id.addr.0.i.i = phi i32 [ %add.i.i, %if.end.i.i ], [ %conv.i42, %if.else.i.i.if.end6.i.i_crit_edge ]
  %shl.i.i = shl nuw nsw i32 %id.addr.0.i.i, 11
  br label %uapi_key_obj.exit.i

uapi_key_obj.exit.i:                              ; preds = %if.end6.i.i, %if.else.i.i.uapi_key_obj.exit.i_crit_edge, %if.then.i.i.uapi_key_obj.exit.i_crit_edge
  %retval.0.i.i45 = phi i32 [ %shl.i.i, %if.end6.i.i ], [ -1, %if.then.i.i.uapi_key_obj.exit.i_crit_edge ], [ -1, %if.else.i.i.uapi_key_obj.exit.i_crit_edge ]
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %14, i32 noundef %retval.0.i.i45) #6
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %uapi_key_obj.exit.i.if.then7_crit_edge, label %uapi_get_object.exit

uapi_key_obj.exit.i.if.then7_crit_edge:           ; preds = %uapi_key_obj.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

uapi_get_object.exit:                             ; preds = %uapi_key_obj.exit.i
  %cmp.i47 = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47, label %uapi_get_object.exit.if.then7_crit_edge, label %if.end9

uapi_get_object.exit.if.then7_crit_edge:          ; preds = %uapi_get_object.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then7:                                         ; preds = %uapi_get_object.exit.if.then7_crit_edge, %uapi_key_obj.exit.i.if.then7_crit_edge, %if.end4.if.then7_crit_edge
  %retval.0.i4654 = phi ptr [ %call4.i, %uapi_get_object.exit.if.then7_crit_edge ], [ inttoptr (i32 -42 to ptr), %if.end4.if.then7_crit_edge ], [ inttoptr (i32 -2 to ptr), %uapi_key_obj.exit.i.if.then7_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i4654 to i32
  br label %cleanup

if.end9:                                          ; preds = %uapi_get_object.exit
  %17 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ufile, align 8
  %div36.i = lshr i32 %retval.0.i, 2
  %conv.i48 = zext i32 %div36.i to i64
  %call.i.i = call noalias ptr @_uverbs_alloc(ptr noundef %attrs, i32 noundef %retval.0.i, i32 noundef 3520) #6
  %cmp.i.i49 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i49, label %if.then13, label %if.end.i50

if.end.i50:                                       ; preds = %if.end9
  %uobjects_lock.i = getelementptr inbounds %struct.ib_uverbs_file, ptr %18, i32 0, i32 7
  call void @_raw_spin_lock_irq(ptr noundef %uobjects_lock.i) #6
  %uobjects.i = getelementptr inbounds %struct.ib_uverbs_file, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %uobjects.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn41.i = load ptr, ptr %uobjects.i, align 4
  %cmp.not42.i = icmp eq ptr %.pn41.i, %uobjects.i
  br i1 %cmp.not42.i, label %if.end.i50.if.end15_crit_edge, label %if.end.i50.for.body.i_crit_edge

if.end.i50.for.body.i_crit_edge:                  ; preds = %if.end.i50
  br label %for.body.i

if.end.i50.if.end15_crit_edge:                    ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end.i50.for.body.i_crit_edge
  %.pn44.i = phi ptr [ %.pn.i, %cleanup.i.for.body.i_crit_edge ], [ %.pn41.i, %if.end.i50.for.body.i_crit_edge ]
  %count.043.i = phi i64 [ %count.1.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %if.end.i50.for.body.i_crit_edge ]
  %id.i = getelementptr i8, ptr %.pn44.i, i32 12
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i, align 8
  %uapi_object4.i = getelementptr i8, ptr %.pn44.i, i32 32
  %22 = ptrtoint ptr %uapi_object4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %uapi_object4.i, align 4
  %cmp5.not.i = icmp eq ptr %23, %call4.i
  br i1 %cmp5.not.i, label %if.end8.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end8.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %count.043.i, i64 %conv.i48)
  %cmp9.not.i = icmp ult i64 %count.043.i, %conv.i48
  br i1 %cmp9.not.i, label %if.end12.i, label %if.end8.i.if.end15_crit_edge

if.end8.i.if.end15_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %idxprom.i = trunc i64 %count.043.i to i32
  %arrayidx.i = getelementptr i32, ptr %call.i.i, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %arrayidx.i, align 4
  %inc.i = add nuw i64 %count.043.i, 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end12.i, %for.body.i.cleanup.i_crit_edge
  %count.1.i = phi i64 [ %inc.i, %if.end12.i ], [ %count.043.i, %for.body.i.cleanup.i_crit_edge ]
  %25 = ptrtoint ptr %.pn44.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i = load ptr, ptr %.pn44.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %uobjects.i
  br i1 %cmp.not.i, label %cleanup.i.if.end15_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup.i.if.end15_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end15:                                         ; preds = %cleanup.i.if.end15_crit_edge, %if.end8.i.if.end15_crit_edge, %if.end.i50.if.end15_crit_edge
  %storemerge = phi i64 [ 0, %if.end.i50.if.end15_crit_edge ], [ %count.1.i, %cleanup.i.if.end15_crit_edge ], [ %count.043.i, %if.end8.i.if.end15_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %uobjects_lock.i) #6
  %27 = ptrtoint ptr %total to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %storemerge, ptr %total, align 8
  %.tr = trunc i64 %storemerge to i32
  %conv16 = shl i32 %.tr, 2
  %call17 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 2, ptr noundef %call.i.i, i32 noundef %conv16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 1, ptr noundef nonnull %total, i32 noundef 8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end15.cleanup_crit_edge, %if.then13, %if.then7, %if.end.cleanup_crit_edge, %uverbs_attr_get_len.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then7 ], [ %26, %if.then13 ], [ -22, %uverbs_attr_get_len.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call17, %if.end15.cleanup_crit_edge ], [ %call21, %if.end20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %total) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @_uverbs_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_QUERY_PORT(ptr noundef %attrs) #0 align 64 {
entry:
  %attr = alloca %struct.ib_port_attr, align 8
  %resp = alloca %struct.ib_uverbs_query_port_resp_ex, align 4
  %_val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #6
  %0 = call ptr @memset(ptr %attr, i32 0, i32 72)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %resp) #6
  %1 = call ptr @memset(ptr %resp, i32 0, i32 48)
  %ufile.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %2 = ptrtoint ptr %ufile.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ufile.i, align 8
  %call.i = tail call ptr @ib_uverbs_get_ucontext_file(ptr noundef %3) #6
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %query_port = getelementptr inbounds %struct.ib_device, ptr %6, i32 0, i32 1, i32 19
  %7 = ptrtoint ptr %query_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %query_port, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_val) #6
  %9 = ptrtoint ptr %_val to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %_val, align 8, !annotation !54
  %call5 = call i32 @_uverbs_get_const_unsigned(ptr noundef nonnull %_val, ptr noundef %attrs, i32 noundef 0, i64 noundef 255, ptr noundef null) #6
  %10 = ptrtoint ptr %_val to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %_val, align 8
  %conv = trunc i64 %11 to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %12 = trunc i64 %11 to i32
  %conv9 = and i32 %12, 255
  %call10 = call i32 @ib_query_port(ptr noundef %6, i32 noundef %conv9, ptr noundef nonnull %attr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void @copy_port_attr_to_resp(ptr noundef nonnull %attr, ptr noundef nonnull %resp, ptr noundef %6, i8 noundef zeroext %conv)
  %port_cap_flags2 = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 22
  %13 = ptrtoint ptr %port_cap_flags2 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %port_cap_flags2, align 2
  %port_cap_flags214 = getelementptr inbounds %struct.ib_uverbs_query_port_resp_ex, ptr %resp, i32 0, i32 1
  %15 = ptrtoint ptr %port_cap_flags214 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %port_cap_flags214, align 4
  %call15 = call i32 @uverbs_copy_to_struct_or_zero(ptr noundef %attrs, i32 noundef 1, ptr noundef nonnull %resp, i32 noundef 48) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %call15, %if.end13 ], [ -95, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %resp) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_copy_to_struct_or_zero(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_uverbs_get_ucontext_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_QUERY_CONTEXT(ptr noundef %attrs) #0 align 64 {
entry:
  %core_support = alloca i64, align 8
  %num_comp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %core_support) #6
  %0 = ptrtoint ptr %core_support to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1, ptr %core_support, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_comp) #6
  %ufile.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %1 = ptrtoint ptr %ufile.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ufile.i, align 8
  %call.i = tail call ptr @ib_uverbs_get_ucontext_file(ptr noundef %2) #6
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %query_ucontext = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1, i32 119
  %6 = ptrtoint ptr %query_ucontext to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %query_ucontext, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %ufile.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ufile.i, align 8
  %device5 = getelementptr inbounds %struct.ib_uverbs_file, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device5, align 4
  %num_comp_vectors = getelementptr inbounds %struct.ib_uverbs_device, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_comp_vectors, align 4
  %14 = ptrtoint ptr %num_comp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %num_comp, align 4
  %call6 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 0, ptr noundef nonnull %num_comp, i32 noundef 4) #6
  %15 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call6, label %if.end4.cleanup_crit_edge [
    i32 0, label %if.end4.if.end9_crit_edge
    i32 -2, label %if.end4.if.end9_crit_edge37
  ]

if.end4.if.end9_crit_edge37:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4.if.end9_crit_edge, %if.end4.if.end9_crit_edge37
  %call10 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 1, ptr noundef nonnull %core_support, i32 noundef 8) #6
  %16 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call10, label %if.end9.cleanup_crit_edge [
    i32 0, label %if.end9.if.end15_crit_edge
    i32 -2, label %if.end9.if.end15_crit_edge38
  ]

if.end9.if.end15_crit_edge38:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end9.if.end15_crit_edge, %if.end9.if.end15_crit_edge38
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %query_ucontext18 = getelementptr inbounds %struct.ib_device, ptr %18, i32 0, i32 1, i32 119
  %19 = ptrtoint ptr %query_ucontext18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %query_ucontext18, align 4
  %call19 = call i32 %20(ptr noundef %call.i, ptr noundef %attrs) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %call19, %if.end15 ], [ -95, %if.end.cleanup_crit_edge ], [ %call6, %if.end4.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_comp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %core_support) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_QUERY_GID_TABLE(ptr noundef %attrs) #0 align 64 {
entry:
  %num_entries = alloca i32, align 4
  %flags = alloca i32, align 4
  %_val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_entries) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !54
  %call = call i32 @uverbs_get_flags32(ptr noundef nonnull %flags, ptr noundef %attrs, i32 noundef 1, i64 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_val) #6
  %1 = ptrtoint ptr %_val to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %_val, align 8, !annotation !54
  %call1 = call i32 @_uverbs_get_const_unsigned(ptr noundef nonnull %_val, ptr noundef %attrs, i32 noundef 0, i64 noundef 4294967295, ptr noundef null) #6
  %2 = ptrtoint ptr %_val to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %_val, align 8
  %conv = trunc i64 %3 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool5.not = icmp eq i32 %conv, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %attr_present.i.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %4 = ptrtoint ptr %attr_present.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %attr_present.i.i.i.i, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i.i.i = icmp eq i32 %6, 0
  %arrayidx.i.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2, i32 0, i32 2
  %retval.0.i.i.i = select i1 %tobool.i.not.i.i.i, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i.i
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %uverbs_attr_get_len.exit.i, label %uverbs_attr_get_len.exit.thread.i

uverbs_attr_get_len.exit.thread.i:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %len.i.i = getelementptr inbounds %struct.uverbs_ptr_attr, ptr %retval.0.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %len.i.i, align 8
  %conv.i.i = zext i16 %8 to i32
  br label %if.end.i

uverbs_attr_get_len.exit.i:                       ; preds = %if.end7
  %9 = ptrtoint ptr %retval.0.i.i.i to i32
  %cmp.i = icmp slt ptr %retval.0.i.i.i, null
  br i1 %cmp.i, label %uverbs_attr_get_len.exit.i.uverbs_attr_ptr_get_array_size.exit_crit_edge, label %uverbs_attr_get_len.exit.i.if.end.i_crit_edge

uverbs_attr_get_len.exit.i.if.end.i_crit_edge:    ; preds = %uverbs_attr_get_len.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

uverbs_attr_get_len.exit.i.uverbs_attr_ptr_get_array_size.exit_crit_edge: ; preds = %uverbs_attr_get_len.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uverbs_attr_ptr_get_array_size.exit

if.end.i:                                         ; preds = %uverbs_attr_get_len.exit.i.if.end.i_crit_edge, %uverbs_attr_get_len.exit.thread.i
  %retval.0.i3.i = phi i32 [ %conv.i.i, %uverbs_attr_get_len.exit.thread.i ], [ %9, %uverbs_attr_get_len.exit.i.if.end.i_crit_edge ]
  %retval.0.i3.i.frozen = freeze i32 %retval.0.i3.i
  %conv.frozen = freeze i32 %conv
  %div.i = udiv i32 %retval.0.i3.i.frozen, %conv.frozen
  %10 = mul i32 %div.i, %conv.frozen
  %rem.i.decomposed = sub i32 %retval.0.i3.i.frozen, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool.not.i, label %if.end.i.uverbs_attr_ptr_get_array_size.exit_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.uverbs_attr_ptr_get_array_size.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uverbs_attr_ptr_get_array_size.exit

uverbs_attr_ptr_get_array_size.exit:              ; preds = %if.end.i.uverbs_attr_ptr_get_array_size.exit_crit_edge, %uverbs_attr_get_len.exit.i.uverbs_attr_ptr_get_array_size.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %uverbs_attr_get_len.exit.i.uverbs_attr_ptr_get_array_size.exit_crit_edge ], [ %div.i, %if.end.i.uverbs_attr_ptr_get_array_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 1
  br i1 %cmp, label %if.then10, label %if.end12

if.then10:                                        ; preds = %uverbs_attr_ptr_get_array_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool11.not = icmp eq i32 %retval.0.i, 0
  %spec.select = select i1 %tobool11.not, i32 -22, i32 %retval.0.i
  br label %cleanup

if.end12:                                         ; preds = %uverbs_attr_ptr_get_array_size.exit
  %ufile.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %11 = ptrtoint ptr %ufile.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ufile.i, align 8
  %call.i = call ptr @ib_uverbs_get_ucontext_file(ptr noundef %12) #6
  %cmp.i62 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %16 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %retval.0.i, i32 32) #6
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %if.end17.if.then20_crit_edge, label %uverbs_kcalloc.exit, !prof !55

if.end17.if.then20_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

uverbs_kcalloc.exit:                              ; preds = %if.end17
  %18 = extractvalue { i32, i1 } %16, 0
  %call.i.i = call noalias ptr @_uverbs_alloc(ptr noundef %attrs, i32 noundef %18, i32 noundef 3520) #6
  %cmp.i65 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %uverbs_kcalloc.exit.if.then20_crit_edge, label %if.end22

uverbs_kcalloc.exit.if.then20_crit_edge:          ; preds = %uverbs_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.then20:                                        ; preds = %uverbs_kcalloc.exit.if.then20_crit_edge, %if.end17.if.then20_crit_edge
  %retval.0.i6473 = phi ptr [ %call.i.i, %uverbs_kcalloc.exit.if.then20_crit_edge ], [ inttoptr (i32 -75 to ptr), %if.end17.if.then20_crit_edge ]
  %19 = ptrtoint ptr %retval.0.i6473 to i32
  br label %cleanup

if.end22:                                         ; preds = %uverbs_kcalloc.exit
  %call23 = call i32 @rdma_query_gid_table(ptr noundef %15, ptr noundef %call.i.i, i32 noundef %retval.0.i) #6
  %20 = ptrtoint ptr %num_entries to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call23, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %call28 = call fastcc i32 @copy_gid_entries_to_user(ptr noundef %attrs, ptr noundef %call.i.i, i32 noundef %call23, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 3, ptr noundef nonnull %num_entries, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then20, %if.then15, %if.then10, %if.end.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then15 ], [ %19, %if.then20 ], [ %call32, %if.end31 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ %spec.select, %if.then10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_entries) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_get_flags32(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_query_gid_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_gid_entries_to_user(ptr noundef %attrs, ptr noundef %entries, i32 noundef %num_entries, i32 noundef %user_entry_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %user_entry_size)
  %cmp = icmp eq i32 %user_entry_size, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %num_entries, 5
  %call = tail call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 2, ptr noundef %entries, i32 noundef %mul) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.umin.i32(i32 %user_entry_size, i32 32)
  %attr_present.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %1 = ptrtoint ptr %attr_present.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %attr_present.i.i, align 4
  %3 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  %arrayidx.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2, i32 0, i32 2
  %retval.0.i = select i1 %tobool.i.not.i, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_entries)
  %cmp1156.not = icmp eq i32 %num_entries, 0
  br i1 %cmp1156.not, label %if.end6.for.end_crit_edge, label %for.body.lr.ph

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %5 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %retval.0.i, align 8
  %conv10 = trunc i64 %6 to i32
  %7 = inttoptr i32 %conv10 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %user_entry_size)
  %cmp16 = icmp ugt i32 %user_entry_size, 32
  %sub = add i32 %user_entry_size, -32
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end23.if.then.i.i.i_crit_edge, %for.body.lr.ph
  %entries.addr.060 = phi ptr [ %entries, %for.body.lr.ph ], [ %incdec.ptr, %if.end23.if.then.i.i.i_crit_edge ]
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end23.if.then.i.i.i_crit_edge ]
  %user_entries.057 = phi ptr [ %7, %for.body.lr.ph ], [ %add.ptr24, %if.end23.if.then.i.i.i_crit_edge ]
  tail call void @__check_object_size(ptr noundef %entries.addr.060, i32 noundef %0, i1 noundef zeroext true) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 174) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_entries.057, i32 %0, i32 -1226833920) #9, !srcloc !56
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %entries.addr.060, i32 noundef %0) #6
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %user_entries.057, ptr noundef %entries.addr.060, i32 noundef %0) #6
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %0, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %0, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool.not, label %if.end15, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %copy_to_user.exit
  br i1 %cmp16, label %if.then18, label %if.end15.if.end23_crit_edge

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then18:                                        ; preds = %if.end15
  %add.ptr = getelementptr i8, ptr %user_entries.057, i32 32
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %sub, i32 -1226833920) #9, !srcloc !57
  %asmresult.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i46 = icmp eq i32 %asmresult.i, 0
  br i1 %cmp.i46, label %clear_user.exit, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

clear_user.exit:                                  ; preds = %if.then18
  %10 = tail call i32 @llvm.read_register.i32(metadata !43) #6
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #4, !srcloc !58
  %and.i.i.i = and i32 %12, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %call1.i.i = tail call i32 @arm_clear_user(ptr noundef %add.ptr, i32 noundef %sub) #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool20.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool20.not, label %clear_user.exit.if.end23_crit_edge, label %clear_user.exit.cleanup_crit_edge

clear_user.exit.cleanup_crit_edge:                ; preds = %clear_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

clear_user.exit.if.end23_crit_edge:               ; preds = %clear_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end23:                                         ; preds = %clear_user.exit.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %incdec.ptr = getelementptr %struct.ib_uverbs_gid_entry, ptr %entries.addr.060, i32 1
  %add.ptr24 = getelementptr i8, ptr %user_entries.057, i32 %user_entry_size
  %inc = add nuw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %num_entries
  br i1 %exitcond.not, label %if.end23.for.end_crit_edge, label %if.end23.if.then.i.i.i_crit_edge

if.end23.if.then.i.i.i_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %if.end6.for.end_crit_edge
  %call25 = tail call i32 @uverbs_output_written(ptr noundef %attrs, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %clear_user.exit.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.then4, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %4, %if.then4 ], [ %call25, %for.end ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %clear_user.exit.cleanup_crit_edge ], [ -14, %if.then18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_output_written(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_QUERY_GID_ENTRY(ptr noundef %attrs) #0 align 64 {
entry:
  %entry1 = alloca %struct.ib_uverbs_gid_entry, align 8
  %flags = alloca i32, align 4
  %_val = alloca i64, align 8
  %_val6 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %entry1) #6
  %0 = getelementptr inbounds i8, ptr %entry1, i32 24
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !54
  %call = call i32 @uverbs_get_flags32(ptr noundef nonnull %flags, ptr noundef %attrs, i32 noundef 2, i64 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_val) #6
  %3 = ptrtoint ptr %_val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %_val, align 8, !annotation !54
  %call2 = call i32 @_uverbs_get_const_unsigned(ptr noundef nonnull %_val, ptr noundef %attrs, i32 noundef 0, i64 noundef 4294967295, ptr noundef null) #6
  %4 = ptrtoint ptr %_val to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %_val, align 8
  %conv = trunc i64 %5 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_val6) #6
  %6 = ptrtoint ptr %_val6 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %_val6, align 8, !annotation !54
  %call8 = call i32 @_uverbs_get_const_unsigned(ptr noundef nonnull %_val6, ptr noundef %attrs, i32 noundef 1, i64 noundef 4294967295, ptr noundef null) #6
  %7 = ptrtoint ptr %_val6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %_val6, align 8
  %conv9 = trunc i64 %8 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_val6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool11.not = icmp eq i32 %call8, 0
  br i1 %tobool11.not, label %if.end13, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %ufile.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %9 = ptrtoint ptr %ufile.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ufile.i, align 8
  %call.i76 = call ptr @ib_uverbs_get_ucontext_file(ptr noundef %10) #6
  %cmp.i = icmp ugt ptr %call.i76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call.i76 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %12 = ptrtoint ptr %call.i76 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i76, align 4
  %is_switch.i.i.i = getelementptr inbounds %struct.ib_device, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %is_switch.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i.i.i = load i8, ptr %is_switch.i.i.i, align 4
  %15 = xor i8 %bf.load.i.i.i, -1
  %16 = lshr i8 %15, 7
  %.not.i.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.not.i.i, i32 %conv)
  %cmp.not.i = icmp ugt i32 %.not.i.i, %conv
  br i1 %cmp.not.i, label %if.end18.cleanup_crit_edge, label %land.rhs.i

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i)
  %tobool.i.i.i = icmp slt i8 %bf.load.i.i.i, 0
  br i1 %tobool.i.i.i, label %land.rhs.i.rdma_is_port_valid.exit_crit_edge, label %cond.false.i.i

land.rhs.i.rdma_is_port_valid.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rdma_is_port_valid.exit

cond.false.i.i:                                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  %phys_port_cnt.i.i = getelementptr inbounds %struct.ib_device, ptr %13, i32 0, i32 21
  %17 = ptrtoint ptr %phys_port_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phys_port_cnt.i.i, align 8
  br label %rdma_is_port_valid.exit

rdma_is_port_valid.exit:                          ; preds = %cond.false.i.i, %land.rhs.i.rdma_is_port_valid.exit_crit_edge
  %cond.i.i = phi i32 [ %18, %cond.false.i.i ], [ 0, %land.rhs.i.rdma_is_port_valid.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %conv)
  %cmp2.i.not = icmp ult i32 %cond.i.i, %conv
  br i1 %cmp2.i.not, label %rdma_is_port_valid.exit.cleanup_crit_edge, label %if.end22

rdma_is_port_valid.exit.cleanup_crit_edge:        ; preds = %rdma_is_port_valid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %rdma_is_port_valid.exit
  %call23 = call ptr @rdma_get_gid_attr(ptr noundef %13, i32 noundef %conv, i32 noundef %conv9) #6
  %cmp.i77 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %gid28 = getelementptr inbounds %struct.ib_gid_attr, ptr %call23, i32 0, i32 2
  %20 = call ptr @memcpy(ptr %entry1, ptr %gid28, i32 16)
  %index = getelementptr inbounds %struct.ib_gid_attr, ptr %call23, i32 0, i32 4
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %index, align 4
  %conv29 = zext i16 %22 to i32
  %gid_index30 = getelementptr inbounds %struct.ib_uverbs_gid_entry, ptr %entry1, i32 0, i32 1
  %23 = ptrtoint ptr %gid_index30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv29, ptr %gid_index30, align 8
  %port_num31 = getelementptr inbounds %struct.ib_gid_attr, ptr %call23, i32 0, i32 5
  %24 = ptrtoint ptr %port_num31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port_num31, align 8
  %port_num32 = getelementptr inbounds %struct.ib_uverbs_gid_entry, ptr %entry1, i32 0, i32 2
  %26 = ptrtoint ptr %port_num32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %port_num32, align 4
  %gid_type = getelementptr inbounds %struct.ib_gid_attr, ptr %call23, i32 0, i32 3
  %27 = ptrtoint ptr %gid_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gid_type, align 8
  %gid_type33 = getelementptr inbounds %struct.ib_uverbs_gid_entry, ptr %entry1, i32 0, i32 3
  %29 = ptrtoint ptr %gid_type33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %gid_type33, align 8
  %30 = call i32 @llvm.read_register.i32(metadata !43) #6
  %and.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !61
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.end27.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end27.rcu_read_lock.exit_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end27
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end27.rcu_read_lock.exit_crit_edge
  %call34 = call ptr @rdma_read_gid_attr_ndev_rcu(ptr noundef %call23) #6
  %cmp.i78 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %if.then36, label %if.else

if.then36:                                        ; preds = %rcu_read_lock.exit
  %cmp.not = icmp eq ptr %call34, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not, label %if.then36.if.end42_crit_edge, label %if.then39

if.then36.if.end42_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %call34 to i32
  call fastcc void @rcu_read_unlock()
  br label %out

if.else:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %call34, i32 0, i32 17
  %35 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ifindex, align 4
  %netdev_ifindex = getelementptr inbounds %struct.ib_uverbs_gid_entry, ptr %entry1, i32 0, i32 4
  %37 = ptrtoint ptr %netdev_ifindex to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %netdev_ifindex, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then36.if.end42_crit_edge
  call fastcc void @rcu_read_unlock()
  %call43 = call i32 @uverbs_copy_to_struct_or_zero(ptr noundef %attrs, i32 noundef 3, ptr noundef nonnull %entry1, i32 noundef 32) #6
  br label %out

out:                                              ; preds = %if.end42, %if.then39
  %ret.0 = phi i32 [ %34, %if.then39 ], [ %call43, %if.end42 ]
  call void @rdma_put_gid_attr(ptr noundef %call23) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then25, %rdma_is_port_valid.exit.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then16, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then16 ], [ %19, %if.then25 ], [ %ret.0, %out ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call8, %if.end5.cleanup_crit_edge ], [ -22, %rdma_is_port_valid.exit.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %entry1) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_get_gid_attr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_read_gid_attr_ndev_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !62
  %0 = tail call i32 @llvm.read_register.i32(metadata !43) #6
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_put_gid_attr(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !33, !35, !36, !38, !39, !40, !42}
!llvm.named.register.sp = !{!43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @uverbs_def_obj_device, !1, !"uverbs_def_obj_device", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/uverbs_std_types_device.c", i32 500, i32 30}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/rdma/ib_verbs.h", i32 4605, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ib_uverbs_object_UVERBS_OBJECT_DEVICE, !6, !"ib_uverbs_object_UVERBS_OBJECT_DEVICE", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/core/uverbs_std_types_device.c", i32 491, i32 1}
!7 = !{ptr @_object_methods_UVERBS_OBJECT_DEVICE498, !6, !"_object_methods_UVERBS_OBJECT_DEVICE498", i1 false, i1 false}
!8 = !{ptr @ib_uverbs_method_UVERBS_METHOD_GET_CONTEXT, !9, !"ib_uverbs_method_UVERBS_METHOD_GET_CONTEXT", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/core/uverbs_std_types_device.c", i32 433, i32 1}
!10 = !{ptr @_method_attrs_UVERBS_METHOD_GET_CONTEXT, !9, !"_method_attrs_UVERBS_METHOD_GET_CONTEXT", i1 false, i1 false}
!11 = !{ptr @ib_uverbs_method_UVERBS_METHOD_INVOKE_WRITE, !12, !"ib_uverbs_method_UVERBS_METHOD_INVOKE_WRITE", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/core/uverbs_std_types_device.c", i32 51, i32 1}
!13 = !{ptr @_method_attrs_UVERBS_METHOD_INVOKE_WRITE, !12, !"_method_attrs_UVERBS_METHOD_INVOKE_WRITE", i1 false, i1 false}
!14 = !{ptr @ib_uverbs_method_UVERBS_METHOD_INFO_HANDLES, !15, !"ib_uverbs_method_UVERBS_METHOD_INFO_HANDLES", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/core/uverbs_std_types_device.c", i32 448, i32 1}
!16 = !{ptr @_method_attrs_UVERBS_METHOD_INFO_HANDLES, !15, !"_method_attrs_UVERBS_METHOD_INFO_HANDLES", i1 false, i1 false}
!17 = !{ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_PORT, !18, !"ib_uverbs_method_UVERBS_METHOD_QUERY_PORT", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/core/uverbs_std_types_device.c", i32 458, i32 1}
!19 = !{ptr @_method_attrs_UVERBS_METHOD_QUERY_PORT, !18, !"_method_attrs_UVERBS_METHOD_QUERY_PORT", i1 false, i1 false}
!20 = !{ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_CONTEXT, !21, !"ib_uverbs_method_UVERBS_METHOD_QUERY_CONTEXT", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/core/uverbs_std_types_device.c", i32 441, i32 1}
!22 = !{ptr @_method_attrs_UVERBS_METHOD_QUERY_CONTEXT, !21, !"_method_attrs_UVERBS_METHOD_QUERY_CONTEXT", i1 false, i1 false}
!23 = !{ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_GID_TABLE, !24, !"ib_uverbs_method_UVERBS_METHOD_QUERY_GID_TABLE", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/core/uverbs_std_types_device.c", i32 467, i32 1}
!25 = !{ptr @_method_attrs_UVERBS_METHOD_QUERY_GID_TABLE, !24, !"_method_attrs_UVERBS_METHOD_QUERY_GID_TABLE", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!28 = !{ptr @.str.20, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!31 = !{ptr @.str.22, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!33 = !{ptr @ib_uverbs_method_UVERBS_METHOD_QUERY_GID_ENTRY, !34, !"ib_uverbs_method_UVERBS_METHOD_QUERY_GID_ENTRY", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/core/uverbs_std_types_device.c", i32 478, i32 1}
!35 = !{ptr @_method_attrs_UVERBS_METHOD_QUERY_GID_ENTRY, !34, !"_method_attrs_UVERBS_METHOD_QUERY_GID_ENTRY", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!38 = !{ptr @.str.27, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.28, !37, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!42 = !{ptr @.str.29, !41, !"<string literal>", i1 false, i1 false}
!43 = !{!"sp"}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{!"auto-init"}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i64 2152473148, i64 2152473173}
!57 = !{i64 2152469269, i64 2152469294}
!58 = !{i64 4968022}
!59 = !{i64 4968219}
!60 = !{i64 2152453452}
!61 = !{i64 2149612436}
!62 = !{i64 2149612702}
