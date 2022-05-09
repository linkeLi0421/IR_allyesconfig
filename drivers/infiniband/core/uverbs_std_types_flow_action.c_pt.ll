; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/uverbs_std_types_flow_action.c_pt.bc'
source_filename = "../drivers/infiniband/core/uverbs_std_types_flow_action.c"
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
%struct.anon.176 = type { i8 }
%struct.ib_uverbs_flow_ipv6_filter = type { [16 x i8], [16 x i8], i32, i8, i8, i8, i8 }
%struct.ib_uverbs_flow_ipv4_filter = type { i32, i32, i8, i8, i8, i8 }
%struct.ib_uobject = type { i64, ptr, ptr, ptr, %struct.list_head, %struct.ib_rdmacg_object, i32, %struct.kref, %struct.atomic_t, %struct.callback_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ib_rdmacg_object = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ib_flow_action = type { ptr, ptr, i32, %struct.atomic_t }
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
%struct.ib_flow_action_esp_attr = type { %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp_keymats, %struct.ib_flow_action_attrs_esp_replays, %struct.ib_flow_spec_list }
%struct.ib_flow_action_attrs_esp = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i64 }
%struct.ib_flow_action_attrs_esp_keymats = type { i32, %union.anon.181 }
%union.anon.181 = type { %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm }
%struct.ib_uverbs_flow_action_esp_keymat_aes_gcm = type { i64, i32, i32, i32, i32, [8 x i32] }
%struct.ib_flow_action_attrs_esp_replays = type { i32, %union.anon.182 }
%union.anon.182 = type { %struct.ib_uverbs_flow_action_esp_replay_bmp }
%struct.ib_uverbs_flow_action_esp_replay_bmp = type { i32 }
%struct.ib_flow_spec_list = type { ptr, %union.ib_flow_spec }
%union.ib_flow_spec = type { %struct.ib_flow_spec_ipv6 }
%struct.ib_flow_spec_ipv6 = type { i32, i16, %struct.ib_flow_ipv6_filter, %struct.ib_flow_ipv6_filter }
%struct.ib_flow_ipv6_filter = type { [16 x i8], [16 x i8], i32, i8, i8, i8, [0 x i8] }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.171 }
%union.anon.171 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.172, i16, i16, i8 }
%union.anon.172 = type { i64 }
%union.anon.185 = type { %struct.ib_uverbs_flow_ipv6_filter }
%struct.ib_uverbs_flow_action_esp_encap = type { i64, i64, i16, i16 }
%struct.ib_uverbs_flow_action_esp = type { i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ib_uverbs_object_UVERBS_OBJECT_FLOW_ACTION = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 13, ptr @.compoundliteral, i32 3, ptr @_object_methods_UVERBS_OBJECT_FLOW_ACTION440 }, [16 x i8] zeroinitializer }, align 32
@uverbs_def_obj_flow_action = dso_local constant { <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.184 }, { i8, i8, %union.anon, { i32 } }, %struct.uapi_definition }>, [60 x i8] } { <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.184 }, { i8, i8, %union.anon, { i32 } }, %struct.uapi_definition }> <{ { i8, i8, { %struct.anon, [4 x i8] }, %union.anon.184 } { i8 3, i8 0, { %struct.anon, [4 x i8] } { %struct.anon { i16 13 }, [4 x i8] undef }, %union.anon.184 { ptr @ib_uverbs_object_UVERBS_OBJECT_FLOW_ACTION } }, { i8, i8, %union.anon, { i32 } } { i8 6, i8 1, %union.anon zeroinitializer, { i32 } { i32 292 } }, %struct.uapi_definition zeroinitializer }>, [60 x i8] zeroinitializer }, align 32
@uverbs_idr_class = external dso_local constant %struct.uverbs_obj_type_class, align 4
@.compoundliteral = internal constant { %struct.uverbs_obj_idr_type, [20 x i8] } { %struct.uverbs_obj_idr_type { %struct.uverbs_obj_type { ptr @uverbs_idr_class, i32 56 }, ptr @uverbs_free_flow_action }, [20 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_FLOW_ACTION440 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_ESP_CREATE, ptr @ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_DESTROY, ptr @ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_ESP_MODIFY], [20 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_ESP_CREATE = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 0, i32 0, i32 6, ptr @_method_attrs_UVERBS_METHOD_FLOW_ACTION_ESP_CREATE, ptr @ib_uverbs_handler_UVERBS_METHOD_FLOW_ACTION_ESP_CREATE }, [44 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_DESTROY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 1, i32 0, i32 1, ptr @_method_attrs_UVERBS_METHOD_FLOW_ACTION_DESTROY, ptr @uverbs_destroy_def_handler }, [44 x i8] zeroinitializer }, align 32
@ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_ESP_MODIFY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 2, i32 0, i32 6, ptr @_method_attrs_UVERBS_METHOD_FLOW_ACTION_ESP_MODIFY, ptr @ib_uverbs_handler_UVERBS_METHOD_FLOW_ACTION_ESP_MODIFY }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_FLOW_ACTION_ESP_CREATE = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 0, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 32, { %struct.anon.175 } { %struct.anon.175 { i16 13, i8 2 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 1, %struct.uverbs_attr_spec { i8 1, i8 -96, %union.anon.173 { %struct.anon.174 { i16 24, i16 24 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 2, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@uverbs_flow_action_esp_keymat = internal constant { [1 x %struct.uverbs_attr_spec], [16 x i8] } { [1 x %struct.uverbs_attr_spec] [%struct.uverbs_attr_spec { i8 1, i8 -128, %union.anon.173 { %struct.anon.174 { i16 56, i16 56 } }, %union.anon.177 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal constant { { i16, { i8, i8, { %struct.anon.176, [3 x i8] }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.176, [3 x i8] }, %union.anon.177 } } { i16 3, { i8, i8, { %struct.anon.176, [3 x i8] }, %union.anon.177 } { i8 5, i8 32, { %struct.anon.176, [3 x i8] } { %struct.anon.176 { i8 1 }, [3 x i8] undef }, %union.anon.177 { %struct.anon.178 { ptr @uverbs_flow_action_esp_keymat }, [4 x i8] undef } } }, [44 x i8] zeroinitializer }, align 32
@uverbs_flow_action_esp_replay = internal constant { [2 x %struct.uverbs_attr_spec], [32 x i8] } { [2 x %struct.uverbs_attr_spec] [%struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.173 zeroinitializer, %union.anon.177 zeroinitializer }, %struct.uverbs_attr_spec { i8 1, i8 -128, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal constant { { i16, { i8, i8, { %struct.anon.176, [3 x i8] }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.176, [3 x i8] }, %union.anon.177 } } { i16 4, { i8, i8, { %struct.anon.176, [3 x i8] }, %union.anon.177 } { i8 5, i8 0, { %struct.anon.176, [3 x i8] } { %struct.anon.176 { i8 2 }, [3 x i8] undef }, %union.anon.177 { %struct.anon.178 { ptr @uverbs_flow_action_esp_replay }, [4 x i8] undef } } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 5, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.173 { %struct.anon.174 { i16 24, i16 24 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@flow_action_esp_replay_validate = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @flow_action_esp_replay_none, ptr @flow_action_esp_replay_def_ok], [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__const.parse_esp_ip.ipv6 = private unnamed_addr constant %struct.ib_uverbs_flow_ipv6_filter { [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", i32 -1, i8 -1, i8 -1, i8 -1, i8 0 }, align 4
@__const.parse_esp_ip.user_val = private unnamed_addr constant { %struct.ib_uverbs_flow_ipv4_filter, [28 x i8] } { %struct.ib_uverbs_flow_ipv4_filter zeroinitializer, [28 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 4
@_method_attrs_UVERBS_METHOD_FLOW_ACTION_DESTROY = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.compoundliteral.9], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 0, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 32, { %struct.anon.175 } { %struct.anon.175 { i16 13, i8 3 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_FLOW_ACTION_ESP_MODIFY = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @.compoundliteral.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @.compoundliteral.15], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal constant { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.175 }, %union.anon.177 } } { i16 0, { i8, i8, { %struct.anon.175 }, %union.anon.177 } { i8 3, i8 32, { %struct.anon.175 } { %struct.anon.175 { i16 13, i8 1 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 1, %struct.uverbs_attr_spec { i8 1, i8 -128, %union.anon.173 { %struct.anon.174 { i16 24, i16 24 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 2, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.173 { %struct.anon.174 { i16 4, i16 4 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal constant { { i16, { i8, i8, { %struct.anon.176, [3 x i8] }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.176, [3 x i8] }, %union.anon.177 } } { i16 3, { i8, i8, { %struct.anon.176, [3 x i8] }, %union.anon.177 } { i8 5, i8 0, { %struct.anon.176, [3 x i8] } { %struct.anon.176 { i8 1 }, [3 x i8] undef }, %union.anon.177 { %struct.anon.178 { ptr @uverbs_flow_action_esp_keymat }, [4 x i8] undef } } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal constant { { i16, { i8, i8, { %struct.anon.176, [3 x i8] }, %union.anon.177 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.176, [3 x i8] }, %union.anon.177 } } { i16 4, { i8, i8, { %struct.anon.176, [3 x i8] }, %union.anon.177 } { i8 5, i8 0, { %struct.anon.176, [3 x i8] } { %struct.anon.176 { i8 2 }, [3 x i8] undef }, %union.anon.177 { %struct.anon.178 { ptr @uverbs_flow_action_esp_replay }, [4 x i8] undef } } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 5, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.173 { %struct.anon.174 { i16 24, i16 24 } }, %union.anon.177 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 48, i64 49]
@___asan_gen_.19 = private unnamed_addr constant [43 x i8] c"ib_uverbs_object_UVERBS_OBJECT_FLOW_ACTION\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"uverbs_def_obj_flow_action\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 442, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [45 x i8] c"_object_methods_UVERBS_OBJECT_FLOW_ACTION440\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 435, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [54 x i8] c"ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_ESP_CREATE\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [51 x i8] c"ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_DESTROY\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [54 x i8] c"ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_ESP_MODIFY\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [51 x i8] c"_method_attrs_UVERBS_METHOD_FLOW_ACTION_ESP_CREATE\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 380, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [30 x i8] c"uverbs_flow_action_esp_keymat\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 359, i32 38 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [30 x i8] c"uverbs_flow_action_esp_replay\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 368, i32 38 }
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [32 x i8] c"flow_action_esp_replay_validate\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 109, i32 21 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 230, i32 6 }
@___asan_gen_.60 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 214, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 156, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [48 x i8] c"_method_attrs_UVERBS_METHOD_FLOW_ACTION_DESTROY\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 428, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [51 x i8] c"_method_attrs_UVERBS_METHOD_FLOW_ACTION_ESP_MODIFY\00", align 1
@___asan_gen_.70 = private constant [58 x i8] c"../drivers/infiniband/core/uverbs_std_types_flow_action.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 404, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @ib_uverbs_object_UVERBS_OBJECT_FLOW_ACTION, ptr @uverbs_def_obj_flow_action, ptr @.compoundliteral, ptr @_object_methods_UVERBS_OBJECT_FLOW_ACTION440, ptr @ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_ESP_CREATE, ptr @ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_DESTROY, ptr @ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_ESP_MODIFY, ptr @_method_attrs_UVERBS_METHOD_FLOW_ACTION_ESP_CREATE, ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @uverbs_flow_action_esp_keymat, ptr @.compoundliteral.4, ptr @uverbs_flow_action_esp_replay, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @flow_action_esp_replay_validate, ptr @.str, ptr @.str.7, ptr @.str.8, ptr @_method_attrs_UVERBS_METHOD_FLOW_ACTION_DESTROY, ptr @.compoundliteral.9, ptr @_method_attrs_UVERBS_METHOD_FLOW_ACTION_ESP_MODIFY, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @.compoundliteral.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @.compoundliteral.15], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_object_UVERBS_OBJECT_FLOW_ACTION to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_def_obj_flow_action to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_FLOW_ACTION440 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_ESP_CREATE to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_DESTROY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_ESP_MODIFY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_FLOW_ACTION_ESP_CREATE to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_flow_action_esp_keymat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_flow_action_esp_replay to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_action_esp_replay_validate to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_FLOW_ACTION_DESTROY to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_FLOW_ACTION_ESP_MODIFY to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uverbs_free_flow_action(ptr nocapture noundef readonly %uobject, i32 noundef %why, ptr nocapture noundef readnone %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobject, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %usecnt = getelementptr inbounds %struct.ib_flow_action, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt, i32 noundef 4) #7
  %2 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %destroy_flow_action = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1, i32 73
  %6 = ptrtoint ptr %destroy_flow_action to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %destroy_flow_action, align 4
  %call1 = tail call i32 %7(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_FLOW_ACTION_ESP_CREATE(ptr noundef %attrs) #0 align 64 {
entry:
  %esp_attr = alloca %struct.ib_flow_action_esp_attr, align 8
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
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %esp_attr) #7
  %9 = call ptr @memset(ptr %esp_attr, i32 0, i32 216)
  %create_flow_action_esp = getelementptr inbounds %struct.ib_device, ptr %8, i32 0, i32 1, i32 72
  %10 = ptrtoint ptr %create_flow_action_esp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %create_flow_action_esp, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %uverbs_attr_get_uobject.exit.cleanup_crit_edge, label %if.end

uverbs_attr_get_uobject.exit.cleanup_crit_edge:   ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %uverbs_attr_get_uobject.exit
  %call1 = call fastcc i32 @parse_flow_action_esp(ptr noundef %attrs, ptr noundef nonnull %esp_attr, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %12 = ptrtoint ptr %create_flow_action_esp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %create_flow_action_esp, align 4
  %call7 = call ptr %13(ptr noundef %8, ptr noundef nonnull %esp_attr, ptr noundef %attrs) #7
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %usecnt.i = getelementptr inbounds %struct.ib_flow_action, ptr %call7, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt.i, i32 noundef 4) #7
  %15 = ptrtoint ptr %usecnt.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %usecnt.i, align 4
  %16 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %8, ptr %call7, align 4
  %type1.i = getelementptr inbounds %struct.ib_flow_action, ptr %call7, i32 0, i32 2
  %17 = ptrtoint ptr %type1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type1.i, align 4
  %uobject.i = getelementptr inbounds %struct.ib_flow_action, ptr %call7, i32 0, i32 1
  %18 = ptrtoint ptr %uobject.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i, ptr %uobject.i, align 4
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i, i32 0, i32 3
  %19 = ptrtoint ptr %object.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7, ptr %object.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.end.cleanup_crit_edge, %uverbs_attr_get_uobject.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then9 ], [ 0, %if.end11 ], [ -95, %uverbs_attr_get_uobject.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %esp_attr) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_flow_action_esp(ptr noundef %attrs, ptr noundef %esp_attr, i1 noundef zeroext %is_modify) unnamed_addr #0 align 64 {
entry:
  %ipv4.i.i = alloca %struct.ib_uverbs_flow_ipv4_filter, align 4
  %ipv6.i.i = alloca %struct.ib_uverbs_flow_ipv6_filter, align 4
  %user_val.i.i = alloca %union.anon.185, align 4
  %uverbs_encap.i = alloca %struct.ib_uverbs_flow_action_esp_encap, align 8
  %uverbs_esp = alloca %struct.ib_uverbs_flow_action_esp, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %uverbs_esp) #7
  %0 = call ptr @memset(ptr %uverbs_esp, i32 0, i32 24)
  %esn = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %esp_attr, i32 0, i32 3
  %call = tail call fastcc i32 @_uverbs_copy_from(ptr noundef %esn, ptr noundef %attrs, i32 noundef 2, i32 noundef 4)
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 -2, label %entry.if.end_crit_edge33
  ]

entry.if.end_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge33
  %attr_present.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %2 = ptrtoint ptr %attr_present.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %attr_present.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end.if.end18_crit_edge, label %if.then2

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i32 @_uverbs_copy_from_or_zero(ptr noundef nonnull %uverbs_esp, ptr noundef %attrs, i32 noundef 1, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  %flags = getelementptr inbounds %struct.ib_uverbs_flow_action_esp, ptr %uverbs_esp, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %tobool7.not = icmp ult i32 %6, 16
  br i1 %tobool7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %uverbs_esp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uverbs_esp, align 8
  %spi11 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %esp_attr, i32 0, i32 4
  %9 = ptrtoint ptr %spi11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %spi11, align 8
  %seq = getelementptr inbounds %struct.ib_uverbs_flow_action_esp, ptr %uverbs_esp, i32 0, i32 1
  %10 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seq, align 4
  %seq13 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %esp_attr, i32 0, i32 5
  %12 = ptrtoint ptr %seq13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %seq13, align 4
  %tfc_pad = getelementptr inbounds %struct.ib_uverbs_flow_action_esp, ptr %uverbs_esp, i32 0, i32 2
  %13 = ptrtoint ptr %tfc_pad to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tfc_pad, align 8
  %tfc_pad15 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %esp_attr, i32 0, i32 6
  %15 = ptrtoint ptr %tfc_pad15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tfc_pad15, align 8
  %hard_limit_pkts = getelementptr inbounds %struct.ib_uverbs_flow_action_esp, ptr %uverbs_esp, i32 0, i32 4
  %16 = ptrtoint ptr %hard_limit_pkts to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %hard_limit_pkts, align 8
  %hard_limit_pkts17 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %esp_attr, i32 0, i32 8
  %18 = ptrtoint ptr %hard_limit_pkts17 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %hard_limit_pkts17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end9, %if.end.if.end18_crit_edge
  %flags19 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp, ptr %uverbs_esp, i32 0, i32 3
  %19 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags19, align 4
  %conv.i = zext i32 %20 to i64
  %21 = ptrtoint ptr %attr_present.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %attr_present.i, align 4
  %23 = and i32 %22, 16
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 28
  %26 = or i64 %25, %conv.i
  br i1 %is_modify, label %land.lhs.true.i, label %if.end18.esp_flags_uverbs_to_verbs.exit_crit_edge

if.end18.esp_flags_uverbs_to_verbs.exit_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %esp_flags_uverbs_to_verbs.exit

land.lhs.true.i:                                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %attr_present.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %attr_present.i, align 4
  %29 = and i32 %28, 4
  %30 = zext i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 31
  %32 = or i64 %31, %26
  br label %esp_flags_uverbs_to_verbs.exit

esp_flags_uverbs_to_verbs.exit:                   ; preds = %land.lhs.true.i, %if.end18.esp_flags_uverbs_to_verbs.exit_crit_edge
  %verbs_flags.1.i = phi i64 [ %26, %if.end18.esp_flags_uverbs_to_verbs.exit_crit_edge ], [ %32, %land.lhs.true.i ]
  %flags23 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %esp_attr, i32 0, i32 7
  %33 = ptrtoint ptr %flags23 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %verbs_flags.1.i, ptr %flags23, align 8
  %34 = ptrtoint ptr %attr_present.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %attr_present.i, align 4
  %36 = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i2.not = icmp eq i32 %36, 0
  br i1 %tobool.i2.not, label %esp_flags_uverbs_to_verbs.exit.if.end43_crit_edge, label %if.then25

esp_flags_uverbs_to_verbs.exit.if.end43_crit_edge: ; preds = %esp_flags_uverbs_to_verbs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then25:                                        ; preds = %esp_flags_uverbs_to_verbs.exit
  %37 = ptrtoint ptr %attr_present.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %attr_present.i, align 4
  %39 = and i32 %38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not.i.i = icmp eq i32 %39, 0
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 6
  %retval.0.i.i = select i1 %tobool.i.not.i.i, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %retval.0.i.i to i32
  br label %uverbs_attr_get_enum_id.exit

if.end.i:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %enum_id.i = getelementptr inbounds %struct.uverbs_ptr_attr, ptr %retval.0.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %enum_id.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %enum_id.i, align 4
  %conv.i3 = zext i8 %42 to i32
  br label %uverbs_attr_get_enum_id.exit

uverbs_attr_get_enum_id.exit:                     ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %40, %if.then.i ], [ %conv.i3, %if.end.i ]
  %keymat = getelementptr inbounds %struct.ib_flow_action_esp_attr, ptr %esp_attr, i32 0, i32 1
  %43 = ptrtoint ptr %keymat to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i, ptr %keymat, align 8
  %keymat28 = getelementptr inbounds %struct.ib_flow_action_esp_attr, ptr %esp_attr, i32 0, i32 1, i32 1
  %call29 = call fastcc i32 @_uverbs_copy_from_or_zero(ptr noundef %keymat28, ptr noundef %attrs, i32 noundef 3, i32 noundef 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %uverbs_attr_get_enum_id.exit.cleanup_crit_edge

uverbs_attr_get_enum_id.exit.cleanup_crit_edge:   ; preds = %uverbs_attr_get_enum_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %uverbs_attr_get_enum_id.exit
  %iv_algo.i = getelementptr inbounds %struct.ib_flow_action_esp_attr, ptr %esp_attr, i32 0, i32 1, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %iv_algo.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iv_algo.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.not.i = icmp eq i32 %45, 0
  br i1 %cmp.not.i, label %if.end.i4, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i4:                                        ; preds = %if.end32
  %key_len.i = getelementptr inbounds %struct.ib_flow_action_esp_attr, ptr %esp_attr, i32 0, i32 1, i32 1, i32 0, i32 4
  %46 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %key_len.i, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %47, label %if.end.i4.cleanup_crit_edge [
    i32 32, label %if.end.i4.if.end9.i_crit_edge
    i32 24, label %if.end.i4.if.end9.i_crit_edge34
    i32 16, label %if.end.i4.if.end9.i_crit_edge35
  ]

if.end.i4.if.end9.i_crit_edge35:                  ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.end.i4.if.end9.i_crit_edge34:                  ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.end.i4.if.end9.i_crit_edge:                    ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.end.i4.cleanup_crit_edge:                      ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i4.if.end9.i_crit_edge, %if.end.i4.if.end9.i_crit_edge34, %if.end.i4.if.end9.i_crit_edge35
  %icv_len.i = getelementptr inbounds %struct.ib_flow_action_esp_attr, ptr %esp_attr, i32 0, i32 1, i32 1, i32 0, i32 3
  %49 = ptrtoint ptr %icv_len.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %icv_len.i, align 8
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %50, label %if.end9.i.cleanup_crit_edge [
    i32 16, label %if.end9.i.if.end39_crit_edge
    i32 8, label %if.end9.i.if.end39_crit_edge36
    i32 12, label %if.end9.i.if.end39_crit_edge37
  ]

if.end9.i.if.end39_crit_edge37:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end9.i.if.end39_crit_edge36:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end9.i.if.end39_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %if.end9.i.if.end39_crit_edge, %if.end9.i.if.end39_crit_edge36, %if.end9.i.if.end39_crit_edge37
  %52 = ptrtoint ptr %esp_attr to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %keymat, ptr %esp_attr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end39, %esp_flags_uverbs_to_verbs.exit.if.end43_crit_edge
  %53 = ptrtoint ptr %attr_present.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %attr_present.i, align 4
  %55 = and i32 %54, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.i7.not = icmp eq i32 %55, 0
  br i1 %tobool.i7.not, label %if.end43.if.end66_crit_edge, label %if.then45

if.end43.if.end66_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then45:                                        ; preds = %if.end43
  %56 = ptrtoint ptr %attr_present.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %attr_present.i, align 4
  %58 = and i32 %57, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i.not.i.i9 = icmp eq i32 %58, 0
  %arrayidx.i.i10 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 8
  %retval.0.i.i11 = select i1 %tobool.i.not.i.i9, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i10
  %cmp.i.i12 = icmp ugt ptr %retval.0.i.i11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i12, label %if.then.i13, label %if.end.i16

if.then.i13:                                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %retval.0.i.i11 to i32
  br label %uverbs_attr_get_enum_id.exit18

if.end.i16:                                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  %enum_id.i14 = getelementptr inbounds %struct.uverbs_ptr_attr, ptr %retval.0.i.i11, i32 0, i32 3
  %60 = ptrtoint ptr %enum_id.i14 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %enum_id.i14, align 4
  %conv.i15 = zext i8 %61 to i32
  br label %uverbs_attr_get_enum_id.exit18

uverbs_attr_get_enum_id.exit18:                   ; preds = %if.end.i16, %if.then.i13
  %retval.0.i17 = phi i32 [ %59, %if.then.i13 ], [ %conv.i15, %if.end.i16 ]
  %replay = getelementptr inbounds %struct.ib_flow_action_esp_attr, ptr %esp_attr, i32 0, i32 2
  %62 = ptrtoint ptr %replay to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %retval.0.i17, ptr %replay, align 8
  %replay49 = getelementptr inbounds %struct.ib_flow_action_esp_attr, ptr %esp_attr, i32 0, i32 2, i32 1
  %call50 = call fastcc i32 @_uverbs_copy_from_or_zero(ptr noundef %replay49, ptr noundef %attrs, i32 noundef 4, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %uverbs_attr_get_enum_id.exit18.cleanup_crit_edge

uverbs_attr_get_enum_id.exit18.cleanup_crit_edge: ; preds = %uverbs_attr_get_enum_id.exit18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53:                                         ; preds = %uverbs_attr_get_enum_id.exit18
  %63 = ptrtoint ptr %replay to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %replay, align 8
  %arrayidx56 = getelementptr [2 x ptr], ptr @flow_action_esp_replay_validate, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx56, align 4
  %call59 = call i32 %66(ptr noundef %replay, i1 noundef zeroext %is_modify) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end62:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %replay65 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %esp_attr, i32 0, i32 1
  %67 = ptrtoint ptr %replay65 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %replay, ptr %replay65, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.end62, %if.end43.if.end66_crit_edge
  %68 = ptrtoint ptr %attr_present.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %attr_present.i, align 4
  %70 = and i32 %69, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.i20.not = icmp eq i32 %70, 0
  br i1 %tobool.i20.not, label %if.end66.cleanup_crit_edge, label %if.then68

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then68:                                        ; preds = %if.end66
  %encap = getelementptr inbounds %struct.ib_flow_action_esp_attr, ptr %esp_attr, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %uverbs_encap.i) #7
  %71 = call ptr @memset(ptr %uverbs_encap.i, i32 255, i32 24)
  %call.i = call fastcc i32 @_uverbs_copy_from(ptr noundef nonnull %uverbs_encap.i, ptr noundef %attrs, i32 noundef 5, i32 noundef 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i21, label %if.then68.flow_action_esp_get_encap.exit.thread_crit_edge

if.then68.flow_action_esp_get_encap.exit.thread_crit_edge: ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %flow_action_esp_get_encap.exit.thread

if.end.i21:                                       ; preds = %if.then68
  %next_ptr.i = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_encap, ptr %uverbs_encap.i, i32 0, i32 1
  %72 = ptrtoint ptr %next_ptr.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %next_ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %73)
  %tobool1.not.i = icmp eq i64 %73, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i21.flow_action_esp_get_encap.exit.thread_crit_edge

if.end.i21.flow_action_esp_get_encap.exit.thread_crit_edge: ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %flow_action_esp_get_encap.exit.thread

if.end3.i:                                        ; preds = %if.end.i21
  %type.i = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_encap, ptr %uverbs_encap.i, i32 0, i32 3
  %74 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %type.i, align 2
  %76 = and i16 %75, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %76)
  %switch.i = icmp eq i16 %76, 48
  br i1 %switch.i, label %if.end10.i, label %if.end3.i.flow_action_esp_get_encap.exit.thread_crit_edge

if.end3.i.flow_action_esp_get_encap.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %flow_action_esp_get_encap.exit.thread

if.end10.i:                                       ; preds = %if.end3.i
  %conv12.i = zext i16 %75 to i32
  %77 = ptrtoint ptr %uverbs_encap.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %uverbs_encap.i, align 8
  %conv16.i = trunc i64 %78 to i32
  %79 = inttoptr i32 %conv16.i to ptr
  %len.i = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_encap, ptr %uverbs_encap.i, i32 0, i32 2
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %len.i, align 8
  %conv17.i = zext i16 %81 to i32
  %spec.i = getelementptr inbounds %struct.ib_flow_action_esp_attr, ptr %esp_attr, i32 0, i32 3, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ipv4.i.i) #7
  %82 = call ptr @memset(ptr %ipv4.i.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ipv6.i.i) #7
  %83 = call ptr @memcpy(ptr %ipv6.i.i, ptr @__const.parse_esp_ip.ipv6, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %user_val.i.i) #7
  %84 = call ptr @memcpy(ptr %user_val.i.i, ptr @__const.parse_esp_ip.user_val, i32 40)
  %85 = zext i16 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %75, label %if.end10.i.flow_action_esp_get_encap.exit.thread30_crit_edge [
    i16 48, label %sw.bb.i.i
    i16 49, label %sw.bb8.i.i
  ]

if.end10.i.flow_action_esp_get_encap.exit.thread30_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %flow_action_esp_get_encap.exit.thread30

sw.bb.i.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %81)
  %cmp.i.i22 = icmp ugt i16 %81, 12
  br i1 %cmp.i.i22, label %land.lhs.true.i.i, label %sw.bb.i.i.if.end.i.i_crit_edge

sw.bb.i.i.if.end.i.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb.i.i
  %add.ptr.i.i = getelementptr i8, ptr %79, i32 12
  %sub.i.i = add nsw i32 %conv17.i, -12
  %call.i.i.i = call ptr @memdup_user(ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i) #7
  %cmp.i.i77.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i77.i.i, label %land.lhs.true.i.i.flow_action_esp_get_encap.exit.thread30_crit_edge, label %ib_is_buffer_cleared.exit.i.i

land.lhs.true.i.i.flow_action_esp_get_encap.exit.thread30_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %flow_action_esp_get_encap.exit.thread30

ib_is_buffer_cleared.exit.i.i:                    ; preds = %land.lhs.true.i.i
  %call4.i.i.i = call ptr @memchr_inv(ptr noundef %call.i.i.i, i32 noundef 0, i32 noundef %sub.i.i) #7
  %tobool.not.i.i.i = icmp eq ptr %call4.i.i.i, null
  call void @kfree(ptr noundef %call.i.i.i) #7
  br i1 %tobool.not.i.i.i, label %ib_is_buffer_cleared.exit.i.i.if.end.i.i_crit_edge, label %ib_is_buffer_cleared.exit.i.i.flow_action_esp_get_encap.exit.thread30_crit_edge

ib_is_buffer_cleared.exit.i.i.flow_action_esp_get_encap.exit.thread30_crit_edge: ; preds = %ib_is_buffer_cleared.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %flow_action_esp_get_encap.exit.thread30

ib_is_buffer_cleared.exit.i.i.if.end.i.i_crit_edge: ; preds = %ib_is_buffer_cleared.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %ib_is_buffer_cleared.exit.i.i.if.end.i.i_crit_edge, %sw.bb.i.i.if.end.i.i_crit_edge
  %86 = call i32 @llvm.umin.i32(i32 %conv17.i, i32 12) #7
  call void @__check_object_size(ptr noundef nonnull %user_val.i.i, i32 noundef %86, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #7
  %call.i.i.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i.i, label %if.end.i.i.if.end.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i.if.end.i.i.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i
  %87 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %79, i32 %86, i32 -1226833920) #10, !srcloc !39
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.then.i7.i.i.i, label %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !40

land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i.i

if.then.i7.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %user_val.i.i, i32 noundef %86) #7
  %88 = call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i.i.i.i.i.i.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 4
  %90 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #4, !srcloc !41
  %and.i.i.i.i.i.i = and i32 %90, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #7, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %user_val.i.i, ptr noundef %79, i32 noundef %86) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #7, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i7.i.i.i, %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, %if.end.i.i.if.end.i.i.i.i_crit_edge
  %res.0.i.i.i.i = phi i32 [ %86, %if.end.i.i.if.end.i.i.i.i_crit_edge ], [ %call1.i.i.i.i.i, %if.then.i7.i.i.i ], [ %86, %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %res.0.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.flow_action_esp_get_encap.exit_crit_edge, label %if.then11.i.i.i.i, !prof !40

if.end.i.i.i.i.flow_action_esp_get_encap.exit_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %flow_action_esp_get_encap.exit

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i.i = sub i32 %86, %res.0.i.i.i.i
  br label %flow_action_esp_get_encap.exit.thread30.sink.split

sw.bb8.i.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %81)
  %cmp9.i.i = icmp ugt i16 %81, 40
  br i1 %cmp9.i.i, label %land.lhs.true10.i.i, label %sw.bb8.i.i.if.end15.i.i_crit_edge

sw.bb8.i.i.if.end15.i.i_crit_edge:                ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i

land.lhs.true10.i.i:                              ; preds = %sw.bb8.i.i
  %add.ptr11.i.i = getelementptr i8, ptr %79, i32 40
  %sub12.i.i = add nsw i32 %conv17.i, -40
  %call.i78.i.i = call ptr @memdup_user(ptr noundef %add.ptr11.i.i, i32 noundef %sub12.i.i) #7
  %cmp.i.i79.i.i = icmp ugt ptr %call.i78.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i79.i.i, label %land.lhs.true10.i.i.flow_action_esp_get_encap.exit.thread30_crit_edge, label %ib_is_buffer_cleared.exit84.i.i

land.lhs.true10.i.i.flow_action_esp_get_encap.exit.thread30_crit_edge: ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %flow_action_esp_get_encap.exit.thread30

ib_is_buffer_cleared.exit84.i.i:                  ; preds = %land.lhs.true10.i.i
  %call4.i80.i.i = call ptr @memchr_inv(ptr noundef %call.i78.i.i, i32 noundef 0, i32 noundef %sub12.i.i) #7
  %tobool.not.i81.i.i = icmp eq ptr %call4.i80.i.i, null
  call void @kfree(ptr noundef %call.i78.i.i) #7
  br i1 %tobool.not.i81.i.i, label %ib_is_buffer_cleared.exit84.i.i.if.end15.i.i_crit_edge, label %ib_is_buffer_cleared.exit84.i.i.flow_action_esp_get_encap.exit.thread30_crit_edge

ib_is_buffer_cleared.exit84.i.i.flow_action_esp_get_encap.exit.thread30_crit_edge: ; preds = %ib_is_buffer_cleared.exit84.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %flow_action_esp_get_encap.exit.thread30

ib_is_buffer_cleared.exit84.i.i.if.end15.i.i_crit_edge: ; preds = %ib_is_buffer_cleared.exit84.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %ib_is_buffer_cleared.exit84.i.i.if.end15.i.i_crit_edge, %sw.bb8.i.i.if.end15.i.i_crit_edge
  %91 = call i32 @llvm.umin.i32(i32 %conv17.i, i32 40) #7
  call void @__check_object_size(ptr noundef nonnull %user_val.i.i, i32 noundef %91, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #7
  %call.i.i57.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i57.i.i, label %if.end15.i.i.if.end.i.i71.i.i_crit_edge, label %land.lhs.true.i.i61.i.i

if.end15.i.i.if.end.i.i71.i.i_crit_edge:          ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i71.i.i

land.lhs.true.i.i61.i.i:                          ; preds = %if.end15.i.i
  %92 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %79, i32 %91, i32 -1226833920) #10, !srcloc !39
  %asmresult.i.i59.i.i = extractvalue { i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i59.i.i)
  %cmp.i6.i60.i.i = icmp eq i32 %asmresult.i.i59.i.i, 0
  br i1 %cmp.i6.i60.i.i, label %if.then.i7.i68.i.i, label %land.lhs.true.i.i61.i.i.if.end.i.i71.i.i_crit_edge, !prof !40

land.lhs.true.i.i61.i.i.if.end.i.i71.i.i_crit_edge: ; preds = %land.lhs.true.i.i61.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i71.i.i

if.then.i7.i68.i.i:                               ; preds = %land.lhs.true.i.i61.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i62.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %user_val.i.i, i32 noundef %91) #7
  %93 = call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i.i.i.i.i.i63.i.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i.i.i.i63.i.i to ptr
  %cpu_domain.i.i.i.i.i64.i.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 4
  %95 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i64.i.i) #4, !srcloc !41
  %and.i.i.i.i65.i.i = and i32 %95, -13
  %or.i.i.i.i66.i.i = or i32 %and.i.i.i.i65.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i66.i.i) #7, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %call1.i.i.i67.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %user_val.i.i, ptr noundef %79, i32 noundef %91) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %95) #7, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  br label %if.end.i.i71.i.i

if.end.i.i71.i.i:                                 ; preds = %if.then.i7.i68.i.i, %land.lhs.true.i.i61.i.i.if.end.i.i71.i.i_crit_edge, %if.end15.i.i.if.end.i.i71.i.i_crit_edge
  %res.0.i.i69.i.i = phi i32 [ %91, %if.end15.i.i.if.end.i.i71.i.i_crit_edge ], [ %call1.i.i.i67.i.i, %if.then.i7.i68.i.i ], [ %91, %land.lhs.true.i.i61.i.i.if.end.i.i71.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i69.i.i)
  %tobool4.not.i.i70.i.i = icmp eq i32 %res.0.i.i69.i.i, 0
  br i1 %tobool4.not.i.i70.i.i, label %if.end.i.i71.i.i.flow_action_esp_get_encap.exit_crit_edge, label %if.then11.i.i74.i.i, !prof !40

if.end.i.i71.i.i.flow_action_esp_get_encap.exit_crit_edge: ; preds = %if.end.i.i71.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %flow_action_esp_get_encap.exit

if.then11.i.i74.i.i:                              ; preds = %if.end.i.i71.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i72.i.i = sub i32 %91, %res.0.i.i69.i.i
  br label %flow_action_esp_get_encap.exit.thread30.sink.split

flow_action_esp_get_encap.exit.thread:            ; preds = %if.end3.i.flow_action_esp_get_encap.exit.thread_crit_edge, %if.end.i21.flow_action_esp_get_encap.exit.thread_crit_edge, %if.then68.flow_action_esp_get_encap.exit.thread_crit_edge
  %retval.0.i24.ph = phi i32 [ -95, %if.end3.i.flow_action_esp_get_encap.exit.thread_crit_edge ], [ -95, %if.end.i21.flow_action_esp_get_encap.exit.thread_crit_edge ], [ %call.i, %if.then68.flow_action_esp_get_encap.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %uverbs_encap.i) #7
  br label %cleanup

flow_action_esp_get_encap.exit.thread30.sink.split: ; preds = %if.then11.i.i74.i.i, %if.then11.i.i.i.i
  %sub.i.i.i.i.sink = phi i32 [ %sub.i.i.i.i, %if.then11.i.i.i.i ], [ %sub.i.i72.i.i, %if.then11.i.i74.i.i ]
  %res.0.i.i.i.i.sink = phi i32 [ %res.0.i.i.i.i, %if.then11.i.i.i.i ], [ %res.0.i.i69.i.i, %if.then11.i.i74.i.i ]
  %add.ptr.i.i.i.i = getelementptr i8, ptr %user_val.i.i, i32 %sub.i.i.i.i.sink
  %96 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i.sink)
  br label %flow_action_esp_get_encap.exit.thread30

flow_action_esp_get_encap.exit.thread30:          ; preds = %flow_action_esp_get_encap.exit.thread30.sink.split, %ib_is_buffer_cleared.exit84.i.i.flow_action_esp_get_encap.exit.thread30_crit_edge, %land.lhs.true10.i.i.flow_action_esp_get_encap.exit.thread30_crit_edge, %ib_is_buffer_cleared.exit.i.i.flow_action_esp_get_encap.exit.thread30_crit_edge, %land.lhs.true.i.i.flow_action_esp_get_encap.exit.thread30_crit_edge, %if.end10.i.flow_action_esp_get_encap.exit.thread30_crit_edge
  %retval.0.i.i23.ph = phi i32 [ -95, %land.lhs.true10.i.i.flow_action_esp_get_encap.exit.thread30_crit_edge ], [ -95, %land.lhs.true.i.i.flow_action_esp_get_encap.exit.thread30_crit_edge ], [ -95, %if.end10.i.flow_action_esp_get_encap.exit.thread30_crit_edge ], [ -95, %ib_is_buffer_cleared.exit84.i.i.flow_action_esp_get_encap.exit.thread30_crit_edge ], [ -95, %ib_is_buffer_cleared.exit.i.i.flow_action_esp_get_encap.exit.thread30_crit_edge ], [ -14, %flow_action_esp_get_encap.exit.thread30.sink.split ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %user_val.i.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ipv6.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ipv4.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %uverbs_encap.i) #7
  br label %cleanup

flow_action_esp_get_encap.exit:                   ; preds = %if.end.i.i71.i.i.flow_action_esp_get_encap.exit_crit_edge, %if.end.i.i.i.i.flow_action_esp_get_encap.exit_crit_edge
  %user_pmask.0.i.i = phi ptr [ %ipv4.i.i, %if.end.i.i.i.i.flow_action_esp_get_encap.exit_crit_edge ], [ %ipv6.i.i, %if.end.i.i71.i.i.flow_action_esp_get_encap.exit_crit_edge ]
  %val_len.0.i.i = phi i32 [ %86, %if.end.i.i.i.i.flow_action_esp_get_encap.exit_crit_edge ], [ %91, %if.end.i.i71.i.i.flow_action_esp_get_encap.exit_crit_edge ]
  %call26.i.i = call i32 @ib_uverbs_kern_spec_to_ib_spec_filter(i32 noundef %conv12.i, ptr noundef nonnull %user_pmask.0.i.i, ptr noundef nonnull %user_val.i.i, i32 noundef %val_len.0.i.i, ptr noundef %spec.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %user_val.i.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ipv6.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ipv4.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %uverbs_encap.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool70.not = icmp eq i32 %call26.i.i, 0
  br i1 %tobool70.not, label %if.end72, label %flow_action_esp_get_encap.exit.cleanup_crit_edge

flow_action_esp_get_encap.exit.cleanup_crit_edge: ; preds = %flow_action_esp_get_encap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end72:                                         ; preds = %flow_action_esp_get_encap.exit
  call void @__sanitizer_cov_trace_pc() #9
  %encap75 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %esp_attr, i32 0, i32 2
  %97 = ptrtoint ptr %encap75 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %encap, ptr %encap75, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %flow_action_esp_get_encap.exit.cleanup_crit_edge, %flow_action_esp_get_encap.exit.thread30, %flow_action_esp_get_encap.exit.thread, %if.end66.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %uverbs_attr_get_enum_id.exit18.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end.i4.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %uverbs_attr_get_enum_id.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.then2.cleanup_crit_edge ], [ -95, %if.end6.cleanup_crit_edge ], [ %call29, %uverbs_attr_get_enum_id.exit.cleanup_crit_edge ], [ %call50, %uverbs_attr_get_enum_id.exit18.cleanup_crit_edge ], [ %call59, %if.end53.cleanup_crit_edge ], [ %call26.i.i, %flow_action_esp_get_encap.exit.cleanup_crit_edge ], [ 0, %if.end72 ], [ 0, %if.end66.cleanup_crit_edge ], [ %retval.0.i24.ph, %flow_action_esp_get_encap.exit.thread ], [ %retval.0.i.i23.ph, %flow_action_esp_get_encap.exit.thread30 ], [ -22, %if.end9.i.cleanup_crit_edge ], [ -22, %if.end.i4.cleanup_crit_edge ], [ -95, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %uverbs_esp) #7
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
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7, !prof !44

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
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.else.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.else.if.end.i.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.else
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 %conv3, i32 -1226833920) #10, !srcloc !39
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !40

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %to, i32 noundef %conv3) #7
  %12 = tail call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !41
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %to, ptr noundef %10, i32 noundef %conv3) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #7, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.else.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %conv3, %if.else.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %conv3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then11.i.i, !prof !40

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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_uverbs_copy_from_or_zero(ptr noundef %to, ptr noundef %attrs_bundle, i32 noundef %idx, i32 noundef %size) unnamed_addr #3 align 64 {
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
  %7 = tail call i32 @llvm.umin.i32(i32 %conv3, i32 %size)
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %6)
  %cmp.i36 = icmp ult i16 %6, 9
  br i1 %cmp.i36, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call ptr @memcpy(ptr %to, ptr %retval.0.i, i32 %7)
  br label %if.end15

if.else:                                          ; preds = %if.end
  %9 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %retval.0.i, align 8
  %conv11 = trunc i64 %10 to i32
  %11 = inttoptr i32 %conv11 to ptr
  tail call void @__check_object_size(ptr noundef %to, i32 noundef %7, i1 noundef zeroext false) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.else.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.else.if.end.i.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.else
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 %7, i32 -1226833920) #10, !srcloc !39
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !40

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %to, i32 noundef %7) #7
  %13 = tail call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !41
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %to, ptr noundef %11, i32 noundef %7) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #7, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.else.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %7, %if.else.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %7, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end15_crit_edge, label %if.then11.i.i, !prof !40

if.end.i.i.if.end15_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %7, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %to, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end15:                                         ; preds = %if.end.i.i.if.end15_crit_edge, %if.then6
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %size)
  %cmp16 = icmp ult i32 %conv3, %size
  br i1 %cmp16, label %if.then18, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %to, i32 %7
  %sub = sub i32 %size, %7
  %17 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end15.cleanup_crit_edge, %if.then11.i.i, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %if.then18 ], [ 0, %if.end15.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  ret i32 %retval.0
}

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @flow_action_esp_replay_none(ptr nocapture noundef readnone %replay, i1 noundef zeroext %is_modify) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %is_modify, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @flow_action_esp_replay_def_ok(ptr nocapture noundef readnone %replay, i1 noundef zeroext %is_modify) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_uverbs_kern_spec_to_ib_spec_filter(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_destroy_def_handler(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_handler_UVERBS_METHOD_FLOW_ACTION_ESP_MODIFY(ptr noundef %attrs) #0 align 64 {
entry:
  %esp_attr = alloca %struct.ib_flow_action_esp_attr, align 8
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
  %object = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i, i32 0, i32 3
  %5 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %object, align 8
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %esp_attr) #7
  %7 = call ptr @memset(ptr %esp_attr, i32 0, i32 216)
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %6, align 4
  %modify_flow_action_esp = getelementptr inbounds %struct.ib_device, ptr %9, i32 0, i32 1, i32 74
  %10 = ptrtoint ptr %modify_flow_action_esp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %modify_flow_action_esp, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %uverbs_attr_get_uobject.exit.cleanup_crit_edge, label %if.end

uverbs_attr_get_uobject.exit.cleanup_crit_edge:   ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %uverbs_attr_get_uobject.exit
  %call2 = call fastcc i32 @parse_flow_action_esp(ptr noundef %attrs, ptr noundef nonnull %esp_attr, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.ib_flow_action, ptr %6, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.not = icmp eq i32 %13, 1
  br i1 %cmp.not, label %if.end7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %6, align 4
  %modify_flow_action_esp10 = getelementptr inbounds %struct.ib_device, ptr %15, i32 0, i32 1, i32 74
  %16 = ptrtoint ptr %modify_flow_action_esp10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %modify_flow_action_esp10, align 4
  %call11 = call i32 %17(ptr noundef %6, ptr noundef nonnull %esp_attr, ptr noundef %attrs) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %uverbs_attr_get_uobject.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end7 ], [ -95, %uverbs_attr_get_uobject.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %esp_attr) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !26, !28}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @uverbs_def_obj_flow_action, !1, !"uverbs_def_obj_flow_action", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/uverbs_std_types_flow_action.c", i32 442, i32 30}
!2 = !{ptr @ib_uverbs_object_UVERBS_OBJECT_FLOW_ACTION, !3, !"ib_uverbs_object_UVERBS_OBJECT_FLOW_ACTION", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/uverbs_std_types_flow_action.c", i32 435, i32 1}
!4 = !{ptr @_object_methods_UVERBS_OBJECT_FLOW_ACTION440, !3, !"_object_methods_UVERBS_OBJECT_FLOW_ACTION440", i1 false, i1 false}
!5 = !{ptr @ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_ESP_CREATE, !6, !"ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_ESP_CREATE", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/core/uverbs_std_types_flow_action.c", i32 380, i32 1}
!7 = !{ptr @_method_attrs_UVERBS_METHOD_FLOW_ACTION_ESP_CREATE, !6, !"_method_attrs_UVERBS_METHOD_FLOW_ACTION_ESP_CREATE", i1 false, i1 false}
!8 = !{ptr @uverbs_flow_action_esp_keymat, !9, !"uverbs_flow_action_esp_keymat", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/core/uverbs_std_types_flow_action.c", i32 359, i32 38}
!10 = !{ptr @uverbs_flow_action_esp_replay, !11, !"uverbs_flow_action_esp_replay", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/core/uverbs_std_types_flow_action.c", i32 368, i32 38}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!19 = distinct !{null, !20, !"flow_action_esp_keymat_validate", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/core/uverbs_std_types_flow_action.c", i32 85, i32 21}
!21 = !{ptr @flow_action_esp_replay_validate, !22, !"flow_action_esp_replay_validate", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/core/uverbs_std_types_flow_action.c", i32 109, i32 21}
!23 = !{ptr @ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_DESTROY, !24, !"ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_DESTROY", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/core/uverbs_std_types_flow_action.c", i32 428, i32 1}
!25 = !{ptr @_method_attrs_UVERBS_METHOD_FLOW_ACTION_DESTROY, !24, !"_method_attrs_UVERBS_METHOD_FLOW_ACTION_DESTROY", i1 false, i1 false}
!26 = !{ptr @ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_ESP_MODIFY, !27, !"ib_uverbs_method_UVERBS_METHOD_FLOW_ACTION_ESP_MODIFY", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/core/uverbs_std_types_flow_action.c", i32 404, i32 1}
!28 = !{ptr @_method_attrs_UVERBS_METHOD_FLOW_ACTION_ESP_MODIFY, !27, !"_method_attrs_UVERBS_METHOD_FLOW_ACTION_ESP_MODIFY", i1 false, i1 false}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2152484405, i64 2152484430}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 4979960}
!42 = !{i64 4980157}
!43 = !{i64 2152465390}
!44 = !{!"branch_weights", i32 1, i32 2000}
