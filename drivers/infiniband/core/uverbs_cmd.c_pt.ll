; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/uverbs_cmd.c_pt.bc'
source_filename = "../drivers/infiniband/core/uverbs_cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+flow_resources_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_resources_alloc\09\09\09\09"
module asm "\09.long\09__crc_flow_resources_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_resources_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_resources_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_flow_resources_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_uverbs_flow_resources_free\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_uverbs_flow_resources_free\09\09\09\09"
module asm "\09.long\09__crc_ib_uverbs_flow_resources_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_uverbs_flow_resources_free:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_uverbs_flow_resources_free\22\09\09\09\09\09"
module asm "__kstrtabns_ib_uverbs_flow_resources_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flow_resources_add\22, \22a\22\09"
module asm "\09.weak\09__crc_flow_resources_add\09\09\09\09"
module asm "\09.long\09__crc_flow_resources_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flow_resources_add:\09\09\09\09\09"
module asm "\09.asciz \09\22flow_resources_add\22\09\09\09\09\09"
module asm "__kstrtabns_flow_resources_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.175 = type { i16 }
%union.anon.177 = type { ptr }
%union.anon.174 = type { %struct.anon.176 }
%struct.anon.176 = type { i16, i8, i8, i8 }
%struct.uapi_definition = type { i8, i8, %union.anon.174, %union.anon.177 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.185 }
%union.anon.185 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.186, i16, i16, i8 }
%union.anon.186 = type { i64 }
%struct.ib_uverbs_file = type { %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.list_head, ptr, %struct.xarray }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ib_uverbs_device = type { %struct.refcount_struct, i32, %struct.completion, %struct.device, [2 x ptr], ptr, i32, %struct.cdev, %struct.rb_root, %struct.mutex, %struct.srcu_struct, %struct.mutex, %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rb_root = type { ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.173, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.173 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.164 }
%struct.anon.164 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.ib_xrcd = type { ptr, %struct.atomic_t, ptr, %struct.rw_semaphore, %struct.xarray }
%struct.xrcd_table_entry = type { %struct.rb_node, ptr, ptr }
%struct.ib_uflow_resources = type { i32, i32, i32, i32, ptr, ptr }
%struct.ib_flow_action = type { ptr, ptr, i32, %struct.atomic_t }
%struct.ib_counters = type { ptr, ptr, %struct.atomic_t }
%struct.anon.170 = type { i32, i16 }
%struct.ib_flow_spec_eth = type { i32, i16, %struct.ib_flow_eth_filter, %struct.ib_flow_eth_filter }
%struct.ib_flow_eth_filter = type { [6 x i8], [6 x i8], i16, i16, [0 x i8] }
%struct.ib_flow_spec_ipv4 = type { i32, i16, %struct.ib_flow_ipv4_filter, %struct.ib_flow_ipv4_filter }
%struct.ib_flow_ipv4_filter = type { i32, i32, i8, i8, i8, i8, [0 x i8] }
%struct.ib_flow_spec_ipv6 = type { i32, i16, %struct.ib_flow_ipv6_filter, %struct.ib_flow_ipv6_filter }
%struct.ib_flow_ipv6_filter = type { [16 x i8], [16 x i8], i32, i8, i8, i8, [0 x i8] }
%struct.ib_flow_spec_tcp_udp = type { i32, i16, %struct.ib_flow_tcp_udp_filter, %struct.ib_flow_tcp_udp_filter }
%struct.ib_flow_tcp_udp_filter = type { i16, i16, [0 x i8] }
%struct.ib_flow_spec_tunnel = type { i32, i16, %struct.ib_flow_tunnel_filter, %struct.ib_flow_tunnel_filter }
%struct.ib_flow_tunnel_filter = type { i32, [0 x i8] }
%struct.ib_flow_spec_esp = type { i32, i16, %struct.ib_flow_esp_filter, %struct.ib_flow_esp_filter }
%struct.ib_flow_esp_filter = type { i32, i32, [0 x i8] }
%struct.ib_flow_spec_gre = type { i32, i16, %struct.ib_flow_gre_filter, %struct.ib_flow_gre_filter }
%struct.ib_flow_gre_filter = type { i16, i16, i32, [0 x i8] }
%struct.ib_flow_spec_mpls = type { i32, i16, %struct.ib_flow_mpls_filter, %struct.ib_flow_mpls_filter }
%struct.ib_flow_mpls_filter = type { i32, [0 x i8] }
%struct.ib_uverbs_create_ah = type { i64, i64, i32, i32, %struct.ib_uverbs_ah_attr, [0 x i64] }
%struct.ib_uverbs_ah_attr = type { %struct.ib_uverbs_global_route, i16, i8, i8, i8, i8, i8, i8 }
%struct.ib_uverbs_global_route = type { [16 x i8], i32, i8, i8, i8, i8 }
%struct.ib_uverbs_create_ah_resp = type { i32, [0 x i32] }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.165 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.160 }
%struct.anon.160 = type { i64, i64 }
%union.anon.165 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_uobject = type { i64, ptr, ptr, ptr, %struct.list_head, %struct.ib_rdmacg_object, i32, %struct.kref, %struct.atomic_t, %struct.callback_head, ptr }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.ib_ah_attr = type { i16, i8 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.ib_ah = type { ptr, ptr, ptr, ptr, i32 }
%struct.ib_uverbs_destroy_ah = type { i32 }
%struct.ib_uverbs_create_comp_channel = type { i64 }
%struct.ib_uverbs_create_comp_channel_resp = type { i32 }
%struct.ib_uverbs_completion_event_file = type { %struct.ib_uobject, %struct.ib_uverbs_event_queue }
%struct.ib_uverbs_event_queue = type { %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.list_head }
%struct.ib_uverbs_create_cq = type { i64, i64, i32, i32, i32, i32, [0 x i64] }
%struct.ib_uverbs_ex_create_cq = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.ib_uverbs_destroy_cq = type { i64, i32, i32 }
%struct.ib_uverbs_destroy_cq_resp = type { i32, i32 }
%struct.ib_ucq_object = type { %struct.ib_uevent_object, %struct.list_head, i32 }
%struct.ib_uevent_object = type { %struct.ib_uobject, ptr, %struct.list_head, i32 }
%struct.ib_uverbs_wc = type { i64, i32, i32, i32, i32, %union.anon.187, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%union.anon.187 = type { i32 }
%struct.ib_uverbs_poll_cq = type { i64, i32, i32 }
%struct.ib_uverbs_poll_cq_resp = type { i32, i32, [0 x %struct.ib_uverbs_wc] }
%struct.ib_wc = type { %union.anon.139, i32, i32, i32, i32, ptr, %union.anon.140, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.139 = type { i64 }
%union.anon.140 = type { i32 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.141, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.141 = type { %struct.work_struct }
%struct.ib_uverbs_req_notify_cq = type { i32, i32 }
%struct.ib_uverbs_resize_cq = type { i64, i32, i32, [0 x i64] }
%struct.ib_uverbs_resize_cq_resp = type { i32, i32, [0 x i64] }
%struct.ib_uverbs_ex_modify_cq = type { i32, i32, %struct.ib_uverbs_cq_moderation, i32 }
%struct.ib_uverbs_cq_moderation = type { i16, i16 }
%struct.ib_uverbs_get_context_resp = type { i32, i32, [0 x i64] }
%struct.ib_uverbs_get_context = type { i64, [0 x i64] }
%struct.ib_uverbs_query_device = type { i64, [0 x i64] }
%struct.ib_uverbs_query_device_resp = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, [4 x i8] }
%struct.ib_uverbs_query_port = type { i64, i8, [7 x i8], [0 x i64] }
%struct.ib_uverbs_query_port_resp = type { i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.ib_uverbs_ex_query_device_resp = type { %struct.ib_uverbs_query_device_resp, i32, i32, %struct.ib_uverbs_odp_caps, i64, i64, i64, %struct.ib_uverbs_rss_caps, i32, i32, %struct.ib_uverbs_tm_caps, %struct.ib_uverbs_cq_moderation_caps, i64, i32, i32 }
%struct.ib_uverbs_odp_caps = type { i64, %struct.anon.188, i32 }
%struct.anon.188 = type { i32, i32, i32 }
%struct.ib_uverbs_rss_caps = type { i32, i32, i32, i32 }
%struct.ib_uverbs_tm_caps = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_uverbs_cq_moderation_caps = type { i16, i16, i32 }
%struct.ib_uverbs_ex_query_device = type { i32, i32 }
%struct.ib_uverbs_create_flow = type { i32, i32, %struct.ib_uverbs_flow_attr }
%struct.ib_uverbs_flow_attr = type { i32, i16, i16, i8, [2 x i8], i8, i32, [0 x %struct.ib_uverbs_flow_spec_hdr] }
%struct.ib_uverbs_flow_spec_hdr = type { i32, i16, i16, [0 x i64] }
%struct.ib_uverbs_create_flow_resp = type { i32, i32 }
%struct.uverbs_req_iter = type { ptr, ptr }
%struct.ib_flow_attr = type { i32, i16, i16, i32, i8, i32, [0 x %union.ib_flow_spec] }
%union.ib_flow_spec = type { %struct.ib_flow_spec_ipv6 }
%struct.ib_flow = type { ptr, ptr, ptr }
%struct.ib_uflow_object = type { %struct.ib_uobject, ptr }
%struct.ib_uverbs_destroy_flow = type { i32, i32 }
%struct.ib_uverbs_dereg_mr = type { i32 }
%struct.ib_uverbs_reg_mr_resp = type { i32, i32, i32, [0 x i32] }
%struct.ib_uverbs_reg_mr = type { i64, i64, i64, i64, i32, i32, [0 x i64] }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.129, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.129 = type { %struct.list_head }
%struct.ib_uverbs_rereg_mr = type { i64, i32, i32, i64, i64, i64, i32, i32, [0 x i64] }
%struct.ib_uverbs_rereg_mr_resp = type { i32, i32, [0 x i64] }
%struct.ib_uverbs_alloc_mw = type { i64, i32, i8, [3 x i8], [0 x i64] }
%struct.ib_uverbs_alloc_mw_resp = type { i32, i32, [0 x i64] }
%struct.ib_mw = type { ptr, ptr, ptr, i32, i32 }
%struct.ib_uverbs_dealloc_mw = type { i32 }
%struct.ib_uverbs_alloc_pd_resp = type { i32, [0 x i32] }
%struct.ib_uverbs_alloc_pd = type { i64, [0 x i64] }
%struct.ib_uverbs_dealloc_pd = type { i32 }
%struct.ib_uverbs_attach_mcast = type { [16 x i8], i32, i16, i16, [0 x i64] }
%struct.ib_uqp_object = type { %struct.ib_uevent_object, %struct.mutex, %struct.list_head, ptr }
%struct.ib_uverbs_mcast_entry = type { %struct.list_head, %union.ib_gid, i16 }
%struct.ib_uverbs_create_qp = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, [0 x i64] }
%struct.ib_uverbs_ex_create_qp = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.ib_uverbs_destroy_qp = type { i64, i32, i32 }
%struct.ib_uverbs_destroy_qp_resp = type { i32 }
%struct.ib_uverbs_detach_mcast = type { [16 x i8], i32, i16, i16, [0 x i64] }
%struct.ib_uverbs_ex_modify_qp = type { %struct.ib_uverbs_modify_qp, i32, i32 }
%struct.ib_uverbs_modify_qp = type { %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], [0 x i64] }
%struct.ib_uverbs_qp_dest = type { [16 x i8], i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ib_uverbs_post_recv = type { i64, i32, i32, i32, i32, [0 x %struct.ib_uverbs_recv_wr] }
%struct.ib_uverbs_recv_wr = type { i64, i32, i32 }
%struct.ib_uverbs_post_recv_resp = type { i32 }
%struct.ib_uverbs_post_send = type { i64, i32, i32, i32, i32, [0 x %struct.ib_uverbs_send_wr] }
%struct.ib_uverbs_send_wr = type { i64, i32, i32, i32, %union.anon.210, %union.anon.211 }
%union.anon.210 = type { i32 }
%union.anon.211 = type { %struct.anon.213 }
%struct.anon.213 = type { i64, i64, i64, i32, i32 }
%struct.ib_uverbs_post_send_resp = type { i32 }
%struct.anon.214 = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ib_ud_wr = type { %struct.ib_send_wr, ptr, ptr, i32, i32, i32, i32, i16, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.161, ptr, i32, i32, i32, %union.anon.162 }
%union.anon.161 = type { i64 }
%union.anon.162 = type { i32 }
%struct.ib_rdma_wr = type { %struct.ib_send_wr, i64, i32 }
%struct.ib_atomic_wr = type { %struct.ib_send_wr, i64, i64, i64, i64, i64, i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.ib_uverbs_query_qp = type { i64, i32, i32, [0 x i64] }
%struct.ib_uverbs_query_qp_resp = type { %struct.ib_uverbs_qp_dest, %struct.ib_uverbs_qp_dest, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], [0 x i64] }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_uverbs_ex_modify_qp_resp = type { i32, i32 }
%struct.ib_uverbs_ex_create_rwq_ind_table = type { i32, i32, [0 x i32] }
%struct.ib_uverbs_ex_create_rwq_ind_table_resp = type { i32, i32, i32, i32 }
%struct.ib_rwq_ind_table_init_attr = type { i32, ptr }
%struct.ib_wq = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t }
%struct.ib_rwq_ind_table = type { ptr, ptr, %struct.atomic_t, i32, i32, ptr }
%struct.ib_uverbs_ex_destroy_rwq_ind_table = type { i32, i32 }
%struct.ib_uverbs_ex_create_wq = type { i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.ib_uverbs_ex_create_wq_resp = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_wq_init_attr = type { ptr, i32, i32, i32, ptr, ptr, i32 }
%struct.ib_uverbs_ex_destroy_wq = type { i32, i32 }
%struct.ib_uverbs_ex_destroy_wq_resp = type { i32, i32, i32, i32 }
%struct.ib_uverbs_ex_modify_wq = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_wq_attr = type { i32, i32, i32, i32 }
%struct.ib_uverbs_create_srq = type { i64, i64, i32, i32, i32, i32, [0 x i64] }
%struct.ib_uverbs_create_xsrq = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i64] }
%struct.ib_uverbs_destroy_srq = type { i64, i32, i32 }
%struct.ib_uverbs_destroy_srq_resp = type { i32 }
%struct.ib_uverbs_modify_srq = type { i32, i32, i32, i32, [0 x i64] }
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.132, %struct.rdma_restrack_entry }
%struct.anon.132 = type { ptr, %union.anon.133 }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type { ptr, i32 }
%struct.ib_uverbs_post_srq_recv = type { i64, i32, i32, i32, i32, [0 x %struct.ib_uverbs_recv_wr] }
%struct.ib_uverbs_post_srq_recv_resp = type { i32 }
%struct.ib_uverbs_query_srq = type { i64, i32, i32, [0 x i64] }
%struct.ib_uverbs_query_srq_resp = type { i32, i32, i32, i32 }
%struct.ib_uverbs_close_xrcd = type { i32 }
%struct.ib_uverbs_create_qp_resp = type { i32, i32, i32, i32, i32, i32, i32, i32, [0 x i32] }
%struct.ib_uverbs_open_qp = type { i64, i64, i32, i32, i8, [7 x i8], [0 x i64] }
%struct.ib_qp_open_attr = type { ptr, ptr, i32, i32 }
%struct.ib_uxrcd_object = type { %struct.ib_uobject, %struct.atomic_t }
%struct.ib_uverbs_open_xrcd_resp = type { i32, [0 x i32] }
%struct.ib_uverbs_open_xrcd = type { i64, i32, i32, [0 x i64] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ib_uverbs_ex_create_cq_resp = type { %struct.ib_uverbs_create_cq_resp, i32, i32 }
%struct.ib_uverbs_create_cq_resp = type { i32, i32, [0 x i64] }
%struct.ib_cq_init_attr = type { i32, i32, i32 }
%struct.anon.191 = type { i32, i16, i16 }
%struct.anon.203 = type { i32, i16, i16 }
%struct.ib_flow_spec_action_tag = type { i32, i16, i32 }
%struct.ib_uverbs_flow_spec_action_tag = type { %union.anon.202, i32, i32 }
%union.anon.202 = type { %struct.ib_uverbs_flow_spec_hdr }
%struct.anon.205 = type { i32, i16, i16 }
%struct.ib_flow_spec_action_drop = type { i32, i16 }
%struct.anon.207 = type { i32, i16, i16 }
%struct.ib_uverbs_flow_spec_action_handle = type { %union.anon.206, i32, i32 }
%union.anon.206 = type { %struct.ib_uverbs_flow_spec_hdr }
%struct.ib_flow_spec_action_handle = type { i32, i16, ptr }
%struct.anon.209 = type { i32, i16, i16 }
%struct.ib_uverbs_flow_spec_action_count = type { %union.anon.208, i32, i32 }
%union.anon.208 = type { %struct.ib_uverbs_flow_spec_hdr }
%struct.ib_flow_spec_action_count = type { i32, i16, ptr }
%struct.ib_uverbs_ex_create_qp_resp = type { %struct.ib_uverbs_create_qp_resp, i32, i32 }
%struct.ib_recv_wr = type { ptr, %union.anon.163, ptr, i32 }
%union.anon.163 = type { i64 }
%struct.ib_uverbs_create_srq_resp = type { i32, i32, i32, i32, [0 x i32] }
%struct.ib_srq_init_attr = type { ptr, ptr, %struct.ib_srq_attr, i32, %struct.anon.166 }
%struct.anon.166 = type { ptr, %union.anon.167 }
%union.anon.167 = type { %struct.anon.168 }
%struct.anon.168 = type { ptr }
%struct.ib_usrq_object = type { %struct.ib_uevent_object, ptr }

@ib_alloc_ucontext.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/infiniband/core/uverbs_cmd.c\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_flow_resources_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_resources_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_resources_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_resources_alloc to i32), ptr @__kstrtab_flow_resources_alloc, ptr @__kstrtabns_flow_resources_alloc }, section "___ksymtab+flow_resources_alloc", align 4
@__kstrtab_ib_uverbs_flow_resources_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_uverbs_flow_resources_free = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_uverbs_flow_resources_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_uverbs_flow_resources_free to i32), ptr @__kstrtab_ib_uverbs_flow_resources_free, ptr @__kstrtabns_ib_uverbs_flow_resources_free }, section "___ksymtab+ib_uverbs_flow_resources_free", align 4
@__kstrtab_flow_resources_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_flow_resources_add = external dso_local constant [0 x i8], align 1
@__ksymtab_flow_resources_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flow_resources_add to i32), ptr @__kstrtab_flow_resources_add, ptr @__kstrtabns_flow_resources_add }, section "___ksymtab+flow_resources_add", align 4
@uverbs_def_write_intf = dso_local constant { <{ { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, %struct.uapi_definition, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, %struct.uapi_definition, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition }>, [348 x i8] } { <{ { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, %struct.uapi_definition, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 }, %struct.uapi_definition, %struct.uapi_definition, %struct.uapi_definition, { i8, i8, %union.anon.174, { i32 } }, { i8, i8, %union.anon.174, { i32 } }, %struct.uapi_definition }> <{ { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 } { i8 1, i8 0, { %struct.anon.175, [4 x i8] } { %struct.anon.175 { i16 6 }, [4 x i8] undef }, %union.anon.177 zeroinitializer }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 5, i8 96, i8 56, i8 4 } }, %union.anon.177 { ptr @ib_uverbs_create_ah } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 8, i8 0, i8 4, i8 0 } }, %union.anon.177 { ptr @ib_uverbs_destroy_ah } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 1, %union.anon.174 zeroinitializer, { i32 } { i32 152 } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 1, %union.anon.174 zeroinitializer, { i32 } { i32 164 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 } { i8 1, i8 0, { %struct.anon.175, [4 x i8] } { %struct.anon.175 { i16 2 }, [4 x i8] undef }, %union.anon.177 zeroinitializer }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 17, i8 32, i8 8, i8 4 } }, %union.anon.177 { ptr @ib_uverbs_create_comp_channel } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 } { i8 1, i8 0, { %struct.anon.175, [4 x i8] } { %struct.anon.175 { i16 3 }, [4 x i8] undef }, %union.anon.177 zeroinitializer }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 18, i8 96, i8 32, i8 8 } }, %union.anon.177 { ptr @ib_uverbs_create_cq } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 200 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 20, i8 32, i8 16, i8 8 } }, %union.anon.177 { ptr @ib_uverbs_destroy_cq } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 208 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 21, i8 32, i8 16, i8 8 } }, %union.anon.177 { ptr @ib_uverbs_poll_cq } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 40 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 23, i8 0, i8 8, i8 0 } }, %union.anon.177 { ptr @ib_uverbs_req_notify_cq } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 48 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 19, i8 96, i8 16, i8 8 } }, %union.anon.177 { ptr @ib_uverbs_resize_cq } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 212 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 18, i8 -96, i8 32, i8 16 } }, %union.anon.177 { ptr @ib_uverbs_ex_create_cq } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 200 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 57, i8 -128, i8 16, i8 0 } }, %union.anon.177 { ptr @ib_uverbs_ex_modify_cq } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 204 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 } { i8 1, i8 0, { %struct.anon.175, [4 x i8] } { %struct.anon.175 zeroinitializer, [4 x i8] undef }, %union.anon.177 zeroinitializer }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 0, i8 96, i8 8, i8 8 } }, %union.anon.177 { ptr @ib_uverbs_get_context } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 1, i8 32, i8 8, i8 -80 } }, %union.anon.177 { ptr @ib_uverbs_query_device } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 2, i8 32, i8 16, i8 40 } }, %union.anon.177 { ptr @ib_uverbs_query_port } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 76 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 1, i8 -96, i8 8, i8 -72 } }, %union.anon.177 { ptr @ib_uverbs_ex_query_device } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 60 } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 1, %union.anon.174 zeroinitializer, { i32 } { i32 120 } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 1, %union.anon.174 zeroinitializer, { i32 } { i32 124 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 } { i8 1, i8 0, { %struct.anon.175, [4 x i8] } { %struct.anon.175 { i16 9 }, [4 x i8] undef }, %union.anon.177 zeroinitializer }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 50, i8 -96, i8 24, i8 8 } }, %union.anon.177 { ptr @ib_uverbs_ex_create_flow } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 280 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 51, i8 -128, i8 8, i8 0 } }, %union.anon.177 { ptr @ib_uverbs_ex_destroy_flow } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 284 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 } { i8 1, i8 0, { %struct.anon.175, [4 x i8] } { %struct.anon.175 { i16 7 }, [4 x i8] undef }, %union.anon.177 zeroinitializer }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 13, i8 0, i8 4, i8 0 } }, %union.anon.177 { ptr @ib_uverbs_dereg_mr } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 232 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 9, i8 96, i8 40, i8 12 } }, %union.anon.177 { ptr @ib_uverbs_reg_mr } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 220 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 11, i8 96, i8 48, i8 8 } }, %union.anon.177 { ptr @ib_uverbs_rereg_mr } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 228 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 } { i8 1, i8 0, { %struct.anon.175, [4 x i8] } { %struct.anon.175 { i16 8 }, [4 x i8] undef }, %union.anon.177 zeroinitializer }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 14, i8 96, i8 16, i8 8 } }, %union.anon.177 { ptr @ib_uverbs_alloc_mw } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 256 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 16, i8 0, i8 4, i8 0 } }, %union.anon.177 { ptr @ib_uverbs_dealloc_mw } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 260 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 } { i8 1, i8 0, { %struct.anon.175, [4 x i8] } { %struct.anon.175 { i16 1 }, [4 x i8] undef }, %union.anon.177 zeroinitializer }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 3, i8 96, i8 8, i8 4 } }, %union.anon.177 { ptr @ib_uverbs_alloc_pd } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 140 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 4, i8 0, i8 4, i8 0 } }, %union.anon.177 { ptr @ib_uverbs_dealloc_pd } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 144 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 } { i8 1, i8 0, { %struct.anon.175, [4 x i8] } { %struct.anon.175 { i16 4 }, [4 x i8] undef }, %union.anon.177 zeroinitializer }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 30, i8 0, i8 24, i8 0 } }, %union.anon.177 { ptr @ib_uverbs_attach_mcast } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 264 } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 268 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 24, i8 96, i8 56, i8 32 } }, %union.anon.177 { ptr @ib_uverbs_create_qp } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 184 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 27, i8 32, i8 16, i8 4 } }, %union.anon.177 { ptr @ib_uverbs_destroy_qp } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 196 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 31, i8 0, i8 24, i8 0 } }, %union.anon.177 { ptr @ib_uverbs_detach_mcast } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 268 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 26, i8 0, i8 112, i8 0 } }, %union.anon.177 { ptr @ib_uverbs_modify_qp } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 188 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 29, i8 32, i8 24, i8 4 } }, %union.anon.177 { ptr @ib_uverbs_post_recv } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 28 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 28, i8 32, i8 24, i8 4 } }, %union.anon.177 { ptr @ib_uverbs_post_send } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 24 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 25, i8 32, i8 16, i8 -128 } }, %union.anon.177 { ptr @ib_uverbs_query_qp } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 192 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 24, i8 -96, i8 52, i8 40 } }, %union.anon.177 { ptr @ib_uverbs_ex_create_qp } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 184 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 26, i8 -96, i8 112, i8 8 } }, %union.anon.177 { ptr @ib_uverbs_ex_modify_qp } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 188 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 } { i8 1, i8 0, { %struct.anon.175, [4 x i8] } { %struct.anon.175 { i16 11 }, [4 x i8] undef }, %union.anon.177 zeroinitializer }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 55, i8 -96, i8 8, i8 16 } }, %union.anon.177 { ptr @ib_uverbs_ex_create_rwq_ind_table } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 332 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 56, i8 -128, i8 8, i8 0 } }, %union.anon.177 { ptr @ib_uverbs_ex_destroy_rwq_ind_table } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 336 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 } { i8 1, i8 0, { %struct.anon.175, [4 x i8] } { %struct.anon.175 { i16 12 }, [4 x i8] undef }, %union.anon.177 zeroinitializer }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 52, i8 -96, i8 32, i8 24 } }, %union.anon.177 { ptr @ib_uverbs_ex_create_wq } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 320 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 54, i8 -96, i8 8, i8 16 } }, %union.anon.177 { ptr @ib_uverbs_ex_destroy_wq } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 324 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 53, i8 -128, i8 16, i8 0 } }, %union.anon.177 { ptr @ib_uverbs_ex_modify_wq } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 328 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 } { i8 1, i8 0, { %struct.anon.175, [4 x i8] } { %struct.anon.175 { i16 5 }, [4 x i8] undef }, %union.anon.177 zeroinitializer }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 32, i8 96, i8 32, i8 16 } }, %union.anon.177 { ptr @ib_uverbs_create_srq } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 168 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 39, i8 96, i8 48, i8 16 } }, %union.anon.177 { ptr @ib_uverbs_create_xsrq } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 168 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 35, i8 32, i8 16, i8 4 } }, %union.anon.177 { ptr @ib_uverbs_destroy_srq } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 180 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 33, i8 64, i8 16, i8 0 } }, %union.anon.177 { ptr @ib_uverbs_modify_srq } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 172 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 36, i8 32, i8 24, i8 4 } }, %union.anon.177 { ptr @ib_uverbs_post_srq_recv } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 52 } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 34, i8 32, i8 16, i8 16 } }, %union.anon.177 { ptr @ib_uverbs_query_srq } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 2, %union.anon.174 zeroinitializer, { i32 } { i32 176 } }, { i8, i8, { %struct.anon.175, [4 x i8] }, %union.anon.177 } { i8 1, i8 0, { %struct.anon.175, [4 x i8] } { %struct.anon.175 { i16 10 }, [4 x i8] undef }, %union.anon.177 zeroinitializer }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 38, i8 0, i8 4, i8 0 } }, %union.anon.177 { ptr @ib_uverbs_close_xrcd } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 40, i8 96, i8 32, i8 32 } }, %union.anon.177 { ptr @ib_uverbs_open_qp } }, %struct.uapi_definition { i8 2, i8 1, %union.anon.174 { %struct.anon.176 { i16 37, i8 96, i8 16, i8 4 } }, %union.anon.177 { ptr @ib_uverbs_open_xrcd } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 1, %union.anon.174 zeroinitializer, { i32 } { i32 272 } }, { i8, i8, %union.anon.174, { i32 } } { i8 6, i8 1, %union.anon.174 zeroinitializer, { i32 } { i32 276 } }, %struct.uapi_definition zeroinitializer }>, [348 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/rdma/uverbs_std_types.h\00", [32 x i8] zeroinitializer }, align 32
@ib_lid_cpu16.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@ib_uverbs_ex_create_flow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 3294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014create flow failed, flow %d: %u bytes left from uverb cmd\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ib_uverbs_ex_create_flow\00", [39 x i8] zeroinitializer }, align 32
@ib_uverbs_ex_create_flow._entry_ptr = internal global ptr @ib_uverbs_ex_create_flow._entry, section ".printk_index", align 4
@create_qp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&obj->mcast_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ib_uverbs\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4098, i64 4099]
@__sancov_gen_cov_switch_values.12 = internal global [11 x i64] [i64 9, i64 32, i64 32, i64 48, i64 49, i64 52, i64 64, i64 65, i64 80, i64 81, i64 96]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.14 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 9]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 9]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 4096, i64 4097, i64 4098, i64 4099]
@__sancov_gen_cov_switch_values.19 = internal global [9 x i64] [i64 7, i64 8, i64 2, i64 3, i64 4, i64 8, i64 9, i64 10, i64 255]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 160]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 212, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [22 x i8] c"uverbs_def_write_intf\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 3716, i32 30 }
@___asan_gen_.38 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 378, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 230, i32 6 }
@___asan_gen_.44 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 214, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 156, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [35 x i8] c"../include/rdma/uverbs_std_types.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 96, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 4605, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 3293, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 1315, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [40 x i8] c"../drivers/infiniband/core/uverbs_cmd.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 1435, i32 11 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab_flow_resources_add, ptr @__ksymtab_flow_resources_alloc, ptr @__ksymtab_ib_uverbs_flow_resources_free, ptr @ib_uverbs_ex_create_flow._entry, ptr @ib_uverbs_ex_create_flow._entry_ptr, ptr @.str, ptr @.str.1, ptr @uverbs_def_write_intf, ptr @xa_init_flags.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @create_qp.__key, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uverbs_def_write_intf to i32), i32 1284, i32 1632, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_uverbs_ex_create_flow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_qp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @uverbs_get_cleared_udata(ptr noundef returned writeonly %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %attrs, i32 0, i32 16)
  ret ptr %attrs
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_alloc_ucontext(ptr nocapture noundef %attrs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ufile1 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %0 = ptrtoint ptr %ufile1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufile1, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %ib_dev2 = getelementptr inbounds %struct.ib_uverbs_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ib_dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ib_dev2, align 8
  %call.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.do.end10_crit_edge, label %srcu_read_lock_held.exit

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

srcu_read_lock_held.exit:                         ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %3, i32 0, i32 10, i32 16
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end10_crit_edge

srcu_read_lock_held.exit.do.end10_crit_edge:      ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b36 = load i1, ptr @ib_alloc_ucontext.__warned, align 1
  br i1 %.b36, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ib_alloc_ucontext.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 213, ptr noundef nonnull @.str.1) #13
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %srcu_read_lock_held.exit.do.end10_crit_edge, %entry.do.end10_crit_edge
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %do.end10.cleanup_crit_edge, label %if.end8.i.i.i

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %do.end10
  %size_ib_ucontext = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1, i32 129
  %6 = ptrtoint ptr %size_ib_ucontext to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size_ib_ucontext, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #16
  %tobool16.not = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool16.not, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end18

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %call9.i.i.i, align 128
  %ufile20 = getelementptr inbounds %struct.ib_ucontext, ptr %call9.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %ufile20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %ufile20, align 4
  %mmap_xa = getelementptr inbounds %struct.ib_ucontext, ptr %call9.i.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %mmap_xa, ptr noundef nonnull @.str.2, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #13
  %xa_flags.i = getelementptr inbounds %struct.ib_ucontext, ptr %call9.i.i.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 67108868, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.ib_ucontext, ptr %call9.i.i.i, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %xa_head.i, align 16
  %res = getelementptr inbounds %struct.ib_ucontext, ptr %call9.i.i.i, i32 0, i32 3
  tail call void @rdma_restrack_new(ptr noundef %res, i32 noundef 5) #13
  tail call void @rdma_restrack_set_name(ptr noundef %res, ptr noundef null) #13
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %12 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i.i.i, ptr %context, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end8.i.i.i.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -5, %do.end10.cleanup_crit_edge ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_new(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_set_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_init_ucontext(ptr noundef %attrs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %2 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ufile, align 8
  %hw_destroy_rwsem = getelementptr inbounds %struct.ib_uverbs_file, ptr %3, i32 0, i32 6
  %call = tail call i32 @down_read_trylock(ptr noundef %hw_destroy_rwsem) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ucontext_lock = getelementptr inbounds %struct.ib_uverbs_file, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %ucontext_lock, i32 noundef 0) #13
  %ucontext1 = getelementptr inbounds %struct.ib_uverbs_file, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ucontext1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ucontext1, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %cg_obj = getelementptr inbounds %struct.ib_ucontext, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call5 = tail call i32 @ib_rdmacg_try_charge(ptr noundef %cg_obj, ptr noundef %7, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %alloc_ucontext = getelementptr inbounds %struct.ib_device, ptr %9, i32 0, i32 1, i32 30
  %10 = ptrtoint ptr %alloc_ucontext to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %alloc_ucontext, align 4
  %call10 = tail call i32 %11(ptr noundef %1, ptr noundef %attrs) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %err_uncharge

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %res = getelementptr inbounds %struct.ib_ucontext, ptr %1, i32 0, i32 3
  tail call void @rdma_restrack_add(ptr noundef %res) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !47
  %12 = ptrtoint ptr %ucontext1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %1, ptr %ucontext1, align 4
  br label %cleanup.sink.split

err_uncharge:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void @ib_rdmacg_uncharge(ptr noundef %cg_obj, ptr noundef %14, i32 noundef 0) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_uncharge, %if.end13, %if.end4.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end13 ], [ %call5, %if.end4.cleanup.sink.split_crit_edge ], [ %call10, %err_uncharge ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ucontext_lock) #13
  tail call void @up_read(ptr noundef %hw_destroy_rwsem) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_rdmacg_try_charge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_rdmacg_uncharge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_uverbs_dealloc_xrcd(ptr nocapture noundef readnone %uobject, ptr noundef %xrcd, i32 noundef %why, ptr noundef %attrs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %0 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %inode1 = getelementptr inbounds %struct.ib_xrcd, ptr %xrcd, i32 0, i32 2
  %4 = ptrtoint ptr %inode1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inode1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %usecnt = getelementptr inbounds %struct.ib_xrcd, ptr %xrcd, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !49
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.thread, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ib_dealloc_xrcd_user(ptr noundef %xrcd, ptr noundef %attrs) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.thread:                                    ; preds = %land.lhs.true
  %call221 = tail call i32 @ib_dealloc_xrcd_user(ptr noundef %xrcd, ptr noundef %attrs) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221)
  %tobool3.not22 = icmp eq i32 %call221, 0
  br i1 %tobool3.not22, label %if.then8, label %if.end.thread.if.then4_crit_edge

if.end.thread.if.then4_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.then4:                                         ; preds = %if.end.thread.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %call223 = phi i32 [ %call221, %if.end.thread.if.then4_crit_edge ], [ %call2, %if.end.if.then4_crit_edge ]
  %usecnt5 = getelementptr inbounds %struct.ib_xrcd, ptr %xrcd, i32 0, i32 1
  %call.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt5, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt5, i32 1, i32 3, i32 1) #13
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt5, ptr %usecnt5, i32 1, ptr elementtype(i32) %usecnt5) #13, !srcloc !51
  br label %cleanup

if.then8:                                         ; preds = %if.end.thread
  %xrcd_tree.i.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %xrcd_tree.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %p.015.i.i = load ptr, ptr %xrcd_tree.i.i, align 4
  %tobool.not16.i.i = icmp eq ptr %p.015.i.i, null
  br i1 %tobool.not16.i.i, label %if.then8.cleanup_crit_edge, label %if.then8.while.body.i.i_crit_edge

if.then8.while.body.i.i_crit_edge:                ; preds = %if.then8
  br label %while.body.i.i

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.i.i:                                   ; preds = %if.end7.i.i.while.body.i.i_crit_edge, %if.then8.while.body.i.i_crit_edge
  %p.017.i.i = phi ptr [ %p.0.i.i, %if.end7.i.i.while.body.i.i_crit_edge ], [ %p.015.i.i, %if.then8.while.body.i.i_crit_edge ]
  %inode2.i.i = getelementptr inbounds %struct.xrcd_table_entry, ptr %p.017.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %inode2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %inode2.i.i, align 4
  %cmp.i.i20 = icmp ugt ptr %10, %5
  br i1 %cmp.i.i20, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %p.017.i.i, i32 0, i32 2
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %cmp4.i.i = icmp ult ptr %10, %5
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.then.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %p.017.i.i, i32 0, i32 1
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %if.then.i.i
  %p.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then5.i.i ]
  %11 = ptrtoint ptr %p.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %p.0.i.i = load ptr, ptr %p.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %p.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.cleanup_crit_edge, label %if.end7.i.i.while.body.i.i_crit_edge

if.end7.i.i.while.body.i.i_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iput(ptr noundef nonnull %5) #13
  tail call void @rb_erase(ptr noundef nonnull %p.017.i.i, ptr noundef %xrcd_tree.i.i) #13
  tail call void @kfree(ptr noundef nonnull %p.017.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end7.i.i.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.then4, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call223, %if.then4 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then8.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.end7.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dealloc_xrcd_user(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @flow_resources_alloc(i32 noundef %num_specs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_specs)
  %tobool1.not = icmp eq i32 %num_specs, 0
  br i1 %tobool1.not, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end3:                                          ; preds = %if.end
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_specs, i32 4) #13
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kcalloc.exit56.thread, label %if.end7.i.i54, !prof !52

kcalloc.exit56.thread:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %counters = getelementptr inbounds %struct.ib_uflow_resources, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %counters to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %counters, align 8
  %collection63 = getelementptr inbounds %struct.ib_uflow_resources, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %collection63 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %collection63, align 4
  br label %err

if.end7.i.i54:                                    ; preds = %if.end3
  %5 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #16
  %counters58 = getelementptr inbounds %struct.ib_uflow_resources, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %counters58 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %counters58, align 8
  %call8.i.i53 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #16
  %collection = getelementptr inbounds %struct.ib_uflow_resources, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %collection to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8.i.i53, ptr %collection, align 4
  %8 = ptrtoint ptr %counters58 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %counters58, align 8
  %tobool7.not = icmp eq ptr %9, null
  %tobool9.not = icmp eq ptr %call8.i.i53, null
  %or.cond = select i1 %tobool7.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.end7.i.i54.err_crit_edge, label %if.end7.i.i54.out_crit_edge

if.end7.i.i54.out_crit_edge:                      ; preds = %if.end7.i.i54
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end7.i.i54.err_crit_edge:                      ; preds = %if.end7.i.i54
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

out:                                              ; preds = %if.end7.i.i54.out_crit_edge, %if.end.out_crit_edge
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %num_specs, ptr %call7.i.i, align 8
  br label %cleanup

err:                                              ; preds = %if.end7.i.i54.err_crit_edge, %kcalloc.exit56.thread
  %11 = phi ptr [ null, %kcalloc.exit56.thread ], [ %9, %if.end7.i.i54.err_crit_edge ]
  tail call void @kfree(ptr noundef %11) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %err, %out, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %out ], [ null, %err ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_uverbs_flow_resources_free(ptr noundef %uflow_res) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %uflow_res, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %collection_num = getelementptr inbounds %struct.ib_uflow_resources, ptr %uflow_res, i32 0, i32 2
  %0 = ptrtoint ptr %collection_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %collection_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp24.not = icmp eq i32 %1, 0
  br i1 %cmp24.not, label %for.cond.preheader.for.cond1.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond1.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %collection = getelementptr inbounds %struct.ib_uflow_resources, ptr %uflow_res, i32 0, i32 5
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body.for.cond1.preheader_crit_edge, %for.cond.preheader.for.cond1.preheader_crit_edge
  %counters_num = getelementptr inbounds %struct.ib_uflow_resources, ptr %uflow_res, i32 0, i32 3
  %2 = ptrtoint ptr %counters_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %counters_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp226.not = icmp eq i32 %3, 0
  br i1 %cmp226.not, label %for.cond1.preheader.for.end8_crit_edge, label %for.body3.lr.ph

for.cond1.preheader.for.end8_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end8

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %counters = getelementptr inbounds %struct.ib_uflow_resources, ptr %uflow_res, i32 0, i32 4
  br label %for.body3

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %collection to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %collection, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.025
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %usecnt = getelementptr inbounds %struct.ib_flow_action, ptr %7, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !53
  %inc = add nuw i32 %i.025, 1
  %9 = ptrtoint ptr %collection_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %collection_num, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond1.preheader_crit_edge

for.body.for.cond1.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body3.lr.ph
  %i.127 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc7, %for.body3.for.body3_crit_edge ]
  %11 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %counters, align 4
  %arrayidx4 = getelementptr ptr, ptr %12, i32 %i.127
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx4, align 4
  %usecnt5 = getelementptr inbounds %struct.ib_counters, ptr %14, i32 0, i32 2
  %call.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt5, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt5, i32 1, i32 3, i32 1) #13
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt5, ptr %usecnt5, i32 1, ptr elementtype(i32) %usecnt5) #13, !srcloc !53
  %inc7 = add nuw i32 %i.127, 1
  %16 = ptrtoint ptr %counters_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %counters_num, align 4
  %cmp2 = icmp ult i32 %inc7, %17
  br i1 %cmp2, label %for.body3.for.body3_crit_edge, label %for.body3.for.end8_crit_edge

for.body3.for.end8_crit_edge:                     ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end8

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3

for.end8:                                         ; preds = %for.body3.for.end8_crit_edge, %for.cond1.preheader.for.end8_crit_edge
  %collection9 = getelementptr inbounds %struct.ib_uflow_resources, ptr %uflow_res, i32 0, i32 5
  %18 = ptrtoint ptr %collection9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %collection9, align 4
  tail call void @kfree(ptr noundef %19) #13
  %counters10 = getelementptr inbounds %struct.ib_uflow_resources, ptr %uflow_res, i32 0, i32 4
  %20 = ptrtoint ptr %counters10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %counters10, align 4
  tail call void @kfree(ptr noundef %21) #13
  tail call void @kfree(ptr noundef nonnull %uflow_res) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flow_resources_add(ptr nocapture noundef %uflow_res, i32 noundef %type, ptr noundef %ibobj) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr inbounds %struct.ib_uflow_resources, ptr %uflow_res, i32 0, i32 1
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num, align 4
  %2 = ptrtoint ptr %uflow_res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uflow_res, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !54

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2609, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end35 [
    i32 4098, label %sw.bb
    i32 4099, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt = getelementptr inbounds %struct.ib_flow_action, ptr %ibobj, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !51
  %collection = getelementptr inbounds %struct.ib_uflow_resources, ptr %uflow_res, i32 0, i32 5
  %6 = ptrtoint ptr %collection to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %collection, align 4
  %collection_num = getelementptr inbounds %struct.ib_uflow_resources, ptr %uflow_res, i32 0, i32 2
  %8 = ptrtoint ptr %collection_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %collection_num, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %collection_num, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ibobj, ptr %arrayidx, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt20 = getelementptr inbounds %struct.ib_counters, ptr %ibobj, i32 0, i32 2
  %call.i.i62 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt20, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt20, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt20, ptr %usecnt20, i32 1, ptr elementtype(i32) %usecnt20) #13, !srcloc !51
  %counters = getelementptr inbounds %struct.ib_uflow_resources, ptr %uflow_res, i32 0, i32 4
  %12 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %counters, align 4
  %counters_num = getelementptr inbounds %struct.ib_uflow_resources, ptr %uflow_res, i32 0, i32 3
  %14 = ptrtoint ptr %counters_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %counters_num, align 4
  %inc21 = add i32 %15, 1
  store i32 %inc21, ptr %counters_num, align 4
  %arrayidx22 = getelementptr ptr, ptr %13, i32 %15
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ibobj, ptr %arrayidx22, align 4
  br label %sw.epilog

do.end35:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2623, i32 noundef 9, ptr noundef null) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end35, %sw.bb19, %sw.bb
  %17 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num, align 4
  %inc50 = add i32 %18, 1
  store i32 %inc50, ptr %num, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_uverbs_kern_spec_to_ib_spec_filter(i32 noundef %type, ptr noundef %kern_spec_mask, ptr nocapture noundef readonly %kern_spec_val, i32 noundef %kern_filter_sz, ptr noundef %ib_spec) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %kern_filter_sz, 3
  %and = and i32 %add, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %kern_filter_sz)
  %cmp.not = icmp eq i32 %and, %kern_filter_sz
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ib_spec to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %type, ptr %ib_spec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 336, i32 %type)
  %cmp3 = icmp eq i32 %type, 336
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %and7 = and i32 %type, -257
  %1 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %and7, label %if.end5.cleanup_crit_edge [
    i32 32, label %sw.bb
    i32 48, label %sw.bb13
    i32 49, label %sw.bb24
    i32 64, label %if.end5.sw.bb44_crit_edge
    i32 65, label %if.end5.sw.bb44_crit_edge326
    i32 80, label %sw.bb55
    i32 52, label %sw.bb76
    i32 81, label %sw.bb87
    i32 96, label %sw.bb98
  ]

if.end5.sw.bb44_crit_edge326:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb44

if.end5.sw.bb44_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb44

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  %conv = trunc i32 %kern_filter_sz to i16
  %conv.i = and i32 %kern_filter_sz, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %conv)
  %cmp.i = icmp ugt i16 %conv, 16
  br i1 %cmp.i, label %if.then.i, label %spec_filter_size.exit

if.then.i:                                        ; preds = %sw.bb
  %add.ptr.i = getelementptr i8, ptr %kern_spec_mask, i32 16
  %sub.i = add nsw i32 %conv.i, -16
  %call.i = tail call ptr @memchr_inv(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef %sub.i) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i.if.end12_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i.if.end12_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

spec_filter_size.exit:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp9 = icmp eq i32 %conv.i, 0
  br i1 %cmp9, label %spec_filter_size.exit.cleanup_crit_edge, label %spec_filter_size.exit.if.end12_crit_edge

spec_filter_size.exit.if.end12_crit_edge:         ; preds = %spec_filter_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

spec_filter_size.exit.cleanup_crit_edge:          ; preds = %spec_filter_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %spec_filter_size.exit.if.end12_crit_edge, %if.then.i.if.end12_crit_edge
  %retval.0.i276 = phi i32 [ %conv.i, %spec_filter_size.exit.if.end12_crit_edge ], [ 16, %if.then.i.if.end12_crit_edge ]
  %size = getelementptr inbounds %struct.anon.170, ptr %ib_spec, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 40, ptr %size, align 4
  %val = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %ib_spec, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %val, ptr %kern_spec_val, i32 %retval.0.i276)
  %mask = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %ib_spec, i32 0, i32 3
  %4 = call ptr @memcpy(ptr %mask, ptr %kern_spec_mask, i32 %retval.0.i276)
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end5
  %conv14 = trunc i32 %kern_filter_sz to i16
  %conv.i201 = and i32 %kern_filter_sz, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %conv14)
  %cmp.i202 = icmp ugt i16 %conv14, 12
  br i1 %cmp.i202, label %if.then.i208, label %spec_filter_size.exit210

if.then.i208:                                     ; preds = %sw.bb13
  %add.ptr.i203 = getelementptr i8, ptr %kern_spec_mask, i32 12
  %sub.i204 = add nsw i32 %conv.i201, -12
  %call.i205 = tail call ptr @memchr_inv(ptr noundef %add.ptr.i203, i32 noundef 0, i32 noundef %sub.i204) #13
  %tobool.not.i206 = icmp eq ptr %call.i205, null
  br i1 %tobool.not.i206, label %if.then.i208.if.end20_crit_edge, label %if.then.i208.cleanup_crit_edge

if.then.i208.cleanup_crit_edge:                   ; preds = %if.then.i208
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i208.if.end20_crit_edge:                  ; preds = %if.then.i208
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

spec_filter_size.exit210:                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i201)
  %cmp17 = icmp eq i32 %conv.i201, 0
  br i1 %cmp17, label %spec_filter_size.exit210.cleanup_crit_edge, label %spec_filter_size.exit210.if.end20_crit_edge

spec_filter_size.exit210.if.end20_crit_edge:      ; preds = %spec_filter_size.exit210
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

spec_filter_size.exit210.cleanup_crit_edge:       ; preds = %spec_filter_size.exit210
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %spec_filter_size.exit210.if.end20_crit_edge, %if.then.i208.if.end20_crit_edge
  %retval.0.i209283 = phi i32 [ %conv.i201, %spec_filter_size.exit210.if.end20_crit_edge ], [ 12, %if.then.i208.if.end20_crit_edge ]
  %size21 = getelementptr inbounds %struct.anon.170, ptr %ib_spec, i32 0, i32 1
  %5 = ptrtoint ptr %size21 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 32, ptr %size21, align 4
  %val22 = getelementptr inbounds %struct.ib_flow_spec_ipv4, ptr %ib_spec, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %val22, ptr %kern_spec_val, i32 %retval.0.i209283)
  %mask23 = getelementptr inbounds %struct.ib_flow_spec_ipv4, ptr %ib_spec, i32 0, i32 3
  %7 = call ptr @memcpy(ptr %mask23, ptr %kern_spec_mask, i32 %retval.0.i209283)
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end5
  %conv25 = trunc i32 %kern_filter_sz to i16
  %conv.i211 = and i32 %kern_filter_sz, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 39, i16 %conv25)
  %cmp.i212 = icmp ugt i16 %conv25, 39
  br i1 %cmp.i212, label %if.then.i218, label %spec_filter_size.exit220

if.then.i218:                                     ; preds = %sw.bb24
  %add.ptr.i213 = getelementptr i8, ptr %kern_spec_mask, i32 39
  %sub.i214 = add nsw i32 %conv.i211, -39
  %call.i215 = tail call ptr @memchr_inv(ptr noundef %add.ptr.i213, i32 noundef 0, i32 noundef %sub.i214) #13
  %tobool.not.i216 = icmp eq ptr %call.i215, null
  br i1 %tobool.not.i216, label %if.then.i218.if.end31_crit_edge, label %if.then.i218.cleanup_crit_edge

if.then.i218.cleanup_crit_edge:                   ; preds = %if.then.i218
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i218.if.end31_crit_edge:                  ; preds = %if.then.i218
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

spec_filter_size.exit220:                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i211)
  %cmp28 = icmp eq i32 %conv.i211, 0
  br i1 %cmp28, label %spec_filter_size.exit220.cleanup_crit_edge, label %spec_filter_size.exit220.if.end31_crit_edge

spec_filter_size.exit220.if.end31_crit_edge:      ; preds = %spec_filter_size.exit220
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

spec_filter_size.exit220.cleanup_crit_edge:       ; preds = %spec_filter_size.exit220
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end31:                                         ; preds = %spec_filter_size.exit220.if.end31_crit_edge, %if.then.i218.if.end31_crit_edge
  %retval.0.i219290 = phi i32 [ %conv.i211, %spec_filter_size.exit220.if.end31_crit_edge ], [ 39, %if.then.i218.if.end31_crit_edge ]
  %size32 = getelementptr inbounds %struct.anon.170, ptr %ib_spec, i32 0, i32 1
  %8 = ptrtoint ptr %size32 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 88, ptr %size32, align 4
  %val33 = getelementptr inbounds %struct.ib_flow_spec_ipv6, ptr %ib_spec, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %val33, ptr %kern_spec_val, i32 %retval.0.i219290)
  %mask34 = getelementptr inbounds %struct.ib_flow_spec_ipv6, ptr %ib_spec, i32 0, i32 3
  %10 = call ptr @memcpy(ptr %mask34, ptr %kern_spec_mask, i32 %retval.0.i219290)
  %flow_label = getelementptr inbounds %struct.ib_flow_spec_ipv6, ptr %ib_spec, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flow_label, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %12)
  %cmp36 = icmp ugt i32 %12, 1048575
  br i1 %cmp36, label %if.end31.cleanup_crit_edge, label %lor.lhs.false

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end31
  %flow_label39 = getelementptr inbounds %struct.ib_flow_spec_ipv6, ptr %ib_spec, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %flow_label39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flow_label39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %14)
  %cmp40 = icmp ugt i32 %14, 1048575
  br i1 %cmp40, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb44:                                          ; preds = %if.end5.sw.bb44_crit_edge, %if.end5.sw.bb44_crit_edge326
  %conv45 = trunc i32 %kern_filter_sz to i16
  %conv.i221 = and i32 %kern_filter_sz, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %conv45)
  %cmp.i222 = icmp ugt i16 %conv45, 4
  br i1 %cmp.i222, label %if.then.i228, label %spec_filter_size.exit230

if.then.i228:                                     ; preds = %sw.bb44
  %add.ptr.i223 = getelementptr i8, ptr %kern_spec_mask, i32 4
  %sub.i224 = add nsw i32 %conv.i221, -4
  %call.i225 = tail call ptr @memchr_inv(ptr noundef %add.ptr.i223, i32 noundef 0, i32 noundef %sub.i224) #13
  %tobool.not.i226 = icmp eq ptr %call.i225, null
  br i1 %tobool.not.i226, label %if.then.i228.if.end51_crit_edge, label %if.then.i228.cleanup_crit_edge

if.then.i228.cleanup_crit_edge:                   ; preds = %if.then.i228
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i228.if.end51_crit_edge:                  ; preds = %if.then.i228
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

spec_filter_size.exit230:                         ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i221)
  %cmp48 = icmp eq i32 %conv.i221, 0
  br i1 %cmp48, label %spec_filter_size.exit230.cleanup_crit_edge, label %spec_filter_size.exit230.if.end51_crit_edge

spec_filter_size.exit230.if.end51_crit_edge:      ; preds = %spec_filter_size.exit230
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

spec_filter_size.exit230.cleanup_crit_edge:       ; preds = %spec_filter_size.exit230
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end51:                                         ; preds = %spec_filter_size.exit230.if.end51_crit_edge, %if.then.i228.if.end51_crit_edge
  %retval.0.i229297 = phi i32 [ %conv.i221, %spec_filter_size.exit230.if.end51_crit_edge ], [ 4, %if.then.i228.if.end51_crit_edge ]
  %size52 = getelementptr inbounds %struct.anon.170, ptr %ib_spec, i32 0, i32 1
  %15 = ptrtoint ptr %size52 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 16, ptr %size52, align 4
  %val53 = getelementptr inbounds %struct.ib_flow_spec_tcp_udp, ptr %ib_spec, i32 0, i32 2
  %16 = call ptr @memcpy(ptr %val53, ptr %kern_spec_val, i32 %retval.0.i229297)
  %mask54 = getelementptr inbounds %struct.ib_flow_spec_tcp_udp, ptr %ib_spec, i32 0, i32 3
  %17 = call ptr @memcpy(ptr %mask54, ptr %kern_spec_mask, i32 %retval.0.i229297)
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end5
  %conv56 = trunc i32 %kern_filter_sz to i16
  %conv.i231 = and i32 %kern_filter_sz, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %conv56)
  %cmp.i232 = icmp ugt i16 %conv56, 4
  br i1 %cmp.i232, label %if.then.i238, label %spec_filter_size.exit240

if.then.i238:                                     ; preds = %sw.bb55
  %add.ptr.i233 = getelementptr i8, ptr %kern_spec_mask, i32 4
  %sub.i234 = add nsw i32 %conv.i231, -4
  %call.i235 = tail call ptr @memchr_inv(ptr noundef %add.ptr.i233, i32 noundef 0, i32 noundef %sub.i234) #13
  %tobool.not.i236 = icmp eq ptr %call.i235, null
  br i1 %tobool.not.i236, label %if.then.i238.if.end62_crit_edge, label %if.then.i238.cleanup_crit_edge

if.then.i238.cleanup_crit_edge:                   ; preds = %if.then.i238
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i238.if.end62_crit_edge:                  ; preds = %if.then.i238
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

spec_filter_size.exit240:                         ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i231)
  %cmp59 = icmp eq i32 %conv.i231, 0
  br i1 %cmp59, label %spec_filter_size.exit240.cleanup_crit_edge, label %spec_filter_size.exit240.if.end62_crit_edge

spec_filter_size.exit240.if.end62_crit_edge:      ; preds = %spec_filter_size.exit240
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

spec_filter_size.exit240.cleanup_crit_edge:       ; preds = %spec_filter_size.exit240
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end62:                                         ; preds = %spec_filter_size.exit240.if.end62_crit_edge, %if.then.i238.if.end62_crit_edge
  %retval.0.i239304 = phi i32 [ %conv.i231, %spec_filter_size.exit240.if.end62_crit_edge ], [ 4, %if.then.i238.if.end62_crit_edge ]
  %size63 = getelementptr inbounds %struct.ib_flow_spec_tunnel, ptr %ib_spec, i32 0, i32 1
  %18 = ptrtoint ptr %size63 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 16, ptr %size63, align 4
  %val64 = getelementptr inbounds %struct.ib_flow_spec_tunnel, ptr %ib_spec, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %val64, ptr %kern_spec_val, i32 %retval.0.i239304)
  %mask65 = getelementptr inbounds %struct.ib_flow_spec_tunnel, ptr %ib_spec, i32 0, i32 3
  %20 = call ptr @memcpy(ptr %mask65, ptr %kern_spec_mask, i32 %retval.0.i239304)
  %21 = ptrtoint ptr %mask65 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %22)
  %cmp67 = icmp ugt i32 %22, 16777215
  br i1 %cmp67, label %if.end62.cleanup_crit_edge, label %lor.lhs.false69

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false69:                                  ; preds = %if.end62
  %23 = ptrtoint ptr %val64 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %24)
  %cmp72 = icmp ugt i32 %24, 16777215
  br i1 %cmp72, label %lor.lhs.false69.cleanup_crit_edge, label %lor.lhs.false69.sw.epilog_crit_edge

lor.lhs.false69.sw.epilog_crit_edge:              ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

lor.lhs.false69.cleanup_crit_edge:                ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb76:                                          ; preds = %if.end5
  %conv77 = trunc i32 %kern_filter_sz to i16
  %conv.i241 = and i32 %kern_filter_sz, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %conv77)
  %cmp.i242 = icmp ugt i16 %conv77, 8
  br i1 %cmp.i242, label %if.then.i248, label %spec_filter_size.exit250

if.then.i248:                                     ; preds = %sw.bb76
  %add.ptr.i243 = getelementptr i8, ptr %kern_spec_mask, i32 8
  %sub.i244 = add nsw i32 %conv.i241, -8
  %call.i245 = tail call ptr @memchr_inv(ptr noundef %add.ptr.i243, i32 noundef 0, i32 noundef %sub.i244) #13
  %tobool.not.i246 = icmp eq ptr %call.i245, null
  br i1 %tobool.not.i246, label %if.then.i248.if.end83_crit_edge, label %if.then.i248.cleanup_crit_edge

if.then.i248.cleanup_crit_edge:                   ; preds = %if.then.i248
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i248.if.end83_crit_edge:                  ; preds = %if.then.i248
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

spec_filter_size.exit250:                         ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i241)
  %cmp80 = icmp eq i32 %conv.i241, 0
  br i1 %cmp80, label %spec_filter_size.exit250.cleanup_crit_edge, label %spec_filter_size.exit250.if.end83_crit_edge

spec_filter_size.exit250.if.end83_crit_edge:      ; preds = %spec_filter_size.exit250
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

spec_filter_size.exit250.cleanup_crit_edge:       ; preds = %spec_filter_size.exit250
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end83:                                         ; preds = %spec_filter_size.exit250.if.end83_crit_edge, %if.then.i248.if.end83_crit_edge
  %retval.0.i249311 = phi i32 [ %conv.i241, %spec_filter_size.exit250.if.end83_crit_edge ], [ 8, %if.then.i248.if.end83_crit_edge ]
  %size84 = getelementptr inbounds %struct.ib_flow_spec_esp, ptr %ib_spec, i32 0, i32 1
  %25 = ptrtoint ptr %size84 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 24, ptr %size84, align 4
  %val85 = getelementptr inbounds %struct.ib_flow_spec_esp, ptr %ib_spec, i32 0, i32 2
  %26 = call ptr @memcpy(ptr %val85, ptr %kern_spec_val, i32 %retval.0.i249311)
  %mask86 = getelementptr inbounds %struct.ib_flow_spec_esp, ptr %ib_spec, i32 0, i32 3
  %27 = call ptr @memcpy(ptr %mask86, ptr %kern_spec_mask, i32 %retval.0.i249311)
  br label %sw.epilog

sw.bb87:                                          ; preds = %if.end5
  %conv88 = trunc i32 %kern_filter_sz to i16
  %conv.i251 = and i32 %kern_filter_sz, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %conv88)
  %cmp.i252 = icmp ugt i16 %conv88, 8
  br i1 %cmp.i252, label %if.then.i258, label %spec_filter_size.exit260

if.then.i258:                                     ; preds = %sw.bb87
  %add.ptr.i253 = getelementptr i8, ptr %kern_spec_mask, i32 8
  %sub.i254 = add nsw i32 %conv.i251, -8
  %call.i255 = tail call ptr @memchr_inv(ptr noundef %add.ptr.i253, i32 noundef 0, i32 noundef %sub.i254) #13
  %tobool.not.i256 = icmp eq ptr %call.i255, null
  br i1 %tobool.not.i256, label %if.then.i258.if.end94_crit_edge, label %if.then.i258.cleanup_crit_edge

if.then.i258.cleanup_crit_edge:                   ; preds = %if.then.i258
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i258.if.end94_crit_edge:                  ; preds = %if.then.i258
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94

spec_filter_size.exit260:                         ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i251)
  %cmp91 = icmp eq i32 %conv.i251, 0
  br i1 %cmp91, label %spec_filter_size.exit260.cleanup_crit_edge, label %spec_filter_size.exit260.if.end94_crit_edge

spec_filter_size.exit260.if.end94_crit_edge:      ; preds = %spec_filter_size.exit260
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94

spec_filter_size.exit260.cleanup_crit_edge:       ; preds = %spec_filter_size.exit260
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end94:                                         ; preds = %spec_filter_size.exit260.if.end94_crit_edge, %if.then.i258.if.end94_crit_edge
  %retval.0.i259318 = phi i32 [ %conv.i251, %spec_filter_size.exit260.if.end94_crit_edge ], [ 8, %if.then.i258.if.end94_crit_edge ]
  %size95 = getelementptr inbounds %struct.ib_flow_spec_gre, ptr %ib_spec, i32 0, i32 1
  %28 = ptrtoint ptr %size95 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 24, ptr %size95, align 4
  %val96 = getelementptr inbounds %struct.ib_flow_spec_gre, ptr %ib_spec, i32 0, i32 2
  %29 = call ptr @memcpy(ptr %val96, ptr %kern_spec_val, i32 %retval.0.i259318)
  %mask97 = getelementptr inbounds %struct.ib_flow_spec_gre, ptr %ib_spec, i32 0, i32 3
  %30 = call ptr @memcpy(ptr %mask97, ptr %kern_spec_mask, i32 %retval.0.i259318)
  br label %sw.epilog

sw.bb98:                                          ; preds = %if.end5
  %conv99 = trunc i32 %kern_filter_sz to i16
  %conv.i261 = and i32 %kern_filter_sz, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %conv99)
  %cmp.i262 = icmp ugt i16 %conv99, 4
  br i1 %cmp.i262, label %if.then.i268, label %spec_filter_size.exit270

if.then.i268:                                     ; preds = %sw.bb98
  %add.ptr.i263 = getelementptr i8, ptr %kern_spec_mask, i32 4
  %sub.i264 = add nsw i32 %conv.i261, -4
  %call.i265 = tail call ptr @memchr_inv(ptr noundef %add.ptr.i263, i32 noundef 0, i32 noundef %sub.i264) #13
  %tobool.not.i266 = icmp eq ptr %call.i265, null
  br i1 %tobool.not.i266, label %if.then.i268.if.end105_crit_edge, label %if.then.i268.cleanup_crit_edge

if.then.i268.cleanup_crit_edge:                   ; preds = %if.then.i268
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i268.if.end105_crit_edge:                 ; preds = %if.then.i268
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

spec_filter_size.exit270:                         ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i261)
  %cmp102 = icmp eq i32 %conv.i261, 0
  br i1 %cmp102, label %spec_filter_size.exit270.cleanup_crit_edge, label %spec_filter_size.exit270.if.end105_crit_edge

spec_filter_size.exit270.if.end105_crit_edge:     ; preds = %spec_filter_size.exit270
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

spec_filter_size.exit270.cleanup_crit_edge:       ; preds = %spec_filter_size.exit270
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end105:                                        ; preds = %spec_filter_size.exit270.if.end105_crit_edge, %if.then.i268.if.end105_crit_edge
  %retval.0.i269325 = phi i32 [ %conv.i261, %spec_filter_size.exit270.if.end105_crit_edge ], [ 4, %if.then.i268.if.end105_crit_edge ]
  %size106 = getelementptr inbounds %struct.ib_flow_spec_mpls, ptr %ib_spec, i32 0, i32 1
  %31 = ptrtoint ptr %size106 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 16, ptr %size106, align 4
  %val107 = getelementptr inbounds %struct.ib_flow_spec_mpls, ptr %ib_spec, i32 0, i32 2
  %32 = call ptr @memcpy(ptr %val107, ptr %kern_spec_val, i32 %retval.0.i269325)
  %mask108 = getelementptr inbounds %struct.ib_flow_spec_mpls, ptr %ib_spec, i32 0, i32 3
  %33 = call ptr @memcpy(ptr %mask108, ptr %kern_spec_mask, i32 %retval.0.i269325)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end105, %if.end94, %if.end83, %lor.lhs.false69.sw.epilog_crit_edge, %if.end51, %lor.lhs.false.sw.epilog_crit_edge, %if.end20, %if.end12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %spec_filter_size.exit270.cleanup_crit_edge, %if.then.i268.cleanup_crit_edge, %spec_filter_size.exit260.cleanup_crit_edge, %if.then.i258.cleanup_crit_edge, %spec_filter_size.exit250.cleanup_crit_edge, %if.then.i248.cleanup_crit_edge, %lor.lhs.false69.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %spec_filter_size.exit240.cleanup_crit_edge, %if.then.i238.cleanup_crit_edge, %spec_filter_size.exit230.cleanup_crit_edge, %if.then.i228.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %spec_filter_size.exit220.cleanup_crit_edge, %if.then.i218.cleanup_crit_edge, %spec_filter_size.exit210.cleanup_crit_edge, %if.then.i208.cleanup_crit_edge, %spec_filter_size.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %spec_filter_size.exit.cleanup_crit_edge ], [ -22, %spec_filter_size.exit210.cleanup_crit_edge ], [ -22, %spec_filter_size.exit220.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end31.cleanup_crit_edge ], [ -22, %spec_filter_size.exit230.cleanup_crit_edge ], [ -22, %spec_filter_size.exit240.cleanup_crit_edge ], [ -22, %lor.lhs.false69.cleanup_crit_edge ], [ -22, %if.end62.cleanup_crit_edge ], [ -22, %spec_filter_size.exit250.cleanup_crit_edge ], [ -22, %spec_filter_size.exit260.cleanup_crit_edge ], [ -22, %spec_filter_size.exit270.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %if.then.i208.cleanup_crit_edge ], [ -22, %if.then.i218.cleanup_crit_edge ], [ -22, %if.then.i228.cleanup_crit_edge ], [ -22, %if.then.i238.cleanup_crit_edge ], [ -22, %if.then.i248.cleanup_crit_edge ], [ -22, %if.then.i258.cleanup_crit_edge ], [ -22, %if.then.i268.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_create_ah(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_create_ah, align 8
  %resp = alloca %struct.ib_uverbs_create_ah_resp, align 4
  %attr = alloca %struct.rdma_ah_attr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmd) #13
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %attr) #13
  %1 = call ptr @memset(ptr %attr, i32 0, i32 56)
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %2 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %7, i32 noundef 12288) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %call.i = call ptr @rdma_alloc_begin_uobject(ptr noundef %spec.select.i, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %context.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %9 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %context.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %attr7 = getelementptr inbounds %struct.ib_uverbs_create_ah, ptr %cmd, i32 0, i32 4
  %port_num = getelementptr inbounds %struct.ib_uverbs_create_ah, ptr %cmd, i32 0, i32 4, i32 6
  %13 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port_num, align 2
  %conv = zext i8 %14 to i32
  %is_switch.i.i.i = getelementptr inbounds %struct.ib_device, ptr %12, i32 0, i32 19
  %15 = ptrtoint ptr %is_switch.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i.i.i = load i8, ptr %is_switch.i.i.i, align 4
  %16 = xor i8 %bf.load.i.i.i, -1
  %17 = lshr i8 %16, 7
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %14)
  %cmp.not.i = icmp ugt i8 %17, %14
  br i1 %cmp.not.i, label %if.end6.err_crit_edge, label %land.rhs.i

if.end6.err_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

land.rhs.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i)
  %tobool.i.i.i = icmp slt i8 %bf.load.i.i.i, 0
  br i1 %tobool.i.i.i, label %land.rhs.i.rdma_is_port_valid.exit_crit_edge, label %cond.false.i.i

land.rhs.i.rdma_is_port_valid.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_is_port_valid.exit

cond.false.i.i:                                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %phys_port_cnt.i.i = getelementptr inbounds %struct.ib_device, ptr %12, i32 0, i32 21
  %18 = ptrtoint ptr %phys_port_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phys_port_cnt.i.i, align 8
  br label %rdma_is_port_valid.exit

rdma_is_port_valid.exit:                          ; preds = %cond.false.i.i, %land.rhs.i.rdma_is_port_valid.exit_crit_edge
  %cond.i.i = phi i32 [ %19, %cond.false.i.i ], [ 0, %land.rhs.i.rdma_is_port_valid.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %conv)
  %cmp2.i.not = icmp ult i32 %cond.i.i, %conv
  br i1 %cmp2.i.not, label %rdma_is_port_valid.exit.err_crit_edge, label %if.end11

rdma_is_port_valid.exit.err_crit_edge:            ; preds = %rdma_is_port_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end11:                                         ; preds = %rdma_is_port_valid.exit
  %20 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ufile, align 8
  %device13 = getelementptr inbounds %struct.ib_uverbs_file, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %device13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device13, align 4
  %uapi14 = getelementptr inbounds %struct.ib_uverbs_device, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %uapi14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %uapi14, align 4
  %call4.i89 = call ptr @radix_tree_lookup(ptr noundef %25, i32 noundef 2048) #13
  %tobool.not.i90 = icmp eq ptr %call4.i89, null
  %spec.select.i91 = select i1 %tobool.not.i90, ptr inttoptr (i32 -2 to ptr), ptr %call4.i89
  %26 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ufile, align 8
  %pd_handle = getelementptr inbounds %struct.ib_uverbs_create_ah, ptr %cmd, i32 0, i32 2
  %28 = ptrtoint ptr %pd_handle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pd_handle, align 8
  %conv18 = zext i32 %29 to i64
  %call19 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i91, ptr noundef %27, i64 noundef %conv18, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i92 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i92, label %if.end11.err_crit_edge, label %_uobj_get_obj_read.exit

if.end11.err_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

_uobj_get_obj_read.exit:                          ; preds = %if.end11
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call19, i32 0, i32 3
  %30 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %object.i, align 8
  %tobool21.not = icmp eq ptr %31, null
  br i1 %tobool21.not, label %_uobj_get_obj_read.exit.err_crit_edge, label %if.end23

_uobj_get_obj_read.exit.err_crit_edge:            ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end23:                                         ; preds = %_uobj_get_obj_read.exit
  %32 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %port_num, align 2
  %conv26 = zext i8 %33 to i32
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %12, i32 0, i32 11
  %34 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %35, i32 %conv26, i32 1, i32 2
  %36 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %37, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i93, label %if.end23.rdma_ah_set_dlid.exit_crit_edge

if.end23.rdma_ah_set_dlid.exit_crit_edge:         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_ah_set_dlid.exit

if.end.i93:                                       ; preds = %if.end23
  %and.i13.i = and i32 %37, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.i14.not.i = icmp eq i32 %and.i13.i, 0
  br i1 %tobool.i14.not.i, label %if.end.i93.rdma_ah_set_dlid.exit_crit_edge, label %if.then2.i

if.end.i93.rdma_ah_set_dlid.exit_crit_edge:       ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_ah_set_dlid.exit

if.then2.i:                                       ; preds = %if.end.i93
  %and.i17.i = and i32 %37, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %cmp.i.not.i = icmp eq i32 %and.i17.i, 0
  %type115 = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 5
  br i1 %cmp.i.not.i, label %if.then.i101, label %if.then4.i

rdma_ah_set_dlid.exit:                            ; preds = %if.end.i93.rdma_ah_set_dlid.exit_crit_edge, %if.end23.rdma_ah_set_dlid.exit_crit_edge
  %retval.0.i94.ph.ph = phi i32 [ 2, %if.end23.rdma_ah_set_dlid.exit_crit_edge ], [ 0, %if.end.i93.rdma_ah_set_dlid.exit_crit_edge ]
  %type115126 = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 5
  %38 = ptrtoint ptr %type115126 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i94.ph.ph, ptr %type115126, align 4
  %sl = getelementptr inbounds %struct.ib_uverbs_create_ah, ptr %cmd, i32 0, i32 4, i32 2
  %39 = ptrtoint ptr %sl to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sl, align 2
  %sl1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 1
  %41 = ptrtoint ptr %sl1.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %sl1.i, align 8
  br label %rdma_ah_set_path_bits.exit

if.then.i101:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %type115 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %type115, align 4
  %dlid = getelementptr inbounds %struct.ib_uverbs_create_ah, ptr %cmd, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %dlid to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %dlid, align 8
  %45 = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 6
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %44, ptr %45, align 8
  %sl130 = getelementptr inbounds %struct.ib_uverbs_create_ah, ptr %cmd, i32 0, i32 4, i32 2
  %47 = ptrtoint ptr %sl130 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %sl130, align 2
  %sl1.i131 = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 1
  %49 = ptrtoint ptr %sl1.i131 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %sl1.i131, align 8
  %src_path_bits132 = getelementptr inbounds %struct.ib_uverbs_create_ah, ptr %cmd, i32 0, i32 4, i32 3
  %50 = ptrtoint ptr %src_path_bits132 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %src_path_bits132, align 1
  %src_path_bits1.i = getelementptr inbounds %struct.ib_ah_attr, ptr %45, i32 0, i32 1
  %52 = ptrtoint ptr %src_path_bits1.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %src_path_bits1.i, align 2
  br label %rdma_ah_set_path_bits.exit

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %type115 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3, ptr %type115, align 4
  %make_grd1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 6, i32 0, i32 2
  %54 = ptrtoint ptr %make_grd1.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %make_grd1.i, align 1
  %dlid119 = getelementptr inbounds %struct.ib_uverbs_create_ah, ptr %cmd, i32 0, i32 4, i32 1
  %55 = ptrtoint ptr %dlid119 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %dlid119, align 8
  %conv29120 = zext i16 %56 to i32
  %57 = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 6
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv29120, ptr %57, align 8
  %sl135 = getelementptr inbounds %struct.ib_uverbs_create_ah, ptr %cmd, i32 0, i32 4, i32 2
  %59 = ptrtoint ptr %sl135 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %sl135, align 2
  %sl1.i136 = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 1
  %61 = ptrtoint ptr %sl1.i136 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %sl1.i136, align 8
  %src_path_bits137 = getelementptr inbounds %struct.ib_uverbs_create_ah, ptr %cmd, i32 0, i32 4, i32 3
  %62 = ptrtoint ptr %src_path_bits137 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %src_path_bits137, align 1
  %src_path_bits5.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 6, i32 0, i32 1
  %64 = ptrtoint ptr %src_path_bits5.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %src_path_bits5.i, align 4
  br label %rdma_ah_set_path_bits.exit

rdma_ah_set_path_bits.exit:                       ; preds = %if.then4.i, %if.then.i101, %rdma_ah_set_dlid.exit
  %static_rate = getelementptr inbounds %struct.ib_uverbs_create_ah, ptr %cmd, i32 0, i32 4, i32 4
  %65 = ptrtoint ptr %static_rate to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %static_rate, align 4
  %static_rate1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 2
  %67 = ptrtoint ptr %static_rate1.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %static_rate1.i, align 1
  %port_num1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 3
  %68 = ptrtoint ptr %port_num1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv26, ptr %port_num1.i, align 4
  %is_global = getelementptr inbounds %struct.ib_uverbs_create_ah, ptr %cmd, i32 0, i32 4, i32 5
  %69 = ptrtoint ptr %is_global to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %is_global, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool37.not = icmp eq i8 %70, 0
  br i1 %tobool37.not, label %rdma_ah_set_path_bits.exit.if.end48_crit_edge, label %if.then38

rdma_ah_set_path_bits.exit.if.end48_crit_edge:    ; preds = %rdma_ah_set_path_bits.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then38:                                        ; preds = %rdma_ah_set_path_bits.exit
  call void @__sanitizer_cov_trace_pc() #15
  %flow_label = getelementptr inbounds %struct.ib_uverbs_create_ah, ptr %cmd, i32 0, i32 4, i32 0, i32 1
  %71 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flow_label, align 8
  %sgid_index = getelementptr inbounds %struct.ib_uverbs_create_ah, ptr %cmd, i32 0, i32 4, i32 0, i32 2
  %73 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %sgid_index, align 4
  %hop_limit = getelementptr inbounds %struct.ib_uverbs_create_ah, ptr %cmd, i32 0, i32 4, i32 0, i32 3
  %75 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %hop_limit, align 1
  %traffic_class = getelementptr inbounds %struct.ib_uverbs_create_ah, ptr %cmd, i32 0, i32 4, i32 0, i32 4
  %77 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %traffic_class, align 2
  %flow_label2.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 2
  %79 = ptrtoint ptr %flow_label2.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %72, ptr %flow_label2.i, align 8
  %sgid_index3.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 3
  %80 = ptrtoint ptr %sgid_index3.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %74, ptr %sgid_index3.i, align 4
  %hop_limit4.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 4
  %81 = ptrtoint ptr %hop_limit4.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %76, ptr %hop_limit4.i, align 1
  %traffic_class5.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 5
  %82 = ptrtoint ptr %traffic_class5.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %78, ptr %traffic_class5.i, align 2
  %83 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %attr, align 8
  %dgid1.i = getelementptr inbounds %struct.ib_global_route, ptr %attr, i32 0, i32 1
  %84 = call ptr @memcpy(ptr %dgid1.i, ptr %attr7, i32 16)
  br label %if.end48

if.end48:                                         ; preds = %if.then38, %rdma_ah_set_path_bits.exit.if.end48_crit_edge
  %.sink = phi i8 [ 1, %if.then38 ], [ 0, %rdma_ah_set_path_bits.exit.if.end48_crit_edge ]
  %85 = getelementptr inbounds %struct.rdma_ah_attr, ptr %attr, i32 0, i32 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %.sink, ptr %85, align 8
  %call49 = call ptr @rdma_create_user_ah(ptr noundef nonnull %31, ptr noundef nonnull %attr, ptr noundef %attrs) #13
  %cmp.i103 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %call49 to i32
  %uobject57 = getelementptr inbounds %struct.ib_pd, ptr %31, i32 0, i32 3
  %88 = ptrtoint ptr %uobject57 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %uobject57, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %89, i32 noundef 0) #13
  br label %err

if.end53:                                         ; preds = %if.end48
  %uobject = getelementptr inbounds %struct.ib_ah, ptr %call49, i32 0, i32 2
  %90 = ptrtoint ptr %uobject to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call.i, ptr %uobject, align 4
  %user_handle = getelementptr inbounds %struct.ib_uverbs_create_ah, ptr %cmd, i32 0, i32 1
  %91 = ptrtoint ptr %user_handle to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %user_handle, align 8
  %93 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %call.i, align 8
  %object = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 3
  %94 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call49, ptr %object, align 8
  %uobject55 = getelementptr inbounds %struct.ib_pd, ptr %31, i32 0, i32 3
  %95 = ptrtoint ptr %uobject55 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %uobject55, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %96, i32 noundef 0) #13
  %uobject.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 4
  %97 = ptrtoint ptr %uobject.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %uobject.i, align 8
  %tobool.not.i104 = icmp eq ptr %98, null
  br i1 %tobool.not.i104, label %if.end53.uobj_finalize_uobj_create.exit_crit_edge, label %do.end.i, !prof !54

if.end53.uobj_finalize_uobj_create.exit_crit_edge: ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %uobj_finalize_uobj_create.exit

do.end.i:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 96, i32 noundef 9, ptr noundef null) #13
  br label %uobj_finalize_uobj_create.exit

uobj_finalize_uobj_create.exit:                   ; preds = %do.end.i, %if.end53.uobj_finalize_uobj_create.exit_crit_edge
  %99 = ptrtoint ptr %uobject.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i, ptr %uobject.i, align 8
  %id = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 6
  %100 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %id, align 8
  %102 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %resp, align 4
  %call56 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 4)
  br label %cleanup

err:                                              ; preds = %if.then51, %_uobj_get_obj_read.exit.err_crit_edge, %if.end11.err_crit_edge, %rdma_is_port_valid.exit.err_crit_edge, %if.end6.err_crit_edge
  %ret.0 = phi i32 [ %87, %if.then51 ], [ -22, %rdma_is_port_valid.exit.err_crit_edge ], [ -22, %_uobj_get_obj_read.exit.err_crit_edge ], [ -22, %if.end6.err_crit_edge ], [ -22, %if.end11.err_crit_edge ]
  call void @rdma_alloc_abort_uobject(ptr noundef %call.i, ptr noundef %attrs, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %err, %uobj_finalize_uobj_create.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then4 ], [ %ret.0, %err ], [ %call56, %uobj_finalize_uobj_create.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %attr) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_destroy_ah(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_destroy_ah, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #13
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !55
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %1 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %6, i32 noundef 12288) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd, align 4
  %call2 = call i32 @__uobj_perform_destroy(ptr noundef %spec.select.i, i32 noundef %8, ptr noundef %attrs) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_create_comp_channel(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_create_comp_channel, align 8
  %resp = alloca %struct.ib_uverbs_create_comp_channel_resp, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #13
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %cmd, align 8, !annotation !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #13
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %1 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %6, i32 noundef 4096) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %call.i = call ptr @rdma_alloc_begin_uobject(ptr noundef %spec.select.i, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %ev_queue = getelementptr inbounds %struct.ib_uverbs_completion_event_file, ptr %call.i, i32 0, i32 1
  call void @ib_uverbs_init_event_queue(ptr noundef %ev_queue) #13
  %uobject.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 4
  %8 = ptrtoint ptr %uobject.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uobject.i, align 8
  %tobool.not.i22 = icmp eq ptr %9, null
  br i1 %tobool.not.i22, label %if.end6.uobj_finalize_uobj_create.exit_crit_edge, label %do.end.i, !prof !54

if.end6.uobj_finalize_uobj_create.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %uobj_finalize_uobj_create.exit

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 96, i32 noundef 9, ptr noundef null) #13
  br label %uobj_finalize_uobj_create.exit

uobj_finalize_uobj_create.exit:                   ; preds = %do.end.i, %if.end6.uobj_finalize_uobj_create.exit_crit_edge
  %10 = ptrtoint ptr %uobject.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %uobject.i, align 8
  %id = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 8
  %13 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %resp, align 4
  %call7 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 4)
  br label %cleanup

cleanup:                                          ; preds = %uobj_finalize_uobj_create.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then4 ], [ %call7, %uobj_finalize_uobj_create.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_create_cq(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_create_cq, align 8
  %cmd_ex = alloca %struct.ib_uverbs_ex_create_cq, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #13
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd_ex) #13
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, ptr %cmd_ex, i32 0, i32 3
  %2 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, ptr %cmd_ex, i32 0, i32 2
  %3 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, ptr %cmd_ex, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ib_uverbs_create_cq, ptr %cmd, i32 0, i32 4
  %5 = getelementptr inbounds %struct.ib_uverbs_create_cq, ptr %cmd, i32 0, i32 3
  %6 = getelementptr inbounds %struct.ib_uverbs_create_cq, ptr %cmd, i32 0, i32 2
  %7 = getelementptr inbounds %struct.ib_uverbs_create_cq, ptr %cmd, i32 0, i32 1
  %8 = getelementptr inbounds i8, ptr %cmd_ex, i32 16
  %9 = call ptr @memset(ptr %8, i32 0, i32 16)
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %7, align 8
  %12 = ptrtoint ptr %cmd_ex to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %cmd_ex, align 8
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %6, align 8
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %3, align 8
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %5, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %2, align 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %4, align 8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %1, align 8
  %call5 = call fastcc i32 @create_cq(ptr noundef %attrs, ptr noundef nonnull %cmd_ex)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd_ex) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_destroy_cq(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_destroy_cq, align 8
  %resp = alloca %struct.ib_uverbs_destroy_cq_resp, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #13
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp) #13
  %1 = getelementptr inbounds %struct.ib_uverbs_destroy_cq_resp, ptr %resp, i32 0, i32 1
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.ib_uverbs_destroy_cq, ptr %cmd, i32 0, i32 1
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %3 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %8, i32 noundef 6144) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 8
  %call2 = call ptr @__uobj_get_destroy(ptr noundef %spec.select.i, i32 noundef %10, ptr noundef %attrs) #13
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %comp_events_reported = getelementptr inbounds %struct.ib_ucq_object, ptr %call2, i32 0, i32 2
  %12 = ptrtoint ptr %comp_events_reported to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %comp_events_reported, align 8
  %14 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %resp, align 8
  %events_reported = getelementptr inbounds %struct.ib_uevent_object, ptr %call2, i32 0, i32 3
  %15 = ptrtoint ptr %events_reported to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %events_reported, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %1, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %call2, i32 noundef 2) #13
  %call9 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 8)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then4 ], [ %call9, %if.end6 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_poll_cq(ptr noundef %attrs) #1 align 64 {
entry:
  %tmp.i = alloca %struct.ib_uverbs_wc, align 8
  %cmd = alloca %struct.ib_uverbs_poll_cq, align 8
  %resp = alloca %struct.ib_uverbs_poll_cq_resp, align 8
  %wc = alloca %struct.ib_wc, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #13
  %0 = getelementptr inbounds %struct.ib_uverbs_poll_cq, ptr %cmd, i32 0, i32 2
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wc) #13
  %2 = call ptr @memset(ptr %wc, i32 255, i32 64)
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.ib_uverbs_poll_cq, ptr %cmd, i32 0, i32 1
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %4 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %9, i32 noundef 6144) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %10 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ufile, align 8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 8
  %conv3 = zext i32 %13 to i64
  %call4 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i, ptr noundef %11, i64 noundef %conv3, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i57 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i57, label %if.end.cleanup_crit_edge, label %_uobj_get_obj_read.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

_uobj_get_obj_read.exit:                          ; preds = %if.end
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call4, i32 0, i32 3
  %14 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %object.i, align 8
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %_uobj_get_obj_read.exit.cleanup_crit_edge, label %if.end8

_uobj_get_obj_read.exit.cleanup_crit_edge:        ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %_uobj_get_obj_read.exit
  %outbuf = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %outbuf, align 4
  %18 = ptrtoint ptr %resp to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %resp, align 8
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp971.not = icmp eq i32 %20, 0
  br i1 %cmp971.not, label %if.end8.if.end8.i.i_crit_edge, label %while.body.lr.ph

if.end8.if.end8.i.i_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

while.body.lr.ph:                                 ; preds = %if.end8
  %add.ptr = getelementptr i8, ptr %17, i32 8
  %21 = getelementptr inbounds i8, ptr %tmp.i, i32 40
  %status.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %status1.i = getelementptr inbounds %struct.ib_uverbs_wc, ptr %tmp.i, i32 0, i32 1
  %opcode.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %opcode2.i = getelementptr inbounds %struct.ib_uverbs_wc, ptr %tmp.i, i32 0, i32 2
  %vendor_err.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 3
  %vendor_err3.i = getelementptr inbounds %struct.ib_uverbs_wc, ptr %tmp.i, i32 0, i32 3
  %byte_len.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %byte_len4.i = getelementptr inbounds %struct.ib_uverbs_wc, ptr %tmp.i, i32 0, i32 4
  %ex.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 6
  %ex5.i = getelementptr inbounds %struct.ib_uverbs_wc, ptr %tmp.i, i32 0, i32 5
  %qp.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %qp_num6.i = getelementptr inbounds %struct.ib_uverbs_wc, ptr %tmp.i, i32 0, i32 6
  %src_qp.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 7
  %src_qp7.i = getelementptr inbounds %struct.ib_uverbs_wc, ptr %tmp.i, i32 0, i32 7
  %wc_flags.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 9
  %wc_flags8.i = getelementptr inbounds %struct.ib_uverbs_wc, ptr %tmp.i, i32 0, i32 8
  %pkey_index.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 10
  %port_num.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 13
  %slid12.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 8
  %slid14.i = getelementptr inbounds %struct.ib_uverbs_wc, ptr %tmp.i, i32 0, i32 10
  %sl.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 11
  %sl15.i = getelementptr inbounds %struct.ib_uverbs_wc, ptr %tmp.i, i32 0, i32 11
  %dlid_path_bits.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 12
  %dlid_path_bits16.i = getelementptr inbounds %struct.ib_uverbs_wc, ptr %tmp.i, i32 0, i32 12
  %port_num19.i = getelementptr inbounds %struct.ib_uverbs_wc, ptr %tmp.i, i32 0, i32 13
  %reserved.i = getelementptr inbounds %struct.ib_uverbs_wc, ptr %tmp.i, i32 0, i32 14
  br label %while.body

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %while.body.lr.ph
  %data_ptr.072 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr24, %if.end23.while.body_crit_edge ]
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %15, align 8
  %poll_cq.i = getelementptr inbounds %struct.ib_device, ptr %23, i32 0, i32 1, i32 10
  %24 = ptrtoint ptr %poll_cq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %poll_cq.i, align 4
  %call.i = call i32 %25(ptr noundef nonnull %15, i32 noundef 1, ptr noundef nonnull %wc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp slt i32 %call.i, 0
  br i1 %cmp12, label %while.body.out_put_crit_edge, label %if.end15

while.body.out_put_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end15:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end15.if.end8.i.i_crit_edge, label %if.end18

if.end15.if.end8.i.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

if.end18:                                         ; preds = %if.end15
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %15, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tmp.i) #13
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -1, ptr %21, align 8, !annotation !55
  %29 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %wc, align 8
  %31 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %tmp.i, align 8
  %32 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status.i, align 8
  %34 = ptrtoint ptr %status1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %status1.i, align 8
  %35 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %opcode.i, align 4
  %37 = ptrtoint ptr %opcode2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %opcode2.i, align 4
  %38 = ptrtoint ptr %vendor_err.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vendor_err.i, align 8
  %40 = ptrtoint ptr %vendor_err3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %vendor_err3.i, align 8
  %41 = ptrtoint ptr %byte_len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %byte_len.i, align 4
  %43 = ptrtoint ptr %byte_len4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %byte_len4.i, align 4
  %44 = ptrtoint ptr %ex.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ex.i, align 4
  %46 = ptrtoint ptr %ex5.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %ex5.i, align 8
  %47 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %qp.i, align 8
  %qp_num.i = getelementptr inbounds %struct.ib_qp, ptr %48, i32 0, i32 19
  %49 = ptrtoint ptr %qp_num.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qp_num.i, align 4
  %51 = ptrtoint ptr %qp_num6.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %qp_num6.i, align 4
  %52 = ptrtoint ptr %src_qp.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %src_qp.i, align 8
  %54 = ptrtoint ptr %src_qp7.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %src_qp7.i, align 8
  %55 = ptrtoint ptr %wc_flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wc_flags.i, align 8
  %57 = ptrtoint ptr %wc_flags8.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %wc_flags8.i, align 4
  %58 = ptrtoint ptr %pkey_index.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %pkey_index.i, align 4
  store i16 %59, ptr %21, align 8
  %60 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port_num.i, align 8
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %27, i32 0, i32 11
  %62 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %63, i32 %61, i32 1, i32 2
  %64 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %65, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  %66 = ptrtoint ptr %slid12.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %slid12.i, align 4
  br i1 %cmp.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 49151, i32 %67)
  %cmp.i = icmp ugt i32 %67, 49151
  %phi.cast.i = trunc i32 %67 to i16
  %spec.select.i58 = select i1 %cmp.i, i16 0, i16 %phi.cast.i
  br label %if.end.i61

if.else.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %67)
  %tobool.not.i.i = icmp ult i32 %67, 65536
  br i1 %tobool.not.i.i, label %if.else.i.ib_lid_cpu16.exit.i_crit_edge, label %land.rhs.i.i

if.else.i.ib_lid_cpu16.exit.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ib_lid_cpu16.exit.i

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b39.i.i = load i1, ptr @ib_lid_cpu16.__already_done, align 1
  br i1 %.b39.i.i, label %land.rhs.i.i.ib_lid_cpu16.exit.i_crit_edge, label %if.then.i.i59, !prof !54

land.rhs.i.i.ib_lid_cpu16.exit.i_crit_edge:       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ib_lid_cpu16.exit.i

if.then.i.i59:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ib_lid_cpu16.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 4605, i32 noundef 9, ptr noundef null) #13
  br label %ib_lid_cpu16.exit.i

ib_lid_cpu16.exit.i:                              ; preds = %if.then.i.i59, %land.rhs.i.i.ib_lid_cpu16.exit.i_crit_edge, %if.else.i.ib_lid_cpu16.exit.i_crit_edge
  %conv.i.i = trunc i32 %67 to i16
  br label %if.end.i61

if.end.i61:                                       ; preds = %ib_lid_cpu16.exit.i, %if.then.i
  %conv.i.sink.i = phi i16 [ %conv.i.i, %ib_lid_cpu16.exit.i ], [ %spec.select.i58, %if.then.i ]
  %68 = ptrtoint ptr %slid14.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i.sink.i, ptr %slid14.i, align 2
  %69 = ptrtoint ptr %sl.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %sl.i, align 2
  %71 = ptrtoint ptr %sl15.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %sl15.i, align 4
  %72 = ptrtoint ptr %dlid_path_bits.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %dlid_path_bits.i, align 1
  %74 = ptrtoint ptr %dlid_path_bits16.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %dlid_path_bits16.i, align 1
  %75 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %port_num.i, align 8
  %conv18.i = trunc i32 %76 to i8
  %77 = ptrtoint ptr %port_num19.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv18.i, ptr %port_num19.i, align 2
  %78 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %reserved.i, align 1
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i.i60 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i60, label %if.end.i61.copy_wc_to_user.exit.thread_crit_edge, label %if.end.i.i.i

if.end.i61.copy_wc_to_user.exit.thread_crit_edge: ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_wc_to_user.exit.thread

if.end.i.i.i:                                     ; preds = %if.end.i61
  %79 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data_ptr.072, i32 48, i32 -1226833920) #18, !srcloc !56
  %asmresult.i.i.i = extractvalue { i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.copy_wc_to_user.exit.thread_crit_edge

if.end.i.i.i.copy_wc_to_user.exit.thread_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_wc_to_user.exit.thread

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp.i, i32 noundef 48) #13
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %data_ptr.072, ptr noundef nonnull %tmp.i, i32 noundef 48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i62 = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool.not.i62, label %if.end23, label %copy_to_user.exit.i.copy_wc_to_user.exit.thread_crit_edge

copy_to_user.exit.i.copy_wc_to_user.exit.thread_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_wc_to_user.exit.thread

copy_wc_to_user.exit.thread:                      ; preds = %copy_to_user.exit.i.copy_wc_to_user.exit.thread_crit_edge, %if.end.i.i.i.copy_wc_to_user.exit.thread_crit_edge, %if.end.i61.copy_wc_to_user.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tmp.i) #13
  br label %out_put

if.end23:                                         ; preds = %copy_to_user.exit.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tmp.i) #13
  %add.ptr24 = getelementptr i8, ptr %data_ptr.072, i32 48
  %80 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %resp, align 8
  %inc = add i32 %81, 1
  store i32 %inc, ptr %resp, align 8
  %82 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %0, align 4
  %cmp9 = icmp ult i32 %inc, %83
  br i1 %cmp9, label %if.end23.while.body_crit_edge, label %if.end23.if.end8.i.i_crit_edge

if.end23.if.end8.i.i_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end8.i.i:                                      ; preds = %if.end23.if.end8.i.i_crit_edge, %if.end15.if.end8.i.i_crit_edge, %if.end8.if.end8.i.i_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end8.i.i.out_put_crit_edge, label %if.end.i.i

if.end8.i.i.out_put_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end.i.i:                                       ; preds = %if.end8.i.i
  %84 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 8, i32 -1226833920) #18, !srcloc !56
  %asmresult.i.i = extractvalue { i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.out_put_crit_edge

if.end.i.i.out_put_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %resp, i32 noundef 8) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %17, ptr noundef nonnull %resp, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool27.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool27.not, label %if.end29, label %copy_to_user.exit.out_put_crit_edge

copy_to_user.exit.out_put_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end29:                                         ; preds = %copy_to_user.exit
  %attr_present.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %85 = ptrtoint ptr %attr_present.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %attr_present.i, align 4
  %87 = and i32 %86, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.i.not = icmp eq i32 %87, 0
  br i1 %tobool.i.not, label %if.end29.out_put_crit_edge, label %if.then31

if.end29.out_put_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %call32 = call i32 @uverbs_output_written(ptr noundef %attrs, i32 noundef 1) #13
  br label %out_put

out_put:                                          ; preds = %if.then31, %if.end29.out_put_crit_edge, %copy_to_user.exit.out_put_crit_edge, %if.end.i.i.out_put_crit_edge, %if.end8.i.i.out_put_crit_edge, %copy_wc_to_user.exit.thread, %while.body.out_put_crit_edge
  %ret.0 = phi i32 [ %call32, %if.then31 ], [ 0, %if.end29.out_put_crit_edge ], [ -14, %copy_to_user.exit.out_put_crit_edge ], [ -14, %copy_wc_to_user.exit.thread ], [ -14, %if.end8.i.i.out_put_crit_edge ], [ -14, %if.end.i.i.out_put_crit_edge ], [ %call.i, %while.body.out_put_crit_edge ]
  %uobject = getelementptr inbounds %struct.ib_cq, ptr %15, i32 0, i32 1
  %88 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %uobject, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %89, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %out_put, %_uobj_get_obj_read.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_put ], [ %call, %entry.cleanup_crit_edge ], [ -22, %_uobj_get_obj_read.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wc) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_req_notify_cq(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_req_notify_cq, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #13
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !55
  %1 = getelementptr inbounds %struct.ib_uverbs_req_notify_cq, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !55
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %3 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %8, i32 noundef 6144) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %9 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ufile, align 8
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd, align 4
  %conv3 = zext i32 %12 to i64
  %call4 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i, ptr noundef %10, i64 noundef %conv3, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.cleanup_crit_edge, label %_uobj_get_obj_read.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

_uobj_get_obj_read.exit:                          ; preds = %if.end
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call4, i32 0, i32 3
  %13 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %object.i, align 8
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %_uobj_get_obj_read.exit.cleanup_crit_edge, label %if.end8

_uobj_get_obj_read.exit.cleanup_crit_edge:        ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not = icmp eq i32 %16, 0
  %cond = select i1 %tobool9.not, i32 2, i32 1
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %18, i32 0, i32 1, i32 12
  %19 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i = call i32 %20(ptr noundef nonnull %14, i32 noundef %cond) #13
  %uobject = getelementptr inbounds %struct.ib_cq, ptr %14, i32 0, i32 1
  %21 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %uobject, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %22, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %_uobj_get_obj_read.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %_uobj_get_obj_read.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_resize_cq(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_resize_cq, align 8
  %resp = alloca %struct.ib_uverbs_resize_cq_resp, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #13
  %0 = getelementptr inbounds %struct.ib_uverbs_resize_cq, ptr %cmd, i32 0, i32 2
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp) #13
  %2 = ptrtoint ptr %resp to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %resp, align 8
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.ib_uverbs_resize_cq, ptr %cmd, i32 0, i32 1
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %4 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %9, i32 noundef 6144) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %10 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ufile, align 8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 8
  %conv3 = zext i32 %13 to i64
  %call4 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i, ptr noundef %11, i64 noundef %conv3, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.cleanup_crit_edge, label %_uobj_get_obj_read.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

_uobj_get_obj_read.exit:                          ; preds = %if.end
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call4, i32 0, i32 3
  %14 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %object.i, align 8
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %_uobj_get_obj_read.exit.cleanup_crit_edge, label %if.end8

_uobj_get_obj_read.exit.cleanup_crit_edge:        ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %_uobj_get_obj_read.exit
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %resize_cq = getelementptr inbounds %struct.ib_device, ptr %17, i32 0, i32 1, i32 53
  %18 = ptrtoint ptr %resize_cq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resize_cq, align 4
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %0, align 4
  %call10 = call i32 %19(ptr noundef nonnull %15, i32 noundef %21, ptr noundef %attrs) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %cqe14 = getelementptr inbounds %struct.ib_cq, ptr %15, i32 0, i32 5
  %22 = ptrtoint ptr %cqe14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cqe14, align 4
  %24 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %resp, align 8
  %call16 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 8)
  br label %out

out:                                              ; preds = %if.end13, %if.end8.out_crit_edge
  %ret.0 = phi i32 [ %call10, %if.end8.out_crit_edge ], [ %call16, %if.end13 ]
  %uobject = getelementptr inbounds %struct.ib_cq, ptr %15, i32 0, i32 1
  %25 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %uobject, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %26, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %_uobj_get_obj_read.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call, %entry.cleanup_crit_edge ], [ -22, %_uobj_get_obj_read.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_ex_create_cq(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_ex_create_cq, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #13
  %0 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, ptr %cmd, i32 0, i32 6
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 32)
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, ptr %cmd, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = call fastcc i32 @create_cq(ptr noundef %attrs, ptr noundef nonnull %cmd)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_ex_modify_cq(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_ex_modify_cq, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #13
  %0 = getelementptr inbounds %struct.ib_uverbs_ex_modify_cq, ptr %cmd, i32 0, i32 2
  %1 = getelementptr inbounds %struct.ib_uverbs_ex_modify_cq, ptr %cmd, i32 0, i32 2, i32 1
  %2 = getelementptr inbounds %struct.ib_uverbs_ex_modify_cq, ptr %cmd, i32 0, i32 3
  %3 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.ib_uverbs_ex_modify_cq, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.end4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end4
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
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %14, i32 noundef 6144) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %15 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ufile, align 8
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmd, align 4
  %conv11 = zext i32 %18 to i64
  %call12 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i, ptr noundef %16, i64 noundef %conv11, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end7.cleanup_crit_edge, label %_uobj_get_obj_read.exit

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

_uobj_get_obj_read.exit:                          ; preds = %if.end7
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call12, i32 0, i32 3
  %19 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %object.i, align 8
  %tobool14.not = icmp eq ptr %20, null
  br i1 %tobool14.not, label %_uobj_get_obj_read.exit.cleanup_crit_edge, label %if.end16

_uobj_get_obj_read.exit.cleanup_crit_edge:        ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %0, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %1, align 2
  %call18 = call i32 @rdma_set_cq_moderation(ptr noundef nonnull %20, i16 noundef zeroext %22, i16 noundef zeroext %24) #13
  %uobject = getelementptr inbounds %struct.ib_cq, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %uobject, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %26, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %_uobj_get_obj_read.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end16 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -95, %if.end4.cleanup_crit_edge ], [ -22, %_uobj_get_obj_read.exit.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_get_context(ptr noundef %attrs) #1 align 64 {
entry:
  %resp = alloca %struct.ib_uverbs_get_context_resp, align 8
  %cmd = alloca %struct.ib_uverbs_get_context, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp) #13
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %resp, align 8, !annotation !55
  %1 = getelementptr inbounds %struct.ib_uverbs_get_context_resp, ptr %resp, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #13
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %cmd, align 8, !annotation !55
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @ib_alloc_ucontext(ptr noundef %attrs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %4 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %9, i32 noundef 32768) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %call.i = call ptr @rdma_alloc_begin_uobject(ptr noundef %spec.select.i, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %call.i to i32
  br label %err_ucontext

if.end10:                                         ; preds = %if.end4
  %id = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 8
  %13 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ufile, align 8
  %device12 = getelementptr inbounds %struct.ib_uverbs_file, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %device12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device12, align 4
  %num_comp_vectors13 = getelementptr inbounds %struct.ib_uverbs_device, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %num_comp_vectors13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_comp_vectors13, align 4
  %19 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %12, ptr %resp, align 8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %1, align 4
  %call14 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end10.err_uobj_crit_edge

if.end10.err_uobj_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_uobj

if.end17:                                         ; preds = %if.end10
  %call18 = call i32 @ib_init_ucontext(ptr noundef %attrs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.err_uobj_crit_edge

if.end17.err_uobj_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_uobj

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  call void @ib_uverbs_init_async_event_file(ptr noundef %call.i) #13
  call void @rdma_alloc_commit_uobject(ptr noundef %call.i, ptr noundef %attrs) #13
  br label %cleanup

err_uobj:                                         ; preds = %if.end17.err_uobj_crit_edge, %if.end10.err_uobj_crit_edge
  %ret.0 = phi i32 [ %call14, %if.end10.err_uobj_crit_edge ], [ %call18, %if.end17.err_uobj_crit_edge ]
  call void @rdma_alloc_abort_uobject(ptr noundef %call.i, ptr noundef %attrs, i1 noundef zeroext false) #13
  br label %err_ucontext

err_ucontext:                                     ; preds = %err_uobj, %if.then8
  %ret.1 = phi i32 [ %10, %if.then8 ], [ %ret.0, %err_uobj ]
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %21 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %context, align 4
  %res = getelementptr inbounds %struct.ib_ucontext, ptr %22, i32 0, i32 3
  %call22 = call i32 @rdma_restrack_put(ptr noundef %res) #13
  %23 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %context, align 4
  call void @kfree(ptr noundef %24) #13
  %25 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %context, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_ucontext, %if.end21, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_ucontext ], [ 0, %if.end21 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_query_device(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_query_device, align 8
  %resp = alloca %struct.ib_uverbs_query_device_resp, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #13
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %cmd, align 8, !annotation !55
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %resp) #13
  %1 = call ptr @memset(ptr %resp, i32 255, i32 176)
  %ufile.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %2 = ptrtoint ptr %ufile.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ufile.i, align 8
  %call.i = tail call ptr @ib_uverbs_get_ucontext_file(ptr noundef %3) #13
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = call ptr @memset(ptr %resp, i32 0, i32 176)
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %attrs6 = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %attrs6 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %attrs6, align 8
  %10 = ptrtoint ptr %resp to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %resp, align 8
  %node_guid.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 17
  %11 = ptrtoint ptr %node_guid.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %node_guid.i, align 8
  %node_guid2.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 1
  %13 = ptrtoint ptr %node_guid2.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %node_guid2.i, align 8
  %sys_image_guid.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 1
  %14 = ptrtoint ptr %sys_image_guid.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sys_image_guid.i, align 8
  %sys_image_guid3.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 2
  %16 = ptrtoint ptr %sys_image_guid3.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %sys_image_guid3.i, align 8
  %max_mr_size.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 2
  %17 = ptrtoint ptr %max_mr_size.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %max_mr_size.i, align 8
  %max_mr_size4.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 3
  %19 = ptrtoint ptr %max_mr_size4.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %max_mr_size4.i, align 8
  %page_size_cap.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 3
  %20 = ptrtoint ptr %page_size_cap.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %page_size_cap.i, align 8
  %page_size_cap5.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 4
  %22 = ptrtoint ptr %page_size_cap5.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %page_size_cap5.i, align 8
  %vendor_id.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 4
  %23 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vendor_id.i, align 8
  %vendor_id6.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 5
  %25 = ptrtoint ptr %vendor_id6.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %vendor_id6.i, align 8
  %vendor_part_id.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 5
  %26 = ptrtoint ptr %vendor_part_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vendor_part_id.i, align 4
  %vendor_part_id7.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 6
  %28 = ptrtoint ptr %vendor_part_id7.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %vendor_part_id7.i, align 4
  %hw_ver.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 6
  %29 = ptrtoint ptr %hw_ver.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hw_ver.i, align 8
  %hw_ver8.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 7
  %31 = ptrtoint ptr %hw_ver8.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %hw_ver8.i, align 8
  %max_qp.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 7
  %32 = ptrtoint ptr %max_qp.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_qp.i, align 4
  %max_qp9.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 8
  %34 = ptrtoint ptr %max_qp9.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %max_qp9.i, align 4
  %max_qp_wr.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 8
  %35 = ptrtoint ptr %max_qp_wr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_qp_wr.i, align 8
  %max_qp_wr10.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 9
  %37 = ptrtoint ptr %max_qp_wr10.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %max_qp_wr10.i, align 8
  %device_cap_flags.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 9
  %38 = ptrtoint ptr %device_cap_flags.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %device_cap_flags.i, align 8
  %conv.i = trunc i64 %39 to i32
  %device_cap_flags11.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 10
  %40 = ptrtoint ptr %device_cap_flags11.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv.i, ptr %device_cap_flags11.i, align 4
  %max_send_sge.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 10
  %41 = ptrtoint ptr %max_send_sge.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_send_sge.i, align 8
  %max_recv_sge.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 11
  %43 = ptrtoint ptr %max_recv_sge.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_recv_sge.i, align 4
  %45 = call i32 @llvm.smin.i32(i32 %42, i32 %44) #13
  %max_sge.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 11
  %46 = ptrtoint ptr %max_sge.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %max_sge.i, align 8
  %max_sge_rd.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 12
  %47 = ptrtoint ptr %max_sge_rd.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_sge_rd.i, align 8
  %max_sge_rd13.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 12
  %49 = ptrtoint ptr %max_sge_rd13.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %max_sge_rd13.i, align 4
  %max_cq.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 13
  %50 = ptrtoint ptr %max_cq.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_cq.i, align 4
  %max_cq14.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 13
  %52 = ptrtoint ptr %max_cq14.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %max_cq14.i, align 8
  %max_cqe.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 14
  %53 = ptrtoint ptr %max_cqe.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_cqe.i, align 8
  %max_cqe15.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 14
  %55 = ptrtoint ptr %max_cqe15.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %max_cqe15.i, align 4
  %max_mr.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 15
  %56 = ptrtoint ptr %max_mr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_mr.i, align 4
  %max_mr16.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 15
  %58 = ptrtoint ptr %max_mr16.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %max_mr16.i, align 8
  %max_pd.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 16
  %59 = ptrtoint ptr %max_pd.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_pd.i, align 8
  %max_pd17.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 16
  %61 = ptrtoint ptr %max_pd17.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %max_pd17.i, align 4
  %max_qp_rd_atom.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 17
  %62 = ptrtoint ptr %max_qp_rd_atom.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_qp_rd_atom.i, align 4
  %max_qp_rd_atom18.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 17
  %64 = ptrtoint ptr %max_qp_rd_atom18.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %max_qp_rd_atom18.i, align 8
  %max_ee_rd_atom.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 18
  %65 = ptrtoint ptr %max_ee_rd_atom.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_ee_rd_atom.i, align 8
  %max_ee_rd_atom19.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 18
  %67 = ptrtoint ptr %max_ee_rd_atom19.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %max_ee_rd_atom19.i, align 4
  %max_res_rd_atom.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 19
  %68 = ptrtoint ptr %max_res_rd_atom.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max_res_rd_atom.i, align 4
  %max_res_rd_atom20.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 19
  %70 = ptrtoint ptr %max_res_rd_atom20.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %max_res_rd_atom20.i, align 8
  %max_qp_init_rd_atom.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 20
  %71 = ptrtoint ptr %max_qp_init_rd_atom.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_qp_init_rd_atom.i, align 8
  %max_qp_init_rd_atom21.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 20
  %73 = ptrtoint ptr %max_qp_init_rd_atom21.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %max_qp_init_rd_atom21.i, align 4
  %max_ee_init_rd_atom.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 21
  %74 = ptrtoint ptr %max_ee_init_rd_atom.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_ee_init_rd_atom.i, align 4
  %max_ee_init_rd_atom22.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 21
  %76 = ptrtoint ptr %max_ee_init_rd_atom22.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %max_ee_init_rd_atom22.i, align 8
  %atomic_cap.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 22
  %77 = ptrtoint ptr %atomic_cap.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %atomic_cap.i, align 8
  %atomic_cap23.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 22
  %79 = ptrtoint ptr %atomic_cap23.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %atomic_cap23.i, align 4
  %max_ee.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 24
  %80 = ptrtoint ptr %max_ee.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max_ee.i, align 8
  %max_ee24.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 23
  %82 = ptrtoint ptr %max_ee24.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %max_ee24.i, align 8
  %max_rdd.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 25
  %83 = ptrtoint ptr %max_rdd.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %max_rdd.i, align 4
  %max_rdd25.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 24
  %85 = ptrtoint ptr %max_rdd25.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %max_rdd25.i, align 4
  %max_mw.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 26
  %86 = ptrtoint ptr %max_mw.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %max_mw.i, align 8
  %max_mw26.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 25
  %88 = ptrtoint ptr %max_mw26.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %max_mw26.i, align 8
  %max_raw_ipv6_qp.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 27
  %89 = ptrtoint ptr %max_raw_ipv6_qp.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %max_raw_ipv6_qp.i, align 4
  %max_raw_ipv6_qp27.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 26
  %91 = ptrtoint ptr %max_raw_ipv6_qp27.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %max_raw_ipv6_qp27.i, align 4
  %max_raw_ethy_qp.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 28
  %92 = ptrtoint ptr %max_raw_ethy_qp.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max_raw_ethy_qp.i, align 8
  %max_raw_ethy_qp28.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 27
  %94 = ptrtoint ptr %max_raw_ethy_qp28.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %max_raw_ethy_qp28.i, align 8
  %max_mcast_grp.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 29
  %95 = ptrtoint ptr %max_mcast_grp.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %max_mcast_grp.i, align 4
  %max_mcast_grp29.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 28
  %97 = ptrtoint ptr %max_mcast_grp29.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %max_mcast_grp29.i, align 4
  %max_mcast_qp_attach.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 30
  %98 = ptrtoint ptr %max_mcast_qp_attach.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %max_mcast_qp_attach.i, align 8
  %max_mcast_qp_attach30.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 29
  %100 = ptrtoint ptr %max_mcast_qp_attach30.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %max_mcast_qp_attach30.i, align 8
  %max_total_mcast_qp_attach.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 31
  %101 = ptrtoint ptr %max_total_mcast_qp_attach.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %max_total_mcast_qp_attach.i, align 4
  %max_total_mcast_qp_attach31.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 30
  %103 = ptrtoint ptr %max_total_mcast_qp_attach31.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %max_total_mcast_qp_attach31.i, align 4
  %max_ah.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 32
  %104 = ptrtoint ptr %max_ah.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %max_ah.i, align 8
  %max_ah32.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 31
  %106 = ptrtoint ptr %max_ah32.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %max_ah32.i, align 8
  %max_srq.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 33
  %107 = ptrtoint ptr %max_srq.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %max_srq.i, align 4
  %max_srq33.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 34
  %109 = ptrtoint ptr %max_srq33.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %max_srq33.i, align 4
  %max_srq_wr.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 34
  %110 = ptrtoint ptr %max_srq_wr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %max_srq_wr.i, align 8
  %max_srq_wr34.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 35
  %112 = ptrtoint ptr %max_srq_wr34.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %max_srq_wr34.i, align 8
  %max_srq_sge.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 35
  %113 = ptrtoint ptr %max_srq_sge.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %max_srq_sge.i, align 4
  %max_srq_sge35.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 36
  %115 = ptrtoint ptr %max_srq_sge35.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %max_srq_sge35.i, align 4
  %max_pkeys.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 38
  %116 = ptrtoint ptr %max_pkeys.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %max_pkeys.i, align 8
  %max_pkeys36.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 37
  %118 = ptrtoint ptr %max_pkeys36.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %max_pkeys36.i, align 8
  %local_ca_ack_delay.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 39
  %119 = ptrtoint ptr %local_ca_ack_delay.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %local_ca_ack_delay.i, align 2
  %local_ca_ack_delay37.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 38
  %121 = ptrtoint ptr %local_ca_ack_delay37.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %local_ca_ack_delay37.i, align 2
  %phys_port_cnt.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 21
  %122 = ptrtoint ptr %phys_port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %phys_port_cnt.i, align 8
  %124 = call i32 @llvm.umin.i32(i32 %123, i32 255) #13
  %125 = trunc i32 %124 to i8
  %phys_port_cnt46.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 39
  %126 = ptrtoint ptr %phys_port_cnt46.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %phys_port_cnt46.i, align 1
  %call7 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 176)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %call7, %if.end5 ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_query_port(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_query_port, align 8
  %resp = alloca %struct.ib_uverbs_query_port_resp, align 4
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #13
  %0 = getelementptr inbounds %struct.ib_uverbs_query_port, ptr %cmd, i32 0, i32 1
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %resp) #13
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #13
  %2 = call ptr @memset(ptr %attr, i32 255, i32 72)
  %ufile.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %3 = ptrtoint ptr %ufile.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ufile.i, align 8
  %call.i = tail call ptr @ib_uverbs_get_ucontext_file(ptr noundef %4) #13
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %call3 = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %0, align 8
  %conv = zext i8 %9 to i32
  %call6 = call i32 @ib_query_port(ptr noundef %7, i32 noundef %conv, ptr noundef nonnull %attr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %10 = call ptr @memset(ptr %resp, i32 0, i32 40)
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %0, align 8
  call void @copy_port_attr_to_resp(ptr noundef nonnull %attr, ptr noundef nonnull %resp, ptr noundef %7, i8 noundef zeroext %12) #13
  %call11 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 40)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %call11, %if.end9 ], [ %call3, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_ex_query_device(ptr noundef %attrs) #1 align 64 {
entry:
  %resp = alloca %struct.ib_uverbs_ex_query_device_resp, align 8
  %cmd = alloca %struct.ib_uverbs_ex_query_device, align 4
  %attr = alloca %struct.ib_device_attr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %resp) #13
  %0 = call ptr @memset(ptr %resp, i32 0, i32 304)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #13
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cmd, align 4, !annotation !55
  %2 = getelementptr inbounds %struct.ib_uverbs_ex_query_device, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 296, ptr nonnull %attr) #13
  %4 = call ptr @memset(ptr %attr, i32 0, i32 296)
  %ufile.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %5 = ptrtoint ptr %ufile.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ufile.i, align 8
  %call.i = tail call ptr @ib_uverbs_get_ucontext_file(ptr noundef %6) #13
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  %call3 = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  br i1 %tobool9.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %query_device = getelementptr inbounds %struct.ib_device, ptr %9, i32 0, i32 1, i32 15
  %14 = ptrtoint ptr %query_device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %query_device, align 4
  %call12 = call i32 %15(ptr noundef %9, ptr noundef nonnull %attr, ptr noundef %attrs) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %18 = ptrtoint ptr %attr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %attr, align 8
  %20 = ptrtoint ptr %resp to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %resp, align 8
  %node_guid.i = getelementptr inbounds %struct.ib_device, ptr %17, i32 0, i32 17
  %21 = ptrtoint ptr %node_guid.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %node_guid.i, align 8
  %node_guid2.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 1
  %23 = ptrtoint ptr %node_guid2.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %node_guid2.i, align 8
  %sys_image_guid.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 1
  %24 = ptrtoint ptr %sys_image_guid.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %sys_image_guid.i, align 8
  %sys_image_guid3.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 2
  %26 = ptrtoint ptr %sys_image_guid3.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %sys_image_guid3.i, align 8
  %max_mr_size.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 2
  %27 = ptrtoint ptr %max_mr_size.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %max_mr_size.i, align 8
  %max_mr_size4.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 3
  %29 = ptrtoint ptr %max_mr_size4.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %max_mr_size4.i, align 8
  %page_size_cap.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 3
  %30 = ptrtoint ptr %page_size_cap.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %page_size_cap.i, align 8
  %page_size_cap5.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 4
  %32 = ptrtoint ptr %page_size_cap5.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %page_size_cap5.i, align 8
  %vendor_id.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 4
  %33 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vendor_id.i, align 8
  %vendor_id6.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 5
  %35 = ptrtoint ptr %vendor_id6.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %vendor_id6.i, align 8
  %vendor_part_id.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 5
  %36 = ptrtoint ptr %vendor_part_id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vendor_part_id.i, align 4
  %vendor_part_id7.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 6
  %38 = ptrtoint ptr %vendor_part_id7.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %vendor_part_id7.i, align 4
  %hw_ver.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 6
  %39 = ptrtoint ptr %hw_ver.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hw_ver.i, align 8
  %hw_ver8.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 7
  %41 = ptrtoint ptr %hw_ver8.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %hw_ver8.i, align 8
  %max_qp.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 7
  %42 = ptrtoint ptr %max_qp.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_qp.i, align 4
  %max_qp9.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 8
  %44 = ptrtoint ptr %max_qp9.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %max_qp9.i, align 4
  %max_qp_wr.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 8
  %45 = ptrtoint ptr %max_qp_wr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_qp_wr.i, align 8
  %max_qp_wr10.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 9
  %47 = ptrtoint ptr %max_qp_wr10.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %max_qp_wr10.i, align 8
  %device_cap_flags.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 9
  %48 = ptrtoint ptr %device_cap_flags.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %device_cap_flags.i, align 8
  %conv.i = trunc i64 %49 to i32
  %device_cap_flags11.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 10
  %50 = ptrtoint ptr %device_cap_flags11.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv.i, ptr %device_cap_flags11.i, align 4
  %max_send_sge.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 10
  %51 = ptrtoint ptr %max_send_sge.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_send_sge.i, align 8
  %max_recv_sge.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 11
  %53 = ptrtoint ptr %max_recv_sge.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_recv_sge.i, align 4
  %55 = call i32 @llvm.smin.i32(i32 %52, i32 %54) #13
  %max_sge.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 11
  %56 = ptrtoint ptr %max_sge.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %max_sge.i, align 8
  %max_sge_rd.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 12
  %57 = ptrtoint ptr %max_sge_rd.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_sge_rd.i, align 8
  %max_sge_rd13.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 12
  %59 = ptrtoint ptr %max_sge_rd13.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %max_sge_rd13.i, align 4
  %max_cq.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 13
  %60 = ptrtoint ptr %max_cq.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_cq.i, align 4
  %max_cq14.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 13
  %62 = ptrtoint ptr %max_cq14.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %max_cq14.i, align 8
  %max_cqe.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 14
  %63 = ptrtoint ptr %max_cqe.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_cqe.i, align 8
  %max_cqe15.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 14
  %65 = ptrtoint ptr %max_cqe15.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %max_cqe15.i, align 4
  %max_mr.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 15
  %66 = ptrtoint ptr %max_mr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_mr.i, align 4
  %max_mr16.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 15
  %68 = ptrtoint ptr %max_mr16.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %max_mr16.i, align 8
  %max_pd.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 16
  %69 = ptrtoint ptr %max_pd.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_pd.i, align 8
  %max_pd17.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 16
  %71 = ptrtoint ptr %max_pd17.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %max_pd17.i, align 4
  %max_qp_rd_atom.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 17
  %72 = ptrtoint ptr %max_qp_rd_atom.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max_qp_rd_atom.i, align 4
  %max_qp_rd_atom18.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 17
  %74 = ptrtoint ptr %max_qp_rd_atom18.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %max_qp_rd_atom18.i, align 8
  %max_ee_rd_atom.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 18
  %75 = ptrtoint ptr %max_ee_rd_atom.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max_ee_rd_atom.i, align 8
  %max_ee_rd_atom19.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 18
  %77 = ptrtoint ptr %max_ee_rd_atom19.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %max_ee_rd_atom19.i, align 4
  %max_res_rd_atom.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 19
  %78 = ptrtoint ptr %max_res_rd_atom.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_res_rd_atom.i, align 4
  %max_res_rd_atom20.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 19
  %80 = ptrtoint ptr %max_res_rd_atom20.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %max_res_rd_atom20.i, align 8
  %max_qp_init_rd_atom.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 20
  %81 = ptrtoint ptr %max_qp_init_rd_atom.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %max_qp_init_rd_atom.i, align 8
  %max_qp_init_rd_atom21.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 20
  %83 = ptrtoint ptr %max_qp_init_rd_atom21.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %max_qp_init_rd_atom21.i, align 4
  %max_ee_init_rd_atom.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 21
  %84 = ptrtoint ptr %max_ee_init_rd_atom.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %max_ee_init_rd_atom.i, align 4
  %max_ee_init_rd_atom22.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 21
  %86 = ptrtoint ptr %max_ee_init_rd_atom22.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %max_ee_init_rd_atom22.i, align 8
  %atomic_cap.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 22
  %87 = ptrtoint ptr %atomic_cap.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %atomic_cap.i, align 8
  %atomic_cap23.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 22
  %89 = ptrtoint ptr %atomic_cap23.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %atomic_cap23.i, align 4
  %max_ee.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 24
  %90 = ptrtoint ptr %max_ee.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_ee.i, align 8
  %max_ee24.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 23
  %92 = ptrtoint ptr %max_ee24.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %max_ee24.i, align 8
  %max_rdd.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 25
  %93 = ptrtoint ptr %max_rdd.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %max_rdd.i, align 4
  %max_rdd25.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 24
  %95 = ptrtoint ptr %max_rdd25.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %max_rdd25.i, align 4
  %max_mw.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 26
  %96 = ptrtoint ptr %max_mw.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %max_mw.i, align 8
  %max_mw26.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 25
  %98 = ptrtoint ptr %max_mw26.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %max_mw26.i, align 8
  %max_raw_ipv6_qp.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 27
  %99 = ptrtoint ptr %max_raw_ipv6_qp.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %max_raw_ipv6_qp.i, align 4
  %max_raw_ipv6_qp27.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 26
  %101 = ptrtoint ptr %max_raw_ipv6_qp27.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %max_raw_ipv6_qp27.i, align 4
  %max_raw_ethy_qp.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 28
  %102 = ptrtoint ptr %max_raw_ethy_qp.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %max_raw_ethy_qp.i, align 8
  %max_raw_ethy_qp28.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 27
  %104 = ptrtoint ptr %max_raw_ethy_qp28.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %max_raw_ethy_qp28.i, align 8
  %max_mcast_grp.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 29
  %105 = ptrtoint ptr %max_mcast_grp.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %max_mcast_grp.i, align 4
  %max_mcast_grp29.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 28
  %107 = ptrtoint ptr %max_mcast_grp29.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %max_mcast_grp29.i, align 4
  %max_mcast_qp_attach.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 30
  %108 = ptrtoint ptr %max_mcast_qp_attach.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %max_mcast_qp_attach.i, align 8
  %max_mcast_qp_attach30.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 29
  %110 = ptrtoint ptr %max_mcast_qp_attach30.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %max_mcast_qp_attach30.i, align 8
  %max_total_mcast_qp_attach.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 31
  %111 = ptrtoint ptr %max_total_mcast_qp_attach.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %max_total_mcast_qp_attach.i, align 4
  %max_total_mcast_qp_attach31.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 30
  %113 = ptrtoint ptr %max_total_mcast_qp_attach31.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %max_total_mcast_qp_attach31.i, align 4
  %max_ah.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 32
  %114 = ptrtoint ptr %max_ah.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %max_ah.i, align 8
  %max_ah32.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 31
  %116 = ptrtoint ptr %max_ah32.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %max_ah32.i, align 8
  %max_srq.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 33
  %117 = ptrtoint ptr %max_srq.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %max_srq.i, align 4
  %max_srq33.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 34
  %119 = ptrtoint ptr %max_srq33.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %max_srq33.i, align 4
  %max_srq_wr.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 34
  %120 = ptrtoint ptr %max_srq_wr.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %max_srq_wr.i, align 8
  %max_srq_wr34.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 35
  %122 = ptrtoint ptr %max_srq_wr34.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %max_srq_wr34.i, align 8
  %max_srq_sge.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 35
  %123 = ptrtoint ptr %max_srq_sge.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %max_srq_sge.i, align 4
  %max_srq_sge35.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 36
  %125 = ptrtoint ptr %max_srq_sge35.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %max_srq_sge35.i, align 4
  %max_pkeys.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 38
  %126 = ptrtoint ptr %max_pkeys.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %max_pkeys.i, align 8
  %max_pkeys36.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 37
  %128 = ptrtoint ptr %max_pkeys36.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %max_pkeys36.i, align 8
  %local_ca_ack_delay.i = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 39
  %129 = ptrtoint ptr %local_ca_ack_delay.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %local_ca_ack_delay.i, align 2
  %local_ca_ack_delay37.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 38
  %131 = ptrtoint ptr %local_ca_ack_delay37.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %local_ca_ack_delay37.i, align 2
  %phys_port_cnt.i = getelementptr inbounds %struct.ib_device, ptr %17, i32 0, i32 21
  %132 = ptrtoint ptr %phys_port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %phys_port_cnt.i, align 8
  %134 = call i32 @llvm.umin.i32(i32 %133, i32 255) #13
  %135 = trunc i32 %134 to i8
  %phys_port_cnt46.i = getelementptr inbounds %struct.ib_uverbs_query_device_resp, ptr %resp, i32 0, i32 39
  %136 = ptrtoint ptr %phys_port_cnt46.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %phys_port_cnt46.i, align 1
  %odp_caps = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 42
  %137 = ptrtoint ptr %odp_caps to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %odp_caps, align 8
  %odp_caps16 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 3
  %139 = ptrtoint ptr %odp_caps16 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %138, ptr %odp_caps16, align 8
  %per_transport_caps = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 42, i32 1
  %140 = ptrtoint ptr %per_transport_caps to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %per_transport_caps, align 8
  %per_transport_caps20 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 3, i32 1
  %142 = ptrtoint ptr %per_transport_caps20 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %per_transport_caps20, align 8
  %uc_odp_caps = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 42, i32 1, i32 1
  %143 = ptrtoint ptr %uc_odp_caps to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %uc_odp_caps, align 4
  %uc_odp_caps26 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 3, i32 1, i32 1
  %145 = ptrtoint ptr %uc_odp_caps26 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %uc_odp_caps26, align 4
  %ud_odp_caps = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 42, i32 1, i32 2
  %146 = ptrtoint ptr %ud_odp_caps to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ud_odp_caps, align 8
  %ud_odp_caps31 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 3, i32 1, i32 2
  %148 = ptrtoint ptr %ud_odp_caps31 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %ud_odp_caps31, align 8
  %xrc_odp_caps = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 42, i32 1, i32 3
  %149 = ptrtoint ptr %xrc_odp_caps to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %xrc_odp_caps, align 4
  %xrc_odp_caps34 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 13
  %151 = ptrtoint ptr %xrc_odp_caps34 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %xrc_odp_caps34, align 8
  %timestamp_mask = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 43
  %152 = ptrtoint ptr %timestamp_mask to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %timestamp_mask, align 8
  %timestamp_mask35 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 4
  %154 = ptrtoint ptr %timestamp_mask35 to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %153, ptr %timestamp_mask35, align 8
  %hca_core_clock = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 44
  %155 = ptrtoint ptr %hca_core_clock to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %hca_core_clock, align 8
  %hca_core_clock36 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 5
  %157 = ptrtoint ptr %hca_core_clock36 to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %156, ptr %hca_core_clock36, align 8
  %device_cap_flags_ex = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 6
  %158 = ptrtoint ptr %device_cap_flags_ex to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %49, ptr %device_cap_flags_ex, align 8
  %rss_caps = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 45
  %159 = ptrtoint ptr %rss_caps to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rss_caps, align 8
  %rss_caps37 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 7
  %161 = ptrtoint ptr %rss_caps37 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %rss_caps37, align 8
  %max_rwq_indirection_tables = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 45, i32 1
  %162 = ptrtoint ptr %max_rwq_indirection_tables to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %max_rwq_indirection_tables, align 4
  %max_rwq_indirection_tables41 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 7, i32 1
  %164 = ptrtoint ptr %max_rwq_indirection_tables41 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %max_rwq_indirection_tables41, align 4
  %max_rwq_indirection_table_size = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 45, i32 2
  %165 = ptrtoint ptr %max_rwq_indirection_table_size to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %max_rwq_indirection_table_size, align 8
  %max_rwq_indirection_table_size44 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 7, i32 2
  %167 = ptrtoint ptr %max_rwq_indirection_table_size44 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %max_rwq_indirection_table_size44, align 8
  %max_wq_type_rq = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 46
  %168 = ptrtoint ptr %max_wq_type_rq to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %max_wq_type_rq, align 4
  %max_wq_type_rq45 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 8
  %170 = ptrtoint ptr %max_wq_type_rq45 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %max_wq_type_rq45, align 8
  %raw_packet_caps = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 47
  %171 = ptrtoint ptr %raw_packet_caps to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %raw_packet_caps, align 8
  %raw_packet_caps46 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 9
  %173 = ptrtoint ptr %raw_packet_caps46 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %raw_packet_caps46, align 4
  %tm_caps = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 48
  %174 = ptrtoint ptr %tm_caps to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %tm_caps, align 4
  %tm_caps47 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 10
  %176 = ptrtoint ptr %tm_caps47 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %tm_caps47, align 8
  %max_num_tags = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 48, i32 1
  %177 = ptrtoint ptr %max_num_tags to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %max_num_tags, align 8
  %max_num_tags51 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 10, i32 1
  %179 = ptrtoint ptr %max_num_tags51 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %max_num_tags51, align 4
  %max_ops = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 48, i32 3
  %180 = ptrtoint ptr %max_ops to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %max_ops, align 8
  %max_ops54 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 10, i32 3
  %182 = ptrtoint ptr %max_ops54 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %max_ops54, align 4
  %max_sge = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 48, i32 4
  %183 = ptrtoint ptr %max_sge to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %max_sge, align 4
  %max_sge57 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 10, i32 4
  %185 = ptrtoint ptr %max_sge57 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %max_sge57, align 8
  %flags = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 48, i32 2
  %186 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %flags, align 4
  %flags60 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 10, i32 2
  %188 = ptrtoint ptr %flags60 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %flags60, align 8
  %cq_caps = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 49
  %189 = ptrtoint ptr %cq_caps to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %cq_caps, align 8
  %cq_moderation_caps = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 11
  %191 = ptrtoint ptr %cq_moderation_caps to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %190, ptr %cq_moderation_caps, align 8
  %max_cq_moderation_period = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 49, i32 1
  %192 = ptrtoint ptr %max_cq_moderation_period to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %max_cq_moderation_period, align 2
  %max_cq_moderation_period64 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 11, i32 1
  %194 = ptrtoint ptr %max_cq_moderation_period64 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %193, ptr %max_cq_moderation_period64, align 2
  %max_dm_size = getelementptr inbounds %struct.ib_device_attr, ptr %attr, i32 0, i32 50
  %195 = ptrtoint ptr %max_dm_size to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %max_dm_size, align 8
  %max_dm_size65 = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 12
  %197 = ptrtoint ptr %max_dm_size65 to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %196, ptr %max_dm_size65, align 8
  %outlen.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 1, i32 3
  %198 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %outlen.i, align 4
  %200 = call i32 @llvm.umin.i32(i32 %199, i32 304) #13
  %response_length = getelementptr inbounds %struct.ib_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 2
  %201 = ptrtoint ptr %response_length to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %response_length, align 4
  %call67 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 304)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ %call67, %if.end15 ], [ %call3, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 296, ptr nonnull %attr) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #13
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %resp) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_ex_create_flow(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_create_flow, align 8
  %resp = alloca %struct.ib_uverbs_create_flow_resp, align 8
  %iter = alloca %struct.uverbs_req_iter, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd) #13
  %0 = getelementptr inbounds %struct.ib_uverbs_create_flow, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_uverbs_create_flow, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ib_uverbs_create_flow, ptr %cmd, i32 0, i32 2, i32 1
  %3 = getelementptr inbounds %struct.ib_uverbs_create_flow, ptr %cmd, i32 0, i32 2, i32 3
  %4 = getelementptr inbounds %struct.ib_uverbs_create_flow, ptr %cmd, i32 0, i32 2, i32 4
  %5 = getelementptr inbounds %struct.ib_uverbs_create_flow, ptr %cmd, i32 0, i32 2, i32 4, i32 1
  %6 = getelementptr inbounds %struct.ib_uverbs_create_flow, ptr %cmd, i32 0, i32 2, i32 5
  %7 = getelementptr inbounds %struct.ib_uverbs_create_flow, ptr %cmd, i32 0, i32 2, i32 6
  %8 = call ptr @memset(ptr %cmd, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp) #13
  %9 = ptrtoint ptr %resp to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %resp, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #13
  %10 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !55
  %11 = getelementptr inbounds %struct.uverbs_req_iter, ptr %iter, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %11, align 4, !annotation !55
  %call = call fastcc i32 @uverbs_request_start(ptr noundef %attrs, ptr noundef nonnull %iter, ptr noundef nonnull %cmd, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not = icmp eq i32 %14, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call zeroext i1 @capable(i32 noundef 13) #13
  br i1 %call4, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %16)
  %cmp = icmp ugt i32 %16, 7
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %and = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end9.if.end19_crit_edge, label %land.lhs.true

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end9
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 8
  %.off = add i32 %18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %if.end9.if.end19_crit_edge
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %20)
  %cmp21 = icmp ugt i8 %20, 10
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %conv = zext i8 %20 to i32
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %2, align 4
  %conv26 = zext i16 %22 to i32
  %mul = mul nuw nsw i32 %conv, 88
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv26)
  %cmp30 = icmp ult i32 %mul, %conv26
  br i1 %cmp30, label %if.end24.cleanup_crit_edge, label %if.end33

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool36.not = icmp eq i8 %24, 0
  br i1 %tobool36.not, label %lor.lhs.false37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false37:                                  ; preds = %if.end33
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool42.not = icmp eq i8 %26, 0
  br i1 %tobool42.not, label %if.end44, label %lor.lhs.false37.cleanup_crit_edge

lor.lhs.false37.cleanup_crit_edge:                ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end44:                                         ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool47.not = icmp eq i8 %20, 0
  br i1 %tobool47.not, label %if.end44.if.end65_crit_edge, label %if.end8.i

if.end44.if.end65_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.end8.i:                                        ; preds = %if.end44
  %add = add nuw nsw i32 %conv26, 16
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #16
  %tobool53.not = icmp eq ptr %call9.i, null
  br i1 %tobool53.not, label %if.end8.i.cleanup_crit_edge, label %if.end55

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end55:                                         ; preds = %if.end8.i
  %27 = call ptr @memcpy(ptr %call9.i, ptr %1, i32 16)
  %flow_specs = getelementptr inbounds %struct.ib_uverbs_flow_attr, ptr %call9.i, i32 0, i32 7
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %2, align 4
  %conv59 = zext i16 %29 to i32
  %call60 = call fastcc i32 @uverbs_request_next(ptr noundef nonnull %iter, ptr noundef %flow_specs, i32 noundef %conv59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end55.if.end65_crit_edge, label %if.end55.err_free_attr_crit_edge

if.end55.err_free_attr_crit_edge:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_attr

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.end65:                                         ; preds = %if.end55.if.end65_crit_edge, %if.end44.if.end65_crit_edge
  %kern_flow_attr.0 = phi ptr [ %call9.i, %if.end55.if.end65_crit_edge ], [ %1, %if.end44.if.end65_crit_edge ]
  %call66 = call fastcc i32 @uverbs_request_finish(ptr noundef nonnull %iter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.err_free_attr_crit_edge

if.end65.err_free_attr_crit_edge:                 ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_attr

if.end69:                                         ; preds = %if.end65
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %30 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %35, i32 noundef 18432) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %call.i = call ptr @rdma_alloc_begin_uobject(ptr noundef %spec.select.i, ptr noundef %attrs) #13
  %cmp.i.i292 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i292, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %call.i to i32
  br label %err_free_attr

if.end75:                                         ; preds = %if.end69
  %context = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %context, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %6, align 1
  %conv78 = zext i8 %42 to i32
  %is_switch.i.i.i = getelementptr inbounds %struct.ib_device, ptr %40, i32 0, i32 19
  %43 = ptrtoint ptr %is_switch.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i.i.i = load i8, ptr %is_switch.i.i.i, align 4
  %44 = xor i8 %bf.load.i.i.i, -1
  %45 = lshr i8 %44, 7
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %42)
  %cmp.not.i = icmp ugt i8 %45, %42
  br i1 %cmp.not.i, label %if.end75.err_uobj_crit_edge, label %land.rhs.i

if.end75.err_uobj_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_uobj

land.rhs.i:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i)
  %tobool.i.i.i = icmp slt i8 %bf.load.i.i.i, 0
  br i1 %tobool.i.i.i, label %land.rhs.i.rdma_is_port_valid.exit_crit_edge, label %cond.false.i.i

land.rhs.i.rdma_is_port_valid.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_is_port_valid.exit

cond.false.i.i:                                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %phys_port_cnt.i.i = getelementptr inbounds %struct.ib_device, ptr %40, i32 0, i32 21
  %46 = ptrtoint ptr %phys_port_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %phys_port_cnt.i.i, align 8
  br label %rdma_is_port_valid.exit

rdma_is_port_valid.exit:                          ; preds = %cond.false.i.i, %land.rhs.i.rdma_is_port_valid.exit_crit_edge
  %cond.i.i = phi i32 [ %47, %cond.false.i.i ], [ 0, %land.rhs.i.rdma_is_port_valid.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %conv78)
  %cmp2.i.not = icmp ult i32 %cond.i.i, %conv78
  br i1 %cmp2.i.not, label %rdma_is_port_valid.exit.err_uobj_crit_edge, label %if.end82

rdma_is_port_valid.exit.err_uobj_crit_edge:       ; preds = %rdma_is_port_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_uobj

if.end82:                                         ; preds = %rdma_is_port_valid.exit
  %48 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ufile, align 8
  %device84 = getelementptr inbounds %struct.ib_uverbs_file, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %device84 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device84, align 4
  %uapi85 = getelementptr inbounds %struct.ib_uverbs_device, ptr %51, i32 0, i32 13
  %52 = ptrtoint ptr %uapi85 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %uapi85, align 4
  %call4.i296 = call ptr @radix_tree_lookup(ptr noundef %53, i32 noundef 8192) #13
  %tobool.not.i297 = icmp eq ptr %call4.i296, null
  %spec.select.i298 = select i1 %tobool.not.i297, ptr inttoptr (i32 -2 to ptr), ptr %call4.i296
  %54 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ufile, align 8
  %56 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %0, align 4
  %conv91 = zext i32 %57 to i64
  %call92 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i298, ptr noundef %55, i64 noundef %conv91, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i299 = icmp ugt ptr %call92, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i299, label %if.end82.err_uobj_crit_edge, label %_uobj_get_obj_read.exit

if.end82.err_uobj_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_uobj

_uobj_get_obj_read.exit:                          ; preds = %if.end82
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call92, i32 0, i32 3
  %58 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %object.i, align 8
  %tobool94.not = icmp eq ptr %59, null
  br i1 %tobool94.not, label %_uobj_get_obj_read.exit.err_uobj_crit_edge, label %if.end96

_uobj_get_obj_read.exit.err_uobj_crit_edge:       ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_uobj

if.end96:                                         ; preds = %_uobj_get_obj_read.exit
  %qp_type = getelementptr inbounds %struct.ib_qp, ptr %59, i32 0, i32 22
  %60 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %qp_type, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %61, label %if.end96.err_put_crit_edge [
    i32 4, label %if.end96.if.end8.i.i_crit_edge
    i32 8, label %if.end96.if.end8.i.i_crit_edge368
  ]

if.end96.if.end8.i.i_crit_edge368:                ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

if.end96.if.end8.i.i_crit_edge:                   ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

if.end96.err_put_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put

if.end8.i.i:                                      ; preds = %if.end96.if.end8.i.i_crit_edge, %if.end96.if.end8.i.i_crit_edge368
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %3, align 8
  %conv107 = zext i8 %64 to i32
  %65 = mul nuw nsw i32 %conv107, 88
  %66 = add nuw nsw i32 %65, 20
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %66, i32 noundef 3520) #16
  %tobool110.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool110.not, label %if.end8.i.i.err_put_crit_edge, label %if.end112

if.end8.i.i.err_put_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put

if.end112:                                        ; preds = %if.end8.i.i
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %3, align 8
  %conv115 = zext i8 %68 to i32
  %call116 = call ptr @flow_resources_alloc(i32 noundef %conv115)
  %tobool117.not = icmp eq ptr %call116, null
  br i1 %tobool117.not, label %if.end112.err_free_flow_attr_crit_edge, label %if.end119

if.end112.err_free_flow_attr_crit_edge:           ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_flow_attr

if.end119:                                        ; preds = %if.end112
  %69 = ptrtoint ptr %kern_flow_attr.0 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %kern_flow_attr.0, align 8
  %71 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %call9.i.i, align 128
  %priority = getelementptr inbounds %struct.ib_uverbs_flow_attr, ptr %kern_flow_attr.0, i32 0, i32 2
  %72 = ptrtoint ptr %priority to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %priority, align 2
  %priority122 = getelementptr inbounds %struct.ib_flow_attr, ptr %call9.i.i, i32 0, i32 2
  %74 = ptrtoint ptr %priority122 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %priority122, align 2
  %num_of_specs123 = getelementptr inbounds %struct.ib_uverbs_flow_attr, ptr %kern_flow_attr.0, i32 0, i32 3
  %75 = ptrtoint ptr %num_of_specs123 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %num_of_specs123, align 8
  %num_of_specs124 = getelementptr inbounds %struct.ib_flow_attr, ptr %call9.i.i, i32 0, i32 4
  %77 = ptrtoint ptr %num_of_specs124 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %num_of_specs124, align 4
  %port125 = getelementptr inbounds %struct.ib_uverbs_flow_attr, ptr %kern_flow_attr.0, i32 0, i32 5
  %78 = ptrtoint ptr %port125 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %port125, align 1
  %conv126 = zext i8 %79 to i32
  %port127 = getelementptr inbounds %struct.ib_flow_attr, ptr %call9.i.i, i32 0, i32 5
  %80 = ptrtoint ptr %port127 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv126, ptr %port127, align 16
  %flags128 = getelementptr inbounds %struct.ib_uverbs_flow_attr, ptr %kern_flow_attr.0, i32 0, i32 6
  %81 = ptrtoint ptr %flags128 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags128, align 4
  %flags129 = getelementptr inbounds %struct.ib_flow_attr, ptr %call9.i.i, i32 0, i32 3
  %83 = ptrtoint ptr %flags129 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %flags129, align 8
  %size130 = getelementptr inbounds %struct.ib_flow_attr, ptr %call9.i.i, i32 0, i32 1
  %84 = ptrtoint ptr %size130 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 20, ptr %size130, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp134326.not = icmp eq i8 %76, 0
  br i1 %cmp134326.not, label %if.end119.for.endthread-pre-split_crit_edge, label %land.lhs.true136.preheader

if.end119.for.endthread-pre-split_crit_edge:      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.endthread-pre-split

land.lhs.true136.preheader:                       ; preds = %if.end119
  %add.ptr = getelementptr %struct.ib_flow_attr, ptr %call9.i.i, i32 1
  %flow_specs131 = getelementptr inbounds %struct.ib_uverbs_flow_attr, ptr %kern_flow_attr.0, i32 0, i32 7
  br label %land.lhs.true136

land.lhs.true136:                                 ; preds = %if.end152.land.lhs.true136_crit_edge, %land.lhs.true136.preheader
  %85 = phi i8 [ %101, %if.end152.land.lhs.true136_crit_edge ], [ %76, %land.lhs.true136.preheader ]
  %i.0329 = phi i32 [ %inc, %if.end152.land.lhs.true136_crit_edge ], [ 0, %land.lhs.true136.preheader ]
  %ib_spec.0328 = phi ptr [ %add.ptr170, %if.end152.land.lhs.true136_crit_edge ], [ %add.ptr, %land.lhs.true136.preheader ]
  %kern_spec.0327 = phi ptr [ %add.ptr167, %if.end152.land.lhs.true136_crit_edge ], [ %flow_specs131, %land.lhs.true136.preheader ]
  %86 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %87)
  %cmp140 = icmp ugt i16 %87, 7
  br i1 %cmp140, label %land.rhs, label %land.lhs.true136.for.end_crit_edge

land.lhs.true136.for.end_crit_edge:               ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.rhs:                                         ; preds = %land.lhs.true136
  %size145 = getelementptr inbounds %struct.ib_uverbs_flow_spec_hdr, ptr %kern_spec.0327, i32 0, i32 1
  %88 = ptrtoint ptr %size145 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %size145, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %87, i16 %89)
  %cmp147.not = icmp ult i16 %87, %89
  br i1 %cmp147.not, label %land.rhs.for.endthread-pre-split_crit_edge, label %for.body

land.rhs.for.endthread-pre-split_crit_edge:       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.endthread-pre-split

for.body:                                         ; preds = %land.rhs
  %call149 = call fastcc i32 @kern_spec_to_ib_spec(ptr noundef %attrs, ptr noundef %kern_spec.0327, ptr noundef %ib_spec.0328, ptr noundef nonnull %call116)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end152, label %for.body.err_free_crit_edge

for.body.err_free_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free

if.end152:                                        ; preds = %for.body
  %size153 = getelementptr inbounds %struct.anon.170, ptr %ib_spec.0328, i32 0, i32 1
  %90 = ptrtoint ptr %size153 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %size153, align 4
  %92 = ptrtoint ptr %size130 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %size130, align 4
  %add157 = add i16 %93, %91
  store i16 %add157, ptr %size130, align 4
  %94 = ptrtoint ptr %size145 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %size145, align 4
  %96 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %2, align 4
  %sub = sub i16 %97, %95
  store i16 %sub, ptr %2, align 4
  %98 = load i16, ptr %size145, align 4
  %conv166 = zext i16 %98 to i32
  %add.ptr167 = getelementptr i8, ptr %kern_spec.0327, i32 %conv166
  %99 = load i16, ptr %size153, align 4
  %conv169 = zext i16 %99 to i32
  %add.ptr170 = getelementptr i8, ptr %ib_spec.0328, i32 %conv169
  %inc = add nuw nsw i32 %i.0329, 1
  %100 = ptrtoint ptr %num_of_specs124 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %num_of_specs124, align 4
  %conv133 = zext i8 %101 to i32
  %cmp134 = icmp ult i32 %inc, %conv133
  br i1 %cmp134, label %if.end152.land.lhs.true136_crit_edge, label %if.end152.for.endthread-pre-split_crit_edge

if.end152.for.endthread-pre-split_crit_edge:      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.endthread-pre-split

if.end152.land.lhs.true136_crit_edge:             ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true136

for.endthread-pre-split:                          ; preds = %if.end152.for.endthread-pre-split_crit_edge, %land.rhs.for.endthread-pre-split_crit_edge, %if.end119.for.endthread-pre-split_crit_edge
  %.lcssa324 = phi i8 [ 0, %if.end119.for.endthread-pre-split_crit_edge ], [ %85, %land.rhs.for.endthread-pre-split_crit_edge ], [ %101, %if.end152.for.endthread-pre-split_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %if.end119.for.endthread-pre-split_crit_edge ], [ %i.0329, %land.rhs.for.endthread-pre-split_crit_edge ], [ %inc, %if.end152.for.endthread-pre-split_crit_edge ]
  %102 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %102)
  %.pr = load i16, ptr %2, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %land.lhs.true136.for.end_crit_edge
  %i.0320 = phi i32 [ %i.0.lcssa, %for.endthread-pre-split ], [ %i.0329, %land.lhs.true136.for.end_crit_edge ]
  %conv133317.in = phi i8 [ %.lcssa324, %for.endthread-pre-split ], [ %85, %land.lhs.true136.for.end_crit_edge ]
  %103 = phi i16 [ %.pr, %for.endthread-pre-split ], [ %87, %land.lhs.true136.for.end_crit_edge ]
  %conv133317 = zext i8 %conv133317.in to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool174.not = icmp eq i16 %103, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0320, i32 %conv133317)
  %cmp178.not = icmp eq i32 %i.0320, %conv133317
  %or.cond = select i1 %tobool174.not, i1 %cmp178.not, i1 false
  br i1 %or.cond, label %if.end186, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv184 = zext i16 %103 to i32
  %call185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %i.0320, i32 noundef %conv184) #19
  br label %err_free

if.end186:                                        ; preds = %for.end
  %104 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %59, align 4
  %create_flow = getelementptr inbounds %struct.ib_device, ptr %105, i32 0, i32 1, i32 70
  %106 = ptrtoint ptr %create_flow to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %create_flow, align 4
  %call188 = call ptr %107(ptr noundef nonnull %59, ptr noundef nonnull %call9.i.i, ptr noundef %attrs) #13
  %cmp.i304 = icmp ugt ptr %call188, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i304, label %if.then190, label %ib_set_flow.exit

if.then190:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #15
  %108 = ptrtoint ptr %call188 to i32
  br label %err_free

ib_set_flow.exit:                                 ; preds = %if.end186
  %109 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %59, align 4
  %object.i305 = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 3
  %111 = ptrtoint ptr %object.i305 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call188, ptr %object.i305, align 8
  %uobject.i = getelementptr inbounds %struct.ib_flow, ptr %call188, i32 0, i32 2
  %112 = ptrtoint ptr %uobject.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call.i, ptr %uobject.i, align 4
  %usecnt.i = getelementptr inbounds %struct.ib_qp, ptr %59, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usecnt.i, i32 1, i32 3, i32 1) #13
  %113 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt.i, ptr %usecnt.i, i32 1, ptr elementtype(i32) %usecnt.i) #13, !srcloc !51
  %114 = ptrtoint ptr %call188 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %59, ptr %call188, align 4
  %device2.i = getelementptr inbounds %struct.ib_flow, ptr %call188, i32 0, i32 1
  %115 = ptrtoint ptr %device2.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %110, ptr %device2.i, align 4
  %resources.i = getelementptr inbounds %struct.ib_uflow_object, ptr %call.i, i32 0, i32 1
  %116 = ptrtoint ptr %resources.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call116, ptr %resources.i, align 8
  %uobject = getelementptr inbounds %struct.ib_qp, ptr %59, i32 0, i32 14
  %117 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %uobject, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %118, i32 noundef 0) #13
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  %119 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool197.not = icmp eq i8 %120, 0
  br i1 %tobool197.not, label %ib_set_flow.exit.if.end199_crit_edge, label %if.then198

ib_set_flow.exit.if.end199_crit_edge:             ; preds = %ib_set_flow.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end199

if.then198:                                       ; preds = %ib_set_flow.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef %kern_flow_attr.0) #13
  br label %if.end199

if.end199:                                        ; preds = %if.then198, %ib_set_flow.exit.if.end199_crit_edge
  %uobject.i309 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 4
  %121 = ptrtoint ptr %uobject.i309 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %uobject.i309, align 8
  %tobool.not.i310 = icmp eq ptr %122, null
  br i1 %tobool.not.i310, label %if.end199.uobj_finalize_uobj_create.exit_crit_edge, label %do.end.i, !prof !54

if.end199.uobj_finalize_uobj_create.exit_crit_edge: ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #15
  br label %uobj_finalize_uobj_create.exit

do.end.i:                                         ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 96, i32 noundef 9, ptr noundef null) #13
  br label %uobj_finalize_uobj_create.exit

uobj_finalize_uobj_create.exit:                   ; preds = %do.end.i, %if.end199.uobj_finalize_uobj_create.exit_crit_edge
  %123 = ptrtoint ptr %uobject.i309 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i, ptr %uobject.i309, align 8
  %id = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 6
  %124 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %id, align 8
  %flow_handle = getelementptr inbounds %struct.ib_uverbs_create_flow_resp, ptr %resp, i32 0, i32 1
  %126 = ptrtoint ptr %flow_handle to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %flow_handle, align 4
  %call200 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 8)
  br label %cleanup

err_free:                                         ; preds = %if.then190, %do.end, %for.body.err_free_crit_edge
  %err.0 = phi i32 [ -22, %do.end ], [ %108, %if.then190 ], [ %call149, %for.body.err_free_crit_edge ]
  call void @ib_uverbs_flow_resources_free(ptr noundef nonnull %call116)
  br label %err_free_flow_attr

err_free_flow_attr:                               ; preds = %err_free, %if.end112.err_free_flow_attr_crit_edge
  %err.1 = phi i32 [ %err.0, %err_free ], [ -12, %if.end112.err_free_flow_attr_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %err_put

err_put:                                          ; preds = %err_free_flow_attr, %if.end8.i.i.err_put_crit_edge, %if.end96.err_put_crit_edge
  %err.2 = phi i32 [ %err.1, %err_free_flow_attr ], [ -22, %if.end96.err_put_crit_edge ], [ -12, %if.end8.i.i.err_put_crit_edge ]
  %uobject201 = getelementptr inbounds %struct.ib_qp, ptr %59, i32 0, i32 14
  %127 = ptrtoint ptr %uobject201 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %uobject201, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %128, i32 noundef 0) #13
  br label %err_uobj

err_uobj:                                         ; preds = %err_put, %_uobj_get_obj_read.exit.err_uobj_crit_edge, %if.end82.err_uobj_crit_edge, %rdma_is_port_valid.exit.err_uobj_crit_edge, %if.end75.err_uobj_crit_edge
  %err.3 = phi i32 [ %err.2, %err_put ], [ -22, %rdma_is_port_valid.exit.err_uobj_crit_edge ], [ -22, %_uobj_get_obj_read.exit.err_uobj_crit_edge ], [ -22, %if.end75.err_uobj_crit_edge ], [ -22, %if.end82.err_uobj_crit_edge ]
  call void @rdma_alloc_abort_uobject(ptr noundef %call.i, ptr noundef %attrs, i1 noundef zeroext false) #13
  br label %err_free_attr

err_free_attr:                                    ; preds = %err_uobj, %if.then73, %if.end65.err_free_attr_crit_edge, %if.end55.err_free_attr_crit_edge
  %kern_flow_attr.1 = phi ptr [ %call9.i, %if.end55.err_free_attr_crit_edge ], [ %kern_flow_attr.0, %if.end65.err_free_attr_crit_edge ], [ %kern_flow_attr.0, %if.then73 ], [ %kern_flow_attr.0, %err_uobj ]
  %err.4 = phi i32 [ %call60, %if.end55.err_free_attr_crit_edge ], [ %call66, %if.end65.err_free_attr_crit_edge ], [ %36, %if.then73 ], [ %err.3, %err_uobj ]
  %129 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool206.not = icmp eq i8 %130, 0
  br i1 %tobool206.not, label %err_free_attr.cleanup_crit_edge, label %if.then207

err_free_attr.cleanup_crit_edge:                  ; preds = %err_free_attr
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then207:                                       ; preds = %err_free_attr
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef %kern_flow_attr.1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then207, %err_free_attr.cleanup_crit_edge, %uobj_finalize_uobj_create.exit, %if.end8.i.cleanup_crit_edge, %lor.lhs.false37.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call200, %uobj_finalize_uobj_create.exit ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -1, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ], [ -22, %lor.lhs.false37.cleanup_crit_edge ], [ -22, %if.end33.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ %err.4, %if.then207 ], [ %err.4, %err_free_attr.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_ex_destroy_flow(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_destroy_flow, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #13
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !55
  %1 = getelementptr inbounds %struct.ib_uverbs_destroy_flow, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !55
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %5 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %10, i32 noundef 18432) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %call5 = call i32 @__uobj_perform_destroy(ptr noundef %spec.select.i, i32 noundef %12, ptr noundef %attrs) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_dereg_mr(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_dereg_mr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #13
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !55
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %1 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %6, i32 noundef 14336) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd, align 4
  %call2 = call i32 @__uobj_perform_destroy(ptr noundef %spec.select.i, i32 noundef %8, ptr noundef %attrs) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_reg_mr(ptr noundef %attrs) #1 align 64 {
entry:
  %resp = alloca %struct.ib_uverbs_reg_mr_resp, align 4
  %cmd = alloca %struct.ib_uverbs_reg_mr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %resp) #13
  %0 = call ptr @memset(ptr %resp, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #13
  %1 = getelementptr inbounds %struct.ib_uverbs_reg_mr, ptr %cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.ib_uverbs_reg_mr, ptr %cmd, i32 0, i32 2
  %3 = getelementptr inbounds %struct.ib_uverbs_reg_mr, ptr %cmd, i32 0, i32 3
  %4 = getelementptr inbounds %struct.ib_uverbs_reg_mr, ptr %cmd, i32 0, i32 4
  %5 = getelementptr inbounds %struct.ib_uverbs_reg_mr, ptr %cmd, i32 0, i32 5
  %6 = call ptr @memset(ptr %cmd, i32 255, i32 40)
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %1, align 8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %3, align 8
  %11 = xor i64 %10, %8
  %12 = and i64 %11, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp.not = icmp eq i64 %12, 0
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %13 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %18, i32 noundef 14336) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %call.i = call ptr @rdma_alloc_begin_uobject(ptr noundef %spec.select.i, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %context.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %20 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %context.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %5, align 4
  %and.i = and i32 %25, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i90 = icmp eq i32 %and.i, 0
  %and1.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp ne i32 %and1.i, 0
  %or.cond.not.i = or i1 %tobool.not.i90, %tobool2.not.i
  %and3.i = and i32 %25, -1072693504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %or.cond17.i = and i1 %tobool4.not.i, %or.cond.not.i
  br i1 %or.cond17.i, label %if.end6.i, label %if.end9.err_free_crit_edge

if.end9.err_free_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free

if.end6.i:                                        ; preds = %if.end9
  %and7.i = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end13_crit_edge, label %land.lhs.true9.i

if.end6.i.if.end13_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

land.lhs.true9.i:                                 ; preds = %if.end6.i
  %device_cap_flags.i = getelementptr inbounds %struct.ib_device, ptr %23, i32 0, i32 22, i32 9
  %26 = ptrtoint ptr %device_cap_flags.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %device_cap_flags.i, align 8
  %and10.i = and i64 %27, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i)
  %tobool11.not.i = icmp eq i64 %and10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true9.i.err_free_crit_edge, label %land.lhs.true9.i.if.end13_crit_edge

land.lhs.true9.i.if.end13_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

land.lhs.true9.i.err_free_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free

if.end13:                                         ; preds = %land.lhs.true9.i.if.end13_crit_edge, %if.end6.i.if.end13_crit_edge
  %28 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ufile, align 8
  %device15 = getelementptr inbounds %struct.ib_uverbs_file, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %device15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device15, align 4
  %uapi16 = getelementptr inbounds %struct.ib_uverbs_device, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %uapi16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %uapi16, align 4
  %call4.i91 = call ptr @radix_tree_lookup(ptr noundef %33, i32 noundef 2048) #13
  %tobool.not.i92 = icmp eq ptr %call4.i91, null
  %spec.select.i93 = select i1 %tobool.not.i92, ptr inttoptr (i32 -2 to ptr), ptr %call4.i91
  %34 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ufile, align 8
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %4, align 8
  %conv20 = zext i32 %37 to i64
  %call21 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i93, ptr noundef %35, i64 noundef %conv20, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i94 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i94, label %if.end13.err_free_crit_edge, label %_uobj_get_obj_read.exit

if.end13.err_free_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free

_uobj_get_obj_read.exit:                          ; preds = %if.end13
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call21, i32 0, i32 3
  %38 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %object.i, align 8
  %tobool23.not = icmp eq ptr %39, null
  br i1 %tobool23.not, label %_uobj_get_obj_read.exit.err_free_crit_edge, label %if.end25

_uobj_get_obj_read.exit.err_free_crit_edge:       ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free

if.end25:                                         ; preds = %_uobj_get_obj_read.exit
  %device26 = getelementptr inbounds %struct.ib_pd, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %device26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device26, align 4
  %reg_user_mr = getelementptr inbounds %struct.ib_device, ptr %41, i32 0, i32 1, i32 55
  %42 = ptrtoint ptr %reg_user_mr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_user_mr, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %1, align 8
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %2, align 8
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %3, align 8
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %5, align 4
  %call30 = call ptr %43(ptr noundef nonnull %39, i64 noundef %45, i64 noundef %47, i64 noundef %49, i32 noundef %51, ptr noundef %attrs) #13
  %cmp.i96 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %call30 to i32
  %uobject44 = getelementptr inbounds %struct.ib_pd, ptr %39, i32 0, i32 3
  %53 = ptrtoint ptr %uobject44 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %uobject44, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %54, i32 noundef 0) #13
  br label %err_free

if.end34:                                         ; preds = %if.end25
  %55 = ptrtoint ptr %device26 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device26, align 4
  %57 = ptrtoint ptr %call30 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %call30, align 8
  %pd37 = getelementptr inbounds %struct.ib_mr, ptr %call30, i32 0, i32 1
  %58 = ptrtoint ptr %pd37 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %39, ptr %pd37, align 4
  %type = getelementptr inbounds %struct.ib_mr, ptr %call30, i32 0, i32 7
  %59 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3, ptr %type, align 4
  %dm = getelementptr inbounds %struct.ib_mr, ptr %call30, i32 0, i32 10
  %60 = ptrtoint ptr %dm to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %dm, align 4
  %sig_attrs = getelementptr inbounds %struct.ib_mr, ptr %call30, i32 0, i32 11
  %61 = ptrtoint ptr %sig_attrs to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %sig_attrs, align 8
  %62 = getelementptr inbounds %struct.ib_mr, ptr %call30, i32 0, i32 9
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %62, align 4
  %usecnt = getelementptr inbounds %struct.ib_pd, ptr %39, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %64 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !51
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %3, align 8
  %iova = getelementptr inbounds %struct.ib_mr, ptr %call30, i32 0, i32 4
  %67 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %iova, align 8
  %res = getelementptr inbounds %struct.ib_mr, ptr %call30, i32 0, i32 12
  call void @rdma_restrack_new(ptr noundef %res, i32 noundef 4) #13
  call void @rdma_restrack_set_name(ptr noundef %res, ptr noundef null) #13
  call void @rdma_restrack_add(ptr noundef %res) #13
  %object = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 3
  %68 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call30, ptr %object, align 8
  %uobject = getelementptr inbounds %struct.ib_pd, ptr %39, i32 0, i32 3
  %69 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %uobject, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %70, i32 noundef 0) #13
  %uobject.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 4
  %71 = ptrtoint ptr %uobject.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %uobject.i, align 8
  %tobool.not.i97 = icmp eq ptr %72, null
  br i1 %tobool.not.i97, label %if.end34.uobj_finalize_uobj_create.exit_crit_edge, label %do.end.i, !prof !54

if.end34.uobj_finalize_uobj_create.exit_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %uobj_finalize_uobj_create.exit

do.end.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 96, i32 noundef 9, ptr noundef null) #13
  br label %uobj_finalize_uobj_create.exit

uobj_finalize_uobj_create.exit:                   ; preds = %do.end.i, %if.end34.uobj_finalize_uobj_create.exit_crit_edge
  %73 = ptrtoint ptr %uobject.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i, ptr %uobject.i, align 8
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %call30, i32 0, i32 2
  %74 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %lkey, align 8
  %lkey41 = getelementptr inbounds %struct.ib_uverbs_reg_mr_resp, ptr %resp, i32 0, i32 1
  %76 = ptrtoint ptr %lkey41 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %lkey41, align 4
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %call30, i32 0, i32 3
  %77 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rkey, align 4
  %rkey42 = getelementptr inbounds %struct.ib_uverbs_reg_mr_resp, ptr %resp, i32 0, i32 2
  %79 = ptrtoint ptr %rkey42 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %rkey42, align 4
  %id = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 6
  %80 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %id, align 8
  %82 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %resp, align 4
  %call43 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 12)
  br label %cleanup

err_free:                                         ; preds = %if.then32, %_uobj_get_obj_read.exit.err_free_crit_edge, %if.end13.err_free_crit_edge, %land.lhs.true9.i.err_free_crit_edge, %if.end9.err_free_crit_edge
  %ret.0 = phi i32 [ %52, %if.then32 ], [ -22, %_uobj_get_obj_read.exit.err_free_crit_edge ], [ -22, %if.end9.err_free_crit_edge ], [ -22, %land.lhs.true9.i.err_free_crit_edge ], [ -22, %if.end13.err_free_crit_edge ]
  call void @rdma_alloc_abort_uobject(ptr noundef %call.i, ptr noundef %attrs, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %err_free, %uobj_finalize_uobj_create.exit, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.then7 ], [ %ret.0, %err_free ], [ %call43, %uobj_finalize_uobj_create.exit ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resp) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_rereg_mr(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_rereg_mr, align 8
  %resp = alloca %struct.ib_uverbs_rereg_mr_resp, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #13
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp) #13
  %1 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %resp, align 8, !annotation !55
  %2 = getelementptr inbounds %struct.ib_uverbs_rereg_mr_resp, ptr %resp, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !55
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ib_uverbs_rereg_mr, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %tobool5.not = icmp ult i32 %5, 8
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %and9 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end14_crit_edge, label %land.lhs.true

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end7
  %start = getelementptr inbounds %struct.ib_uverbs_rereg_mr, ptr %cmd, i32 0, i32 3
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start, align 8
  %hca_va = getelementptr inbounds %struct.ib_uverbs_rereg_mr, ptr %cmd, i32 0, i32 5
  %8 = ptrtoint ptr %hca_va to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %hca_va, align 8
  %10 = xor i64 %9, %7
  %11 = and i64 %10, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp.not = icmp eq i64 %11, 0
  br i1 %cmp.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %12 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %17, i32 noundef 14336) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %18 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ufile, align 8
  %mr_handle = getelementptr inbounds %struct.ib_uverbs_rereg_mr, ptr %cmd, i32 0, i32 1
  %20 = ptrtoint ptr %mr_handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mr_handle, align 8
  %conv18 = zext i32 %21 to i64
  %call19 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i, ptr noundef %19, i64 noundef %conv18, i32 noundef 1, ptr noundef %attrs) #13
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %object = getelementptr inbounds %struct.ib_uobject, ptr %call19, i32 0, i32 3
  %23 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %object, align 8
  %dm = getelementptr inbounds %struct.ib_mr, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dm, align 4
  %tobool24.not = icmp eq ptr %26, null
  br i1 %tobool24.not, label %if.end26, label %if.end23.put_uobjs_crit_edge

if.end23.put_uobjs_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_uobjs

if.end26:                                         ; preds = %if.end23
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and28 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end36_crit_edge, label %if.then30

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then30:                                        ; preds = %if.end26
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %24, align 8
  %access_flags = getelementptr inbounds %struct.ib_uverbs_rereg_mr, ptr %cmd, i32 0, i32 7
  %31 = ptrtoint ptr %access_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %access_flags, align 4
  %and.i = and i32 %32, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i182 = icmp eq i32 %and.i, 0
  %and1.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp ne i32 %and1.i, 0
  %or.cond.not.i = or i1 %tobool.not.i182, %tobool2.not.i
  %and3.i = and i32 %32, -1072693504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %or.cond17.i = and i1 %tobool4.not.i, %or.cond.not.i
  br i1 %or.cond17.i, label %if.end6.i, label %if.then30.put_uobjs_crit_edge

if.then30.put_uobjs_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_uobjs

if.end6.i:                                        ; preds = %if.then30
  %and7.i = and i32 %32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end36_crit_edge, label %land.lhs.true9.i

if.end6.i.if.end36_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

land.lhs.true9.i:                                 ; preds = %if.end6.i
  %device_cap_flags.i = getelementptr inbounds %struct.ib_device, ptr %30, i32 0, i32 22, i32 9
  %33 = ptrtoint ptr %device_cap_flags.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %device_cap_flags.i, align 8
  %and10.i = and i64 %34, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i)
  %tobool11.not.i = icmp eq i64 %and10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true9.i.put_uobjs_crit_edge, label %land.lhs.true9.i.if.end36_crit_edge

land.lhs.true9.i.if.end36_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

land.lhs.true9.i.put_uobjs_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_uobjs

if.end36:                                         ; preds = %land.lhs.true9.i.if.end36_crit_edge, %if.end6.i.if.end36_crit_edge, %if.end26.if.end36_crit_edge
  %pd = getelementptr inbounds %struct.ib_mr, ptr %24, i32 0, i32 1
  %35 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pd, align 4
  %and38 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end36.if.end59_crit_edge, label %if.then40

if.end36.if.end59_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.then40:                                        ; preds = %if.end36
  %37 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ufile, align 8
  %device42 = getelementptr inbounds %struct.ib_uverbs_file, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %device42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device42, align 4
  %uapi43 = getelementptr inbounds %struct.ib_uverbs_device, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %uapi43 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %uapi43, align 4
  %call4.i183 = call ptr @radix_tree_lookup(ptr noundef %42, i32 noundef 2048) #13
  %tobool.not.i184 = icmp eq ptr %call4.i183, null
  %spec.select.i185 = select i1 %tobool.not.i184, ptr inttoptr (i32 -2 to ptr), ptr %call4.i183
  %43 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ufile, align 8
  %pd_handle = getelementptr inbounds %struct.ib_uverbs_rereg_mr, ptr %cmd, i32 0, i32 6
  %45 = ptrtoint ptr %pd_handle to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pd_handle, align 8
  %conv52 = zext i32 %46 to i64
  %call53 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i185, ptr noundef %44, i64 noundef %conv52, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then40.put_uobjs_crit_edge, label %_uobj_get_obj_read.exit

if.then40.put_uobjs_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_uobjs

_uobj_get_obj_read.exit:                          ; preds = %if.then40
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call53, i32 0, i32 3
  %47 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %object.i, align 8
  %tobool55.not = icmp eq ptr %48, null
  br i1 %tobool55.not, label %_uobj_get_obj_read.exit.put_uobjs_crit_edge, label %_uobj_get_obj_read.exit.if.end59_crit_edge

_uobj_get_obj_read.exit.if.end59_crit_edge:       ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

_uobj_get_obj_read.exit.put_uobjs_crit_edge:      ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_uobjs

if.end59:                                         ; preds = %_uobj_get_obj_read.exit.if.end59_crit_edge, %if.end36.if.end59_crit_edge
  %new_pd.0 = phi ptr [ %48, %_uobj_get_obj_read.exit.if.end59_crit_edge ], [ %36, %if.end36.if.end59_crit_edge ]
  %49 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ufile, align 8
  %device61 = getelementptr inbounds %struct.ib_uverbs_file, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %device61 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device61, align 4
  %uapi62 = getelementptr inbounds %struct.ib_uverbs_device, ptr %52, i32 0, i32 13
  %53 = ptrtoint ptr %uapi62 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %uapi62, align 4
  %call4.i187 = call ptr @radix_tree_lookup(ptr noundef %54, i32 noundef 14336) #13
  %tobool.not.i188 = icmp eq ptr %call4.i187, null
  %spec.select.i189 = select i1 %tobool.not.i188, ptr inttoptr (i32 -2 to ptr), ptr %call4.i187
  %call.i = call ptr @rdma_alloc_begin_uobject(ptr noundef %spec.select.i189, ptr noundef %attrs) #13
  %cmp.i.i190 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i190, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %call.i to i32
  br label %put_uobj_pd

if.end68:                                         ; preds = %if.end59
  %context.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %56 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %context.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %rereg_user_mr = getelementptr inbounds %struct.ib_device, ptr %59, i32 0, i32 1, i32 57
  %60 = ptrtoint ptr %rereg_user_mr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rereg_user_mr, align 4
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 4
  %start70 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, ptr %cmd, i32 0, i32 3
  %64 = ptrtoint ptr %start70 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %start70, align 8
  %length = getelementptr inbounds %struct.ib_uverbs_rereg_mr, ptr %cmd, i32 0, i32 4
  %66 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %length, align 8
  %hca_va71 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, ptr %cmd, i32 0, i32 5
  %68 = ptrtoint ptr %hca_va71 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %hca_va71, align 8
  %access_flags72 = getelementptr inbounds %struct.ib_uverbs_rereg_mr, ptr %cmd, i32 0, i32 7
  %70 = ptrtoint ptr %access_flags72 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %access_flags72, align 4
  %call73 = call ptr %61(ptr noundef %24, i32 noundef %63, i64 noundef %65, i64 noundef %67, i64 noundef %69, i32 noundef %71, ptr noundef %new_pd.0, ptr noundef %attrs) #13
  %cmp.i193 = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i193, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %call73 to i32
  br label %put_new_uobj

if.end77:                                         ; preds = %if.end68
  %tobool78.not = icmp eq ptr %call73, null
  br i1 %tobool78.not, label %if.else86, label %if.then79

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  %device80 = getelementptr inbounds %struct.ib_pd, ptr %new_pd.0, i32 0, i32 2
  %73 = ptrtoint ptr %device80 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device80, align 4
  %75 = ptrtoint ptr %call73 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %call73, align 8
  %pd82 = getelementptr inbounds %struct.ib_mr, ptr %call73, i32 0, i32 1
  %76 = ptrtoint ptr %pd82 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %new_pd.0, ptr %pd82, align 4
  %type = getelementptr inbounds %struct.ib_mr, ptr %call73, i32 0, i32 7
  %77 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3, ptr %type, align 4
  %78 = getelementptr inbounds %struct.ib_mr, ptr %call73, i32 0, i32 9
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call19, ptr %78, align 4
  %usecnt = getelementptr inbounds %struct.ib_pd, ptr %new_pd.0, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %80 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !51
  %object83 = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 3
  %81 = ptrtoint ptr %object83 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call73, ptr %object83, align 8
  %res = getelementptr inbounds %struct.ib_mr, ptr %call73, i32 0, i32 12
  call void @rdma_restrack_new(ptr noundef %res, i32 noundef 4) #13
  call void @rdma_restrack_set_name(ptr noundef %res, ptr noundef null) #13
  call void @rdma_restrack_add(ptr noundef %res) #13
  call void @rdma_assign_uobject(ptr noundef %call19, ptr noundef %call.i, ptr noundef %attrs) #13
  call void @rdma_alloc_commit_uobject(ptr noundef %call.i, ptr noundef %attrs) #13
  call void @rdma_lookup_put_uobject(ptr noundef %call19, i32 noundef 2) #13
  br label %if.end101

if.else86:                                        ; preds = %if.end77
  %82 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags, align 4
  %and88 = and i32 %83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.else86.if.end94_crit_edge, label %if.then90

if.else86.if.end94_crit_edge:                     ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94

if.then90:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #15
  %usecnt91 = getelementptr inbounds %struct.ib_pd, ptr %36, i32 0, i32 4
  %call.i.i180 = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt91, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usecnt91, i32 1, i32 3, i32 1) #13
  %84 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt91, ptr %usecnt91, i32 1, ptr elementtype(i32) %usecnt91) #13, !srcloc !53
  %85 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %new_pd.0, ptr %pd, align 4
  %usecnt93 = getelementptr inbounds %struct.ib_pd, ptr %new_pd.0, i32 0, i32 4
  %call.i.i181 = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt93, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usecnt93, i32 1, i32 3, i32 1) #13
  %86 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt93, ptr %usecnt93, i32 1, ptr elementtype(i32) %usecnt93) #13, !srcloc !51
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %if.else86.if.end94_crit_edge
  %87 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags, align 4
  %and96 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end94.if.end101_crit_edge, label %if.then98

if.end94.if.end101_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  %89 = ptrtoint ptr %hca_va71 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %hca_va71, align 8
  %iova = getelementptr inbounds %struct.ib_mr, ptr %24, i32 0, i32 4
  %91 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %iova, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %if.end94.if.end101_crit_edge, %if.then79
  %uobj.0 = phi ptr [ null, %if.then79 ], [ %call19, %if.then98 ], [ %call19, %if.end94.if.end101_crit_edge ]
  %new_uobj.0 = phi ptr [ null, %if.then79 ], [ %call.i, %if.then98 ], [ %call.i, %if.end94.if.end101_crit_edge ]
  %mr.0 = phi ptr [ %call73, %if.then79 ], [ %24, %if.then98 ], [ %24, %if.end94.if.end101_crit_edge ]
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %mr.0, i32 0, i32 2
  %92 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %lkey, align 8
  %94 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %resp, align 8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %mr.0, i32 0, i32 3
  %95 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rkey, align 4
  %97 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %2, align 4
  %call104 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 8)
  br label %put_new_uobj

put_new_uobj:                                     ; preds = %if.end101, %if.then75
  %ret.0 = phi i32 [ %72, %if.then75 ], [ %call104, %if.end101 ]
  %uobj.1 = phi ptr [ %call19, %if.then75 ], [ %uobj.0, %if.end101 ]
  %new_uobj.1 = phi ptr [ %call.i, %if.then75 ], [ %new_uobj.0, %if.end101 ]
  %tobool105.not = icmp eq ptr %new_uobj.1, null
  br i1 %tobool105.not, label %put_new_uobj.put_uobj_pd_crit_edge, label %if.then106

put_new_uobj.put_uobj_pd_crit_edge:               ; preds = %put_new_uobj
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_uobj_pd

if.then106:                                       ; preds = %put_new_uobj
  call void @__sanitizer_cov_trace_pc() #15
  call void @rdma_alloc_abort_uobject(ptr noundef nonnull %new_uobj.1, ptr noundef %attrs, i1 noundef zeroext false) #13
  br label %put_uobj_pd

put_uobj_pd:                                      ; preds = %if.then106, %put_new_uobj.put_uobj_pd_crit_edge, %if.then66
  %ret.1 = phi i32 [ %55, %if.then66 ], [ %ret.0, %if.then106 ], [ %ret.0, %put_new_uobj.put_uobj_pd_crit_edge ]
  %uobj.2 = phi ptr [ %call19, %if.then66 ], [ %uobj.1, %if.then106 ], [ %uobj.1, %put_new_uobj.put_uobj_pd_crit_edge ]
  %98 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags, align 4
  %and109 = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %put_uobj_pd.put_uobjs_crit_edge, label %if.then111

put_uobj_pd.put_uobjs_crit_edge:                  ; preds = %put_uobj_pd
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_uobjs

if.then111:                                       ; preds = %put_uobj_pd
  call void @__sanitizer_cov_trace_pc() #15
  %uobject = getelementptr inbounds %struct.ib_pd, ptr %new_pd.0, i32 0, i32 3
  %100 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %uobject, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %101, i32 noundef 0) #13
  br label %put_uobjs

put_uobjs:                                        ; preds = %if.then111, %put_uobj_pd.put_uobjs_crit_edge, %_uobj_get_obj_read.exit.put_uobjs_crit_edge, %if.then40.put_uobjs_crit_edge, %land.lhs.true9.i.put_uobjs_crit_edge, %if.then30.put_uobjs_crit_edge, %if.end23.put_uobjs_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.then111 ], [ %ret.1, %put_uobj_pd.put_uobjs_crit_edge ], [ -22, %if.end23.put_uobjs_crit_edge ], [ -22, %_uobj_get_obj_read.exit.put_uobjs_crit_edge ], [ -22, %if.then30.put_uobjs_crit_edge ], [ -22, %land.lhs.true9.i.put_uobjs_crit_edge ], [ -22, %if.then40.put_uobjs_crit_edge ]
  %uobj.3 = phi ptr [ %uobj.2, %if.then111 ], [ %uobj.2, %put_uobj_pd.put_uobjs_crit_edge ], [ %call19, %if.end23.put_uobjs_crit_edge ], [ %call19, %_uobj_get_obj_read.exit.put_uobjs_crit_edge ], [ %call19, %if.then30.put_uobjs_crit_edge ], [ %call19, %land.lhs.true9.i.put_uobjs_crit_edge ], [ %call19, %if.then40.put_uobjs_crit_edge ]
  %tobool113.not = icmp eq ptr %uobj.3, null
  br i1 %tobool113.not, label %put_uobjs.cleanup_crit_edge, label %if.then114

put_uobjs.cleanup_crit_edge:                      ; preds = %put_uobjs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then114:                                       ; preds = %put_uobjs
  call void @__sanitizer_cov_trace_pc() #15
  call void @rdma_lookup_put_uobject(ptr noundef nonnull %uobj.3, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then114, %put_uobjs.cleanup_crit_edge, %if.then21, %land.lhs.true.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %if.then21 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -95, %if.end3.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %ret.2, %if.then114 ], [ %ret.2, %put_uobjs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_alloc_mw(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_alloc_mw, align 8
  %resp = alloca %struct.ib_uverbs_alloc_mw_resp, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #13
  %0 = getelementptr inbounds %struct.ib_uverbs_alloc_mw, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_uverbs_alloc_mw, ptr %cmd, i32 0, i32 2
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp) #13
  %3 = ptrtoint ptr %resp to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %resp, align 8
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %4 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %9, i32 noundef 16384) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %call.i = call ptr @rdma_alloc_begin_uobject(ptr noundef %spec.select.i, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %context.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %11 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %context.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ufile, align 8
  %device8 = getelementptr inbounds %struct.ib_uverbs_file, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %device8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device8, align 4
  %uapi9 = getelementptr inbounds %struct.ib_uverbs_device, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %uapi9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %uapi9, align 4
  %call4.i82 = call ptr @radix_tree_lookup(ptr noundef %20, i32 noundef 2048) #13
  %tobool.not.i83 = icmp eq ptr %call4.i82, null
  %spec.select.i84 = select i1 %tobool.not.i83, ptr inttoptr (i32 -2 to ptr), ptr %call4.i82
  %21 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ufile, align 8
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %0, align 8
  %conv12 = zext i32 %24 to i64
  %call13 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i84, ptr noundef %22, i64 noundef %conv12, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i85 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i85, label %if.end6.err_free_crit_edge, label %_uobj_get_obj_read.exit

if.end6.err_free_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free

_uobj_get_obj_read.exit:                          ; preds = %if.end6
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call13, i32 0, i32 3
  %25 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %object.i, align 8
  %tobool15.not = icmp eq ptr %26, null
  br i1 %tobool15.not, label %_uobj_get_obj_read.exit.err_free_crit_edge, label %if.end17

_uobj_get_obj_read.exit.err_free_crit_edge:       ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free

if.end17:                                         ; preds = %_uobj_get_obj_read.exit
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %1, align 4
  %.off = add i8 %28, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end8.i.i.i, label %if.end17.err_put_crit_edge

if.end17.err_put_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put

if.end8.i.i.i:                                    ; preds = %if.end17
  %size_ib_mw = getelementptr inbounds %struct.ib_device, ptr %14, i32 0, i32 1, i32 124
  %29 = ptrtoint ptr %size_ib_mw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size_ib_mw, align 4
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #16
  %tobool28.not = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool28.not, label %if.end8.i.i.i.err_put_crit_edge, label %if.end30

if.end8.i.i.i.err_put_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put

if.end30:                                         ; preds = %if.end8.i.i.i
  %31 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %14, ptr %call9.i.i.i, align 128
  %pd32 = getelementptr inbounds %struct.ib_mw, ptr %call9.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %pd32 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %26, ptr %pd32, align 4
  %uobject = getelementptr inbounds %struct.ib_mw, ptr %call9.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %uobject to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %uobject, align 8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %1, align 4
  %conv34 = zext i8 %35 to i32
  %type = getelementptr inbounds %struct.ib_mw, ptr %call9.i.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv34, ptr %type, align 16
  %device35 = getelementptr inbounds %struct.ib_pd, ptr %26, i32 0, i32 2
  %37 = ptrtoint ptr %device35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device35, align 4
  %alloc_mw = getelementptr inbounds %struct.ib_device, ptr %38, i32 0, i32 1, i32 64
  %39 = ptrtoint ptr %alloc_mw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %alloc_mw, align 4
  %call37 = call i32 %40(ptr noundef nonnull %call9.i.i.i, ptr noundef %attrs) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %err_alloc

if.end40:                                         ; preds = %if.end30
  %usecnt = getelementptr inbounds %struct.ib_pd, ptr %26, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %41 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !51
  %object = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 3
  %42 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call9.i.i.i, ptr %object, align 8
  %uobject41 = getelementptr inbounds %struct.ib_pd, ptr %26, i32 0, i32 3
  %43 = ptrtoint ptr %uobject41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %uobject41, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %44, i32 noundef 0) #13
  %uobject.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 4
  %45 = ptrtoint ptr %uobject.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %uobject.i, align 8
  %tobool.not.i86 = icmp eq ptr %46, null
  br i1 %tobool.not.i86, label %if.end40.uobj_finalize_uobj_create.exit_crit_edge, label %do.end.i, !prof !54

if.end40.uobj_finalize_uobj_create.exit_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %uobj_finalize_uobj_create.exit

do.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 96, i32 noundef 9, ptr noundef null) #13
  br label %uobj_finalize_uobj_create.exit

uobj_finalize_uobj_create.exit:                   ; preds = %do.end.i, %if.end40.uobj_finalize_uobj_create.exit_crit_edge
  %47 = ptrtoint ptr %uobject.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %uobject.i, align 8
  %rkey = getelementptr inbounds %struct.ib_mw, ptr %call9.i.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rkey, align 4
  %rkey42 = getelementptr inbounds %struct.ib_uverbs_alloc_mw_resp, ptr %resp, i32 0, i32 1
  %50 = ptrtoint ptr %rkey42 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %rkey42, align 4
  %id = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 6
  %51 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id, align 8
  %53 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %resp, align 8
  %call43 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 8)
  br label %cleanup

err_alloc:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #13
  br label %err_put

err_put:                                          ; preds = %err_alloc, %if.end8.i.i.i.err_put_crit_edge, %if.end17.err_put_crit_edge
  %ret.0 = phi i32 [ %call37, %err_alloc ], [ -22, %if.end17.err_put_crit_edge ], [ -12, %if.end8.i.i.i.err_put_crit_edge ]
  %uobject44 = getelementptr inbounds %struct.ib_pd, ptr %26, i32 0, i32 3
  %54 = ptrtoint ptr %uobject44 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %uobject44, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %55, i32 noundef 0) #13
  br label %err_free

err_free:                                         ; preds = %err_put, %_uobj_get_obj_read.exit.err_free_crit_edge, %if.end6.err_free_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_put ], [ -22, %_uobj_get_obj_read.exit.err_free_crit_edge ], [ -22, %if.end6.err_free_crit_edge ]
  call void @rdma_alloc_abort_uobject(ptr noundef %call.i, ptr noundef %attrs, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %err_free, %uobj_finalize_uobj_create.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then4 ], [ %ret.1, %err_free ], [ %call43, %uobj_finalize_uobj_create.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_dealloc_mw(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_dealloc_mw, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #13
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !55
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %1 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %6, i32 noundef 16384) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd, align 4
  %call2 = call i32 @__uobj_perform_destroy(ptr noundef %spec.select.i, i32 noundef %8, ptr noundef %attrs) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_alloc_pd(ptr noundef %attrs) #1 align 64 {
entry:
  %resp = alloca %struct.ib_uverbs_alloc_pd_resp, align 4
  %cmd = alloca %struct.ib_uverbs_alloc_pd, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #13
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %cmd, align 8, !annotation !55
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %1 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %6, i32 noundef 2048) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %call.i = call ptr @rdma_alloc_begin_uobject(ptr noundef %spec.select.i, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %context.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %8 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %size_ib_pd = getelementptr inbounds %struct.ib_device, ptr %11, i32 0, i32 1, i32 125
  %12 = ptrtoint ptr %size_ib_pd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size_ib_pd, align 4
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #16
  %tobool8.not = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool8.not, label %if.end6.err_crit_edge, label %if.end10

if.end6.err_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end10:                                         ; preds = %if.end6
  %device11 = getelementptr inbounds %struct.ib_pd, ptr %call9.i.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %device11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %device11, align 8
  %uobject = getelementptr inbounds %struct.ib_pd, ptr %call9.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %uobject to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %uobject, align 4
  %usecnt = getelementptr inbounds %struct.ib_pd, ptr %call9.i.i.i, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  %16 = ptrtoint ptr %usecnt to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %usecnt, align 16
  %res = getelementptr inbounds %struct.ib_pd, ptr %call9.i.i.i, i32 0, i32 7
  call void @rdma_restrack_new(ptr noundef %res, i32 noundef 0) #13
  call void @rdma_restrack_set_name(ptr noundef %res, ptr noundef null) #13
  %alloc_pd = getelementptr inbounds %struct.ib_device, ptr %11, i32 0, i32 1, i32 35
  %17 = ptrtoint ptr %alloc_pd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %alloc_pd, align 4
  %call14 = call i32 %18(ptr noundef nonnull %call9.i.i.i, ptr noundef %attrs) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %err_alloc

if.end17:                                         ; preds = %if.end10
  call void @rdma_restrack_add(ptr noundef %res) #13
  %object = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i.i.i, ptr %object, align 8
  %uobject.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 4
  %20 = ptrtoint ptr %uobject.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %uobject.i, align 8
  %tobool.not.i52 = icmp eq ptr %21, null
  br i1 %tobool.not.i52, label %if.end17.uobj_finalize_uobj_create.exit_crit_edge, label %do.end.i, !prof !54

if.end17.uobj_finalize_uobj_create.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %uobj_finalize_uobj_create.exit

do.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 96, i32 noundef 9, ptr noundef null) #13
  br label %uobj_finalize_uobj_create.exit

uobj_finalize_uobj_create.exit:                   ; preds = %do.end.i, %if.end17.uobj_finalize_uobj_create.exit_crit_edge
  %22 = ptrtoint ptr %uobject.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %uobject.i, align 8
  %id = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 8
  %25 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %resp, align 4
  %call19 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 4)
  br label %cleanup

err_alloc:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %call21 = call i32 @rdma_restrack_put(ptr noundef %res) #13
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #13
  br label %err

err:                                              ; preds = %err_alloc, %if.end6.err_crit_edge
  %ret.0 = phi i32 [ %call14, %err_alloc ], [ -12, %if.end6.err_crit_edge ]
  call void @rdma_alloc_abort_uobject(ptr noundef %call.i, ptr noundef %attrs, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %err, %uobj_finalize_uobj_create.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then4 ], [ %ret.0, %err ], [ %call19, %uobj_finalize_uobj_create.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_dealloc_pd(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_dealloc_pd, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #13
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !55
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %1 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %6, i32 noundef 2048) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd, align 4
  %call2 = call i32 @__uobj_perform_destroy(ptr noundef %spec.select.i, i32 noundef %8, ptr noundef %attrs) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_attach_mcast(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_attach_mcast, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd) #13
  %0 = getelementptr inbounds %struct.ib_uverbs_attach_mcast, ptr %cmd, i32 0, i32 2
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 24)
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.ib_uverbs_attach_mcast, ptr %cmd, i32 0, i32 1
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %3 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %8, i32 noundef 8192) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %9 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ufile, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 8
  %conv3 = zext i32 %12 to i64
  %call4 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i, ptr noundef %10, i64 noundef %conv3, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.cleanup_crit_edge, label %_uobj_get_obj_read.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

_uobj_get_obj_read.exit:                          ; preds = %if.end
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call4, i32 0, i32 3
  %13 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %object.i, align 8
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %_uobj_get_obj_read.exit.cleanup_crit_edge, label %if.end8

_uobj_get_obj_read.exit.cleanup_crit_edge:        ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %_uobj_get_obj_read.exit
  %uobject = getelementptr inbounds %struct.ib_qp, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %uobject, align 4
  %mcast_lock = getelementptr inbounds %struct.ib_uqp_object, ptr %16, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mcast_lock, i32 noundef 0) #13
  %mcast_list = getelementptr inbounds %struct.ib_uqp_object, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %mcast_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %mcast.077 = load ptr, ptr %mcast_list, align 4
  %cmp11.not78 = icmp eq ptr %mcast.077, %mcast_list
  br i1 %cmp11.not78, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %0, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mcast.079 = phi ptr [ %mcast.077, %for.body.lr.ph ], [ %mcast.0, %for.inc.for.body_crit_edge ]
  %lid = getelementptr inbounds %struct.ib_uverbs_mcast_entry, ptr %mcast.079, i32 0, i32 2
  %20 = ptrtoint ptr %lid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %lid, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp15 = icmp eq i16 %19, %21
  br i1 %cmp15, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %gid17 = getelementptr inbounds %struct.ib_uverbs_mcast_entry, ptr %mcast.079, i32 0, i32 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %cmd, ptr noundef dereferenceable(16) %gid17, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool20.not = icmp eq i32 %bcmp, 0
  br i1 %tobool20.not, label %land.lhs.true.out_put_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.out_put_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %mcast.079 to i32
  call void @__asan_load4_noabort(i32 %22)
  %mcast.0 = load ptr, ptr %mcast.079, align 4
  %cmp11.not = icmp eq ptr %mcast.0, %mcast_list
  br i1 %cmp11.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3264, i32 noundef 32) #17
  %tobool29.not = icmp eq ptr %call7.i, null
  br i1 %tobool29.not, label %for.end.out_put_crit_edge, label %if.end31

for.end.out_put_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end31:                                         ; preds = %for.end
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %0, align 4
  %lid33 = getelementptr inbounds %struct.ib_uverbs_mcast_entry, ptr %call7.i, i32 0, i32 2
  %26 = ptrtoint ptr %lid33 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %lid33, align 8
  %gid34 = getelementptr inbounds %struct.ib_uverbs_mcast_entry, ptr %call7.i, i32 0, i32 1
  %27 = call ptr @memcpy(ptr %gid34, ptr %cmd, i32 16)
  %call40 = call i32 @ib_attach_mcast(ptr noundef nonnull %14, ptr noundef %gid34, i16 noundef zeroext %25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end31
  %prev.i = getelementptr inbounds %struct.ib_uqp_object, ptr %16, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %29, ptr noundef %mcast_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then42.out_put_crit_edge

if.then42.out_put_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end.i.i:                                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i, ptr %prev.i, align 4
  %31 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %mcast_list, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call7.i, ptr %29, align 4
  br label %out_put

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %out_put

out_put:                                          ; preds = %if.else, %if.end.i.i, %if.then42.out_put_crit_edge, %for.end.out_put_crit_edge, %land.lhs.true.out_put_crit_edge
  %ret.0 = phi i32 [ %call40, %if.else ], [ -12, %for.end.out_put_crit_edge ], [ 0, %if.then42.out_put_crit_edge ], [ 0, %if.end.i.i ], [ 0, %land.lhs.true.out_put_crit_edge ]
  call void @mutex_unlock(ptr noundef %mcast_lock) #13
  %34 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %uobject, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %35, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %out_put, %_uobj_get_obj_read.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_put ], [ %call, %entry.cleanup_crit_edge ], [ -22, %_uobj_get_obj_read.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_create_qp(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_create_qp, align 8
  %cmd_ex = alloca %struct.ib_uverbs_ex_create_qp, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmd) #13
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd_ex) #13
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = getelementptr inbounds i8, ptr %cmd_ex, i32 40
  %2 = call ptr @memset(ptr %1, i32 0, i32 24)
  %user_handle = getelementptr inbounds %struct.ib_uverbs_create_qp, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %user_handle to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %user_handle, align 8
  %5 = ptrtoint ptr %cmd_ex to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %cmd_ex, align 8
  %pd_handle = getelementptr inbounds %struct.ib_uverbs_create_qp, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %pd_handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pd_handle, align 8
  %pd_handle2 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd_ex, i32 0, i32 1
  %8 = ptrtoint ptr %pd_handle2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pd_handle2, align 8
  %send_cq_handle = getelementptr inbounds %struct.ib_uverbs_create_qp, ptr %cmd, i32 0, i32 3
  %9 = ptrtoint ptr %send_cq_handle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %send_cq_handle, align 4
  %send_cq_handle3 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd_ex, i32 0, i32 2
  %11 = ptrtoint ptr %send_cq_handle3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %send_cq_handle3, align 4
  %recv_cq_handle = getelementptr inbounds %struct.ib_uverbs_create_qp, ptr %cmd, i32 0, i32 4
  %12 = ptrtoint ptr %recv_cq_handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %recv_cq_handle, align 8
  %recv_cq_handle4 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd_ex, i32 0, i32 3
  %14 = ptrtoint ptr %recv_cq_handle4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %recv_cq_handle4, align 8
  %srq_handle = getelementptr inbounds %struct.ib_uverbs_create_qp, ptr %cmd, i32 0, i32 5
  %15 = ptrtoint ptr %srq_handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %srq_handle, align 4
  %srq_handle5 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd_ex, i32 0, i32 4
  %17 = ptrtoint ptr %srq_handle5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %srq_handle5, align 4
  %max_send_wr = getelementptr inbounds %struct.ib_uverbs_create_qp, ptr %cmd, i32 0, i32 6
  %18 = ptrtoint ptr %max_send_wr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_send_wr, align 8
  %max_send_wr6 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd_ex, i32 0, i32 5
  %20 = ptrtoint ptr %max_send_wr6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %max_send_wr6, align 8
  %max_recv_wr = getelementptr inbounds %struct.ib_uverbs_create_qp, ptr %cmd, i32 0, i32 7
  %21 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_recv_wr, align 4
  %max_recv_wr7 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd_ex, i32 0, i32 6
  %23 = ptrtoint ptr %max_recv_wr7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %max_recv_wr7, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_uverbs_create_qp, ptr %cmd, i32 0, i32 8
  %24 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_send_sge, align 8
  %max_send_sge8 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd_ex, i32 0, i32 7
  %26 = ptrtoint ptr %max_send_sge8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %max_send_sge8, align 8
  %max_recv_sge = getelementptr inbounds %struct.ib_uverbs_create_qp, ptr %cmd, i32 0, i32 9
  %27 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_recv_sge, align 4
  %max_recv_sge9 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd_ex, i32 0, i32 8
  %29 = ptrtoint ptr %max_recv_sge9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %max_recv_sge9, align 4
  %max_inline_data = getelementptr inbounds %struct.ib_uverbs_create_qp, ptr %cmd, i32 0, i32 10
  %30 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_inline_data, align 8
  %max_inline_data10 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd_ex, i32 0, i32 9
  %32 = ptrtoint ptr %max_inline_data10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %max_inline_data10, align 8
  %sq_sig_all = getelementptr inbounds %struct.ib_uverbs_create_qp, ptr %cmd, i32 0, i32 11
  %33 = ptrtoint ptr %sq_sig_all to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sq_sig_all, align 4
  %sq_sig_all11 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd_ex, i32 0, i32 10
  %35 = ptrtoint ptr %sq_sig_all11 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %sq_sig_all11, align 4
  %qp_type = getelementptr inbounds %struct.ib_uverbs_create_qp, ptr %cmd, i32 0, i32 12
  %36 = ptrtoint ptr %qp_type to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %qp_type, align 1
  %qp_type12 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd_ex, i32 0, i32 11
  %38 = ptrtoint ptr %qp_type12 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %qp_type12, align 1
  %is_srq = getelementptr inbounds %struct.ib_uverbs_create_qp, ptr %cmd, i32 0, i32 13
  %39 = ptrtoint ptr %is_srq to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %is_srq, align 2
  %is_srq13 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd_ex, i32 0, i32 12
  %41 = ptrtoint ptr %is_srq13 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %is_srq13, align 2
  %call14 = call fastcc i32 @create_qp(ptr noundef %attrs, ptr noundef nonnull %cmd_ex)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd_ex) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_destroy_qp(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_destroy_qp, align 8
  %resp = alloca %struct.ib_uverbs_destroy_qp_resp, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #13
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #13
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.ib_uverbs_destroy_qp, ptr %cmd, i32 0, i32 1
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %2 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %7, i32 noundef 8192) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %call2 = call ptr @__uobj_get_destroy(ptr noundef %spec.select.i, i32 noundef %9, ptr noundef %attrs) #13
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %events_reported = getelementptr inbounds %struct.ib_uevent_object, ptr %call2, i32 0, i32 3
  %11 = ptrtoint ptr %events_reported to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %events_reported, align 4
  %13 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %resp, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %call2, i32 noundef 2) #13
  %call9 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 4)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then4 ], [ %call9, %if.end6 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_detach_mcast(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_detach_mcast, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd) #13
  %0 = getelementptr inbounds %struct.ib_uverbs_detach_mcast, ptr %cmd, i32 0, i32 2
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 24)
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.ib_uverbs_detach_mcast, ptr %cmd, i32 0, i32 1
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %3 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %8, i32 noundef 8192) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %9 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ufile, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 8
  %conv3 = zext i32 %12 to i64
  %call4 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i, ptr noundef %10, i64 noundef %conv3, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.cleanup_crit_edge, label %_uobj_get_obj_read.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

_uobj_get_obj_read.exit:                          ; preds = %if.end
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call4, i32 0, i32 3
  %13 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %object.i, align 8
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %_uobj_get_obj_read.exit.cleanup_crit_edge, label %if.end8

_uobj_get_obj_read.exit.cleanup_crit_edge:        ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %_uobj_get_obj_read.exit
  %uobject = getelementptr inbounds %struct.ib_qp, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %uobject, align 4
  %mcast_lock = getelementptr inbounds %struct.ib_uqp_object, ptr %16, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mcast_lock, i32 noundef 0) #13
  %mcast_list = getelementptr inbounds %struct.ib_uqp_object, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %mcast_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %mcast.064 = load ptr, ptr %mcast_list, align 4
  %cmp11.not65 = icmp eq ptr %mcast.064, %mcast_list
  br i1 %cmp11.not65, label %if.end8.out_put_crit_edge, label %for.body.lr.ph

if.end8.out_put_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

for.body.lr.ph:                                   ; preds = %if.end8
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %0, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mcast.066 = phi ptr [ %mcast.064, %for.body.lr.ph ], [ %mcast.0, %for.inc.for.body_crit_edge ]
  %lid = getelementptr inbounds %struct.ib_uverbs_mcast_entry, ptr %mcast.066, i32 0, i32 2
  %20 = ptrtoint ptr %lid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %lid, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp15 = icmp eq i16 %19, %21
  br i1 %cmp15, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %gid17 = getelementptr inbounds %struct.ib_uverbs_mcast_entry, ptr %mcast.066, i32 0, i32 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %cmd, ptr noundef dereferenceable(16) %gid17, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool20.not = icmp eq i32 %bcmp, 0
  br i1 %tobool20.not, label %if.then21, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then21:                                        ; preds = %land.lhs.true
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %mcast.066) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then21.list_del.exit_crit_edge

if.then21.list_del.exit_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mcast.066, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %mcast.066 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mcast.066, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then21.list_del.exit_crit_edge
  %28 = ptrtoint ptr %mcast.066 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %mcast.066, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mcast.066, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %mcast.066) #13
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %0, align 4
  %call35 = call i32 @ib_detach_mcast(ptr noundef nonnull %14, ptr noundef nonnull %cmd, i16 noundef zeroext %31) #13
  br label %out_put

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %32 = ptrtoint ptr %mcast.066 to i32
  call void @__asan_load4_noabort(i32 %32)
  %mcast.0 = load ptr, ptr %mcast.066, align 4
  %cmp11.not = icmp eq ptr %mcast.0, %mcast_list
  br i1 %cmp11.not, label %for.inc.out_put_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.out_put_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

out_put:                                          ; preds = %for.inc.out_put_crit_edge, %list_del.exit, %if.end8.out_put_crit_edge
  %ret.0 = phi i32 [ %call35, %list_del.exit ], [ -22, %if.end8.out_put_crit_edge ], [ -22, %for.inc.out_put_crit_edge ]
  call void @mutex_unlock(ptr noundef %mcast_lock) #13
  %33 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %uobject, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %34, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %out_put, %_uobj_get_obj_read.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_put ], [ %call, %entry.cleanup_crit_edge ], [ -22, %_uobj_get_obj_read.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_modify_qp(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_ex_modify_qp, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #13
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 112)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %attr_mask = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 3
  %1 = ptrtoint ptr %attr_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %attr_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %2)
  %tobool2.not = icmp ult i32 %2, 2097152
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = call fastcc i32 @modify_qp(ptr noundef %attrs, ptr noundef nonnull %cmd)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_post_recv(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_post_recv, align 8
  %resp = alloca %struct.ib_uverbs_post_recv_resp, align 4
  %bad_wr = alloca ptr, align 4
  %iter = alloca %struct.uverbs_req_iter, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd) #13
  %0 = getelementptr inbounds %struct.ib_uverbs_post_recv, ptr %cmd, i32 0, i32 1
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #13
  %2 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %resp, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bad_wr) #13
  %3 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %bad_wr, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #13
  %4 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !55
  %5 = getelementptr inbounds %struct.uverbs_req_iter, ptr %iter, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !55
  %call = call fastcc i32 @uverbs_request_start(ptr noundef %attrs, ptr noundef nonnull %iter, ptr noundef nonnull %cmd, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.ib_uverbs_post_recv, ptr %cmd, i32 0, i32 4
  %8 = getelementptr inbounds %struct.ib_uverbs_post_recv, ptr %cmd, i32 0, i32 3
  %9 = getelementptr inbounds %struct.ib_uverbs_post_recv, ptr %cmd, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %8, align 8
  %call1 = call fastcc ptr @ib_uverbs_unmarshall_recv(ptr noundef nonnull %iter, i32 noundef %11, i32 noundef %13, i32 noundef %15)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %17 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %22, i32 noundef 8192) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %23 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ufile, align 8
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %0, align 8
  %conv8 = zext i32 %26 to i64
  %call9 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i, ptr noundef %24, i64 noundef %conv8, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end5.out_crit_edge, label %_uobj_get_obj_read.exit

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

_uobj_get_obj_read.exit:                          ; preds = %if.end5
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call9, i32 0, i32 3
  %27 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %object.i, align 8
  %tobool11.not = icmp eq ptr %28, null
  br i1 %tobool11.not, label %_uobj_get_obj_read.exit.out_crit_edge, label %if.end13

_uobj_get_obj_read.exit.out_crit_edge:            ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end13:                                         ; preds = %_uobj_get_obj_read.exit
  %29 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %resp, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %28, align 4
  %post_recv = getelementptr inbounds %struct.ib_device, ptr %31, i32 0, i32 1, i32 7
  %32 = ptrtoint ptr %post_recv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %post_recv, align 4
  %real_qp = getelementptr inbounds %struct.ib_qp, ptr %28, i32 0, i32 13
  %34 = ptrtoint ptr %real_qp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %real_qp, align 4
  %call16 = call i32 %33(ptr noundef %35, ptr noundef %call1, ptr noundef nonnull %bad_wr) #13
  %uobject = getelementptr inbounds %struct.ib_qp, ptr %28, i32 0, i32 14
  %36 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %uobject, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %37, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool18.not = icmp eq i32 %call16, 0
  %tobool20.not64 = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool18.not, i1 true, i1 %tobool20.not64
  br i1 %or.cond, label %if.end13.if.end27_crit_edge, label %for.body.lr.ph

if.end13.if.end27_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

for.body.lr.ph:                                   ; preds = %if.end13
  %38 = ptrtoint ptr %bad_wr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bad_wr, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %next.065 = phi ptr [ %call1, %for.body.lr.ph ], [ %43, %for.inc.for.body_crit_edge ]
  %40 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %resp, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %resp, align 4
  %cmp22 = icmp eq ptr %next.065, %39
  br i1 %cmp22, label %for.body.if.end27_crit_edge, label %for.inc

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

for.inc:                                          ; preds = %for.body
  %42 = ptrtoint ptr %next.065 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %next.065, align 8
  %tobool20.not = icmp eq ptr %43, null
  br i1 %tobool20.not, label %for.inc.if.end27_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.if.end27_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.end27:                                         ; preds = %for.inc.if.end27_crit_edge, %for.body.if.end27_crit_edge, %if.end13.if.end27_crit_edge
  %call28 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  %spec.select = select i1 %tobool29.not, i32 %call16, i32 %call28
  br label %out

out:                                              ; preds = %if.end27, %_uobj_get_obj_read.exit.out_crit_edge, %if.end5.out_crit_edge
  %ret.0 = phi i32 [ -22, %_uobj_get_obj_read.exit.out_crit_edge ], [ %spec.select, %if.end27 ], [ -22, %if.end5.out_crit_edge ]
  %tobool32.not66 = icmp eq ptr %call1, null
  br i1 %tobool32.not66, label %out.cleanup_crit_edge, label %out.while.body_crit_edge

out.while.body_crit_edge:                         ; preds = %out
  br label %while.body

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %out.while.body_crit_edge
  %wr.067 = phi ptr [ %45, %while.body.while.body_crit_edge ], [ %call1, %out.while.body_crit_edge ]
  %44 = ptrtoint ptr %wr.067 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wr.067, align 8
  call void @kfree(ptr noundef nonnull %wr.067) #13
  %tobool32.not = icmp eq ptr %45, null
  br i1 %tobool32.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %out.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ %ret.0, %out.cleanup_crit_edge ], [ %ret.0, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bad_wr) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_post_send(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_post_send, align 8
  %resp = alloca %struct.ib_uverbs_post_send_resp, align 4
  %bad_wr = alloca ptr, align 4
  %iter = alloca %struct.uverbs_req_iter, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd) #13
  %0 = getelementptr inbounds %struct.ib_uverbs_post_send, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_uverbs_post_send, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ib_uverbs_post_send, ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ib_uverbs_post_send, ptr %cmd, i32 0, i32 4
  %4 = call ptr @memset(ptr %cmd, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #13
  %5 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %resp, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bad_wr) #13
  %6 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %bad_wr, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #13
  %7 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !55
  %8 = getelementptr inbounds %struct.uverbs_req_iter, ptr %iter, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !55
  %call = call fastcc i32 @uverbs_request_start(ptr noundef %attrs, ptr noundef nonnull %iter, ptr noundef nonnull %cmd, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup243_crit_edge

entry.cleanup243_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup243

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %mul = mul i32 %13, %11
  %14 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iter, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %mul
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %8, align 4
  %cmp.i410 = icmp ugt ptr %add.ptr.i, %17
  br i1 %cmp.i410, label %if.end.if.then3_crit_edge, label %uverbs_request_next_ptr.exit

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

uverbs_request_next_ptr.exit:                     ; preds = %if.end
  %18 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i, ptr %iter, align 4
  %cmp.i412 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i412, label %uverbs_request_next_ptr.exit.if.then3_crit_edge, label %if.end5

uverbs_request_next_ptr.exit.if.then3_crit_edge:  ; preds = %uverbs_request_next_ptr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.then3:                                         ; preds = %uverbs_request_next_ptr.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i547 = phi ptr [ %15, %uverbs_request_next_ptr.exit.if.then3_crit_edge ], [ inttoptr (i32 -28 to ptr), %if.end.if.then3_crit_edge ]
  %19 = ptrtoint ptr %retval.0.i547 to i32
  br label %cleanup243

if.end5:                                          ; preds = %uverbs_request_next_ptr.exit
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %2, align 8
  %mul6 = shl i32 %21, 4
  %22 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iter, align 4
  %add.ptr.i413 = getelementptr i8, ptr %23, i32 %mul6
  %cmp.i415 = icmp ugt ptr %add.ptr.i413, %17
  br i1 %cmp.i415, label %if.end5.if.then9_crit_edge, label %uverbs_request_next_ptr.exit418

if.end5.if.then9_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

uverbs_request_next_ptr.exit418:                  ; preds = %if.end5
  %24 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i413, ptr %iter, align 4
  %cmp.i419 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i419, label %uverbs_request_next_ptr.exit418.if.then9_crit_edge, label %if.end11

uverbs_request_next_ptr.exit418.if.then9_crit_edge: ; preds = %uverbs_request_next_ptr.exit418
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

if.then9:                                         ; preds = %uverbs_request_next_ptr.exit418.if.then9_crit_edge, %if.end5.if.then9_crit_edge
  %retval.0.i417550 = phi ptr [ %23, %uverbs_request_next_ptr.exit418.if.then9_crit_edge ], [ inttoptr (i32 -28 to ptr), %if.end5.if.then9_crit_edge ]
  %25 = ptrtoint ptr %retval.0.i417550 to i32
  br label %cleanup243

if.end11:                                         ; preds = %uverbs_request_next_ptr.exit418
  %26 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iter, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub.ptr.sub.i)
  %cmp.i.i421 = icmp ugt i32 %sub.ptr.sub.i, 65535
  br i1 %cmp.i.i421, label %if.end11.cleanup243_crit_edge, label %if.end.i.i423

if.end11.cleanup243_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup243

if.end.i.i423:                                    ; preds = %if.end11
  %call.i.i422 = call ptr @memdup_user(ptr noundef %27, i32 noundef %sub.ptr.sub.i) #13
  %cmp.i.i.i = icmp ugt ptr %call.i.i422, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.i.i423.cleanup243_crit_edge, label %ib_is_buffer_cleared.exit.i

if.end.i.i423.cleanup243_crit_edge:               ; preds = %if.end.i.i423
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup243

ib_is_buffer_cleared.exit.i:                      ; preds = %if.end.i.i423
  %call4.i.i = call ptr @memchr_inv(ptr noundef %call.i.i422, i32 noundef 0, i32 noundef %sub.ptr.sub.i) #13
  %tobool.not.i.i424 = icmp eq ptr %call4.i.i, null
  call void @kfree(ptr noundef %call.i.i422) #13
  br i1 %tobool.not.i.i424, label %if.end8.i, label %ib_is_buffer_cleared.exit.i.cleanup243_crit_edge

ib_is_buffer_cleared.exit.i.cleanup243_crit_edge: ; preds = %ib_is_buffer_cleared.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup243

if.end8.i:                                        ; preds = %ib_is_buffer_cleared.exit.i
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %3, align 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3264) #16
  %tobool18.not = icmp eq ptr %call9.i, null
  br i1 %tobool18.not, label %if.end8.i.cleanup243_crit_edge, label %if.end20

if.end8.i.cleanup243_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup243

if.end20:                                         ; preds = %if.end8.i
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %30 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %35, i32 noundef 8192) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i425 = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %36 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ufile, align 8
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %0, align 8
  %conv24 = zext i32 %39 to i64
  %call25 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i425, ptr noundef %37, i64 noundef %conv24, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i426 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i426, label %if.end20.out_crit_edge, label %_uobj_get_obj_read.exit

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

_uobj_get_obj_read.exit:                          ; preds = %if.end20
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call25, i32 0, i32 3
  %40 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %object.i, align 8
  %tobool27.not = icmp eq ptr %41, null
  br i1 %tobool27.not, label %_uobj_get_obj_read.exit.out_crit_edge, label %if.end29

_uobj_get_obj_read.exit.out_crit_edge:            ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end29:                                         ; preds = %_uobj_get_obj_read.exit
  %qp_type = getelementptr inbounds %struct.ib_qp, ptr %41, i32 0, i32 22
  %42 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cmp30 = icmp eq i32 %43, 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp33628.not = icmp eq i32 %45, 0
  br i1 %cmp33628.not, label %if.end29.for.end_crit_edge, label %for.body.lr.ph

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end29
  %num_sge = getelementptr inbounds %struct.ib_uverbs_send_wr, ptr %call9.i, i32 0, i32 1
  %opcode86 = getelementptr inbounds %struct.ib_uverbs_send_wr, ptr %call9.i, i32 0, i32 2
  %wr124 = getelementptr inbounds %struct.ib_uverbs_send_wr, ptr %call9.i, i32 0, i32 5
  %compare_add = getelementptr inbounds %struct.ib_uverbs_send_wr, ptr %call9.i, i32 0, i32 5, i32 0, i32 1
  %swap = getelementptr inbounds %struct.ib_uverbs_send_wr, ptr %call9.i, i32 0, i32 5, i32 0, i32 2
  %rkey132 = getelementptr inbounds %struct.ib_uverbs_send_wr, ptr %call9.i, i32 0, i32 5, i32 0, i32 3
  %remote_qpn = getelementptr inbounds %struct.anon.214, ptr %wr124, i32 0, i32 1
  %ex175 = getelementptr inbounds %struct.ib_uverbs_send_wr, ptr %call9.i, i32 0, i32 4
  %send_flags = getelementptr inbounds %struct.ib_uverbs_send_wr, ptr %call9.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sg_ind.0633 = phi i32 [ 0, %for.body.lr.ph ], [ %sg_ind.1, %for.inc.for.body_crit_edge ]
  %i.0632 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %last.0631 = phi ptr [ null, %for.body.lr.ph ], [ %next.4, %for.inc.for.body_crit_edge ]
  %wr.0629 = phi ptr [ null, %for.body.lr.ph ], [ %wr.1, %for.inc.for.body_crit_edge ]
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %3, align 4
  %mul36 = mul i32 %47, %i.0632
  %add.ptr = getelementptr i8, ptr %15, i32 %mul36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp9.i.i = icmp slt i32 %47, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %for.body
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out_put_crit_edge, label %if.then27.i.i, !prof !54

land.rhs16.i.i.out_put_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %out_put

if.then.i.i.i:                                    ; preds = %for.body
  call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %47, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i374_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i374_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i374

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %48 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %47, i32 -1226833920) #18, !srcloc !57
  %asmresult.i.i = extractvalue { i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i374_crit_edge, !prof !54

land.lhs.true.i.i.if.end.i.i374_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i374

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef %47) #13
  %49 = call i32 @llvm.read_register.i32(metadata !37) #13
  %and.i.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 4
  %51 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !58
  %and.i.i.i.i = and i32 %51, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !60
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i, ptr noundef %add.ptr, i32 noundef %47) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #13, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !60
  br label %if.end.i.i374

if.end.i.i374:                                    ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i374_crit_edge, %if.then.i.i.i.if.end.i.i374_crit_edge
  %res.0.i.i = phi i32 [ %47, %if.then.i.i.i.if.end.i.i374_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %47, %land.lhs.true.i.i.if.end.i.i374_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end41, label %if.then11.i.i, !prof !54

if.then11.i.i:                                    ; preds = %if.end.i.i374
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %47, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call9.i, i32 %sub.i.i
  %52 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out_put

if.end41:                                         ; preds = %if.end.i.i374
  %53 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_sge, align 8
  %add = add i32 %54, %sg_ind.0633
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %56)
  %cmp43 = icmp ugt i32 %add, %56
  br i1 %cmp43, label %if.end41.out_put_crit_edge, label %if.end46

if.end41.out_put_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end46:                                         ; preds = %if.end41
  %57 = ptrtoint ptr %opcode86 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %opcode86, align 4
  br i1 %cmp30, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end46
  %59 = and i32 %58, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %switch = icmp eq i32 %59, 2
  br i1 %switch, label %if.end55, label %if.then48.out_put_crit_edge

if.then48.out_put_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end55:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435450, i32 %54)
  %cmp.not.i = icmp ult i32 %54, 268435450
  br i1 %cmp.not.i, label %if.end8.i.i436, label %if.end55.out_put_crit_edge

if.end55.out_put_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end8.i.i436:                                   ; preds = %if.end55
  %mul.i = shl nuw i32 %54, 4
  %add3.i = add nuw i32 %mul.i, 80
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add3.i, i32 noundef 3264) #16
  %tobool58.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool58.not, label %if.end8.i.i436.out_put_crit_edge, label %if.end60

if.end8.i.i436.out_put_crit_edge:                 ; preds = %if.end8.i.i436
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end60:                                         ; preds = %if.end8.i.i436
  %60 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ufile, align 8
  %device62 = getelementptr inbounds %struct.ib_uverbs_file, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %device62 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device62, align 4
  %uapi63 = getelementptr inbounds %struct.ib_uverbs_device, ptr %63, i32 0, i32 13
  %64 = ptrtoint ptr %uapi63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %uapi63, align 4
  %call4.i438 = call ptr @radix_tree_lookup(ptr noundef %65, i32 noundef 12288) #13
  %tobool.not.i439 = icmp eq ptr %call4.i438, null
  %spec.select.i440 = select i1 %tobool.not.i439, ptr inttoptr (i32 -2 to ptr), ptr %call4.i438
  %66 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ufile, align 8
  %68 = ptrtoint ptr %wr124 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %wr124, align 8
  %conv73 = zext i32 %69 to i64
  %call74 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i440, ptr noundef %67, i64 noundef %conv73, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i441 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i441, label %_uobj_get_obj_read.exit445.thread, label %_uobj_get_obj_read.exit445

_uobj_get_obj_read.exit445.thread:                ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  %ah76564 = getelementptr inbounds %struct.ib_ud_wr, ptr %call9.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %ah76564 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %ah76564, align 8
  br label %if.then79

_uobj_get_obj_read.exit445:                       ; preds = %if.end60
  %object.i442 = getelementptr inbounds %struct.ib_uobject, ptr %call74, i32 0, i32 3
  %71 = ptrtoint ptr %object.i442 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %object.i442, align 8
  %ah76 = getelementptr inbounds %struct.ib_ud_wr, ptr %call9.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %ah76 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %ah76, align 8
  %tobool78.not = icmp eq ptr %72, null
  br i1 %tobool78.not, label %_uobj_get_obj_read.exit445.if.then79_crit_edge, label %cleanup

_uobj_get_obj_read.exit445.if.then79_crit_edge:   ; preds = %_uobj_get_obj_read.exit445
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then79

if.then79:                                        ; preds = %_uobj_get_obj_read.exit445.if.then79_crit_edge, %_uobj_get_obj_read.exit445.thread
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %out_put

cleanup:                                          ; preds = %_uobj_get_obj_read.exit445
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %remote_qpn to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %remote_qpn, align 4
  %remote_qpn82 = getelementptr inbounds %struct.ib_ud_wr, ptr %call9.i.i, i32 0, i32 5
  %76 = ptrtoint ptr %remote_qpn82 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %remote_qpn82, align 8
  %77 = ptrtoint ptr %compare_add to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %compare_add, align 32
  %remote_qkey84 = getelementptr inbounds %struct.ib_ud_wr, ptr %call9.i.i, i32 0, i32 6
  %79 = ptrtoint ptr %remote_qkey84 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %remote_qkey84, align 4
  br label %if.end160

if.else:                                          ; preds = %if.end46
  %80 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %58, label %if.else.out_put_crit_edge [
    i32 1, label %if.else.if.then96_crit_edge
    i32 0, label %if.else.if.then96_crit_edge793
    i32 4, label %if.else.if.then96_crit_edge794
    i32 5, label %if.else.if.then118_crit_edge
    i32 6, label %if.else.if.then118_crit_edge795
    i32 2, label %if.else.if.then150_crit_edge
    i32 3, label %if.else.if.then150_crit_edge796
    i32 9, label %if.else.if.then150_crit_edge797
  ]

if.else.if.then150_crit_edge797:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then150

if.else.if.then150_crit_edge796:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then150

if.else.if.then150_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then150

if.else.if.then118_crit_edge795:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then118

if.else.if.then118_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then118

if.else.if.then96_crit_edge794:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then96

if.else.if.then96_crit_edge793:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then96

if.else.if.then96_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then96

if.else.out_put_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.then96:                                        ; preds = %if.else.if.then96_crit_edge, %if.else.if.then96_crit_edge793, %if.else.if.then96_crit_edge794
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435451, i32 %54)
  %cmp.not.i446 = icmp ult i32 %54, 268435451
  br i1 %cmp.not.i446, label %if.end8.i.i476, label %if.then96.out_put_crit_edge

if.then96.out_put_crit_edge:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end8.i.i476:                                   ; preds = %if.then96
  %mul.i447 = shl nuw i32 %54, 4
  %add3.i448 = add nuw i32 %mul.i447, 64
  %call9.i.i475 = call noalias align 128 ptr @__kmalloc(i32 noundef %add3.i448, i32 noundef 3264) #16
  %tobool99.not = icmp eq ptr %call9.i.i475, null
  br i1 %tobool99.not, label %if.end8.i.i476.out_put_crit_edge, label %cleanup107

if.end8.i.i476.out_put_crit_edge:                 ; preds = %if.end8.i.i476
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

cleanup107:                                       ; preds = %if.end8.i.i476
  call void @__sanitizer_cov_trace_pc() #15
  %81 = ptrtoint ptr %wr124 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %wr124, align 8
  %remote_addr103 = getelementptr inbounds %struct.ib_rdma_wr, ptr %call9.i.i475, i32 0, i32 1
  %83 = ptrtoint ptr %remote_addr103 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %remote_addr103, align 8
  %84 = ptrtoint ptr %compare_add to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %compare_add, align 32
  %rkey105 = getelementptr inbounds %struct.ib_rdma_wr, ptr %call9.i.i475, i32 0, i32 2
  %86 = ptrtoint ptr %rkey105 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %rkey105, align 16
  br label %if.end160

if.then118:                                       ; preds = %if.else.if.then118_crit_edge, %if.else.if.then118_crit_edge795
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435449, i32 %54)
  %cmp.not.i479 = icmp ult i32 %54, 268435449
  br i1 %cmp.not.i479, label %if.end8.i.i509, label %if.then118.out_put_crit_edge

if.then118.out_put_crit_edge:                     ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end8.i.i509:                                   ; preds = %if.then118
  %mul.i480 = shl nuw i32 %54, 4
  %add3.i481 = add nuw i32 %mul.i480, 96
  %call9.i.i508 = call noalias align 128 ptr @__kmalloc(i32 noundef %add3.i481, i32 noundef 3264) #16
  %tobool121.not = icmp eq ptr %call9.i.i508, null
  br i1 %tobool121.not, label %if.end8.i.i509.out_put_crit_edge, label %cleanup135

if.end8.i.i509.out_put_crit_edge:                 ; preds = %if.end8.i.i509
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

cleanup135:                                       ; preds = %if.end8.i.i509
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %wr124 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %wr124, align 8
  %remote_addr126 = getelementptr inbounds %struct.ib_atomic_wr, ptr %call9.i.i508, i32 0, i32 1
  %89 = ptrtoint ptr %remote_addr126 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %remote_addr126, align 8
  %90 = ptrtoint ptr %compare_add to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %compare_add, align 32
  %compare_add128 = getelementptr inbounds %struct.ib_atomic_wr, ptr %call9.i.i508, i32 0, i32 2
  %92 = ptrtoint ptr %compare_add128 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %compare_add128, align 16
  %93 = ptrtoint ptr %swap to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %swap, align 8
  %swap130 = getelementptr inbounds %struct.ib_atomic_wr, ptr %call9.i.i508, i32 0, i32 3
  %95 = ptrtoint ptr %swap130 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %swap130, align 8
  %96 = ptrtoint ptr %rkey132 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rkey132, align 16
  %rkey133 = getelementptr inbounds %struct.ib_atomic_wr, ptr %call9.i.i508, i32 0, i32 6
  %98 = ptrtoint ptr %rkey133 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %rkey133, align 16
  br label %if.end160

if.then150:                                       ; preds = %if.else.if.then150_crit_edge, %if.else.if.then150_crit_edge796, %if.else.if.then150_crit_edge797
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435452, i32 %54)
  %cmp.not.i512 = icmp ult i32 %54, 268435452
  br i1 %cmp.not.i512, label %if.end8.i.i542, label %if.then150.out_put_crit_edge

if.then150.out_put_crit_edge:                     ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end8.i.i542:                                   ; preds = %if.then150
  %mul.i513 = shl nuw i32 %54, 4
  %add3.i514 = add nuw i32 %mul.i513, 48
  %call9.i.i541 = call noalias align 128 ptr @__kmalloc(i32 noundef %add3.i514, i32 noundef 3264) #16
  %tobool153.not = icmp eq ptr %call9.i.i541, null
  br i1 %tobool153.not, label %if.end8.i.i542.out_put_crit_edge, label %if.end8.i.i542.if.end160_crit_edge

if.end8.i.i542.if.end160_crit_edge:               ; preds = %if.end8.i.i542
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end160

if.end8.i.i542.out_put_crit_edge:                 ; preds = %if.end8.i.i542
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end160:                                        ; preds = %if.end8.i.i542.if.end160_crit_edge, %cleanup135, %cleanup107, %cleanup
  %next.4 = phi ptr [ %call9.i.i, %cleanup ], [ %call9.i.i475, %cleanup107 ], [ %call9.i.i508, %cleanup135 ], [ %call9.i.i541, %if.end8.i.i542.if.end160_crit_edge ]
  %next_size.2 = phi i32 [ 80, %cleanup ], [ 64, %cleanup107 ], [ 96, %cleanup135 ], [ 48, %if.end8.i.i542.if.end160_crit_edge ]
  %99 = ptrtoint ptr %opcode86 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %opcode86, align 4
  %101 = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %100, label %if.end160.if.end178_crit_edge [
    i32 3, label %if.end160.if.end178.sink.split_crit_edge
    i32 1, label %if.end160.if.end178.sink.split_crit_edge798
    i32 9, label %if.end160.if.end178.sink.split_crit_edge799
  ]

if.end160.if.end178.sink.split_crit_edge799:      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end178.sink.split

if.end160.if.end178.sink.split_crit_edge798:      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end178.sink.split

if.end160.if.end178.sink.split_crit_edge:         ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end178.sink.split

if.end160.if.end178_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end178

if.end178.sink.split:                             ; preds = %if.end160.if.end178.sink.split_crit_edge, %if.end160.if.end178.sink.split_crit_edge798, %if.end160.if.end178.sink.split_crit_edge799
  %102 = ptrtoint ptr %ex175 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ex175, align 4
  %ex176 = getelementptr inbounds %struct.ib_send_wr, ptr %next.4, i32 0, i32 6
  %104 = ptrtoint ptr %ex176 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %ex176, align 32
  br label %if.end178

if.end178:                                        ; preds = %if.end178.sink.split, %if.end160.if.end178_crit_edge
  %tobool179.not = icmp eq ptr %last.0631, null
  br i1 %tobool179.not, label %if.end178.if.end183_crit_edge, label %if.else181

if.end178.if.end183_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end183

if.else181:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #15
  %105 = ptrtoint ptr %last.0631 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %next.4, ptr %last.0631, align 8
  br label %if.end183

if.end183:                                        ; preds = %if.else181, %if.end178.if.end183_crit_edge
  %wr.1 = phi ptr [ %wr.0629, %if.else181 ], [ %next.4, %if.end178.if.end183_crit_edge ]
  %106 = ptrtoint ptr %next.4 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %next.4, align 128
  %107 = ptrtoint ptr %call9.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %call9.i, align 128
  %109 = getelementptr inbounds %struct.ib_send_wr, ptr %next.4, i32 0, i32 1
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %108, ptr %109, align 8
  %111 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %num_sge, align 8
  %num_sge186 = getelementptr inbounds %struct.ib_send_wr, ptr %next.4, i32 0, i32 3
  %113 = ptrtoint ptr %num_sge186 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %num_sge186, align 4
  %114 = ptrtoint ptr %opcode86 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %opcode86, align 4
  %opcode188 = getelementptr inbounds %struct.ib_send_wr, ptr %next.4, i32 0, i32 4
  %116 = ptrtoint ptr %opcode188 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %opcode188, align 8
  %117 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %send_flags, align 16
  %send_flags189 = getelementptr inbounds %struct.ib_send_wr, ptr %next.4, i32 0, i32 5
  %119 = ptrtoint ptr %send_flags189 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %send_flags189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool191.not = icmp eq i32 %112, 0
  br i1 %tobool191.not, label %if.else205, label %if.then192

if.then192:                                       ; preds = %if.end183
  %add.ptr194 = getelementptr i8, ptr %next.4, i32 %next_size.2
  %sg_list = getelementptr inbounds %struct.ib_send_wr, ptr %next.4, i32 0, i32 2
  %120 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %add.ptr194, ptr %sg_list, align 16
  %add.ptr196 = getelementptr %struct.ib_sge, ptr %23, i32 %sg_ind.0633
  %mul198 = shl i32 %112, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul198)
  %cmp9.i.i382 = icmp slt i32 %mul198, 0
  br i1 %cmp9.i.i382, label %land.rhs16.i.i385, label %if.then.i.i.i388

land.rhs16.i.i385:                                ; preds = %if.then192
  %.b71.i.i384 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i384, label %land.rhs16.i.i385.out_put_crit_edge, label %if.then27.i.i386, !prof !54

land.rhs16.i.i385.out_put_crit_edge:              ; preds = %land.rhs16.i.i385
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.then27.i.i386:                                 ; preds = %land.rhs16.i.i385
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %out_put

if.then.i.i.i388:                                 ; preds = %if.then192
  call void @__check_object_size(ptr noundef %add.ptr194, i32 noundef %mul198, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i389 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i389, label %if.then.i.i.i388.if.end.i.i403_crit_edge, label %land.lhs.true.i.i393

if.then.i.i.i388.if.end.i.i403_crit_edge:         ; preds = %if.then.i.i.i388
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i403

land.lhs.true.i.i393:                             ; preds = %if.then.i.i.i388
  %121 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr196, i32 %mul198, i32 -1226833920) #18, !srcloc !57
  %asmresult.i.i391 = extractvalue { i32, i32 } %121, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i391)
  %cmp.i6.i392 = icmp eq i32 %asmresult.i.i391, 0
  br i1 %cmp.i6.i392, label %if.then.i7.i400, label %land.lhs.true.i.i393.if.end.i.i403_crit_edge, !prof !54

land.lhs.true.i.i393.if.end.i.i403_crit_edge:     ; preds = %land.lhs.true.i.i393
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i403

if.then.i7.i400:                                  ; preds = %land.lhs.true.i.i393
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i394 = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr194, i32 noundef %mul198) #13
  %122 = call i32 @llvm.read_register.i32(metadata !37) #13
  %and.i.i.i.i.i.i395 = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i.i.i.i395 to ptr
  %cpu_domain.i.i.i.i.i396 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 4
  %124 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i396) #8, !srcloc !58
  %and.i.i.i.i397 = and i32 %124, -13
  %or.i.i.i.i398 = or i32 %and.i.i.i.i397, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i398) #13, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !60
  %call1.i.i.i399 = call i32 @arm_copy_from_user(ptr noundef %add.ptr194, ptr noundef %add.ptr196, i32 noundef %mul198) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %124) #13, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !60
  br label %if.end.i.i403

if.end.i.i403:                                    ; preds = %if.then.i7.i400, %land.lhs.true.i.i393.if.end.i.i403_crit_edge, %if.then.i.i.i388.if.end.i.i403_crit_edge
  %res.0.i.i401 = phi i32 [ %mul198, %if.then.i.i.i388.if.end.i.i403_crit_edge ], [ %call1.i.i.i399, %if.then.i7.i400 ], [ %mul198, %land.lhs.true.i.i393.if.end.i.i403_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i401)
  %tobool4.not.i.i402 = icmp eq i32 %res.0.i.i401, 0
  br i1 %tobool4.not.i.i402, label %if.end202, label %if.then11.i.i406, !prof !54

if.then11.i.i406:                                 ; preds = %if.end.i.i403
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i404 = sub i32 %mul198, %res.0.i.i401
  %add.ptr.i.i405 = getelementptr i8, ptr %add.ptr194, i32 %sub.i.i404
  %125 = call ptr @memset(ptr %add.ptr.i.i405, i32 0, i32 %res.0.i.i401)
  br label %out_put

if.end202:                                        ; preds = %if.end.i.i403
  call void @__sanitizer_cov_trace_pc() #15
  %126 = ptrtoint ptr %num_sge186 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %num_sge186, align 4
  %add204 = add i32 %127, %sg_ind.0633
  br label %for.inc

if.else205:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #15
  %sg_list206 = getelementptr inbounds %struct.ib_send_wr, ptr %next.4, i32 0, i32 2
  %128 = ptrtoint ptr %sg_list206 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %sg_list206, align 16
  br label %for.inc

for.inc:                                          ; preds = %if.else205, %if.end202
  %sg_ind.1 = phi i32 [ %add204, %if.end202 ], [ %sg_ind.0633, %if.else205 ]
  %inc = add nuw i32 %i.0632, 1
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %1, align 4
  %cmp33 = icmp ult i32 %inc, %130
  br i1 %cmp33, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end29.for.end_crit_edge
  %wr.0.lcssa = phi ptr [ null, %if.end29.for.end_crit_edge ], [ %wr.1, %for.inc.for.end_crit_edge ]
  %131 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %resp, align 4
  %132 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %41, align 4
  %post_send = getelementptr inbounds %struct.ib_device, ptr %133, i32 0, i32 1, i32 6
  %134 = ptrtoint ptr %post_send to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %post_send, align 4
  %real_qp = getelementptr inbounds %struct.ib_qp, ptr %41, i32 0, i32 13
  %136 = ptrtoint ptr %real_qp to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %real_qp, align 4
  %call210 = call i32 %135(ptr noundef %137, ptr noundef %wr.0.lcssa, ptr noundef nonnull %bad_wr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  %tobool214.not634 = icmp eq ptr %wr.0.lcssa, null
  %or.cond = or i1 %tobool211.not, %tobool214.not634
  br i1 %or.cond, label %for.end.if.end225_crit_edge, label %for.body215.lr.ph

for.end.if.end225_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end225

for.body215.lr.ph:                                ; preds = %for.end
  %138 = ptrtoint ptr %bad_wr to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bad_wr, align 4
  br label %for.body215

for.body215:                                      ; preds = %for.inc222.for.body215_crit_edge, %for.body215.lr.ph
  %next.5635 = phi ptr [ %wr.0.lcssa, %for.body215.lr.ph ], [ %143, %for.inc222.for.body215_crit_edge ]
  %140 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %resp, align 4
  %inc217 = add i32 %141, 1
  store i32 %inc217, ptr %resp, align 4
  %cmp218 = icmp eq ptr %next.5635, %139
  br i1 %cmp218, label %for.body215.if.end225_crit_edge, label %for.inc222

for.body215.if.end225_crit_edge:                  ; preds = %for.body215
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end225

for.inc222:                                       ; preds = %for.body215
  %142 = ptrtoint ptr %next.5635 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %next.5635, align 8
  %tobool214.not = icmp eq ptr %143, null
  br i1 %tobool214.not, label %for.inc222.if.end225_crit_edge, label %for.inc222.for.body215_crit_edge

for.inc222.for.body215_crit_edge:                 ; preds = %for.inc222
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body215

for.inc222.if.end225_crit_edge:                   ; preds = %for.inc222
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end225

if.end225:                                        ; preds = %for.inc222.if.end225_crit_edge, %for.body215.if.end225_crit_edge, %for.end.if.end225_crit_edge
  %call226 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %tobool227.not = icmp eq i32 %call226, 0
  %spec.select = select i1 %tobool227.not, i32 %call210, i32 %call226
  br label %out_put

out_put:                                          ; preds = %if.end225, %if.then11.i.i406, %if.then27.i.i386, %land.rhs16.i.i385.out_put_crit_edge, %if.end8.i.i542.out_put_crit_edge, %if.then150.out_put_crit_edge, %if.end8.i.i509.out_put_crit_edge, %if.then118.out_put_crit_edge, %if.end8.i.i476.out_put_crit_edge, %if.then96.out_put_crit_edge, %if.else.out_put_crit_edge, %if.then79, %if.end8.i.i436.out_put_crit_edge, %if.end55.out_put_crit_edge, %if.then48.out_put_crit_edge, %if.end41.out_put_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.out_put_crit_edge
  %wr.2 = phi ptr [ %wr.0.lcssa, %if.end225 ], [ %wr.0629, %if.then11.i.i ], [ %wr.0629, %if.then27.i.i ], [ %wr.0629, %land.rhs16.i.i.out_put_crit_edge ], [ %wr.0629, %if.then79 ], [ %wr.1, %if.then11.i.i406 ], [ %wr.1, %if.then27.i.i386 ], [ %wr.1, %land.rhs16.i.i385.out_put_crit_edge ], [ %wr.0629, %if.end41.out_put_crit_edge ], [ %wr.0629, %if.end8.i.i542.out_put_crit_edge ], [ %wr.0629, %if.else.out_put_crit_edge ], [ %wr.0629, %if.then48.out_put_crit_edge ], [ %wr.0629, %if.end8.i.i436.out_put_crit_edge ], [ %wr.0629, %if.end55.out_put_crit_edge ], [ %wr.0629, %if.end8.i.i476.out_put_crit_edge ], [ %wr.0629, %if.then96.out_put_crit_edge ], [ %wr.0629, %if.end8.i.i509.out_put_crit_edge ], [ %wr.0629, %if.then118.out_put_crit_edge ], [ %wr.0629, %if.then150.out_put_crit_edge ]
  %ret.5 = phi i32 [ %spec.select, %if.end225 ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_put_crit_edge ], [ -22, %if.then79 ], [ -14, %if.then11.i.i406 ], [ -14, %if.then27.i.i386 ], [ -14, %land.rhs16.i.i385.out_put_crit_edge ], [ -12, %if.then150.out_put_crit_edge ], [ -12, %if.then118.out_put_crit_edge ], [ -12, %if.end8.i.i509.out_put_crit_edge ], [ -12, %if.then96.out_put_crit_edge ], [ -12, %if.end8.i.i476.out_put_crit_edge ], [ -12, %if.end55.out_put_crit_edge ], [ -12, %if.end8.i.i436.out_put_crit_edge ], [ -22, %if.then48.out_put_crit_edge ], [ -22, %if.else.out_put_crit_edge ], [ -12, %if.end8.i.i542.out_put_crit_edge ], [ -22, %if.end41.out_put_crit_edge ]
  %uobject = getelementptr inbounds %struct.ib_qp, ptr %41, i32 0, i32 14
  %144 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %uobject, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %145, i32 noundef 0) #13
  %tobool231.not636 = icmp eq ptr %wr.2, null
  br i1 %tobool231.not636, label %out_put.out_crit_edge, label %out_put.while.body_crit_edge

out_put.while.body_crit_edge:                     ; preds = %out_put
  br label %while.body

out_put.out_crit_edge:                            ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

while.body:                                       ; preds = %if.end241.while.body_crit_edge, %out_put.while.body_crit_edge
  %wr.3637 = phi ptr [ %151, %if.end241.while.body_crit_edge ], [ %wr.2, %out_put.while.body_crit_edge ]
  br i1 %cmp30, label %land.lhs.true233, label %while.body.if.end241_crit_edge

while.body.if.end241_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end241

land.lhs.true233:                                 ; preds = %while.body
  %ah235 = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.3637, i32 0, i32 1
  %146 = ptrtoint ptr %ah235 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ah235, align 8
  %tobool236.not = icmp eq ptr %147, null
  br i1 %tobool236.not, label %land.lhs.true233.if.end241_crit_edge, label %if.then237

land.lhs.true233.if.end241_crit_edge:             ; preds = %land.lhs.true233
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end241

if.then237:                                       ; preds = %land.lhs.true233
  call void @__sanitizer_cov_trace_pc() #15
  %uobject240 = getelementptr inbounds %struct.ib_ah, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %uobject240 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %uobject240, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %149, i32 noundef 0) #13
  br label %if.end241

if.end241:                                        ; preds = %if.then237, %land.lhs.true233.if.end241_crit_edge, %while.body.if.end241_crit_edge
  %150 = ptrtoint ptr %wr.3637 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %wr.3637, align 8
  call void @kfree(ptr noundef nonnull %wr.3637) #13
  %tobool231.not = icmp eq ptr %151, null
  br i1 %tobool231.not, label %if.end241.out_crit_edge, label %if.end241.while.body_crit_edge

if.end241.while.body_crit_edge:                   ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end241.out_crit_edge:                          ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %if.end241.out_crit_edge, %out_put.out_crit_edge, %_uobj_get_obj_read.exit.out_crit_edge, %if.end20.out_crit_edge
  %ret.6 = phi i32 [ -22, %_uobj_get_obj_read.exit.out_crit_edge ], [ -22, %if.end20.out_crit_edge ], [ %ret.5, %out_put.out_crit_edge ], [ %ret.5, %if.end241.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #13
  br label %cleanup243

cleanup243:                                       ; preds = %out, %if.end8.i.cleanup243_crit_edge, %ib_is_buffer_cleared.exit.i.cleanup243_crit_edge, %if.end.i.i423.cleanup243_crit_edge, %if.end11.cleanup243_crit_edge, %if.then9, %if.then3, %entry.cleanup243_crit_edge
  %retval.0 = phi i32 [ %19, %if.then3 ], [ %25, %if.then9 ], [ %ret.6, %out ], [ %call, %entry.cleanup243_crit_edge ], [ -12, %if.end8.i.cleanup243_crit_edge ], [ -95, %if.end11.cleanup243_crit_edge ], [ -95, %if.end.i.i423.cleanup243_crit_edge ], [ -95, %ib_is_buffer_cleared.exit.i.cleanup243_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bad_wr) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_query_qp(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_query_qp, align 8
  %resp = alloca %struct.ib_uverbs_query_qp_resp, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #13
  %0 = getelementptr inbounds %struct.ib_uverbs_query_qp, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_uverbs_query_qp, ptr %cmd, i32 0, i32 2
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %resp) #13
  %3 = call ptr @memset(ptr %resp, i32 255, i32 128)
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 216) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i107 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 72) #17
  %tobool3.not = icmp eq ptr %call7.i, null
  %tobool4.not = icmp eq ptr %call7.i107, null
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end6:                                          ; preds = %if.end
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %6 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %11, i32 noundef 8192) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %12 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ufile, align 8
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %0, align 8
  %conv9 = zext i32 %15 to i64
  %call10 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i, ptr noundef %13, i64 noundef %conv9, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end6.out_crit_edge, label %_uobj_get_obj_read.exit

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

_uobj_get_obj_read.exit:                          ; preds = %if.end6
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call10, i32 0, i32 3
  %16 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %object.i, align 8
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %_uobj_get_obj_read.exit.out_crit_edge, label %if.end14

_uobj_get_obj_read.exit.out_crit_edge:            ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end14:                                         ; preds = %_uobj_get_obj_read.exit
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %call15 = call i32 @ib_query_qp(ptr noundef nonnull %17, ptr noundef nonnull %call7.i, i32 noundef %19, ptr noundef nonnull %call7.i107) #13
  %uobject = getelementptr inbounds %struct.ib_qp, ptr %17, i32 0, i32 14
  %20 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %uobject, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %21, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool17.not = icmp eq i32 %call15, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end19:                                         ; preds = %if.end14
  %22 = call ptr @memset(ptr %resp, i32 0, i32 128)
  %23 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call7.i, align 8
  %conv20 = trunc i32 %24 to i8
  %qp_state21 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 14
  %25 = ptrtoint ptr %qp_state21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv20, ptr %qp_state21, align 4
  %cur_qp_state = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 1
  %26 = ptrtoint ptr %cur_qp_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cur_qp_state, align 4
  %conv22 = trunc i32 %27 to i8
  %cur_qp_state23 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 15
  %28 = ptrtoint ptr %cur_qp_state23 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv22, ptr %cur_qp_state23, align 1
  %path_mtu = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 2
  %29 = ptrtoint ptr %path_mtu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %path_mtu, align 8
  %conv24 = trunc i32 %30 to i8
  %path_mtu25 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 16
  %31 = ptrtoint ptr %path_mtu25 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv24, ptr %path_mtu25, align 2
  %path_mig_state = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 3
  %32 = ptrtoint ptr %path_mig_state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %path_mig_state, align 4
  %conv26 = trunc i32 %33 to i8
  %path_mig_state27 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 17
  %34 = ptrtoint ptr %path_mig_state27 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv26, ptr %path_mig_state27, align 1
  %qkey = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 4
  %35 = ptrtoint ptr %qkey to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qkey, align 8
  %qkey28 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 7
  %37 = ptrtoint ptr %qkey28 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %qkey28, align 4
  %rq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 5
  %38 = ptrtoint ptr %rq_psn to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rq_psn, align 4
  %rq_psn29 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 8
  %40 = ptrtoint ptr %rq_psn29 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %rq_psn29, align 8
  %sq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 6
  %41 = ptrtoint ptr %sq_psn to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sq_psn, align 8
  %sq_psn30 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 9
  %43 = ptrtoint ptr %sq_psn30 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %sq_psn30, align 4
  %dest_qp_num = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 7
  %44 = ptrtoint ptr %dest_qp_num to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dest_qp_num, align 4
  %dest_qp_num31 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 10
  %46 = ptrtoint ptr %dest_qp_num31 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %dest_qp_num31, align 8
  %qp_access_flags = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 8
  %47 = ptrtoint ptr %qp_access_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %qp_access_flags, align 8
  %qp_access_flags32 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 11
  %49 = ptrtoint ptr %qp_access_flags32 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %qp_access_flags32, align 4
  %pkey_index = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 12
  %50 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %pkey_index, align 8
  %pkey_index33 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 12
  %52 = ptrtoint ptr %pkey_index33 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %pkey_index33, align 8
  %alt_pkey_index = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 13
  %53 = ptrtoint ptr %alt_pkey_index to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %alt_pkey_index, align 2
  %alt_pkey_index34 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 13
  %55 = ptrtoint ptr %alt_pkey_index34 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %alt_pkey_index34, align 2
  %sq_draining = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 15
  %56 = ptrtoint ptr %sq_draining to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %sq_draining, align 1
  %sq_draining35 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 18
  %58 = ptrtoint ptr %sq_draining35 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %sq_draining35, align 8
  %max_rd_atomic = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 16
  %59 = ptrtoint ptr %max_rd_atomic to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %max_rd_atomic, align 2
  %max_rd_atomic36 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 19
  %61 = ptrtoint ptr %max_rd_atomic36 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %max_rd_atomic36, align 1
  %max_dest_rd_atomic = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 17
  %62 = ptrtoint ptr %max_dest_rd_atomic to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %max_dest_rd_atomic, align 1
  %max_dest_rd_atomic37 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 20
  %64 = ptrtoint ptr %max_dest_rd_atomic37 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %max_dest_rd_atomic37, align 2
  %min_rnr_timer = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 18
  %65 = ptrtoint ptr %min_rnr_timer to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %min_rnr_timer, align 8
  %min_rnr_timer38 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 21
  %67 = ptrtoint ptr %min_rnr_timer38 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %min_rnr_timer38, align 1
  %port_num = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 19
  %68 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port_num, align 4
  %conv39 = trunc i32 %69 to i8
  %port_num40 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 22
  %70 = ptrtoint ptr %port_num40 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv39, ptr %port_num40, align 4
  %timeout = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 20
  %71 = ptrtoint ptr %timeout to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %timeout, align 8
  %timeout41 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 23
  %73 = ptrtoint ptr %timeout41 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %timeout41, align 1
  %retry_cnt = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 21
  %74 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %retry_cnt, align 1
  %retry_cnt42 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 24
  %76 = ptrtoint ptr %retry_cnt42 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %retry_cnt42, align 2
  %rnr_retry = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 22
  %77 = ptrtoint ptr %rnr_retry to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %rnr_retry, align 2
  %rnr_retry43 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 25
  %79 = ptrtoint ptr %rnr_retry43 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %rnr_retry43, align 1
  %alt_port_num = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 23
  %80 = ptrtoint ptr %alt_port_num to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %alt_port_num, align 4
  %conv44 = trunc i32 %81 to i8
  %alt_port_num45 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 26
  %82 = ptrtoint ptr %alt_port_num45 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv44, ptr %alt_port_num45, align 8
  %alt_timeout = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 24
  %83 = ptrtoint ptr %alt_timeout to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %alt_timeout, align 8
  %alt_timeout46 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 27
  %85 = ptrtoint ptr %alt_timeout46 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %alt_timeout46, align 1
  %type.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 10, i32 5
  %86 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %type.i.i, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %87, label %rdma_ah_get_dlid.exit.i [
    i32 1, label %rdma_ah_get_dlid.exit.i.thread
    i32 3, label %rdma_ah_get_dlid.exit.i.thread153
  ]

rdma_ah_get_dlid.exit.i.thread:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %89 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 10, i32 6
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %89, align 8
  %dlid.i150 = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %resp, i32 0, i32 2
  %92 = ptrtoint ptr %dlid.i150 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %dlid.i150, align 4
  %sl.i.i151 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 10, i32 1
  %93 = ptrtoint ptr %sl.i.i151 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %sl.i.i151, align 8
  %sl.i152 = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %resp, i32 0, i32 7
  %95 = ptrtoint ptr %sl.i152 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %sl.i152, align 1
  %src_path_bits.i.i = getelementptr inbounds %struct.ib_ah_attr, ptr %89, i32 0, i32 1
  %96 = ptrtoint ptr %src_path_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %src_path_bits.i.i, align 2
  br label %rdma_ah_get_path_bits.exit.i

rdma_ah_get_dlid.exit.i.thread153:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %98 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 10, i32 6
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 8
  %conv.i155 = trunc i32 %100 to i16
  %dlid.i156 = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %resp, i32 0, i32 2
  %101 = ptrtoint ptr %dlid.i156 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv.i155, ptr %dlid.i156, align 4
  %sl.i.i157 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 10, i32 1
  %102 = ptrtoint ptr %sl.i.i157 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %sl.i.i157, align 8
  %sl.i158 = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %resp, i32 0, i32 7
  %104 = ptrtoint ptr %sl.i158 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %sl.i158, align 1
  %src_path_bits4.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 10, i32 6, i32 0, i32 1
  %105 = ptrtoint ptr %src_path_bits4.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %src_path_bits4.i.i, align 4
  br label %rdma_ah_get_path_bits.exit.i

rdma_ah_get_dlid.exit.i:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %dlid.i = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %resp, i32 0, i32 2
  %107 = ptrtoint ptr %dlid.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %dlid.i, align 4
  %sl.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 10, i32 1
  %108 = ptrtoint ptr %sl.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %sl.i.i, align 8
  %sl.i = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %resp, i32 0, i32 7
  %110 = ptrtoint ptr %sl.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %sl.i, align 1
  br label %rdma_ah_get_path_bits.exit.i

rdma_ah_get_path_bits.exit.i:                     ; preds = %rdma_ah_get_dlid.exit.i, %rdma_ah_get_dlid.exit.i.thread153, %rdma_ah_get_dlid.exit.i.thread
  %retval.0.i41.i = phi i8 [ %97, %rdma_ah_get_dlid.exit.i.thread ], [ %106, %rdma_ah_get_dlid.exit.i.thread153 ], [ 0, %rdma_ah_get_dlid.exit.i ]
  %src_path_bits.i = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %resp, i32 0, i32 8
  %111 = ptrtoint ptr %src_path_bits.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %retval.0.i41.i, ptr %src_path_bits.i, align 4
  %static_rate.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 10, i32 2
  %112 = ptrtoint ptr %static_rate.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %static_rate.i.i, align 1
  %static_rate.i = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %resp, i32 0, i32 9
  %114 = ptrtoint ptr %static_rate.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %static_rate.i, align 1
  %ah_flags.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 10, i32 4
  %115 = ptrtoint ptr %ah_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %ah_flags.i.i, align 8
  %117 = and i8 %116, 1
  %is_global.i = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %resp, i32 0, i32 10
  %118 = ptrtoint ptr %is_global.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %is_global.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool8.not.i = icmp eq i8 %117, 0
  br i1 %tobool8.not.i, label %rdma_ah_get_path_bits.exit.i.copy_ah_attr_to_uverbs.exit_crit_edge, label %if.then.i

rdma_ah_get_path_bits.exit.i.copy_ah_attr_to_uverbs.exit_crit_edge: ; preds = %rdma_ah_get_path_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_ah_attr_to_uverbs.exit

if.then.i:                                        ; preds = %rdma_ah_get_path_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %dgid10.i = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 10, i32 0, i32 1
  %119 = call ptr @memcpy(ptr %resp, ptr %dgid10.i, i32 16)
  %flow_label.i = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 10, i32 0, i32 2
  %120 = ptrtoint ptr %flow_label.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flow_label.i, align 8
  %flow_label12.i = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %resp, i32 0, i32 1
  %122 = ptrtoint ptr %flow_label12.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %flow_label12.i, align 8
  %sgid_index.i = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 10, i32 0, i32 3
  %123 = ptrtoint ptr %sgid_index.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %sgid_index.i, align 4
  %sgid_index13.i = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %resp, i32 0, i32 4
  %125 = ptrtoint ptr %sgid_index13.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %sgid_index13.i, align 8
  %hop_limit.i = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 10, i32 0, i32 4
  %126 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %hop_limit.i, align 1
  %hop_limit14.i = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %resp, i32 0, i32 5
  %128 = ptrtoint ptr %hop_limit14.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %hop_limit14.i, align 1
  %traffic_class.i = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 10, i32 0, i32 5
  %129 = ptrtoint ptr %traffic_class.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %traffic_class.i, align 2
  %traffic_class15.i = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %resp, i32 0, i32 6
  %131 = ptrtoint ptr %traffic_class15.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %traffic_class15.i, align 2
  br label %copy_ah_attr_to_uverbs.exit

copy_ah_attr_to_uverbs.exit:                      ; preds = %if.then.i, %rdma_ah_get_path_bits.exit.i.copy_ah_attr_to_uverbs.exit_crit_edge
  %port_num.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 10, i32 3
  %132 = ptrtoint ptr %port_num.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %port_num.i.i, align 4
  %conv17.i = trunc i32 %133 to i8
  %port_num.i = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %resp, i32 0, i32 11
  %134 = ptrtoint ptr %port_num.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv17.i, ptr %port_num.i, align 1
  %alt_dest = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 1
  %type.i.i109 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 11, i32 5
  %135 = ptrtoint ptr %type.i.i109 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %type.i.i109, align 4
  %137 = zext i32 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %136, label %rdma_ah_get_dlid.exit.i118 [
    i32 1, label %rdma_ah_get_dlid.exit.i118.thread
    i32 3, label %rdma_ah_get_dlid.exit.i118.thread164
  ]

rdma_ah_get_dlid.exit.i118.thread:                ; preds = %copy_ah_attr_to_uverbs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %138 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 11, i32 6
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %138, align 8
  %dlid.i115161 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 1, i32 2
  %141 = ptrtoint ptr %dlid.i115161 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %dlid.i115161, align 4
  %sl.i.i116162 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 11, i32 1
  %142 = ptrtoint ptr %sl.i.i116162 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %sl.i.i116162, align 8
  %sl.i117163 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 1, i32 7
  %144 = ptrtoint ptr %sl.i117163 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %sl.i117163, align 1
  %src_path_bits.i.i119 = getelementptr inbounds %struct.ib_ah_attr, ptr %138, i32 0, i32 1
  %145 = ptrtoint ptr %src_path_bits.i.i119 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %src_path_bits.i.i119, align 2
  br label %rdma_ah_get_path_bits.exit.i130

rdma_ah_get_dlid.exit.i118.thread164:             ; preds = %copy_ah_attr_to_uverbs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %147 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 11, i32 6
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %147, align 8
  %conv.i114166 = trunc i32 %149 to i16
  %dlid.i115167 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 1, i32 2
  %150 = ptrtoint ptr %dlid.i115167 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv.i114166, ptr %dlid.i115167, align 4
  %sl.i.i116168 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 11, i32 1
  %151 = ptrtoint ptr %sl.i.i116168 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %sl.i.i116168, align 8
  %sl.i117169 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 1, i32 7
  %153 = ptrtoint ptr %sl.i117169 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %sl.i117169, align 1
  %src_path_bits4.i.i121 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 11, i32 6, i32 0, i32 1
  %154 = ptrtoint ptr %src_path_bits4.i.i121 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %src_path_bits4.i.i121, align 4
  br label %rdma_ah_get_path_bits.exit.i130

rdma_ah_get_dlid.exit.i118:                       ; preds = %copy_ah_attr_to_uverbs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dlid.i115 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 1, i32 2
  %156 = ptrtoint ptr %dlid.i115 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 0, ptr %dlid.i115, align 4
  %sl.i.i116 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 11, i32 1
  %157 = ptrtoint ptr %sl.i.i116 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %sl.i.i116, align 8
  %sl.i117 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 1, i32 7
  %159 = ptrtoint ptr %sl.i117 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %158, ptr %sl.i117, align 1
  br label %rdma_ah_get_path_bits.exit.i130

rdma_ah_get_path_bits.exit.i130:                  ; preds = %rdma_ah_get_dlid.exit.i118, %rdma_ah_get_dlid.exit.i118.thread164, %rdma_ah_get_dlid.exit.i118.thread
  %retval.0.i41.i123 = phi i8 [ %146, %rdma_ah_get_dlid.exit.i118.thread ], [ %155, %rdma_ah_get_dlid.exit.i118.thread164 ], [ 0, %rdma_ah_get_dlid.exit.i118 ]
  %src_path_bits.i124 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 1, i32 8
  %160 = ptrtoint ptr %src_path_bits.i124 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %retval.0.i41.i123, ptr %src_path_bits.i124, align 4
  %static_rate.i.i125 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 11, i32 2
  %161 = ptrtoint ptr %static_rate.i.i125 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %static_rate.i.i125, align 1
  %static_rate.i126 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 1, i32 9
  %163 = ptrtoint ptr %static_rate.i126 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %static_rate.i126, align 1
  %ah_flags.i.i127 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 11, i32 4
  %164 = ptrtoint ptr %ah_flags.i.i127 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %ah_flags.i.i127, align 8
  %166 = and i8 %165, 1
  %is_global.i128 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 1, i32 10
  %167 = ptrtoint ptr %is_global.i128 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %is_global.i128, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool8.not.i129 = icmp eq i8 %166, 0
  br i1 %tobool8.not.i129, label %rdma_ah_get_path_bits.exit.i130.copy_ah_attr_to_uverbs.exit145_crit_edge, label %if.then.i140

rdma_ah_get_path_bits.exit.i130.copy_ah_attr_to_uverbs.exit145_crit_edge: ; preds = %rdma_ah_get_path_bits.exit.i130
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_ah_attr_to_uverbs.exit145

if.then.i140:                                     ; preds = %rdma_ah_get_path_bits.exit.i130
  call void @__sanitizer_cov_trace_pc() #15
  %dgid10.i131 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 11, i32 0, i32 1
  %168 = call ptr @memcpy(ptr %alt_dest, ptr %dgid10.i131, i32 16)
  %flow_label.i132 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 11, i32 0, i32 2
  %169 = ptrtoint ptr %flow_label.i132 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %flow_label.i132, align 8
  %flow_label12.i133 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 1, i32 1
  %171 = ptrtoint ptr %flow_label12.i133 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %flow_label12.i133, align 8
  %sgid_index.i134 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 11, i32 0, i32 3
  %172 = ptrtoint ptr %sgid_index.i134 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %sgid_index.i134, align 4
  %sgid_index13.i135 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 1, i32 4
  %174 = ptrtoint ptr %sgid_index13.i135 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %sgid_index13.i135, align 8
  %hop_limit.i136 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 11, i32 0, i32 4
  %175 = ptrtoint ptr %hop_limit.i136 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %hop_limit.i136, align 1
  %hop_limit14.i137 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 1, i32 5
  %177 = ptrtoint ptr %hop_limit14.i137 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %hop_limit14.i137, align 1
  %traffic_class.i138 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 11, i32 0, i32 5
  %178 = ptrtoint ptr %traffic_class.i138 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %traffic_class.i138, align 2
  %traffic_class15.i139 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 1, i32 6
  %180 = ptrtoint ptr %traffic_class15.i139 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %traffic_class15.i139, align 2
  br label %copy_ah_attr_to_uverbs.exit145

copy_ah_attr_to_uverbs.exit145:                   ; preds = %if.then.i140, %rdma_ah_get_path_bits.exit.i130.copy_ah_attr_to_uverbs.exit145_crit_edge
  %port_num.i.i141 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 11, i32 3
  %181 = ptrtoint ptr %port_num.i.i141 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %port_num.i.i141, align 4
  %conv17.i142 = trunc i32 %182 to i8
  %port_num.i143 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 1, i32 11
  %183 = ptrtoint ptr %port_num.i143 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %conv17.i142, ptr %port_num.i143, align 1
  %cap = getelementptr inbounds %struct.ib_qp_init_attr, ptr %call7.i107, i32 0, i32 6
  %184 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cap, align 8
  %max_send_wr47 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 2
  %186 = ptrtoint ptr %max_send_wr47 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %max_send_wr47, align 8
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_init_attr, ptr %call7.i107, i32 0, i32 6, i32 1
  %187 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %max_recv_wr, align 4
  %max_recv_wr49 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 3
  %189 = ptrtoint ptr %max_recv_wr49 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %max_recv_wr49, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %call7.i107, i32 0, i32 6, i32 2
  %190 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %max_send_sge, align 8
  %max_send_sge51 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 4
  %192 = ptrtoint ptr %max_send_sge51 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %max_send_sge51, align 8
  %max_recv_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %call7.i107, i32 0, i32 6, i32 3
  %193 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %max_recv_sge, align 4
  %max_recv_sge53 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 5
  %195 = ptrtoint ptr %max_recv_sge53 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %max_recv_sge53, align 4
  %max_inline_data = getelementptr inbounds %struct.ib_qp_init_attr, ptr %call7.i107, i32 0, i32 6, i32 4
  %196 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %max_inline_data, align 8
  %max_inline_data55 = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 6
  %198 = ptrtoint ptr %max_inline_data55 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %max_inline_data55, align 8
  %sq_sig_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %call7.i107, i32 0, i32 7
  %199 = ptrtoint ptr %sq_sig_type to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %sq_sig_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %cmp56 = icmp eq i32 %200, 0
  %conv58 = zext i1 %cmp56 to i8
  %sq_sig_all = getelementptr inbounds %struct.ib_uverbs_query_qp_resp, ptr %resp, i32 0, i32 28
  %201 = ptrtoint ptr %sq_sig_all to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %conv58, ptr %sq_sig_all, align 2
  %call59 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 128)
  br label %out

out:                                              ; preds = %copy_ah_attr_to_uverbs.exit145, %if.end14.out_crit_edge, %_uobj_get_obj_read.exit.out_crit_edge, %if.end6.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end14.out_crit_edge ], [ %call59, %copy_ah_attr_to_uverbs.exit145 ], [ -12, %if.end.out_crit_edge ], [ -22, %_uobj_get_obj_read.exit.out_crit_edge ], [ -22, %if.end6.out_crit_edge ]
  call void @kfree(ptr noundef %call7.i) #13
  call void @kfree(ptr noundef %call7.i107) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_ex_create_qp(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_ex_create_qp, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #13
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 64)
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %comp_mask = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 14
  %1 = ptrtoint ptr %comp_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %comp_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %tobool1.not = icmp ult i32 %2, 2
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %reserved = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 13
  %3 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reserved, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = call fastcc i32 @create_qp(ptr noundef %attrs, ptr noundef nonnull %cmd)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_ex_modify_qp(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_ex_modify_qp, align 8
  %resp = alloca %struct.ib_uverbs_ex_modify_qp_resp, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #13
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp) #13
  %1 = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp_resp, ptr %resp, i32 0, i32 1
  %2 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %resp, align 4
  %outlen.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %outlen.i, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 8) #13
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %1, align 4
  %call1 = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 120)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %attr_mask = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 3
  %7 = ptrtoint ptr %attr_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %attr_mask, align 4
  %and = and i32 %8, -35651584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @modify_qp(ptr noundef %attrs, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 8)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call1, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_ex_create_rwq_ind_table(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_ex_create_rwq_ind_table, align 4
  %resp = alloca %struct.ib_uverbs_ex_create_rwq_ind_table_resp, align 4
  %init_attr = alloca %struct.ib_rwq_ind_table_init_attr, align 8
  %iter = alloca %struct.uverbs_req_iter, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #13
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !55
  %1 = getelementptr inbounds %struct.ib_uverbs_ex_create_rwq_ind_table, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %resp) #13
  %3 = call ptr @memset(ptr %resp, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %init_attr) #13
  %4 = ptrtoint ptr %init_attr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %init_attr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #13
  %5 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !55
  %6 = getelementptr inbounds %struct.uverbs_req_iter, ptr %iter, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !55
  %call = call fastcc i32 @uverbs_request_start(ptr noundef %attrs, ptr noundef nonnull %iter, ptr noundef nonnull %cmd, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %11)
  %cmp = icmp ugt i32 %11, 13
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %shl = shl nuw nsw i32 1, %11
  %12 = shl nuw nsw i32 %shl, 2
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #16
  %tobool8.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call11 = call fastcc i32 @uverbs_request_next(ptr noundef nonnull %iter, ptr noundef nonnull %call8.i.i, i32 noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.err_free_crit_edge

if.end10.err_free_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free

if.end14:                                         ; preds = %if.end10
  %call15 = call fastcc i32 @uverbs_request_finish(ptr noundef nonnull %iter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end7.i.i190, label %if.end14.err_free_crit_edge

if.end14.err_free_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free

if.end7.i.i190:                                   ; preds = %if.end14
  %call8.i.i189 = call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #16
  %tobool20.not = icmp eq ptr %call8.i.i189, null
  br i1 %tobool20.not, label %if.end7.i.i190.err_free_crit_edge, label %for.cond.preheader

if.end7.i.i190.err_free_crit_edge:                ; preds = %if.end7.i.i190
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free

for.cond.preheader:                               ; preds = %if.end7.i.i190
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end33.for.body_crit_edge, %for.cond.preheader
  %num_read_wqs.0244 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end33.for.body_crit_edge ]
  %13 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %18, i32 noundef 24576) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %19 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ufile, align 8
  %arrayidx = getelementptr i32, ptr %call8.i.i, i32 %num_read_wqs.0244
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %conv28 = zext i32 %22 to i64
  %call29 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i, ptr noundef %20, i64 noundef %conv28, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.put_wqs_crit_edge, label %_uobj_get_obj_read.exit

for.body.put_wqs_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_wqs

_uobj_get_obj_read.exit:                          ; preds = %for.body
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call29, i32 0, i32 3
  %23 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %object.i, align 8
  %tobool31.not = icmp eq ptr %24, null
  br i1 %tobool31.not, label %_uobj_get_obj_read.exit.put_wqs_crit_edge, label %if.end33

_uobj_get_obj_read.exit.put_wqs_crit_edge:        ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_wqs

if.end33:                                         ; preds = %_uobj_get_obj_read.exit
  %arrayidx34 = getelementptr ptr, ptr %call8.i.i189, i32 %num_read_wqs.0244
  %25 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %arrayidx34, align 4
  %usecnt = getelementptr inbounds %struct.ib_wq, ptr %24, i32 0, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %26 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !51
  %inc = add nuw i32 %num_read_wqs.0244, 1
  %exitcond.not = icmp eq i32 %inc, %shl
  br i1 %exitcond.not, label %for.end, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end33
  %27 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ufile, align 8
  %device37 = getelementptr inbounds %struct.ib_uverbs_file, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %device37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device37, align 4
  %uapi38 = getelementptr inbounds %struct.ib_uverbs_device, ptr %30, i32 0, i32 13
  %31 = ptrtoint ptr %uapi38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %uapi38, align 4
  %call4.i195 = call ptr @radix_tree_lookup(ptr noundef %32, i32 noundef 22528) #13
  %tobool.not.i196 = icmp eq ptr %call4.i195, null
  %spec.select.i197 = select i1 %tobool.not.i196, ptr inttoptr (i32 -2 to ptr), ptr %call4.i195
  %call.i = call ptr @rdma_alloc_begin_uobject(ptr noundef %spec.select.i197, ptr noundef %attrs) #13
  %cmp.i.i198 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i198, label %if.then42, label %if.end44

if.then42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %call.i to i32
  br label %put_wqs

if.end44:                                         ; preds = %for.end
  %context.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %34 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %context.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %size_ib_rwq_ind_table = getelementptr inbounds %struct.ib_device, ptr %37, i32 0, i32 1, i32 127
  %38 = ptrtoint ptr %size_ib_rwq_ind_table to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size_ib_rwq_ind_table, align 4
  %call9.i.i.i225 = call noalias align 128 ptr @__kmalloc(i32 noundef %39, i32 noundef 3520) #16
  %tobool46.not = icmp eq ptr %call9.i.i.i225, null
  br i1 %tobool46.not, label %if.end44.err_uobj_crit_edge, label %if.end48

if.end44.err_uobj_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_uobj

if.end48:                                         ; preds = %if.end44
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %1, align 4
  %42 = ptrtoint ptr %init_attr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %init_attr, align 8
  %ind_tbl = getelementptr inbounds %struct.ib_rwq_ind_table_init_attr, ptr %init_attr, i32 0, i32 1
  %43 = ptrtoint ptr %ind_tbl to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call8.i.i189, ptr %ind_tbl, align 4
  %ind_tbl51 = getelementptr inbounds %struct.ib_rwq_ind_table, ptr %call9.i.i.i225, i32 0, i32 5
  %44 = ptrtoint ptr %ind_tbl51 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call8.i.i189, ptr %ind_tbl51, align 4
  %log_ind_tbl_size53 = getelementptr inbounds %struct.ib_rwq_ind_table, ptr %call9.i.i.i225, i32 0, i32 4
  %45 = ptrtoint ptr %log_ind_tbl_size53 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %41, ptr %log_ind_tbl_size53, align 16
  %uobject = getelementptr inbounds %struct.ib_rwq_ind_table, ptr %call9.i.i.i225, i32 0, i32 1
  %46 = ptrtoint ptr %uobject to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %uobject, align 4
  %object = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 3
  %47 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call9.i.i.i225, ptr %object, align 8
  %48 = ptrtoint ptr %call9.i.i.i225 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %37, ptr %call9.i.i.i225, align 128
  %usecnt55 = getelementptr inbounds %struct.ib_rwq_ind_table, ptr %call9.i.i.i225, i32 0, i32 2
  %call.i.i158 = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt55, i32 noundef 4) #13
  %49 = ptrtoint ptr %usecnt55 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 0, ptr %usecnt55, align 8
  %create_rwq_ind_table = getelementptr inbounds %struct.ib_device, ptr %37, i32 0, i32 1, i32 83
  %50 = ptrtoint ptr %create_rwq_ind_table to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %create_rwq_ind_table, align 4
  %call57 = call i32 %51(ptr noundef nonnull %call9.i.i.i225, ptr noundef nonnull %init_attr, ptr noundef %attrs) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end48.for.body64_crit_edge, label %err_create

if.end48.for.body64_crit_edge:                    ; preds = %if.end48
  br label %for.body64

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %if.end48.for.body64_crit_edge
  %i.0245 = phi i32 [ %inc69, %for.body64.for.body64_crit_edge ], [ 0, %if.end48.for.body64_crit_edge ]
  %arrayidx65 = getelementptr ptr, ptr %call8.i.i189, i32 %i.0245
  %52 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx65, align 4
  %uobject66 = getelementptr inbounds %struct.ib_wq, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %uobject66 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %uobject66, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %55, i32 noundef 0) #13
  %inc69 = add nuw i32 %i.0245, 1
  %exitcond250.not = icmp eq i32 %inc69, %shl
  br i1 %exitcond250.not, label %for.end70, label %for.body64.for.body64_crit_edge

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body64

for.end70:                                        ; preds = %for.body64
  call void @kfree(ptr noundef nonnull %call8.i.i) #13
  %uobject.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 4
  %56 = ptrtoint ptr %uobject.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %uobject.i, align 8
  %tobool.not.i227 = icmp eq ptr %57, null
  br i1 %tobool.not.i227, label %for.end70.uobj_finalize_uobj_create.exit_crit_edge, label %do.end.i, !prof !54

for.end70.uobj_finalize_uobj_create.exit_crit_edge: ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %uobj_finalize_uobj_create.exit

do.end.i:                                         ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 96, i32 noundef 9, ptr noundef null) #13
  br label %uobj_finalize_uobj_create.exit

uobj_finalize_uobj_create.exit:                   ; preds = %do.end.i, %for.end70.uobj_finalize_uobj_create.exit_crit_edge
  %58 = ptrtoint ptr %uobject.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %uobject.i, align 8
  %id = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 6
  %59 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %id, align 8
  %ind_tbl_handle = getelementptr inbounds %struct.ib_uverbs_ex_create_rwq_ind_table_resp, ptr %resp, i32 0, i32 2
  %61 = ptrtoint ptr %ind_tbl_handle to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %ind_tbl_handle, align 4
  %ind_tbl_num = getelementptr inbounds %struct.ib_rwq_ind_table, ptr %call9.i.i.i225, i32 0, i32 3
  %62 = ptrtoint ptr %ind_tbl_num to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ind_tbl_num, align 4
  %ind_tbl_num71 = getelementptr inbounds %struct.ib_uverbs_ex_create_rwq_ind_table_resp, ptr %resp, i32 0, i32 3
  %64 = ptrtoint ptr %ind_tbl_num71 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %ind_tbl_num71, align 4
  %outlen.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 1, i32 3
  %65 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %outlen.i, align 4
  %67 = call i32 @llvm.umin.i32(i32 %66, i32 16) #13
  %response_length = getelementptr inbounds %struct.ib_uverbs_ex_create_rwq_ind_table_resp, ptr %resp, i32 0, i32 1
  %68 = ptrtoint ptr %response_length to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %response_length, align 4
  %call73 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 16)
  br label %cleanup

err_create:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call9.i.i.i225) #13
  br label %err_uobj

err_uobj:                                         ; preds = %err_create, %if.end44.err_uobj_crit_edge
  %err.0 = phi i32 [ %call57, %err_create ], [ -12, %if.end44.err_uobj_crit_edge ]
  call void @rdma_alloc_abort_uobject(ptr noundef %call.i, ptr noundef %attrs, i1 noundef zeroext false) #13
  br label %put_wqs

put_wqs:                                          ; preds = %err_uobj, %if.then42, %_uobj_get_obj_read.exit.put_wqs_crit_edge, %for.body.put_wqs_crit_edge
  %num_read_wqs.0243 = phi i32 [ %shl, %if.then42 ], [ %shl, %err_uobj ], [ %num_read_wqs.0244, %_uobj_get_obj_read.exit.put_wqs_crit_edge ], [ %num_read_wqs.0244, %for.body.put_wqs_crit_edge ]
  %err.1 = phi i32 [ %33, %if.then42 ], [ %err.0, %err_uobj ], [ -22, %_uobj_get_obj_read.exit.put_wqs_crit_edge ], [ -22, %for.body.put_wqs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_read_wqs.0243)
  %cmp75246 = icmp sgt i32 %num_read_wqs.0243, 0
  br i1 %cmp75246, label %put_wqs.for.body77_crit_edge, label %put_wqs.err_free_crit_edge

put_wqs.err_free_crit_edge:                       ; preds = %put_wqs
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free

put_wqs.for.body77_crit_edge:                     ; preds = %put_wqs
  br label %for.body77

for.body77:                                       ; preds = %for.body77.for.body77_crit_edge, %put_wqs.for.body77_crit_edge
  %i.1247 = phi i32 [ %inc85, %for.body77.for.body77_crit_edge ], [ 0, %put_wqs.for.body77_crit_edge ]
  %arrayidx78 = getelementptr ptr, ptr %call8.i.i189, i32 %i.1247
  %69 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx78, align 4
  %uobject79 = getelementptr inbounds %struct.ib_wq, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %uobject79 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %uobject79, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %72, i32 noundef 0) #13
  %73 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx78, align 4
  %usecnt83 = getelementptr inbounds %struct.ib_wq, ptr %74, i32 0, i32 9
  %call.i.i159 = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt83, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usecnt83, i32 1, i32 3, i32 1) #13
  %75 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt83, ptr %usecnt83, i32 1, ptr elementtype(i32) %usecnt83) #13, !srcloc !53
  %inc85 = add nuw nsw i32 %i.1247, 1
  %exitcond251.not = icmp eq i32 %inc85, %num_read_wqs.0243
  br i1 %exitcond251.not, label %for.body77.err_free_crit_edge, label %for.body77.for.body77_crit_edge

for.body77.for.body77_crit_edge:                  ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body77

for.body77.err_free_crit_edge:                    ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free

err_free:                                         ; preds = %for.body77.err_free_crit_edge, %put_wqs.err_free_crit_edge, %if.end7.i.i190.err_free_crit_edge, %if.end14.err_free_crit_edge, %if.end10.err_free_crit_edge
  %err.2 = phi i32 [ %call11, %if.end10.err_free_crit_edge ], [ %call15, %if.end14.err_free_crit_edge ], [ -12, %if.end7.i.i190.err_free_crit_edge ], [ %err.1, %put_wqs.err_free_crit_edge ], [ %err.1, %for.body77.err_free_crit_edge ]
  %wqs.0 = phi ptr [ null, %if.end10.err_free_crit_edge ], [ null, %if.end14.err_free_crit_edge ], [ null, %if.end7.i.i190.err_free_crit_edge ], [ %call8.i.i189, %put_wqs.err_free_crit_edge ], [ %call8.i.i189, %for.body77.err_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #13
  call void @kfree(ptr noundef %wqs.0) #13
  br label %cleanup

cleanup:                                          ; preds = %err_free, %uobj_finalize_uobj_create.exit, %if.end5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_free ], [ %call73, %uobj_finalize_uobj_create.exit ], [ %call, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %init_attr) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_ex_destroy_rwq_ind_table(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_ex_destroy_rwq_ind_table, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #13
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !55
  %1 = getelementptr inbounds %struct.ib_uverbs_ex_destroy_rwq_ind_table, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !55
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %5 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %10, i32 noundef 22528) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %call5 = call i32 @__uobj_perform_destroy(ptr noundef %spec.select.i, i32 noundef %12, ptr noundef %attrs) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ %call, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_ex_create_wq(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_ex_create_wq, align 8
  %resp = alloca %struct.ib_uverbs_ex_create_wq_resp, align 4
  %wq_init_attr = alloca %struct.ib_wq_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #13
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %resp) #13
  %1 = call ptr @memset(ptr %resp, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %wq_init_attr) #13
  %2 = call ptr @memset(ptr %wq_init_attr, i32 0, i32 28)
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %5 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %10, i32 noundef 24576) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %call.i = call ptr @rdma_alloc_begin_uobject(ptr noundef %spec.select.i, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %12 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ufile, align 8
  %device11 = getelementptr inbounds %struct.ib_uverbs_file, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %device11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device11, align 4
  %uapi12 = getelementptr inbounds %struct.ib_uverbs_device, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %uapi12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %uapi12, align 4
  %call4.i150 = call ptr @radix_tree_lookup(ptr noundef %17, i32 noundef 2048) #13
  %tobool.not.i151 = icmp eq ptr %call4.i150, null
  %spec.select.i152 = select i1 %tobool.not.i151, ptr inttoptr (i32 -2 to ptr), ptr %call4.i150
  %18 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ufile, align 8
  %pd_handle = getelementptr inbounds %struct.ib_uverbs_ex_create_wq, ptr %cmd, i32 0, i32 3
  %20 = ptrtoint ptr %pd_handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pd_handle, align 8
  %conv15 = zext i32 %21 to i64
  %call16 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i152, ptr noundef %19, i64 noundef %conv15, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i153 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i153, label %if.end9.err_uobj_crit_edge, label %_uobj_get_obj_read.exit

if.end9.err_uobj_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_uobj

_uobj_get_obj_read.exit:                          ; preds = %if.end9
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call16, i32 0, i32 3
  %22 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %object.i, align 8
  %tobool18.not = icmp eq ptr %23, null
  br i1 %tobool18.not, label %_uobj_get_obj_read.exit.err_uobj_crit_edge, label %if.end20

_uobj_get_obj_read.exit.err_uobj_crit_edge:       ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_uobj

if.end20:                                         ; preds = %_uobj_get_obj_read.exit
  %24 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ufile, align 8
  %device22 = getelementptr inbounds %struct.ib_uverbs_file, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %device22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device22, align 4
  %uapi23 = getelementptr inbounds %struct.ib_uverbs_device, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %uapi23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %uapi23, align 4
  %call4.i154 = call ptr @radix_tree_lookup(ptr noundef %29, i32 noundef 6144) #13
  %tobool.not.i155 = icmp eq ptr %call4.i154, null
  %spec.select.i156 = select i1 %tobool.not.i155, ptr inttoptr (i32 -2 to ptr), ptr %call4.i154
  %30 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ufile, align 8
  %cq_handle = getelementptr inbounds %struct.ib_uverbs_ex_create_wq, ptr %cmd, i32 0, i32 4
  %32 = ptrtoint ptr %cq_handle to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cq_handle, align 4
  %conv32 = zext i32 %33 to i64
  %call33 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i156, ptr noundef %31, i64 noundef %conv32, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i157 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i157, label %if.end20.err_put_pd_crit_edge, label %_uobj_get_obj_read.exit161

if.end20.err_put_pd_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_pd

_uobj_get_obj_read.exit161:                       ; preds = %if.end20
  %object.i158 = getelementptr inbounds %struct.ib_uobject, ptr %call33, i32 0, i32 3
  %34 = ptrtoint ptr %object.i158 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %object.i158, align 8
  %tobool35.not = icmp eq ptr %35, null
  br i1 %tobool35.not, label %_uobj_get_obj_read.exit161.err_put_pd_crit_edge, label %if.end37

_uobj_get_obj_read.exit161.err_put_pd_crit_edge:  ; preds = %_uobj_get_obj_read.exit161
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_pd

if.end37:                                         ; preds = %_uobj_get_obj_read.exit161
  %cq38 = getelementptr inbounds %struct.ib_wq_init_attr, ptr %wq_init_attr, i32 0, i32 4
  %36 = ptrtoint ptr %cq38 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %cq38, align 4
  %max_sge = getelementptr inbounds %struct.ib_uverbs_ex_create_wq, ptr %cmd, i32 0, i32 6
  %37 = ptrtoint ptr %max_sge to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_sge, align 4
  %max_sge39 = getelementptr inbounds %struct.ib_wq_init_attr, ptr %wq_init_attr, i32 0, i32 3
  %39 = ptrtoint ptr %max_sge39 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %max_sge39, align 4
  %max_wr = getelementptr inbounds %struct.ib_uverbs_ex_create_wq, ptr %cmd, i32 0, i32 5
  %40 = ptrtoint ptr %max_wr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_wr, align 8
  %max_wr40 = getelementptr inbounds %struct.ib_wq_init_attr, ptr %wq_init_attr, i32 0, i32 2
  %42 = ptrtoint ptr %max_wr40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %max_wr40, align 4
  %wq_type = getelementptr inbounds %struct.ib_uverbs_ex_create_wq, ptr %cmd, i32 0, i32 1
  %43 = ptrtoint ptr %wq_type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %wq_type, align 4
  %wq_type41 = getelementptr inbounds %struct.ib_wq_init_attr, ptr %wq_init_attr, i32 0, i32 1
  %45 = ptrtoint ptr %wq_type41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %wq_type41, align 4
  %event_handler = getelementptr inbounds %struct.ib_wq_init_attr, ptr %wq_init_attr, i32 0, i32 5
  %46 = ptrtoint ptr %event_handler to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @ib_uverbs_wq_event_handler, ptr %event_handler, align 4
  %create_flags = getelementptr inbounds %struct.ib_uverbs_ex_create_wq, ptr %cmd, i32 0, i32 7
  %47 = ptrtoint ptr %create_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %create_flags, align 8
  %create_flags42 = getelementptr inbounds %struct.ib_wq_init_attr, ptr %wq_init_attr, i32 0, i32 6
  %49 = ptrtoint ptr %create_flags42 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %create_flags42, align 4
  %event_list = getelementptr inbounds %struct.ib_uevent_object, ptr %call.i, i32 0, i32 2
  %50 = ptrtoint ptr %event_list to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %event_list, ptr %event_list, align 4
  %prev.i = getelementptr inbounds %struct.ib_uevent_object, ptr %call.i, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %event_list, ptr %prev.i, align 4
  %user_handle = getelementptr inbounds %struct.ib_uverbs_ex_create_wq, ptr %cmd, i32 0, i32 2
  %52 = ptrtoint ptr %user_handle to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %user_handle, align 8
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %call.i, align 8
  %device45 = getelementptr inbounds %struct.ib_pd, ptr %23, i32 0, i32 2
  %55 = ptrtoint ptr %device45 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device45, align 4
  %create_wq = getelementptr inbounds %struct.ib_device, ptr %56, i32 0, i32 1, i32 80
  %57 = ptrtoint ptr %create_wq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %create_wq, align 4
  %call46 = call ptr %58(ptr noundef nonnull %23, ptr noundef nonnull %wq_init_attr, ptr noundef %attrs) #13
  %cmp.i162 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %call46 to i32
  %uobject86 = getelementptr inbounds %struct.ib_cq, ptr %35, i32 0, i32 1
  %60 = ptrtoint ptr %uobject86 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %uobject86, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %61, i32 noundef 0) #13
  br label %err_put_pd

if.end50:                                         ; preds = %if.end37
  %uobject51 = getelementptr inbounds %struct.ib_wq, ptr %call46, i32 0, i32 1
  %62 = ptrtoint ptr %uobject51 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %uobject51, align 4
  %object = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 3
  %63 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call46, ptr %object, align 8
  %64 = ptrtoint ptr %wq_type41 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %wq_type41, align 4
  %wq_type55 = getelementptr inbounds %struct.ib_wq, ptr %call46, i32 0, i32 8
  %66 = ptrtoint ptr %wq_type55 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %wq_type55, align 4
  %cq56 = getelementptr inbounds %struct.ib_wq, ptr %call46, i32 0, i32 5
  %67 = ptrtoint ptr %cq56 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %35, ptr %cq56, align 4
  %pd57 = getelementptr inbounds %struct.ib_wq, ptr %call46, i32 0, i32 4
  %68 = ptrtoint ptr %pd57 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %23, ptr %pd57, align 4
  %69 = ptrtoint ptr %device45 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device45, align 4
  %71 = ptrtoint ptr %call46 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %call46, align 4
  %usecnt = getelementptr inbounds %struct.ib_wq, ptr %call46, i32 0, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  %72 = ptrtoint ptr %usecnt to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 0, ptr %usecnt, align 4
  %usecnt60 = getelementptr inbounds %struct.ib_pd, ptr %23, i32 0, i32 4
  %call.i.i148 = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt60, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usecnt60, i32 1, i32 3, i32 1) #13
  %73 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt60, ptr %usecnt60, i32 1, ptr elementtype(i32) %usecnt60) #13, !srcloc !51
  %usecnt61 = getelementptr inbounds %struct.ib_cq, ptr %35, i32 0, i32 7
  %call.i.i149 = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt61, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usecnt61, i32 1, i32 3, i32 1) #13
  %74 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt61, ptr %usecnt61, i32 1, ptr elementtype(i32) %usecnt61) #13, !srcloc !51
  %75 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ufile, align 8
  %default_async_file = getelementptr inbounds %struct.ib_uverbs_file, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %default_async_file to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %default_async_file, align 4
  %event_file = getelementptr inbounds %struct.ib_uevent_object, ptr %call.i, i32 0, i32 1
  %79 = ptrtoint ptr %event_file to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %event_file, align 8
  %tobool67.not = icmp eq ptr %78, null
  br i1 %tobool67.not, label %if.end50.if.end71_crit_edge, label %if.then68

if.end50.if.end71_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.then68:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @uverbs_uobject_get(ptr noundef nonnull %78)
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end50.if.end71_crit_edge
  %uobject72 = getelementptr inbounds %struct.ib_pd, ptr %23, i32 0, i32 3
  %80 = ptrtoint ptr %uobject72 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %uobject72, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %81, i32 noundef 0) #13
  %uobject73 = getelementptr inbounds %struct.ib_cq, ptr %35, i32 0, i32 1
  %82 = ptrtoint ptr %uobject73 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %uobject73, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %83, i32 noundef 0) #13
  %uobject.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 4
  %84 = ptrtoint ptr %uobject.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %uobject.i, align 8
  %tobool.not.i163 = icmp eq ptr %85, null
  br i1 %tobool.not.i163, label %if.end71.uobj_finalize_uobj_create.exit_crit_edge, label %do.end.i, !prof !54

if.end71.uobj_finalize_uobj_create.exit_crit_edge: ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %uobj_finalize_uobj_create.exit

do.end.i:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 96, i32 noundef 9, ptr noundef null) #13
  br label %uobj_finalize_uobj_create.exit

uobj_finalize_uobj_create.exit:                   ; preds = %do.end.i, %if.end71.uobj_finalize_uobj_create.exit_crit_edge
  %86 = ptrtoint ptr %uobject.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i, ptr %uobject.i, align 8
  %id = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 6
  %87 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %id, align 8
  %wq_handle = getelementptr inbounds %struct.ib_uverbs_ex_create_wq_resp, ptr %resp, i32 0, i32 2
  %89 = ptrtoint ptr %wq_handle to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %wq_handle, align 4
  %90 = ptrtoint ptr %max_sge39 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_sge39, align 4
  %max_sge81 = getelementptr inbounds %struct.ib_uverbs_ex_create_wq_resp, ptr %resp, i32 0, i32 4
  %92 = ptrtoint ptr %max_sge81 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %max_sge81, align 4
  %93 = ptrtoint ptr %max_wr40 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %max_wr40, align 4
  %max_wr83 = getelementptr inbounds %struct.ib_uverbs_ex_create_wq_resp, ptr %resp, i32 0, i32 3
  %95 = ptrtoint ptr %max_wr83 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %max_wr83, align 4
  %wq_num = getelementptr inbounds %struct.ib_wq, ptr %call46, i32 0, i32 6
  %96 = ptrtoint ptr %wq_num to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %wq_num, align 4
  %wqn = getelementptr inbounds %struct.ib_uverbs_ex_create_wq_resp, ptr %resp, i32 0, i32 5
  %98 = ptrtoint ptr %wqn to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %wqn, align 4
  %outlen.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 1, i32 3
  %99 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %outlen.i, align 4
  %101 = call i32 @llvm.umin.i32(i32 %100, i32 24) #13
  %response_length = getelementptr inbounds %struct.ib_uverbs_ex_create_wq_resp, ptr %resp, i32 0, i32 1
  %102 = ptrtoint ptr %response_length to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %response_length, align 4
  %call85 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 24)
  br label %cleanup

err_put_pd:                                       ; preds = %if.then48, %_uobj_get_obj_read.exit161.err_put_pd_crit_edge, %if.end20.err_put_pd_crit_edge
  %err.0 = phi i32 [ %59, %if.then48 ], [ -22, %_uobj_get_obj_read.exit161.err_put_pd_crit_edge ], [ -22, %if.end20.err_put_pd_crit_edge ]
  %uobject89 = getelementptr inbounds %struct.ib_pd, ptr %23, i32 0, i32 3
  %103 = ptrtoint ptr %uobject89 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %uobject89, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %104, i32 noundef 0) #13
  br label %err_uobj

err_uobj:                                         ; preds = %err_put_pd, %_uobj_get_obj_read.exit.err_uobj_crit_edge, %if.end9.err_uobj_crit_edge
  %err.1 = phi i32 [ %err.0, %err_put_pd ], [ -22, %_uobj_get_obj_read.exit.err_uobj_crit_edge ], [ -22, %if.end9.err_uobj_crit_edge ]
  call void @rdma_alloc_abort_uobject(ptr noundef %call.i, ptr noundef %attrs, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %err_uobj, %uobj_finalize_uobj_create.exit, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then7 ], [ %err.1, %err_uobj ], [ %call85, %uobj_finalize_uobj_create.exit ], [ %call, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %wq_init_attr) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_ex_destroy_wq(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_ex_destroy_wq, align 4
  %resp = alloca %struct.ib_uverbs_ex_destroy_wq_resp, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #13
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !55
  %1 = getelementptr inbounds %struct.ib_uverbs_ex_destroy_wq, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %resp) #13
  %3 = call ptr @memset(ptr %resp, i32 0, i32 16)
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %outlen.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %outlen.i, align 4
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 16) #13
  %response_length = getelementptr inbounds %struct.ib_uverbs_ex_destroy_wq_resp, ptr %resp, i32 0, i32 1
  %9 = ptrtoint ptr %response_length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %response_length, align 4
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %10 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %15, i32 noundef 24576) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %call6 = call ptr @__uobj_get_destroy(ptr noundef %spec.select.i, i32 noundef %17, ptr noundef %attrs) #13
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %events_reported = getelementptr inbounds %struct.ib_uevent_object, ptr %call6, i32 0, i32 3
  %19 = ptrtoint ptr %events_reported to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %events_reported, align 4
  %events_reported12 = getelementptr inbounds %struct.ib_uverbs_ex_destroy_wq_resp, ptr %resp, i32 0, i32 2
  %21 = ptrtoint ptr %events_reported12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %events_reported12, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %call6, i32 noundef 2) #13
  %call13 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then8 ], [ %call13, %if.end10 ], [ %call, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_ex_modify_wq(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_ex_modify_wq, align 4
  %wq_attr = alloca %struct.ib_wq_attr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd) #13
  %0 = getelementptr inbounds %struct.ib_uverbs_ex_modify_wq, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_uverbs_ex_modify_wq, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ib_uverbs_ex_modify_wq, ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ib_uverbs_ex_modify_wq, ptr %cmd, i32 0, i32 4
  %4 = getelementptr inbounds %struct.ib_uverbs_ex_modify_wq, ptr %cmd, i32 0, i32 5
  %5 = call ptr @memset(ptr %cmd, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wq_attr) #13
  %6 = call ptr @memset(ptr %wq_attr, i32 0, i32 16)
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd, align 4
  %9 = add i32 %8, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %9)
  %10 = icmp ult i32 %9, -7
  br i1 %10, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %11 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %16, i32 noundef 24576) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %17 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ufile, align 8
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %0, align 4
  %conv10 = zext i32 %20 to i64
  %call11 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i, ptr noundef %18, i64 noundef %conv10, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end6.cleanup_crit_edge, label %_uobj_get_obj_read.exit

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

_uobj_get_obj_read.exit:                          ; preds = %if.end6
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call11, i32 0, i32 3
  %21 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %object.i, align 8
  %tobool13.not = icmp eq ptr %22, null
  br i1 %tobool13.not, label %_uobj_get_obj_read.exit.cleanup_crit_edge, label %if.end15

_uobj_get_obj_read.exit.cleanup_crit_edge:        ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %_uobj_get_obj_read.exit
  %23 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cmd, align 4
  %and = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 4
  %flags19 = getelementptr inbounds %struct.ib_wq_attr, ptr %wq_attr, i32 0, i32 2
  %27 = ptrtoint ptr %flags19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %flags19, align 4
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %4, align 4
  %flags_mask20 = getelementptr inbounds %struct.ib_wq_attr, ptr %wq_attr, i32 0, i32 3
  %30 = ptrtoint ptr %flags_mask20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %flags_mask20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  %and23 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end21
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp26 = icmp ugt i32 %32, 2
  br i1 %cmp26, label %if.then25.cleanup_crit_edge, label %if.then25.if.end33_crit_edge

if.then25.if.end33_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %state = getelementptr inbounds %struct.ib_wq, ptr %22, i32 0, i32 7
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then25.if.end33_crit_edge
  %.sink = phi i32 [ %34, %if.else ], [ %32, %if.then25.if.end33_crit_edge ]
  %curr_wq_state32 = getelementptr inbounds %struct.ib_wq_attr, ptr %wq_attr, i32 0, i32 1
  %35 = ptrtoint ptr %curr_wq_state32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink, ptr %curr_wq_state32, align 4
  %and35 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else44, label %if.then37

if.then37:                                        ; preds = %if.end33
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp38 = icmp ugt i32 %37, 2
  br i1 %cmp38, label %if.then37.cleanup_crit_edge, label %if.then37.if.end47_crit_edge

if.then37.if.end47_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else44:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %curr_wq_state45 = getelementptr inbounds %struct.ib_wq_attr, ptr %wq_attr, i32 0, i32 1
  %38 = ptrtoint ptr %curr_wq_state45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %curr_wq_state45, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else44, %if.then37.if.end47_crit_edge
  %storemerge = phi i32 [ %39, %if.else44 ], [ %37, %if.then37.if.end47_crit_edge ]
  %40 = ptrtoint ptr %wq_attr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %storemerge, ptr %wq_attr, align 4
  %41 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %22, align 4
  %modify_wq = getelementptr inbounds %struct.ib_device, ptr %42, i32 0, i32 1, i32 82
  %43 = ptrtoint ptr %modify_wq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %modify_wq, align 4
  %call50 = call i32 %44(ptr noundef nonnull %22, ptr noundef nonnull %wq_attr, i32 noundef %24, ptr noundef %attrs) #13
  %uobject = getelementptr inbounds %struct.ib_wq, ptr %22, i32 0, i32 1
  %45 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %uobject, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %46, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then37.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %_uobj_get_obj_read.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call50, %if.end47 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %_uobj_get_obj_read.exit.cleanup_crit_edge ], [ -22, %if.then25.cleanup_crit_edge ], [ -22, %if.then37.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wq_attr) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_create_srq(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_create_srq, align 8
  %xcmd = alloca %struct.ib_uverbs_create_xsrq, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #13
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %xcmd) #13
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = getelementptr inbounds %struct.ib_uverbs_create_srq, ptr %cmd, i32 0, i32 5
  %2 = getelementptr inbounds %struct.ib_uverbs_create_srq, ptr %cmd, i32 0, i32 4
  %3 = getelementptr inbounds %struct.ib_uverbs_create_srq, ptr %cmd, i32 0, i32 3
  %4 = getelementptr inbounds %struct.ib_uverbs_create_srq, ptr %cmd, i32 0, i32 2
  %5 = getelementptr inbounds %struct.ib_uverbs_create_srq, ptr %cmd, i32 0, i32 1
  %6 = getelementptr inbounds i8, ptr %xcmd, i32 32
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cmd, align 8
  %10 = ptrtoint ptr %xcmd to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %xcmd, align 8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %5, align 8
  %user_handle2 = getelementptr inbounds %struct.ib_uverbs_create_xsrq, ptr %xcmd, i32 0, i32 1
  %13 = ptrtoint ptr %user_handle2 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %user_handle2, align 8
  %srq_type = getelementptr inbounds %struct.ib_uverbs_create_xsrq, ptr %xcmd, i32 0, i32 2
  %14 = ptrtoint ptr %srq_type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %srq_type, align 8
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %4, align 8
  %pd_handle3 = getelementptr inbounds %struct.ib_uverbs_create_xsrq, ptr %xcmd, i32 0, i32 3
  %17 = ptrtoint ptr %pd_handle3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %pd_handle3, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  %max_wr4 = getelementptr inbounds %struct.ib_uverbs_create_xsrq, ptr %xcmd, i32 0, i32 4
  %20 = ptrtoint ptr %max_wr4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %max_wr4, align 8
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %2, align 8
  %max_sge5 = getelementptr inbounds %struct.ib_uverbs_create_xsrq, ptr %xcmd, i32 0, i32 5
  %23 = ptrtoint ptr %max_sge5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %max_sge5, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %srq_limit6 = getelementptr inbounds %struct.ib_uverbs_create_xsrq, ptr %xcmd, i32 0, i32 6
  %26 = ptrtoint ptr %srq_limit6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %srq_limit6, align 8
  %call7 = call fastcc i32 @__uverbs_create_xsrq(ptr noundef %attrs, ptr noundef nonnull %xcmd, ptr noundef %attrs)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %xcmd) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_create_xsrq(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_create_xsrq, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #13
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 48)
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = call fastcc i32 @__uverbs_create_xsrq(ptr noundef %attrs, ptr noundef nonnull %cmd, ptr noundef %attrs)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_destroy_srq(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_destroy_srq, align 8
  %resp = alloca %struct.ib_uverbs_destroy_srq_resp, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #13
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #13
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.ib_uverbs_destroy_srq, ptr %cmd, i32 0, i32 1
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %2 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %7, i32 noundef 10240) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %call2 = call ptr @__uobj_get_destroy(ptr noundef %spec.select.i, i32 noundef %9, ptr noundef %attrs) #13
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %events_reported = getelementptr inbounds %struct.ib_uevent_object, ptr %call2, i32 0, i32 3
  %11 = ptrtoint ptr %events_reported to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %events_reported, align 4
  %13 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %resp, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %call2, i32 noundef 2) #13
  %call9 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 4)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then4 ], [ %call9, %if.end6 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_modify_srq(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_modify_srq, align 8
  %attr = alloca %struct.ib_srq_attr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #13
  %0 = getelementptr inbounds %struct.ib_uverbs_modify_srq, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_uverbs_modify_srq, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ib_uverbs_modify_srq, ptr %cmd, i32 0, i32 3
  %3 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %attr) #13
  %4 = getelementptr inbounds %struct.ib_srq_attr, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !55
  %6 = getelementptr inbounds %struct.ib_srq_attr, ptr %attr, i32 0, i32 2
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %7 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %12, i32 noundef 10240) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %13 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ufile, align 8
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmd, align 8
  %conv3 = zext i32 %16 to i64
  %call4 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i, ptr noundef %14, i64 noundef %conv3, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.cleanup_crit_edge, label %_uobj_get_obj_read.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

_uobj_get_obj_read.exit:                          ; preds = %if.end
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call4, i32 0, i32 3
  %17 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %object.i, align 8
  %tobool6.not = icmp eq ptr %18, null
  br i1 %tobool6.not, label %_uobj_get_obj_read.exit.cleanup_crit_edge, label %if.end8

_uobj_get_obj_read.exit.cleanup_crit_edge:        ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 8
  %21 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %attr, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %2, align 4
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %6, align 4
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %18, align 4
  %modify_srq = getelementptr inbounds %struct.ib_device, ptr %26, i32 0, i32 1, i32 43
  %27 = ptrtoint ptr %modify_srq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %modify_srq, align 4
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %0, align 4
  %call12 = call i32 %28(ptr noundef nonnull %18, ptr noundef nonnull %attr, i32 noundef %30, ptr noundef %attrs) #13
  %uobject = getelementptr inbounds %struct.ib_srq, ptr %18, i32 0, i32 2
  %31 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %uobject, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %32, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %_uobj_get_obj_read.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %_uobj_get_obj_read.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %attr) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_post_srq_recv(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_post_srq_recv, align 8
  %resp = alloca %struct.ib_uverbs_post_srq_recv_resp, align 4
  %bad_wr = alloca ptr, align 4
  %iter = alloca %struct.uverbs_req_iter, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd) #13
  %0 = getelementptr inbounds %struct.ib_uverbs_post_srq_recv, ptr %cmd, i32 0, i32 1
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #13
  %2 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %resp, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bad_wr) #13
  %3 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %bad_wr, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #13
  %4 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !55
  %5 = getelementptr inbounds %struct.uverbs_req_iter, ptr %iter, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !55
  %call = call fastcc i32 @uverbs_request_start(ptr noundef %attrs, ptr noundef nonnull %iter, ptr noundef nonnull %cmd, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.ib_uverbs_post_srq_recv, ptr %cmd, i32 0, i32 4
  %8 = getelementptr inbounds %struct.ib_uverbs_post_srq_recv, ptr %cmd, i32 0, i32 3
  %9 = getelementptr inbounds %struct.ib_uverbs_post_srq_recv, ptr %cmd, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %8, align 8
  %call1 = call fastcc ptr @ib_uverbs_unmarshall_recv(ptr noundef nonnull %iter, i32 noundef %11, i32 noundef %13, i32 noundef %15)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %17 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %22, i32 noundef 10240) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %23 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ufile, align 8
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %0, align 8
  %conv8 = zext i32 %26 to i64
  %call9 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i, ptr noundef %24, i64 noundef %conv8, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end5.out_crit_edge, label %_uobj_get_obj_read.exit

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

_uobj_get_obj_read.exit:                          ; preds = %if.end5
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call9, i32 0, i32 3
  %27 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %object.i, align 8
  %tobool11.not = icmp eq ptr %28, null
  br i1 %tobool11.not, label %_uobj_get_obj_read.exit.out_crit_edge, label %if.end13

_uobj_get_obj_read.exit.out_crit_edge:            ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end13:                                         ; preds = %_uobj_get_obj_read.exit
  %29 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %resp, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %28, align 4
  %post_srq_recv = getelementptr inbounds %struct.ib_device, ptr %31, i32 0, i32 1, i32 13
  %32 = ptrtoint ptr %post_srq_recv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %post_srq_recv, align 4
  %call16 = call i32 %33(ptr noundef nonnull %28, ptr noundef %call1, ptr noundef nonnull %bad_wr) #13
  %uobject = getelementptr inbounds %struct.ib_srq, ptr %28, i32 0, i32 2
  %34 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %uobject, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %35, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool18.not = icmp eq i32 %call16, 0
  %tobool20.not64 = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool18.not, i1 true, i1 %tobool20.not64
  br i1 %or.cond, label %if.end13.if.end27_crit_edge, label %for.body.lr.ph

if.end13.if.end27_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

for.body.lr.ph:                                   ; preds = %if.end13
  %36 = ptrtoint ptr %bad_wr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bad_wr, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %next.065 = phi ptr [ %call1, %for.body.lr.ph ], [ %41, %for.inc.for.body_crit_edge ]
  %38 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %resp, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %resp, align 4
  %cmp22 = icmp eq ptr %next.065, %37
  br i1 %cmp22, label %for.body.if.end27_crit_edge, label %for.inc

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

for.inc:                                          ; preds = %for.body
  %40 = ptrtoint ptr %next.065 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %next.065, align 8
  %tobool20.not = icmp eq ptr %41, null
  br i1 %tobool20.not, label %for.inc.if.end27_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.if.end27_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.end27:                                         ; preds = %for.inc.if.end27_crit_edge, %for.body.if.end27_crit_edge, %if.end13.if.end27_crit_edge
  %call28 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  %spec.select = select i1 %tobool29.not, i32 %call16, i32 %call28
  br label %out

out:                                              ; preds = %if.end27, %_uobj_get_obj_read.exit.out_crit_edge, %if.end5.out_crit_edge
  %ret.0 = phi i32 [ -22, %_uobj_get_obj_read.exit.out_crit_edge ], [ %spec.select, %if.end27 ], [ -22, %if.end5.out_crit_edge ]
  %tobool32.not66 = icmp eq ptr %call1, null
  br i1 %tobool32.not66, label %out.cleanup_crit_edge, label %out.while.body_crit_edge

out.while.body_crit_edge:                         ; preds = %out
  br label %while.body

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %out.while.body_crit_edge
  %wr.067 = phi ptr [ %43, %while.body.while.body_crit_edge ], [ %call1, %out.while.body_crit_edge ]
  %42 = ptrtoint ptr %wr.067 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wr.067, align 8
  call void @kfree(ptr noundef nonnull %wr.067) #13
  %tobool32.not = icmp eq ptr %43, null
  br i1 %tobool32.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %out.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ %ret.0, %out.cleanup_crit_edge ], [ %ret.0, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bad_wr) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_query_srq(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_query_srq, align 8
  %resp = alloca %struct.ib_uverbs_query_srq_resp, align 4
  %attr = alloca %struct.ib_srq_attr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #13
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %resp) #13
  %1 = getelementptr inbounds %struct.ib_uverbs_query_srq_resp, ptr %resp, i32 0, i32 1
  %2 = getelementptr inbounds %struct.ib_uverbs_query_srq_resp, ptr %resp, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %attr) #13
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %attr, align 4, !annotation !55
  %4 = getelementptr inbounds %struct.ib_srq_attr, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !55
  %6 = getelementptr inbounds %struct.ib_srq_attr, ptr %attr, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !55
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds %struct.ib_uverbs_query_srq, ptr %cmd, i32 0, i32 1
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
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %14, i32 noundef 10240) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %15 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ufile, align 8
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %8, align 8
  %conv3 = zext i32 %18 to i64
  %call4 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i, ptr noundef %16, i64 noundef %conv3, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.cleanup_crit_edge, label %_uobj_get_obj_read.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

_uobj_get_obj_read.exit:                          ; preds = %if.end
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call4, i32 0, i32 3
  %19 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %object.i, align 8
  %tobool6.not = icmp eq ptr %20, null
  br i1 %tobool6.not, label %_uobj_get_obj_read.exit.cleanup_crit_edge, label %if.end8

_uobj_get_obj_read.exit.cleanup_crit_edge:        ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %_uobj_get_obj_read.exit
  %call9 = call i32 @ib_query_srq(ptr noundef nonnull %20, ptr noundef nonnull %attr) #13
  %uobject = getelementptr inbounds %struct.ib_srq, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %uobject, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %22, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %23 = getelementptr inbounds i8, ptr %resp, i32 12
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %23, align 4
  %25 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %attr, align 4
  %27 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %resp, align 4
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %4, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %1, align 4
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %6, align 4
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %2, align 4
  %call17 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end8.cleanup_crit_edge, %_uobj_get_obj_read.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end13 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %_uobj_get_obj_read.exit.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %attr) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_close_xrcd(ptr noundef %attrs) #1 align 64 {
entry:
  %cmd = alloca %struct.ib_uverbs_close_xrcd, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #13
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !55
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %1 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %6, i32 noundef 20480) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd, align 4
  %call2 = call i32 @__uobj_perform_destroy(ptr noundef %spec.select.i, i32 noundef %8, ptr noundef %attrs) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_open_qp(ptr noundef %attrs) #1 align 64 {
entry:
  %resp = alloca %struct.ib_uverbs_create_qp_resp, align 4
  %cmd = alloca %struct.ib_uverbs_open_qp, align 8
  %attr = alloca %struct.ib_qp_open_attr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %resp) #13
  %0 = call ptr @memset(ptr %resp, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #13
  %1 = getelementptr inbounds %struct.ib_uverbs_open_qp, ptr %cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.ib_uverbs_open_qp, ptr %cmd, i32 0, i32 2
  %3 = getelementptr inbounds %struct.ib_uverbs_open_qp, ptr %cmd, i32 0, i32 3
  %4 = getelementptr inbounds %struct.ib_uverbs_open_qp, ptr %cmd, i32 0, i32 4
  %5 = call ptr @memset(ptr %cmd, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %attr) #13
  %6 = call ptr @memset(ptr %attr, i32 0, i32 16)
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %7 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %12, i32 noundef 8192) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %call.i = call ptr @rdma_alloc_begin_uobject(ptr noundef %spec.select.i, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %14 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ufile, align 8
  %device8 = getelementptr inbounds %struct.ib_uverbs_file, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %device8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device8, align 4
  %uapi9 = getelementptr inbounds %struct.ib_uverbs_device, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %uapi9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %uapi9, align 4
  %call4.i82 = call ptr @radix_tree_lookup(ptr noundef %19, i32 noundef 20480) #13
  %tobool.not.i83 = icmp eq ptr %call4.i82, null
  %spec.select.i84 = select i1 %tobool.not.i83, ptr inttoptr (i32 -2 to ptr), ptr %call4.i82
  %20 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ufile, align 8
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %2, align 8
  %conv12 = zext i32 %23 to i64
  %call13 = call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i84, ptr noundef %21, i64 noundef %conv12, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i85 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85, label %if.end6.err_put_crit_edge, label %if.end16

if.end6.err_put_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put

if.end16:                                         ; preds = %if.end6
  %object = getelementptr inbounds %struct.ib_uobject, ptr %call13, i32 0, i32 3
  %24 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %object, align 8
  %tobool17.not = icmp eq ptr %25, null
  br i1 %tobool17.not, label %if.end16.err_xrcd_crit_edge, label %if.end19

if.end16.err_xrcd_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_xrcd

if.end19:                                         ; preds = %if.end16
  %26 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ib_uverbs_qp_event_handler, ptr %attr, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %3, align 4
  %qp_num = getelementptr inbounds %struct.ib_qp_open_attr, ptr %attr, i32 0, i32 2
  %29 = ptrtoint ptr %qp_num to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %qp_num, align 4
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %4, align 8
  %conv20 = zext i8 %31 to i32
  %qp_type21 = getelementptr inbounds %struct.ib_qp_open_attr, ptr %attr, i32 0, i32 3
  %32 = ptrtoint ptr %qp_type21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv20, ptr %qp_type21, align 4
  %event_list = getelementptr inbounds %struct.ib_uevent_object, ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %event_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %event_list, ptr %event_list, align 4
  %prev.i = getelementptr inbounds %struct.ib_uevent_object, ptr %call.i, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %event_list, ptr %prev.i, align 4
  %mcast_list = getelementptr inbounds %struct.ib_uqp_object, ptr %call.i, i32 0, i32 2
  %35 = ptrtoint ptr %mcast_list to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %mcast_list, ptr %mcast_list, align 4
  %prev.i86 = getelementptr inbounds %struct.ib_uqp_object, ptr %call.i, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %prev.i86 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %mcast_list, ptr %prev.i86, align 4
  %call22 = call ptr @ib_open_qp(ptr noundef nonnull %25, ptr noundef nonnull %attr) #13
  %cmp.i87 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %call22 to i32
  br label %err_xrcd

if.end26:                                         ; preds = %if.end19
  %object28 = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %object28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call22, ptr %object28, align 8
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %1, align 8
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %call.i, align 8
  %uxrcd = getelementptr inbounds %struct.ib_uqp_object, ptr %call.i, i32 0, i32 3
  %42 = ptrtoint ptr %uxrcd to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call13, ptr %uxrcd, align 4
  %refcnt = getelementptr inbounds %struct.ib_uxrcd_object, ptr %call13, i32 0, i32 1
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %43 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !51
  %uobject34 = getelementptr inbounds %struct.ib_qp, ptr %call22, i32 0, i32 14
  %44 = ptrtoint ptr %uobject34 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %uobject34, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %call13, i32 noundef 0) #13
  %uobject.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 4
  %45 = ptrtoint ptr %uobject.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %uobject.i, align 8
  %tobool.not.i88 = icmp eq ptr %46, null
  br i1 %tobool.not.i88, label %if.end26.uobj_finalize_uobj_create.exit_crit_edge, label %do.end.i, !prof !54

if.end26.uobj_finalize_uobj_create.exit_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %uobj_finalize_uobj_create.exit

do.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 96, i32 noundef 9, ptr noundef null) #13
  br label %uobj_finalize_uobj_create.exit

uobj_finalize_uobj_create.exit:                   ; preds = %do.end.i, %if.end26.uobj_finalize_uobj_create.exit_crit_edge
  %47 = ptrtoint ptr %uobject.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %uobject.i, align 8
  %qp_num37 = getelementptr inbounds %struct.ib_qp, ptr %call22, i32 0, i32 19
  %48 = ptrtoint ptr %qp_num37 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qp_num37, align 4
  %qpn38 = getelementptr inbounds %struct.ib_uverbs_create_qp_resp, ptr %resp, i32 0, i32 1
  %50 = ptrtoint ptr %qpn38 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %qpn38, align 4
  %id = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 6
  %51 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id, align 8
  %53 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %resp, align 4
  %call41 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 32)
  br label %cleanup

err_xrcd:                                         ; preds = %if.then24, %if.end16.err_xrcd_crit_edge
  %ret.0 = phi i32 [ %37, %if.then24 ], [ -22, %if.end16.err_xrcd_crit_edge ]
  call void @rdma_lookup_put_uobject(ptr noundef %call13, i32 noundef 0) #13
  br label %err_put

err_put:                                          ; preds = %err_xrcd, %if.end6.err_put_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_xrcd ], [ -22, %if.end6.err_put_crit_edge ]
  call void @rdma_alloc_abort_uobject(ptr noundef %call.i, ptr noundef %attrs, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %err_put, %uobj_finalize_uobj_create.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then4 ], [ %ret.1, %err_put ], [ %call41, %uobj_finalize_uobj_create.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %attr) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %resp) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_uverbs_open_xrcd(ptr noundef %attrs) #1 align 64 {
entry:
  %resp = alloca %struct.ib_uverbs_open_xrcd_resp, align 4
  %cmd = alloca %struct.ib_uverbs_open_xrcd, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %0 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #13
  %4 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %resp, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #13
  %5 = getelementptr inbounds %struct.ib_uverbs_open_xrcd, ptr %cmd, i32 0, i32 2
  %6 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  %call = call fastcc i32 @uverbs_request(ptr noundef %attrs, ptr noundef nonnull %cmd, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.ib_uverbs_open_xrcd, ptr %cmd, i32 0, i32 1
  %xrcd_tree_mutex = getelementptr inbounds %struct.ib_uverbs_device, ptr %3, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %xrcd_tree_mutex, i32 noundef 0) #13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.not = icmp eq i32 %9, -1
  br i1 %cmp.not, label %if.end.if.end20_crit_edge, label %if.then1

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then1:                                         ; preds = %if.end
  %call.i = call i32 @__fdget(i32 noundef %9) #13, !noalias !61
  %and.i.i = and i32 %call.i, -4
  %10 = inttoptr i32 %and.i.i to ptr
  %and1.i.i = and i32 %call.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not, label %if.then1.if.end61_crit_edge, label %if.end5

if.then1.if.end61_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.end5:                                          ; preds = %if.then1
  %f_inode.i = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_inode.i, align 8
  %xrcd_tree.i.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %xrcd_tree.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %p.015.i.i = load ptr, ptr %xrcd_tree.i.i, align 4
  %tobool.not16.i.i = icmp eq ptr %p.015.i.i, null
  br i1 %tobool.not16.i.i, label %if.end5.land.lhs.true_crit_edge, label %if.end5.while.body.i.i_crit_edge

if.end5.while.body.i.i_crit_edge:                 ; preds = %if.end5
  br label %while.body.i.i

if.end5.land.lhs.true_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

while.body.i.i:                                   ; preds = %if.end7.i.i.while.body.i.i_crit_edge, %if.end5.while.body.i.i_crit_edge
  %p.017.i.i = phi ptr [ %p.0.i.i, %if.end7.i.i.while.body.i.i_crit_edge ], [ %p.015.i.i, %if.end5.while.body.i.i_crit_edge ]
  %inode2.i.i = getelementptr inbounds %struct.xrcd_table_entry, ptr %p.017.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %inode2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %inode2.i.i, align 4
  %cmp.i.i = icmp ugt ptr %15, %12
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %p.017.i.i, i32 0, i32 2
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %cmp4.i.i = icmp ult ptr %15, %12
  br i1 %cmp4.i.i, label %if.then5.i.i, label %find_xrcd.exit

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %p.017.i.i, i32 0, i32 1
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %if.then.i.i
  %p.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then5.i.i ]
  %16 = ptrtoint ptr %p.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %p.0.i.i = load ptr, ptr %p.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %p.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.land.lhs.true_crit_edge, label %if.end7.i.i.while.body.i.i_crit_edge

if.end7.i.i.while.body.i.i_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

if.end7.i.i.land.lhs.true_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

find_xrcd.exit:                                   ; preds = %if.else.i.i
  %xrcd.i = getelementptr inbounds %struct.xrcd_table_entry, ptr %p.017.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %xrcd.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xrcd.i, align 4
  %tobool9.not = icmp eq ptr %18, null
  br i1 %tobool9.not, label %find_xrcd.exit.land.lhs.true_crit_edge, label %land.lhs.true14.critedge

find_xrcd.exit.land.lhs.true_crit_edge:           ; preds = %find_xrcd.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %find_xrcd.exit.land.lhs.true_crit_edge, %if.end7.i.i.land.lhs.true_crit_edge, %if.end5.land.lhs.true_crit_edge
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 4
  %and = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %land.lhs.true.err_tree_mutex_unlock_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

land.lhs.true.err_tree_mutex_unlock_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_tree_mutex_unlock

land.lhs.true14.critedge:                         ; preds = %find_xrcd.exit
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %5, align 4
  %and16 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %land.lhs.true14.critedge.if.end20_crit_edge, label %land.lhs.true14.critedge.err_tree_mutex_unlock_crit_edge

land.lhs.true14.critedge.err_tree_mutex_unlock_crit_edge: ; preds = %land.lhs.true14.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_tree_mutex_unlock

land.lhs.true14.critedge.if.end20_crit_edge:      ; preds = %land.lhs.true14.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true14.critedge.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %xrcd.0 = phi ptr [ %18, %land.lhs.true14.critedge.if.end20_crit_edge ], [ null, %if.end.if.end20_crit_edge ], [ null, %land.lhs.true.if.end20_crit_edge ]
  %inode.0 = phi ptr [ %12, %land.lhs.true14.critedge.if.end20_crit_edge ], [ null, %if.end.if.end20_crit_edge ], [ %12, %land.lhs.true.if.end20_crit_edge ]
  %f.sroa.0.0 = phi ptr [ %10, %land.lhs.true14.critedge.if.end20_crit_edge ], [ null, %if.end.if.end20_crit_edge ], [ %10, %land.lhs.true.if.end20_crit_edge ]
  %f.sroa.10.0 = phi i32 [ %and1.i.i, %land.lhs.true14.critedge.if.end20_crit_edge ], [ 0, %if.end.if.end20_crit_edge ], [ %and1.i.i, %land.lhs.true.if.end20_crit_edge ]
  %23 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ufile, align 8
  %device22 = getelementptr inbounds %struct.ib_uverbs_file, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %device22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device22, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %uapi, align 4
  %call4.i = call ptr @radix_tree_lookup(ptr noundef %28, i32 noundef 20480) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %call.i115 = call ptr @rdma_alloc_begin_uobject(ptr noundef %spec.select.i, ptr noundef %attrs) #13
  %cmp.i.i116 = icmp ugt ptr %call.i115, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i116, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %call.i115 to i32
  br label %err_tree_mutex_unlock

if.end28:                                         ; preds = %if.end20
  %tobool29.not = icmp eq ptr %xrcd.0, null
  br i1 %tobool29.not, label %if.then30, label %if.end28.if.end36_crit_edge

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then30:                                        ; preds = %if.end28
  %context.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %30 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %context.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call31 = call ptr @ib_alloc_xrcd_user(ptr noundef %33, ptr noundef %inode.0, ptr noundef %attrs) #13
  %cmp.i118 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %if.then33, label %if.then30.if.end36_crit_edge

if.then30.if.end36_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %call31 to i32
  br label %err

if.end36:                                         ; preds = %if.then30.if.end36_crit_edge, %if.end28.if.end36_crit_edge
  %xrcd.1 = phi ptr [ %xrcd.0, %if.end28.if.end36_crit_edge ], [ %call31, %if.then30.if.end36_crit_edge ]
  %refcnt = getelementptr inbounds %struct.ib_uxrcd_object, ptr %call.i115, i32 0, i32 1
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  %35 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 0, ptr %refcnt, align 4
  %object = getelementptr inbounds %struct.ib_uobject, ptr %call.i115, i32 0, i32 3
  %36 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %xrcd.1, ptr %object, align 8
  %tobool37.not = icmp eq ptr %inode.0, null
  br i1 %tobool37.not, label %if.end36.if.end46_crit_edge, label %if.then38

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then38:                                        ; preds = %if.end36
  br i1 %tobool29.not, label %if.then40, label %if.then38.if.end45_crit_edge

if.then38.if.end45_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then40:                                        ; preds = %if.then38
  %xrcd_tree.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %3, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3264, i32 noundef 20) #17
  %tobool.not.i119 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i119, label %if.then40.err_dealloc_xrcd_crit_edge, label %if.end.i120

if.then40.err_dealloc_xrcd_crit_edge:             ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_dealloc_xrcd

if.end.i120:                                      ; preds = %if.then40
  %xrcd2.i = getelementptr inbounds %struct.xrcd_table_entry, ptr %call7.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %xrcd2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %xrcd.1, ptr %xrcd2.i, align 4
  %inode3.i = getelementptr inbounds %struct.xrcd_table_entry, ptr %call7.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %inode3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %inode.0, ptr %inode3.i, align 8
  %40 = ptrtoint ptr %xrcd_tree.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %xrcd_tree.i, align 4
  %tobool4.not37.i = icmp eq ptr %41, null
  br i1 %tobool4.not37.i, label %if.end.i120.xrcd_table_insert.exit_crit_edge, label %if.end.i120.while.body.i_crit_edge

if.end.i120.while.body.i_crit_edge:               ; preds = %if.end.i120
  br label %while.body.i

if.end.i120.xrcd_table_insert.exit_crit_edge:     ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #15
  br label %xrcd_table_insert.exit

while.body.i:                                     ; preds = %if.end12.i.while.body.i_crit_edge, %if.end.i120.while.body.i_crit_edge
  %42 = phi ptr [ %46, %if.end12.i.while.body.i_crit_edge ], [ %41, %if.end.i120.while.body.i_crit_edge ]
  %inode5.i = getelementptr inbounds %struct.xrcd_table_entry, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %inode5.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %inode5.i, align 4
  %cmp.i121 = icmp ugt ptr %44, %inode.0
  br i1 %cmp.i121, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %42, i32 0, i32 2
  br label %if.end12.i

if.else.i:                                        ; preds = %while.body.i
  %cmp8.i = icmp ult ptr %44, %inode.0
  br i1 %cmp8.i, label %if.then9.i, label %if.else10.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %42, i32 0, i32 1
  br label %if.end12.i

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %err_dealloc_xrcd

if.end12.i:                                       ; preds = %if.then9.i, %if.then6.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then6.i ], [ %rb_right.i, %if.then9.i ]
  %45 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %p.1.i, align 4
  %tobool4.not.i = icmp eq ptr %46, null
  br i1 %tobool4.not.i, label %while.cond.while.end_crit_edge.i, label %if.end12.i.while.body.i_crit_edge

if.end12.i.while.body.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.le.i = ptrtoint ptr %42 to i32
  br label %xrcd_table_insert.exit

xrcd_table_insert.exit:                           ; preds = %while.cond.while.end_crit_edge.i, %if.end.i120.xrcd_table_insert.exit_crit_edge
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %xrcd_tree.i, %if.end.i120.xrcd_table_insert.exit_crit_edge ]
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end.i120.xrcd_table_insert.exit_crit_edge ]
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %parent.0.lcssa.i, ptr %call7.i.i, align 8
  %rb_right.i.i122 = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %rb_right.i.i122 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %rb_right.i.i122, align 4
  %rb_left.i.i123 = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %rb_left.i.i123 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %rb_left.i.i123, align 8
  %50 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i.i, ptr %p.0.lcssa.i, align 4
  call void @rb_insert_color(ptr noundef nonnull %call7.i.i, ptr noundef %xrcd_tree.i) #13
  %call15.i = call ptr @igrab(ptr noundef nonnull %inode.0) #13
  br label %if.end45

if.end45:                                         ; preds = %xrcd_table_insert.exit, %if.then38.if.end45_crit_edge
  %usecnt = getelementptr inbounds %struct.ib_xrcd, ptr %xrcd.1, i32 0, i32 1
  %call.i.i114 = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #13
  %51 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #13, !srcloc !51
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end36.if.end46_crit_edge
  %tobool48.not = icmp eq ptr %f.sroa.0.0, null
  %and.i = and i32 %f.sroa.10.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i125 = icmp eq i32 %and.i, 0
  %or.cond = select i1 %tobool48.not, i1 true, i1 %tobool.not.i125
  br i1 %or.cond, label %if.end46.if.end50_crit_edge, label %if.then.i126

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then.i126:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  call void @fput(ptr noundef nonnull %f.sroa.0.0) #13
  br label %if.end50

if.end50:                                         ; preds = %if.then.i126, %if.end46.if.end50_crit_edge
  call void @mutex_unlock(ptr noundef %xrcd_tree_mutex) #13
  %uobject.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 4
  %52 = ptrtoint ptr %uobject.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %uobject.i, align 8
  %tobool.not.i128 = icmp eq ptr %53, null
  br i1 %tobool.not.i128, label %if.end50.uobj_finalize_uobj_create.exit_crit_edge, label %do.end.i, !prof !54

if.end50.uobj_finalize_uobj_create.exit_crit_edge: ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %uobj_finalize_uobj_create.exit

do.end.i:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 96, i32 noundef 9, ptr noundef null) #13
  br label %uobj_finalize_uobj_create.exit

uobj_finalize_uobj_create.exit:                   ; preds = %do.end.i, %if.end50.uobj_finalize_uobj_create.exit_crit_edge
  %54 = ptrtoint ptr %uobject.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i115, ptr %uobject.i, align 8
  %id = getelementptr inbounds %struct.ib_uobject, ptr %call.i115, i32 0, i32 6
  %55 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id, align 8
  %57 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %resp, align 4
  %call54 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 4)
  br label %cleanup

err_dealloc_xrcd:                                 ; preds = %if.else10.i, %if.then40.err_dealloc_xrcd_crit_edge
  %retval.0.i124.ph = phi i32 [ -12, %if.then40.err_dealloc_xrcd_crit_edge ], [ -17, %if.else10.i ]
  %58 = call ptr @memset(ptr %attrs, i32 0, i32 16)
  %call56 = call i32 @ib_dealloc_xrcd_user(ptr noundef %xrcd.1, ptr noundef %attrs) #13
  br label %err

err:                                              ; preds = %err_dealloc_xrcd, %if.then33
  %ret.0 = phi i32 [ %retval.0.i124.ph, %err_dealloc_xrcd ], [ %34, %if.then33 ]
  call void @rdma_alloc_abort_uobject(ptr noundef %call.i115, ptr noundef %attrs, i1 noundef zeroext false) #13
  br label %err_tree_mutex_unlock

err_tree_mutex_unlock:                            ; preds = %err, %if.then26, %land.lhs.true14.critedge.err_tree_mutex_unlock_crit_edge, %land.lhs.true.err_tree_mutex_unlock_crit_edge
  %f.sroa.0.1 = phi ptr [ %f.sroa.0.0, %if.then26 ], [ %f.sroa.0.0, %err ], [ %10, %land.lhs.true.err_tree_mutex_unlock_crit_edge ], [ %10, %land.lhs.true14.critedge.err_tree_mutex_unlock_crit_edge ]
  %f.sroa.10.1 = phi i32 [ %f.sroa.10.0, %if.then26 ], [ %f.sroa.10.0, %err ], [ %and1.i.i, %land.lhs.true.err_tree_mutex_unlock_crit_edge ], [ %and1.i.i, %land.lhs.true14.critedge.err_tree_mutex_unlock_crit_edge ]
  %ret.1 = phi i32 [ %29, %if.then26 ], [ %ret.0, %err ], [ -11, %land.lhs.true.err_tree_mutex_unlock_crit_edge ], [ -22, %land.lhs.true14.critedge.err_tree_mutex_unlock_crit_edge ]
  %tobool59.not = icmp eq ptr %f.sroa.0.1, null
  %and.i130 = and i32 %f.sroa.10.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %tobool.not.i131 = icmp eq i32 %and.i130, 0
  %or.cond146 = select i1 %tobool59.not, i1 true, i1 %tobool.not.i131
  br i1 %or.cond146, label %err_tree_mutex_unlock.if.end61_crit_edge, label %if.then.i132

err_tree_mutex_unlock.if.end61_crit_edge:         ; preds = %err_tree_mutex_unlock
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then.i132:                                     ; preds = %err_tree_mutex_unlock
  call void @__sanitizer_cov_trace_pc() #15
  call void @fput(ptr noundef nonnull %f.sroa.0.1) #13
  br label %if.end61

if.end61:                                         ; preds = %if.then.i132, %err_tree_mutex_unlock.if.end61_crit_edge, %if.then1.if.end61_crit_edge
  %ret.1145 = phi i32 [ %ret.1, %err_tree_mutex_unlock.if.end61_crit_edge ], [ %ret.1, %if.then.i132 ], [ -9, %if.then1.if.end61_crit_edge ]
  call void @mutex_unlock(ptr noundef %xrcd_tree_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %uobj_finalize_uobj_create.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1145, %if.end61 ], [ %call54, %uobj_finalize_uobj_create.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uverbs_request(ptr nocapture noundef readonly %attrs, ptr noundef %req, i32 noundef %req_len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ucore = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 1
  %0 = ptrtoint ptr %ucore to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucore, align 8
  %inlen = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inlen, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 %req_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp9.i.i = icmp slt i32 %4, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %entry
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.return_crit_edge, label %if.then27.i.i, !prof !54

land.rhs16.i.i.return_crit_edge:                  ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %return

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef %req, i32 noundef %4, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %4, i32 -1226833920) #18, !srcloc !57
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !54

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %req, i32 noundef %4) #13
  %6 = tail call i32 @llvm.read_register.i32(metadata !37) #13
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !58
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !60
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %req, ptr noundef %1, i32 noundef %4) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #13, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !60
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !54

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %req, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %return

if.end:                                           ; preds = %if.end.i.i
  %10 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inlen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %req_len)
  %cmp4 = icmp ult i32 %11, %req_len
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %req, i32 %11
  %sub = sub i32 %req_len, %11
  %12 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %if.end24

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %req_len)
  %cmp12 = icmp ugt i32 %11, %req_len
  br i1 %cmp12, label %if.then13, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then13:                                        ; preds = %if.else
  %sub19 = sub i32 %11, %req_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub19)
  %cmp.i = icmp ugt i32 %sub19, 65535
  br i1 %cmp.i, label %if.then13.return_crit_edge, label %if.end.i

if.then13.return_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i:                                         ; preds = %if.then13
  %13 = ptrtoint ptr %ucore to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ucore, align 8
  %add.ptr16 = getelementptr i8, ptr %14, i32 %req_len
  %call.i = tail call ptr @memdup_user(ptr noundef %add.ptr16, i32 noundef %sub19) #13
  %cmp.i.i41 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i41, label %if.end.i.return_crit_edge, label %ib_is_buffer_cleared.exit

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

ib_is_buffer_cleared.exit:                        ; preds = %if.end.i
  %call4.i = tail call ptr @memchr_inv(ptr noundef %call.i, i32 noundef 0, i32 noundef %sub19) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  tail call void @kfree(ptr noundef %call.i) #13
  br i1 %tobool.not.i, label %ib_is_buffer_cleared.exit.if.end24_crit_edge, label %ib_is_buffer_cleared.exit.return_crit_edge

ib_is_buffer_cleared.exit.return_crit_edge:       ; preds = %ib_is_buffer_cleared.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

ib_is_buffer_cleared.exit.if.end24_crit_edge:     ; preds = %ib_is_buffer_cleared.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.end24:                                         ; preds = %ib_is_buffer_cleared.exit.if.end24_crit_edge, %if.else.if.end24_crit_edge, %if.then5
  br label %return

return:                                           ; preds = %if.end24, %ib_is_buffer_cleared.exit.return_crit_edge, %if.end.i.return_crit_edge, %if.then13.return_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -95, %ib_is_buffer_cleared.exit.return_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.return_crit_edge ], [ -95, %if.then13.return_crit_edge ], [ -95, %if.end.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_lookup_get_uobject(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_create_user_ah(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef %resp, i32 noundef %resp_len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_present.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %0 = ptrtoint ptr %attr_present.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %attr_present.i, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 @uverbs_copy_to_struct_or_zero(ptr noundef %attrs, i32 noundef 1, ptr noundef %resp, i32 noundef %resp_len) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %outbuf = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %outbuf, align 4
  %outlen = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %outlen, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %resp_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9.i.i = icmp slt i32 %7, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !54

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  tail call void @__check_object_size(ptr noundef %resp, i32 noundef %7, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %7, i32 -1226833920) #18, !srcloc !56
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %resp, i32 noundef %7) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef %resp, i32 noundef %7) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %7, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %7, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool.not, label %if.end5, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %copy_to_user.exit
  %9 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %resp_len)
  %cmp8 = icmp ugt i32 %10, %resp_len
  br i1 %cmp8, label %if.then9, label %if.end5.if.end18_crit_edge

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then9:                                         ; preds = %if.end5
  %11 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %outbuf, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %resp_len
  %sub = sub i32 %10, %resp_len
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %sub, i32 -1226833920) #18, !srcloc !64
  %asmresult.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp.i, label %if.then.i33, label %if.then9.clear_user.exit_crit_edge

if.then9.clear_user.exit_crit_edge:               ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_user.exit

if.then.i33:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %14 = tail call i32 @llvm.read_register.i32(metadata !37) #13
  %and.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #8, !srcloc !58
  %and.i.i.i = and i32 %16, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #13, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !60
  %call1.i.i = tail call i32 @arm_clear_user(ptr noundef %add.ptr, i32 noundef %sub) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #13, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !60
  br label %clear_user.exit

clear_user.exit:                                  ; preds = %if.then.i33, %if.then9.clear_user.exit_crit_edge
  %n.addr.0.i34 = phi i32 [ %call1.i.i, %if.then.i33 ], [ %sub, %if.then9.clear_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i34)
  %tobool15.not = icmp eq i32 %n.addr.0.i34, 0
  br i1 %tobool15.not, label %clear_user.exit.if.end18_crit_edge, label %clear_user.exit.cleanup_crit_edge

clear_user.exit.cleanup_crit_edge:                ; preds = %clear_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

clear_user.exit.if.end18_crit_edge:               ; preds = %clear_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.end18:                                         ; preds = %clear_user.exit.if.end18_crit_edge, %if.end5.if.end18_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %clear_user.exit.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %if.end18 ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %clear_user.exit.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_alloc_begin_uobject(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_lookup_put_uobject(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_copy_to_struct_or_zero(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_alloc_abort_uobject(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__uobj_perform_destroy(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_init_event_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_cq(ptr noundef %attrs, ptr nocapture noundef readonly %cmd) unnamed_addr #1 align 64 {
entry:
  %resp = alloca %struct.ib_uverbs_ex_create_cq_resp, align 8
  %attr = alloca %struct.ib_cq_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %resp) #13
  %0 = call ptr @memset(ptr %resp, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %attr) #13
  %1 = call ptr @memset(ptr %attr, i32 0, i32 12)
  %comp_vector = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %comp_vector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %comp_vector, align 4
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %4 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %num_comp_vectors = getelementptr inbounds %struct.ib_uverbs_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_comp_vectors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %9)
  %cmp.not = icmp ult i32 %3, %9
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %7, i32 0, i32 13
  %10 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %uapi, align 4
  %call4.i = tail call ptr @radix_tree_lookup(ptr noundef %11, i32 noundef 6144) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %call.i = tail call ptr @rdma_alloc_begin_uobject(ptr noundef %spec.select.i, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %context.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %13 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %context.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %comp_channel = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, ptr %cmd, i32 0, i32 3
  %17 = ptrtoint ptr %comp_channel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %comp_channel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp8 = icmp sgt i32 %18, -1
  br i1 %cmp8, label %if.then9, label %if.end7.if.end17_crit_edge

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then9:                                         ; preds = %if.end7
  %19 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ufile, align 8
  %device.i = getelementptr inbounds %struct.ib_uverbs_file, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device.i, align 4
  %uapi.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %uapi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %uapi.i, align 4
  %call4.i.i = tail call ptr @radix_tree_lookup(ptr noundef %24, i32 noundef 4096) #13
  %tobool.not.i.i = icmp eq ptr %call4.i.i, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i.i
  %25 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ufile, align 8
  %conv2.i131 = zext i32 %18 to i64
  %call3.i = tail call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i.i, ptr noundef %26, i64 noundef %conv2.i131, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i120 = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i120, label %if.then14, label %if.end.i

if.end.i:                                         ; preds = %if.then9
  %ref.i.i = getelementptr inbounds %struct.ib_uobject, ptr %call3.i, i32 0, i32 7
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #13
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #13, !srcloc !65
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !52

if.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %28 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %.not.i.i.i.i.i.i = icmp sgt i32 %28, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i._ib_uverbs_lookup_comp_file.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !54

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i._ib_uverbs_lookup_comp_file.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_ib_uverbs_lookup_comp_file.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #13
  br label %_ib_uverbs_lookup_comp_file.exit

_ib_uverbs_lookup_comp_file.exit:                 ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i._ib_uverbs_lookup_comp_file.exit_crit_edge
  tail call void @rdma_lookup_put_uobject(ptr noundef %call3.i, i32 noundef 0) #13
  br label %if.end17

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %call3.i to i32
  br label %err

if.end17:                                         ; preds = %_ib_uverbs_lookup_comp_file.exit, %if.end7.if.end17_crit_edge
  %ev_file.0 = phi ptr [ %call3.i, %_ib_uverbs_lookup_comp_file.exit ], [ null, %if.end7.if.end17_crit_edge ]
  %30 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %cmd, align 8
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %call.i, align 8
  %comp_list = getelementptr inbounds %struct.ib_ucq_object, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %comp_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %comp_list, ptr %comp_list, align 4
  %prev.i = getelementptr inbounds %struct.ib_ucq_object, ptr %call.i, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %comp_list, ptr %prev.i, align 4
  %event_list = getelementptr inbounds %struct.ib_uevent_object, ptr %call.i, i32 0, i32 2
  %35 = ptrtoint ptr %event_list to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %event_list, ptr %event_list, align 4
  %prev.i122 = getelementptr inbounds %struct.ib_uevent_object, ptr %call.i, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %prev.i122 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %event_list, ptr %prev.i122, align 4
  %cqe = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, ptr %cmd, i32 0, i32 1
  %37 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cqe, align 8
  %39 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %attr, align 4
  %40 = ptrtoint ptr %comp_vector to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %comp_vector, align 4
  %comp_vector22 = getelementptr inbounds %struct.ib_cq_init_attr, ptr %attr, i32 0, i32 1
  %42 = ptrtoint ptr %comp_vector22 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %comp_vector22, align 4
  %flags = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, ptr %cmd, i32 0, i32 5
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 8
  %flags23 = getelementptr inbounds %struct.ib_cq_init_attr, ptr %attr, i32 0, i32 2
  %45 = ptrtoint ptr %flags23 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %flags23, align 4
  %size_ib_cq = getelementptr inbounds %struct.ib_device, ptr %16, i32 0, i32 1, i32 123
  %46 = ptrtoint ptr %size_ib_cq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size_ib_cq, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %47, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not, label %if.end17.err_file_crit_edge, label %if.end26

if.end17.err_file_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_file

if.end26:                                         ; preds = %if.end17
  %48 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %16, ptr %call9.i.i.i, align 128
  %uobject28 = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %uobject28 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %uobject28, align 4
  %comp_handler = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %comp_handler to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @ib_uverbs_comp_handler, ptr %comp_handler, align 8
  %event_handler = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %event_handler to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @ib_uverbs_cq_event_handler, ptr %event_handler, align 4
  %tobool29.not = icmp eq ptr %ev_file.0, null
  %ev_queue = getelementptr inbounds %struct.ib_uverbs_completion_event_file, ptr %ev_file.0, i32 0, i32 1
  %spec.select = select i1 %tobool29.not, ptr null, ptr %ev_queue
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %cq_context to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %spec.select, ptr %cq_context, align 16
  %usecnt = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #13
  %53 = ptrtoint ptr %usecnt to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 0, ptr %usecnt, align 4
  %res = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 17
  tail call void @rdma_restrack_new(ptr noundef %res, i32 noundef 1) #13
  tail call void @rdma_restrack_set_name(ptr noundef %res, ptr noundef null) #13
  %create_cq = getelementptr inbounds %struct.ib_device, ptr %16, i32 0, i32 1, i32 50
  %54 = ptrtoint ptr %create_cq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %create_cq, align 4
  %call32 = call i32 %55(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull %attr, ptr noundef %attrs) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %err_free

if.end35:                                         ; preds = %if.end26
  call void @rdma_restrack_add(ptr noundef %res) #13
  %object = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 3
  %56 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call9.i.i.i, ptr %object, align 8
  %57 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ufile, align 8
  %default_async_file = getelementptr inbounds %struct.ib_uverbs_file, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %default_async_file to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %default_async_file, align 4
  %event_file = getelementptr inbounds %struct.ib_uevent_object, ptr %call.i, i32 0, i32 1
  %61 = ptrtoint ptr %event_file to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %event_file, align 8
  %tobool44.not = icmp eq ptr %60, null
  br i1 %tobool44.not, label %if.end35.if.end48_crit_edge, label %if.then45

if.end35.if.end48_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then45:                                        ; preds = %if.end35
  %ref.i = getelementptr inbounds %struct.ib_uobject, ptr %60, i32 0, i32 7
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #13
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #13, !srcloc !65
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then45.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !52

if.then45.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then45
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %63 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %.not.i.i.i.i.i = icmp sgt i32 %63, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end48_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !54

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end48_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then45.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then45.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #13
  br label %if.end48

if.end48:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end48_crit_edge, %if.end35.if.end48_crit_edge
  %uobject.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 4
  %64 = ptrtoint ptr %uobject.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %uobject.i, align 8
  %tobool.not.i123 = icmp eq ptr %65, null
  br i1 %tobool.not.i123, label %if.end48.uobj_finalize_uobj_create.exit_crit_edge, label %do.end.i, !prof !54

if.end48.uobj_finalize_uobj_create.exit_crit_edge: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %uobj_finalize_uobj_create.exit

do.end.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 96, i32 noundef 9, ptr noundef null) #13
  br label %uobj_finalize_uobj_create.exit

uobj_finalize_uobj_create.exit:                   ; preds = %do.end.i, %if.end48.uobj_finalize_uobj_create.exit_crit_edge
  %66 = ptrtoint ptr %uobject.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i, ptr %uobject.i, align 8
  %id = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 6
  %67 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %id, align 8
  %69 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %resp, align 8
  %cqe53 = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 5
  %70 = ptrtoint ptr %cqe53 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cqe53, align 4
  %cqe55 = getelementptr inbounds %struct.ib_uverbs_create_cq_resp, ptr %resp, i32 0, i32 1
  %72 = ptrtoint ptr %cqe55 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %cqe55, align 4
  %outlen.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 1, i32 3
  %73 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %outlen.i, align 4
  %75 = call i32 @llvm.umin.i32(i32 %74, i32 16) #13
  %response_length = getelementptr inbounds %struct.ib_uverbs_ex_create_cq_resp, ptr %resp, i32 0, i32 2
  %76 = ptrtoint ptr %response_length to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %response_length, align 4
  %call57 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 16)
  br label %cleanup

err_free:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %call59 = call i32 @rdma_restrack_put(ptr noundef %res) #13
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #13
  br label %err_file

err_file:                                         ; preds = %err_free, %if.end17.err_file_crit_edge
  %ret.0 = phi i32 [ %call32, %err_free ], [ -12, %if.end17.err_file_crit_edge ]
  %tobool60.not = icmp eq ptr %ev_file.0, null
  br i1 %tobool60.not, label %err_file.err_crit_edge, label %if.then61

err_file.err_crit_edge:                           ; preds = %err_file
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.then61:                                        ; preds = %err_file
  call void @__sanitizer_cov_trace_pc() #15
  call void @ib_uverbs_release_ucq(ptr noundef nonnull %ev_file.0, ptr noundef %call.i) #13
  br label %err

err:                                              ; preds = %if.then61, %err_file.err_crit_edge, %if.then14
  %ret.1 = phi i32 [ %29, %if.then14 ], [ %ret.0, %if.then61 ], [ %ret.0, %err_file.err_crit_edge ]
  call void @rdma_alloc_abort_uobject(ptr noundef %call.i, ptr noundef %attrs, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %err, %uobj_finalize_uobj_create.exit, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then5 ], [ %ret.1, %err ], [ %call57, %uobj_finalize_uobj_create.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %attr) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %resp) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_comp_handler(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_cq_event_handler(ptr noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uverbs_uobject_get(ptr noundef %uobject) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %ref = getelementptr inbounds %struct.ib_uobject, ptr %uobject, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #13, !srcloc !65
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !52

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !54

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #13
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_restrack_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_release_ucq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__uobj_get_destroy(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_output_written(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_set_cq_moderation(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_init_async_event_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_alloc_commit_uobject(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_uverbs_get_ucontext_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_port_attr_to_resp(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uverbs_request_start(ptr nocapture noundef readonly %attrs, ptr nocapture noundef writeonly %iter, ptr noundef %req, i32 noundef %req_len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ucore = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 1
  %inlen = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inlen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %req_len)
  %cmp = icmp ult i32 %1, %req_len
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %ucore to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ucore, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %req_len)
  %cmp9.i.i = icmp slt i32 %req_len, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.return_crit_edge, label %if.then27.i.i, !prof !54

land.rhs16.i.i.return_crit_edge:                  ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %return

if.then.i.i.i:                                    ; preds = %if.end
  tail call void @__check_object_size(ptr noundef %req, i32 noundef %req_len, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %req_len, i32 -1226833920) #18, !srcloc !57
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !54

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %req, i32 noundef %req_len) #13
  %5 = tail call i32 @llvm.read_register.i32(metadata !37) #13
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !58
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !60
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %req, ptr noundef %3, i32 noundef %req_len) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #13, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !60
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %req_len, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %req_len, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.then11.i.i, !prof !54

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %req_len, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %req, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %return

if.end3:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %ucore to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ucore, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 %req_len
  %11 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %iter, align 4
  %12 = load ptr, ptr %ucore, align 8
  %13 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %inlen, align 8
  %add.ptr10 = getelementptr i8, ptr %12, i32 %14
  %end = getelementptr inbounds %struct.uverbs_req_iter, ptr %iter, i32 0, i32 1
  %15 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr10, ptr %end, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -28, %entry.return_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uverbs_request_next(ptr nocapture noundef %iter, ptr noundef %val, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iter, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %len
  %end = getelementptr inbounds %struct.uverbs_req_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %cmp = icmp ugt ptr %add.ptr, %3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end8.i.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end8.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.return_crit_edge, label %if.then27.i.i, !prof !54

land.rhs16.i.i.return_crit_edge:                  ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %return

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef %val, i32 noundef %len, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %len, i32 -1226833920) #18, !srcloc !57
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !54

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %val, i32 noundef %len) #13
  %5 = tail call i32 @llvm.read_register.i32(metadata !37) #13
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !58
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !60
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %val, ptr noundef %1, i32 noundef %len) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #13, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !60
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %len, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %len, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.then11.i.i, !prof !54

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %len, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %val, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %return

if.end3:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iter, align 4
  %add.ptr5 = getelementptr i8, ptr %10, i32 %len
  store ptr %add.ptr5, ptr %iter, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -28, %entry.return_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uverbs_request_finish(ptr nocapture noundef readonly %iter) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iter, align 4
  %end = getelementptr inbounds %struct.uverbs_req_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub.ptr.sub)
  %cmp.i = icmp ugt i32 %sub.ptr.sub, 65535
  br i1 %cmp.i, label %entry.ib_is_buffer_cleared.exit.thread_crit_edge, label %if.end.i

entry.ib_is_buffer_cleared.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ib_is_buffer_cleared.exit.thread

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @memdup_user(ptr noundef %1, i32 noundef %sub.ptr.sub) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.ib_is_buffer_cleared.exit.thread_crit_edge, label %ib_is_buffer_cleared.exit

if.end.i.ib_is_buffer_cleared.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ib_is_buffer_cleared.exit.thread

ib_is_buffer_cleared.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i = tail call ptr @memchr_inv(ptr noundef %call.i, i32 noundef 0, i32 noundef %sub.ptr.sub) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  tail call void @kfree(ptr noundef %call.i) #13
  %spec.select = select i1 %tobool.not.i, i32 0, i32 -95
  br label %ib_is_buffer_cleared.exit.thread

ib_is_buffer_cleared.exit.thread:                 ; preds = %ib_is_buffer_cleared.exit, %if.end.i.ib_is_buffer_cleared.exit.thread_crit_edge, %entry.ib_is_buffer_cleared.exit.thread_crit_edge
  %4 = phi i32 [ -95, %entry.ib_is_buffer_cleared.exit.thread_crit_edge ], [ -95, %if.end.i.ib_is_buffer_cleared.exit.thread_crit_edge ], [ %spec.select, %ib_is_buffer_cleared.exit ]
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kern_spec_to_ib_spec(ptr noundef %attrs, ptr noundef %kern_spec, ptr noundef %ib_spec, ptr nocapture noundef %uflow_res) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %reserved = getelementptr inbounds %struct.anon.191, ptr %kern_spec, i32 0, i32 2
  %0 = ptrtoint ptr %reserved to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %reserved, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %kern_spec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %kern_spec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %3)
  %cmp = icmp ugt i32 %3, 4095
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %4 = ptrtoint ptr %ib_spec to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ib_spec, align 4
  %5 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %3, label %if.then1.return_crit_edge [
    i32 4096, label %sw.bb.i
    i32 4097, label %sw.bb6.i
    i32 4098, label %sw.bb14.i
    i32 4099, label %sw.bb33.i
  ]

if.then1.return_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb.i:                                          ; preds = %if.then1
  %size.i = getelementptr inbounds %struct.anon.203, ptr %kern_spec, i32 0, i32 1
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %7)
  %cmp.not.i = icmp eq i16 %7, 16
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.i.return_crit_edge

sw.bb.i.return_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %size4.i = getelementptr inbounds %struct.ib_flow_spec_action_tag, ptr %ib_spec, i32 0, i32 1
  %8 = ptrtoint ptr %size4.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 12, ptr %size4.i, align 4
  %tag_id.i = getelementptr inbounds %struct.ib_uverbs_flow_spec_action_tag, ptr %kern_spec, i32 0, i32 1
  %9 = ptrtoint ptr %tag_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tag_id.i, align 8
  %tag_id5.i = getelementptr inbounds %struct.ib_flow_spec_action_tag, ptr %ib_spec, i32 0, i32 2
  %11 = ptrtoint ptr %tag_id5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tag_id5.i, align 4
  br label %return

sw.bb6.i:                                         ; preds = %if.then1
  %size7.i = getelementptr inbounds %struct.anon.205, ptr %kern_spec, i32 0, i32 1
  %12 = ptrtoint ptr %size7.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %size7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %13)
  %cmp9.not.i = icmp eq i16 %13, 8
  br i1 %cmp9.not.i, label %if.end12.i, label %sw.bb6.i.return_crit_edge

sw.bb6.i.return_crit_edge:                        ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end12.i:                                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #15
  %size13.i = getelementptr inbounds %struct.ib_flow_spec_action_drop, ptr %ib_spec, i32 0, i32 1
  %14 = ptrtoint ptr %size13.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 8, ptr %size13.i, align 4
  br label %return

sw.bb14.i:                                        ; preds = %if.then1
  %size15.i = getelementptr inbounds %struct.anon.207, ptr %kern_spec, i32 0, i32 1
  %15 = ptrtoint ptr %size15.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %size15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %16)
  %cmp17.not.i = icmp eq i16 %16, 16
  br i1 %cmp17.not.i, label %if.end20.i, label %sw.bb14.i.return_crit_edge

sw.bb14.i.return_crit_edge:                       ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end20.i:                                       ; preds = %sw.bb14.i
  %ufile.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %17 = ptrtoint ptr %ufile.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ufile.i, align 8
  %device.i = getelementptr inbounds %struct.ib_uverbs_file, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device.i, align 4
  %uapi.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %uapi.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %uapi.i, align 4
  %call4.i.i = tail call ptr @radix_tree_lookup(ptr noundef %22, i32 noundef 26624) #13
  %tobool.not.i.i = icmp eq ptr %call4.i.i, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i.i
  %23 = ptrtoint ptr %ufile.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ufile.i, align 8
  %handle.i = getelementptr inbounds %struct.ib_uverbs_flow_spec_action_handle, ptr %kern_spec, i32 0, i32 1
  %25 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %handle.i, align 8
  %conv24.i = zext i32 %26 to i64
  %call25.i = tail call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i.i, ptr noundef %24, i64 noundef %conv24.i, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i.i = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %_uobj_get_obj_read.exit.thread.i, label %_uobj_get_obj_read.exit.i

_uobj_get_obj_read.exit.thread.i:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  %act106.i = getelementptr inbounds %struct.ib_flow_spec_action_handle, ptr %ib_spec, i32 0, i32 2
  %27 = ptrtoint ptr %act106.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %act106.i, align 4
  br label %return

_uobj_get_obj_read.exit.i:                        ; preds = %if.end20.i
  %object.i.i = getelementptr inbounds %struct.ib_uobject, ptr %call25.i, i32 0, i32 3
  %28 = ptrtoint ptr %object.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %object.i.i, align 8
  %act.i = getelementptr inbounds %struct.ib_flow_spec_action_handle, ptr %ib_spec, i32 0, i32 2
  %30 = ptrtoint ptr %act.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %act.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %_uobj_get_obj_read.exit.i.return_crit_edge, label %if.end29.i

_uobj_get_obj_read.exit.i.return_crit_edge:       ; preds = %_uobj_get_obj_read.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end29.i:                                       ; preds = %_uobj_get_obj_read.exit.i
  %size30.i = getelementptr inbounds %struct.ib_flow_spec_action_handle, ptr %ib_spec, i32 0, i32 1
  %31 = ptrtoint ptr %size30.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 12, ptr %size30.i, align 4
  %num.i.i = getelementptr inbounds %struct.ib_uflow_resources, ptr %uflow_res, i32 0, i32 1
  %32 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num.i.i, align 4
  %34 = ptrtoint ptr %uflow_res to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %uflow_res, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp.not.i.i = icmp ult i32 %33, %35
  br i1 %cmp.not.i.i, label %if.end29.i.flow_resources_add.exit.i_crit_edge, label %do.end.i.i, !prof !54

if.end29.i.flow_resources_add.exit.i_crit_edge:   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %flow_resources_add.exit.i

do.end.i.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2609, i32 noundef 9, ptr noundef null) #13
  br label %flow_resources_add.exit.i

flow_resources_add.exit.i:                        ; preds = %do.end.i.i, %if.end29.i.flow_resources_add.exit.i_crit_edge
  %usecnt.i.i = getelementptr inbounds %struct.ib_flow_action, ptr %29, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt.i.i, i32 1, i32 3, i32 1) #13
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt.i.i, ptr %usecnt.i.i, i32 1, ptr elementtype(i32) %usecnt.i.i) #13, !srcloc !51
  %collection.i.i = getelementptr inbounds %struct.ib_uflow_resources, ptr %uflow_res, i32 0, i32 5
  %37 = ptrtoint ptr %collection.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %collection.i.i, align 4
  %collection_num.i.i = getelementptr inbounds %struct.ib_uflow_resources, ptr %uflow_res, i32 0, i32 2
  %39 = ptrtoint ptr %collection_num.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %collection_num.i.i, align 4
  %inc.i.i = add i32 %40, 1
  store i32 %inc.i.i, ptr %collection_num.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %38, i32 %40
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %29, ptr %arrayidx.i.i, align 4
  %42 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num.i.i, align 4
  %inc50.i.i = add i32 %43, 1
  store i32 %inc50.i.i, ptr %num.i.i, align 4
  %44 = ptrtoint ptr %act.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %act.i, align 4
  %uobject.i = getelementptr inbounds %struct.ib_flow_action, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %uobject.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %uobject.i, align 4
  tail call void @rdma_lookup_put_uobject(ptr noundef %47, i32 noundef 0) #13
  br label %return

sw.bb33.i:                                        ; preds = %if.then1
  %size34.i = getelementptr inbounds %struct.anon.209, ptr %kern_spec, i32 0, i32 1
  %48 = ptrtoint ptr %size34.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %size34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %49)
  %cmp36.not.i = icmp eq i16 %49, 16
  br i1 %cmp36.not.i, label %if.end39.i, label %sw.bb33.i.return_crit_edge

sw.bb33.i.return_crit_edge:                       ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end39.i:                                       ; preds = %sw.bb33.i
  %ufile40.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %50 = ptrtoint ptr %ufile40.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ufile40.i, align 8
  %device41.i = getelementptr inbounds %struct.ib_uverbs_file, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %device41.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device41.i, align 4
  %uapi42.i = getelementptr inbounds %struct.ib_uverbs_device, ptr %53, i32 0, i32 13
  %54 = ptrtoint ptr %uapi42.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %uapi42.i, align 4
  %call4.i91.i = tail call ptr @radix_tree_lookup(ptr noundef %55, i32 noundef 30720) #13
  %tobool.not.i92.i = icmp eq ptr %call4.i91.i, null
  %spec.select.i93.i = select i1 %tobool.not.i92.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i91.i
  %56 = ptrtoint ptr %ufile40.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ufile40.i, align 8
  %handle45.i = getelementptr inbounds %struct.ib_uverbs_flow_spec_action_count, ptr %kern_spec, i32 0, i32 1
  %58 = ptrtoint ptr %handle45.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %handle45.i, align 8
  %conv52.i = zext i32 %59 to i64
  %call53.i = tail call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i93.i, ptr noundef %57, i64 noundef %conv52.i, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i94.i = icmp ugt ptr %call53.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i94.i, label %_uobj_get_obj_read.exit98.thread.i, label %_uobj_get_obj_read.exit98.i

_uobj_get_obj_read.exit98.thread.i:               ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  %counters109.i = getelementptr inbounds %struct.ib_flow_spec_action_count, ptr %ib_spec, i32 0, i32 2
  %60 = ptrtoint ptr %counters109.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %counters109.i, align 4
  br label %return

_uobj_get_obj_read.exit98.i:                      ; preds = %if.end39.i
  %object.i95.i = getelementptr inbounds %struct.ib_uobject, ptr %call53.i, i32 0, i32 3
  %61 = ptrtoint ptr %object.i95.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %object.i95.i, align 8
  %counters.i = getelementptr inbounds %struct.ib_flow_spec_action_count, ptr %ib_spec, i32 0, i32 2
  %63 = ptrtoint ptr %counters.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %counters.i, align 4
  %tobool56.not.i = icmp eq ptr %62, null
  br i1 %tobool56.not.i, label %_uobj_get_obj_read.exit98.i.return_crit_edge, label %if.end58.i

_uobj_get_obj_read.exit98.i.return_crit_edge:     ; preds = %_uobj_get_obj_read.exit98.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end58.i:                                       ; preds = %_uobj_get_obj_read.exit98.i
  %size59.i = getelementptr inbounds %struct.ib_flow_spec_action_count, ptr %ib_spec, i32 0, i32 1
  %64 = ptrtoint ptr %size59.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 12, ptr %size59.i, align 4
  %num.i99.i = getelementptr inbounds %struct.ib_uflow_resources, ptr %uflow_res, i32 0, i32 1
  %65 = ptrtoint ptr %num.i99.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num.i99.i, align 4
  %67 = ptrtoint ptr %uflow_res to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %uflow_res, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp.not.i100.i = icmp ult i32 %66, %68
  br i1 %cmp.not.i100.i, label %if.end58.i.flow_resources_add.exit104.i_crit_edge, label %do.end.i101.i, !prof !54

if.end58.i.flow_resources_add.exit104.i_crit_edge: ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %flow_resources_add.exit104.i

do.end.i101.i:                                    ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2609, i32 noundef 9, ptr noundef null) #13
  br label %flow_resources_add.exit104.i

flow_resources_add.exit104.i:                     ; preds = %do.end.i101.i, %if.end58.i.flow_resources_add.exit104.i_crit_edge
  %usecnt20.i.i = getelementptr inbounds %struct.ib_counters, ptr %62, i32 0, i32 2
  %call.i.i62.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt20.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usecnt20.i.i, i32 1, i32 3, i32 1) #13
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt20.i.i, ptr %usecnt20.i.i, i32 1, ptr elementtype(i32) %usecnt20.i.i) #13, !srcloc !51
  %counters.i.i = getelementptr inbounds %struct.ib_uflow_resources, ptr %uflow_res, i32 0, i32 4
  %70 = ptrtoint ptr %counters.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %counters.i.i, align 4
  %counters_num.i.i = getelementptr inbounds %struct.ib_uflow_resources, ptr %uflow_res, i32 0, i32 3
  %72 = ptrtoint ptr %counters_num.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %counters_num.i.i, align 4
  %inc21.i.i = add i32 %73, 1
  store i32 %inc21.i.i, ptr %counters_num.i.i, align 4
  %arrayidx22.i.i = getelementptr ptr, ptr %71, i32 %73
  %74 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %62, ptr %arrayidx22.i.i, align 4
  %75 = ptrtoint ptr %num.i99.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num.i99.i, align 4
  %inc50.i103.i = add i32 %76, 1
  store i32 %inc50.i103.i, ptr %num.i99.i, align 4
  %77 = ptrtoint ptr %counters.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %counters.i, align 4
  %uobject62.i = getelementptr inbounds %struct.ib_counters, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %uobject62.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %uobject62.i, align 4
  tail call void @rdma_lookup_put_uobject(ptr noundef %80, i32 noundef 0) #13
  br label %return

if.else:                                          ; preds = %if.end
  %size.i7 = getelementptr inbounds %struct.ib_uverbs_flow_spec_hdr, ptr %kern_spec, i32 0, i32 1
  %81 = ptrtoint ptr %size.i7 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %size.i7, align 4
  %conv.i = zext i16 %82 to i32
  %83 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %conv.i, i32 8) #13
  %84 = extractvalue { i32, i1 } %83, 1
  br i1 %84, label %if.else.return_crit_edge, label %if.end.i8

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i8:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %85 = extractvalue { i32, i1 } %83, 0
  %div12.i = lshr i32 %85, 1
  %add.ptr.i = getelementptr i8, ptr %kern_spec, i32 8
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %div12.i
  %call5.i = tail call i32 @ib_uverbs_kern_spec_to_ib_spec_filter(i32 noundef %3, ptr noundef %add.ptr4.i, ptr noundef %add.ptr.i, i32 noundef %div12.i, ptr noundef %ib_spec) #13
  br label %return

return:                                           ; preds = %if.end.i8, %if.else.return_crit_edge, %flow_resources_add.exit104.i, %_uobj_get_obj_read.exit98.i.return_crit_edge, %_uobj_get_obj_read.exit98.thread.i, %sw.bb33.i.return_crit_edge, %flow_resources_add.exit.i, %_uobj_get_obj_read.exit.i.return_crit_edge, %_uobj_get_obj_read.exit.thread.i, %sw.bb14.i.return_crit_edge, %if.end12.i, %sw.bb6.i.return_crit_edge, %if.end.i, %sw.bb.i.return_crit_edge, %if.then1.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %sw.bb.i.return_crit_edge ], [ -22, %sw.bb6.i.return_crit_edge ], [ -95, %sw.bb14.i.return_crit_edge ], [ -22, %_uobj_get_obj_read.exit.i.return_crit_edge ], [ -22, %sw.bb33.i.return_crit_edge ], [ -22, %_uobj_get_obj_read.exit98.i.return_crit_edge ], [ -22, %if.then1.return_crit_edge ], [ 0, %flow_resources_add.exit104.i ], [ 0, %flow_resources_add.exit.i ], [ 0, %if.end12.i ], [ 0, %if.end.i ], [ -22, %_uobj_get_obj_read.exit.thread.i ], [ -22, %_uobj_get_obj_read.exit98.thread.i ], [ %call5.i, %if.end.i8 ], [ -22, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_assign_uobject(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_attach_mcast(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_qp(ptr noundef %attrs, ptr noundef %cmd) unnamed_addr #1 align 64 {
entry:
  %attr = alloca %struct.ib_qp_init_attr, align 4
  %resp = alloca %struct.ib_uverbs_ex_create_qp_resp, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #13
  %0 = call ptr @memset(ptr %attr, i32 0, i32 72)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %resp) #13
  %1 = call ptr @memset(ptr %resp, i32 0, i32 40)
  %qp_type = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 11
  %2 = ptrtoint ptr %qp_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %qp_type, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 8, label %sw.bb
    i8 2, label %entry.sw.epilog_crit_edge
    i8 3, label %entry.sw.epilog_crit_edge607
    i8 4, label %entry.sw.epilog_crit_edge608
    i8 9, label %entry.sw.epilog_crit_edge609
    i8 10, label %entry.sw.epilog_crit_edge610
    i8 -1, label %entry.sw.epilog_crit_edge611
  ]

entry.sw.epilog_crit_edge611:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge610:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge609:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge608:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge607:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call zeroext i1 @capable(i32 noundef 13) #13
  br i1 %call1, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge607, %entry.sw.epilog_crit_edge608, %entry.sw.epilog_crit_edge609, %entry.sw.epilog_crit_edge610, %entry.sw.epilog_crit_edge611
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %5 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ufile, align 8
  %device3 = getelementptr inbounds %struct.ib_uverbs_file, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device3, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %uapi, align 4
  %call4.i = tail call ptr @radix_tree_lookup(ptr noundef %10, i32 noundef 8192) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %call.i = tail call ptr @rdma_alloc_begin_uobject(ptr noundef %spec.select.i, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog
  %uxrcd = getelementptr inbounds %struct.ib_uqp_object, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %uxrcd to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %uxrcd, align 4
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %cmd, align 8
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %call.i, align 8
  %mcast_lock = getelementptr inbounds %struct.ib_uqp_object, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mcast_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @create_qp.__key) #13
  %comp_mask = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 14
  %16 = ptrtoint ptr %comp_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %comp_mask, align 8
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9.if.end37_crit_edge, label %if.then11

if.end9.if.end37_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then11:                                        ; preds = %if.end9
  %18 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ufile, align 8
  %device13 = getelementptr inbounds %struct.ib_uverbs_file, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %device13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device13, align 4
  %uapi14 = getelementptr inbounds %struct.ib_uverbs_device, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %uapi14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %uapi14, align 4
  %call4.i463 = tail call ptr @radix_tree_lookup(ptr noundef %23, i32 noundef 22528) #13
  %tobool.not.i464 = icmp eq ptr %call4.i463, null
  %spec.select.i465 = select i1 %tobool.not.i464, ptr inttoptr (i32 -2 to ptr), ptr %call4.i463
  %24 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ufile, align 8
  %rwq_ind_tbl_handle = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 16
  %26 = ptrtoint ptr %rwq_ind_tbl_handle to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rwq_ind_tbl_handle, align 8
  %conv18 = zext i32 %27 to i64
  %call19 = tail call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i465, ptr noundef %25, i64 noundef %conv18, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i466 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i466, label %if.then11.if.end323_crit_edge, label %_uobj_get_obj_read.exit

if.then11.if.end323_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end323

_uobj_get_obj_read.exit:                          ; preds = %if.then11
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call19, i32 0, i32 3
  %28 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %object.i, align 8
  %tobool21.not = icmp eq ptr %29, null
  br i1 %tobool21.not, label %_uobj_get_obj_read.exit.if.end323_crit_edge, label %land.lhs.true

_uobj_get_obj_read.exit.if.end323_crit_edge:      ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end323

land.lhs.true:                                    ; preds = %_uobj_get_obj_read.exit
  %rwq_ind_tbl = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 11
  %30 = ptrtoint ptr %rwq_ind_tbl to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %rwq_ind_tbl, align 4
  %max_recv_wr = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 6
  %31 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_recv_wr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool26.not = icmp eq i32 %32, 0
  br i1 %tobool26.not, label %lor.lhs.false, label %land.lhs.true.if.then321_crit_edge

land.lhs.true.if.then321_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then321

lor.lhs.false:                                    ; preds = %land.lhs.true
  %max_recv_sge = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 8
  %33 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_recv_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool27.not = icmp eq i32 %34, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %lor.lhs.false.if.then321_crit_edge

lor.lhs.false.if.then321_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then321

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %is_srq = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 12
  %35 = ptrtoint ptr %is_srq to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %is_srq, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool30.not = icmp eq i8 %36, 0
  br i1 %tobool30.not, label %land.lhs.true34.critedge, label %lor.lhs.false28.if.then321_crit_edge

lor.lhs.false28.if.then321_crit_edge:             ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then321

land.lhs.true34.critedge:                         ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #15
  %max_send_wr = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 5
  %37 = ptrtoint ptr %max_send_wr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_send_wr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool35.not = icmp ne i32 %38, 0
  br label %if.end37

if.end37:                                         ; preds = %land.lhs.true34.critedge, %if.end9.if.end37_crit_edge
  %ind_tbl.0512 = phi ptr [ %29, %land.lhs.true34.critedge ], [ null, %if.end9.if.end37_crit_edge ]
  %has_sq.0.off0 = phi i1 [ %tobool35.not, %land.lhs.true34.critedge ], [ true, %if.end9.if.end37_crit_edge ]
  %39 = ptrtoint ptr %qp_type to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %qp_type, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %40, label %if.else70 [
    i8 10, label %if.then42
    i8 9, label %if.then67
  ]

if.then42:                                        ; preds = %if.end37
  %42 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ufile, align 8
  %device44 = getelementptr inbounds %struct.ib_uverbs_file, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %device44 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device44, align 4
  %uapi45 = getelementptr inbounds %struct.ib_uverbs_device, ptr %45, i32 0, i32 13
  %46 = ptrtoint ptr %uapi45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %uapi45, align 4
  %call4.i467 = tail call ptr @radix_tree_lookup(ptr noundef %47, i32 noundef 20480) #13
  %tobool.not.i468 = icmp eq ptr %call4.i467, null
  %spec.select.i469 = select i1 %tobool.not.i468, ptr inttoptr (i32 -2 to ptr), ptr %call4.i467
  %48 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ufile, align 8
  %pd_handle = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 1
  %50 = ptrtoint ptr %pd_handle to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pd_handle, align 8
  %conv54 = zext i32 %51 to i64
  %call55 = tail call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i469, ptr noundef %49, i64 noundef %conv54, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i470 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i470, label %if.then42.err_put_crit_edge, label %if.end58

if.then42.err_put_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put

if.end58:                                         ; preds = %if.then42
  %object = getelementptr inbounds %struct.ib_uobject, ptr %call55, i32 0, i32 3
  %52 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %object, align 8
  %tobool59.not = icmp eq ptr %53, null
  br i1 %tobool59.not, label %if.end58.err_put_crit_edge, label %if.end58.if.end172_crit_edge

if.end58.if.end172_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end172

if.end58.err_put_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put

if.then67:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %max_recv_wr68 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 6
  %54 = ptrtoint ptr %max_recv_wr68 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %max_recv_wr68, align 4
  %max_recv_sge69 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 8
  %55 = ptrtoint ptr %max_recv_sge69 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %max_recv_sge69, align 4
  br label %if.end120

if.else70:                                        ; preds = %if.end37
  %is_srq71 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 12
  %56 = ptrtoint ptr %is_srq71 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %is_srq71, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool72.not = icmp eq i8 %57, 0
  br i1 %tobool72.not, label %if.else70.if.end94_crit_edge, label %if.then73

if.else70.if.end94_crit_edge:                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94

if.then73:                                        ; preds = %if.else70
  %58 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ufile, align 8
  %device75 = getelementptr inbounds %struct.ib_uverbs_file, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %device75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device75, align 4
  %uapi76 = getelementptr inbounds %struct.ib_uverbs_device, ptr %61, i32 0, i32 13
  %62 = ptrtoint ptr %uapi76 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %uapi76, align 4
  %call4.i471 = tail call ptr @radix_tree_lookup(ptr noundef %63, i32 noundef 10240) #13
  %tobool.not.i472 = icmp eq ptr %call4.i471, null
  %spec.select.i473 = select i1 %tobool.not.i472, ptr inttoptr (i32 -2 to ptr), ptr %call4.i471
  %64 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ufile, align 8
  %srq_handle = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 4
  %66 = ptrtoint ptr %srq_handle to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %srq_handle, align 4
  %conv85 = zext i32 %67 to i64
  %call86 = tail call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i473, ptr noundef %65, i64 noundef %conv85, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i474 = icmp ugt ptr %call86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i474, label %if.then73.if.end319_crit_edge, label %_uobj_get_obj_read.exit478

if.then73.if.end319_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end319

_uobj_get_obj_read.exit478:                       ; preds = %if.then73
  %object.i475 = getelementptr inbounds %struct.ib_uobject, ptr %call86, i32 0, i32 3
  %68 = ptrtoint ptr %object.i475 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %object.i475, align 8
  %tobool88.not = icmp eq ptr %69, null
  br i1 %tobool88.not, label %_uobj_get_obj_read.exit478.if.end319_crit_edge, label %lor.lhs.false89

_uobj_get_obj_read.exit478.if.end319_crit_edge:   ; preds = %_uobj_get_obj_read.exit478
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end319

lor.lhs.false89:                                  ; preds = %_uobj_get_obj_read.exit478
  %srq_type = getelementptr inbounds %struct.ib_srq, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %srq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp90 = icmp eq i32 %71, 1
  br i1 %cmp90, label %lor.lhs.false89.if.then315_crit_edge, label %lor.lhs.false89.if.end94_crit_edge

lor.lhs.false89.if.end94_crit_edge:               ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94

lor.lhs.false89.if.then315_crit_edge:             ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then315

if.end94:                                         ; preds = %lor.lhs.false89.if.end94_crit_edge, %if.else70.if.end94_crit_edge
  %srq.0 = phi ptr [ %69, %lor.lhs.false89.if.end94_crit_edge ], [ null, %if.else70.if.end94_crit_edge ]
  br i1 %tobool.not, label %if.then96, label %if.end94.if.end120_crit_edge

if.end94.if.end120_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end120

if.then96:                                        ; preds = %if.end94
  %recv_cq_handle = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 3
  %72 = ptrtoint ptr %recv_cq_handle to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %recv_cq_handle, align 8
  %send_cq_handle = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 2
  %74 = ptrtoint ptr %send_cq_handle to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %send_cq_handle, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp97.not = icmp eq i32 %73, %75
  br i1 %cmp97.not, label %if.then96.if.end120_crit_edge, label %if.then99

if.then96.if.end120_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end120

if.then99:                                        ; preds = %if.then96
  %76 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ufile, align 8
  %device101 = getelementptr inbounds %struct.ib_uverbs_file, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %device101 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device101, align 4
  %uapi102 = getelementptr inbounds %struct.ib_uverbs_device, ptr %79, i32 0, i32 13
  %80 = ptrtoint ptr %uapi102 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %uapi102, align 4
  %call4.i479 = tail call ptr @radix_tree_lookup(ptr noundef %81, i32 noundef 6144) #13
  %tobool.not.i480 = icmp eq ptr %call4.i479, null
  %spec.select.i481 = select i1 %tobool.not.i480, ptr inttoptr (i32 -2 to ptr), ptr %call4.i479
  %82 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ufile, align 8
  %84 = ptrtoint ptr %recv_cq_handle to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %recv_cq_handle, align 8
  %conv112 = zext i32 %85 to i64
  %call113 = tail call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i481, ptr noundef %83, i64 noundef %conv112, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i482 = icmp ugt ptr %call113, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i482, label %if.then99.if.end313_crit_edge, label %_uobj_get_obj_read.exit486

if.then99.if.end313_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end313

_uobj_get_obj_read.exit486:                       ; preds = %if.then99
  %object.i483 = getelementptr inbounds %struct.ib_uobject, ptr %call113, i32 0, i32 3
  %86 = ptrtoint ptr %object.i483 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %object.i483, align 8
  %tobool115.not = icmp eq ptr %87, null
  br i1 %tobool115.not, label %_uobj_get_obj_read.exit486.if.end313_crit_edge, label %_uobj_get_obj_read.exit486.if.end120_crit_edge

_uobj_get_obj_read.exit486.if.end120_crit_edge:   ; preds = %_uobj_get_obj_read.exit486
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end120

_uobj_get_obj_read.exit486.if.end313_crit_edge:   ; preds = %_uobj_get_obj_read.exit486
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end313

if.end120:                                        ; preds = %_uobj_get_obj_read.exit486.if.end120_crit_edge, %if.then96.if.end120_crit_edge, %if.end94.if.end120_crit_edge, %if.then67
  %srq.1 = phi ptr [ null, %if.then67 ], [ %srq.0, %if.end94.if.end120_crit_edge ], [ %srq.0, %_uobj_get_obj_read.exit486.if.end120_crit_edge ], [ %srq.0, %if.then96.if.end120_crit_edge ]
  %rcq.0 = phi ptr [ null, %if.then67 ], [ null, %if.end94.if.end120_crit_edge ], [ %87, %_uobj_get_obj_read.exit486.if.end120_crit_edge ], [ null, %if.then96.if.end120_crit_edge ]
  br i1 %has_sq.0.off0, label %if.then122, label %if.end120.if.end138_crit_edge

if.end120.if.end138_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end138

if.then122:                                       ; preds = %if.end120
  %88 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ufile, align 8
  %device124 = getelementptr inbounds %struct.ib_uverbs_file, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %device124 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %device124, align 4
  %uapi125 = getelementptr inbounds %struct.ib_uverbs_device, ptr %91, i32 0, i32 13
  %92 = ptrtoint ptr %uapi125 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %uapi125, align 4
  %call4.i487 = tail call ptr @radix_tree_lookup(ptr noundef %93, i32 noundef 6144) #13
  %tobool.not.i488 = icmp eq ptr %call4.i487, null
  %spec.select.i489 = select i1 %tobool.not.i488, ptr inttoptr (i32 -2 to ptr), ptr %call4.i487
  %94 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ufile, align 8
  %send_cq_handle128 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 2
  %96 = ptrtoint ptr %send_cq_handle128 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %send_cq_handle128, align 4
  %conv135 = zext i32 %97 to i64
  %call136 = tail call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i489, ptr noundef %95, i64 noundef %conv135, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i490 = icmp ugt ptr %call136, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i490, label %if.then122.if.end138_crit_edge, label %if.end.i492

if.then122.if.end138_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end138

if.end.i492:                                      ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #15
  %object.i491 = getelementptr inbounds %struct.ib_uobject, ptr %call136, i32 0, i32 3
  %98 = ptrtoint ptr %object.i491 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %object.i491, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.end.i492, %if.then122.if.end138_crit_edge, %if.end120.if.end138_crit_edge
  %scq.0 = phi ptr [ null, %if.end120.if.end138_crit_edge ], [ %99, %if.end.i492 ], [ null, %if.then122.if.end138_crit_edge ]
  br i1 %tobool.not, label %land.lhs.true140, label %if.end138.if.end147_crit_edge

if.end138.if.end147_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end147

land.lhs.true140:                                 ; preds = %if.end138
  %100 = ptrtoint ptr %qp_type to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %qp_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %101)
  %cmp143.not = icmp eq i8 %101, 9
  br i1 %cmp143.not, label %land.lhs.true140.if.end147_crit_edge, label %if.then145

land.lhs.true140.if.end147_crit_edge:             ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end147

if.then145:                                       ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #15
  %tobool146.not = icmp eq ptr %rcq.0, null
  %spec.select = select i1 %tobool146.not, ptr %scq.0, ptr %rcq.0
  br label %if.end147

if.end147:                                        ; preds = %if.then145, %land.lhs.true140.if.end147_crit_edge, %if.end138.if.end147_crit_edge
  %rcq.1 = phi ptr [ %rcq.0, %if.end138.if.end147_crit_edge ], [ %spec.select, %if.then145 ], [ %rcq.0, %land.lhs.true140.if.end147_crit_edge ]
  %102 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ufile, align 8
  %device149 = getelementptr inbounds %struct.ib_uverbs_file, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %device149 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %device149, align 4
  %uapi150 = getelementptr inbounds %struct.ib_uverbs_device, ptr %105, i32 0, i32 13
  %106 = ptrtoint ptr %uapi150 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %uapi150, align 4
  %call4.i495 = tail call ptr @radix_tree_lookup(ptr noundef %107, i32 noundef 2048) #13
  %tobool.not.i496 = icmp eq ptr %call4.i495, null
  %spec.select.i497 = select i1 %tobool.not.i496, ptr inttoptr (i32 -2 to ptr), ptr %call4.i495
  %108 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ufile, align 8
  %pd_handle153 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 1
  %110 = ptrtoint ptr %pd_handle153 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pd_handle153, align 8
  %conv160 = zext i32 %111 to i64
  %call161 = tail call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i497, ptr noundef %109, i64 noundef %conv160, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i498 = icmp ugt ptr %call161, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i498, label %if.end147.if.end298_crit_edge, label %_uobj_get_obj_read.exit502

if.end147.if.end298_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end298

_uobj_get_obj_read.exit502:                       ; preds = %if.end147
  %object.i499 = getelementptr inbounds %struct.ib_uobject, ptr %call161, i32 0, i32 3
  %112 = ptrtoint ptr %object.i499 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %object.i499, align 8
  %tobool163.not = icmp eq ptr %113, null
  br i1 %tobool163.not, label %_uobj_get_obj_read.exit502.if.end298_crit_edge, label %lor.lhs.false164

_uobj_get_obj_read.exit502.if.end298_crit_edge:   ; preds = %_uobj_get_obj_read.exit502
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end298

lor.lhs.false164:                                 ; preds = %_uobj_get_obj_read.exit502
  %tobool165.not = icmp eq ptr %scq.0, null
  %114 = and i1 %has_sq.0.off0, %tobool165.not
  br i1 %114, label %lor.lhs.false164.if.then296_crit_edge, label %if.end170

lor.lhs.false164.if.then296_crit_edge:            ; preds = %lor.lhs.false164
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then296

if.end170:                                        ; preds = %lor.lhs.false164
  call void @__sanitizer_cov_trace_pc() #15
  %device171 = getelementptr inbounds %struct.ib_pd, ptr %113, i32 0, i32 2
  br label %if.end172

if.end172:                                        ; preds = %if.end170, %if.end58.if.end172_crit_edge
  %srq.2 = phi ptr [ %srq.1, %if.end170 ], [ null, %if.end58.if.end172_crit_edge ]
  %rcq.2 = phi ptr [ %rcq.1, %if.end170 ], [ null, %if.end58.if.end172_crit_edge ]
  %scq.1 = phi ptr [ %scq.0, %if.end170 ], [ null, %if.end58.if.end172_crit_edge ]
  %xrcd_uobj.0 = phi ptr [ inttoptr (i32 -2 to ptr), %if.end170 ], [ %call55, %if.end58.if.end172_crit_edge ]
  %xrcd.0 = phi ptr [ null, %if.end170 ], [ %53, %if.end58.if.end172_crit_edge ]
  %pd.0 = phi ptr [ %113, %if.end170 ], [ null, %if.end58.if.end172_crit_edge ]
  %device.0.in = phi ptr [ %device171, %if.end170 ], [ %53, %if.end58.if.end172_crit_edge ]
  %115 = ptrtoint ptr %device.0.in to i32
  call void @__asan_load4_noabort(i32 %115)
  %device.0 = load ptr, ptr %device.0.in, align 4
  %116 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @ib_uverbs_qp_event_handler, ptr %attr, align 4
  %send_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 2
  %117 = ptrtoint ptr %send_cq to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %scq.1, ptr %send_cq, align 4
  %recv_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 3
  %118 = ptrtoint ptr %recv_cq to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %rcq.2, ptr %recv_cq, align 4
  %srq173 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 4
  %119 = ptrtoint ptr %srq173 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %srq.2, ptr %srq173, align 4
  %xrcd174 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 5
  %120 = ptrtoint ptr %xrcd174 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %xrcd.0, ptr %xrcd174, align 4
  %sq_sig_all = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 10
  %121 = ptrtoint ptr %sq_sig_all to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %sq_sig_all, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool176.not = icmp eq i8 %122, 0
  %cond177 = zext i1 %tobool176.not to i32
  %sq_sig_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 7
  %123 = ptrtoint ptr %sq_sig_type to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %cond177, ptr %sq_sig_type, align 4
  %124 = ptrtoint ptr %qp_type to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %qp_type, align 1
  %conv179 = zext i8 %125 to i32
  %qp_type180 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 8
  %126 = ptrtoint ptr %qp_type180 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %conv179, ptr %qp_type180, align 4
  %max_send_wr181 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 5
  %127 = ptrtoint ptr %max_send_wr181 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %max_send_wr181, align 8
  %cap = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 6
  %129 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %cap, align 4
  %max_recv_wr183 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 6
  %130 = ptrtoint ptr %max_recv_wr183 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %max_recv_wr183, align 4
  %max_recv_wr185 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 6, i32 1
  %132 = ptrtoint ptr %max_recv_wr185 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %max_recv_wr185, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 7
  %133 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %max_send_sge, align 8
  %max_send_sge187 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 6, i32 2
  %135 = ptrtoint ptr %max_send_sge187 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %max_send_sge187, align 4
  %max_recv_sge188 = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 8
  %136 = ptrtoint ptr %max_recv_sge188 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %max_recv_sge188, align 4
  %max_recv_sge190 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 6, i32 3
  %138 = ptrtoint ptr %max_recv_sge190 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %max_recv_sge190, align 4
  %max_inline_data = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 9
  %139 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %max_inline_data, align 8
  %max_inline_data192 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 6, i32 4
  %141 = ptrtoint ptr %max_inline_data192 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %max_inline_data192, align 4
  %event_list = getelementptr inbounds %struct.ib_uevent_object, ptr %call.i, i32 0, i32 2
  %142 = ptrtoint ptr %event_list to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %event_list, ptr %event_list, align 4
  %prev.i = getelementptr inbounds %struct.ib_uevent_object, ptr %call.i, i32 0, i32 2, i32 1
  %143 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %event_list, ptr %prev.i, align 4
  %mcast_list = getelementptr inbounds %struct.ib_uqp_object, ptr %call.i, i32 0, i32 2
  %144 = ptrtoint ptr %mcast_list to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %mcast_list, ptr %mcast_list, align 4
  %prev.i503 = getelementptr inbounds %struct.ib_uqp_object, ptr %call.i, i32 0, i32 2, i32 1
  %145 = ptrtoint ptr %prev.i503 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %mcast_list, ptr %prev.i503, align 4
  %create_flags = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 15
  %146 = ptrtoint ptr %create_flags to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %create_flags, align 4
  %create_flags194 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 9
  %148 = ptrtoint ptr %create_flags194 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %create_flags194, align 4
  %and196 = and i32 %147, -3871
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %if.end199, label %if.end172.err_put_crit_edge

if.end172.err_put_crit_edge:                      ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put

if.end199:                                        ; preds = %if.end172
  %and201 = and i32 %147, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %if.end199.if.end208_crit_edge, label %if.then203

if.end199.if.end208_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

if.then203:                                       ; preds = %if.end199
  %call204 = tail call zeroext i1 @capable(i32 noundef 13) #13
  br i1 %call204, label %if.end206, label %if.then203.err_put_crit_edge

if.then203.err_put_crit_edge:                     ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put

if.end206:                                        ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #15
  %source_qpn = getelementptr inbounds %struct.ib_uverbs_ex_create_qp, ptr %cmd, i32 0, i32 17
  %149 = ptrtoint ptr %source_qpn to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %source_qpn, align 4
  %source_qpn207 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 12
  %151 = ptrtoint ptr %source_qpn207 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %source_qpn207, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.end206, %if.end199.if.end208_crit_edge
  %call209 = call ptr @ib_create_qp_user(ptr noundef %device.0, ptr noundef %pd.0, ptr noundef nonnull %attr, ptr noundef %attrs, ptr noundef %call.i, ptr noundef nonnull @.str.11) #13
  %cmp.i504 = icmp ugt ptr %call209, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i504, label %if.then211, label %if.end213

if.then211:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #15
  %152 = ptrtoint ptr %call209 to i32
  br label %err_put

if.end213:                                        ; preds = %if.end208
  call void @ib_qp_usecnt_inc(ptr noundef %call209) #13
  %object216 = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 3
  %153 = ptrtoint ptr %object216 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call209, ptr %object216, align 8
  %154 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ufile, align 8
  %default_async_file = getelementptr inbounds %struct.ib_uverbs_file, ptr %155, i32 0, i32 4
  %156 = ptrtoint ptr %default_async_file to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile ptr, ptr %default_async_file, align 4
  %event_file = getelementptr inbounds %struct.ib_uevent_object, ptr %call.i, i32 0, i32 1
  %158 = ptrtoint ptr %event_file to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %157, ptr %event_file, align 8
  %tobool225.not = icmp eq ptr %157, null
  br i1 %tobool225.not, label %if.end213.if.end229_crit_edge, label %if.then226

if.end213.if.end229_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end229

if.then226:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @uverbs_uobject_get(ptr noundef nonnull %157)
  br label %if.end229

if.end229:                                        ; preds = %if.then226, %if.end213.if.end229_crit_edge
  %tobool230.not = icmp eq ptr %xrcd.0, null
  br i1 %tobool230.not, label %if.end229.if.end235_crit_edge, label %if.then231

if.end229.if.end235_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end235

if.then231:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #15
  %159 = ptrtoint ptr %uxrcd to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %xrcd_uobj.0, ptr %uxrcd, align 4
  %refcnt = getelementptr inbounds %struct.ib_uxrcd_object, ptr %xrcd_uobj.0, i32 0, i32 1
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %160 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !51
  call void @rdma_lookup_put_uobject(ptr noundef %xrcd_uobj.0, i32 noundef 0) #13
  br label %if.end235

if.end235:                                        ; preds = %if.then231, %if.end229.if.end235_crit_edge
  %tobool236.not = icmp eq ptr %pd.0, null
  br i1 %tobool236.not, label %if.end235.if.end239_crit_edge, label %if.then237

if.end235.if.end239_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end239

if.then237:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #15
  %uobject238 = getelementptr inbounds %struct.ib_pd, ptr %pd.0, i32 0, i32 3
  %161 = ptrtoint ptr %uobject238 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %uobject238, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %162, i32 noundef 0) #13
  br label %if.end239

if.end239:                                        ; preds = %if.then237, %if.end235.if.end239_crit_edge
  %tobool240.not = icmp eq ptr %scq.1, null
  br i1 %tobool240.not, label %if.end239.if.end245_crit_edge, label %if.then241

if.end239.if.end245_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end245

if.then241:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #15
  %uobject242 = getelementptr inbounds %struct.ib_cq, ptr %scq.1, i32 0, i32 1
  %163 = ptrtoint ptr %uobject242 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %uobject242, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %164, i32 noundef 0) #13
  br label %if.end245

if.end245:                                        ; preds = %if.then241, %if.end239.if.end245_crit_edge
  %tobool246.not = icmp eq ptr %rcq.2, null
  %cmp248.not = icmp eq ptr %rcq.2, %scq.1
  %or.cond = select i1 %tobool246.not, i1 true, i1 %cmp248.not
  br i1 %or.cond, label %if.end245.if.end254_crit_edge, label %if.then250

if.end245.if.end254_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end254

if.then250:                                       ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #15
  %uobject251 = getelementptr inbounds %struct.ib_cq, ptr %rcq.2, i32 0, i32 1
  %165 = ptrtoint ptr %uobject251 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %uobject251, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %166, i32 noundef 0) #13
  br label %if.end254

if.end254:                                        ; preds = %if.then250, %if.end245.if.end254_crit_edge
  %tobool255.not = icmp eq ptr %srq.2, null
  br i1 %tobool255.not, label %if.end254.if.end260_crit_edge, label %if.then256

if.end254.if.end260_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end260

if.then256:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #15
  %uobject257 = getelementptr inbounds %struct.ib_srq, ptr %srq.2, i32 0, i32 2
  %167 = ptrtoint ptr %uobject257 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %uobject257, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %168, i32 noundef 0) #13
  br label %if.end260

if.end260:                                        ; preds = %if.then256, %if.end254.if.end260_crit_edge
  br i1 %tobool.not, label %if.end260.if.end264_crit_edge, label %if.then262

if.end260.if.end264_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end264

if.then262:                                       ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #15
  %uobject263 = getelementptr inbounds %struct.ib_rwq_ind_table, ptr %ind_tbl.0512, i32 0, i32 1
  %169 = ptrtoint ptr %uobject263 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %uobject263, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %170, i32 noundef 0) #13
  br label %if.end264

if.end264:                                        ; preds = %if.then262, %if.end260.if.end264_crit_edge
  %uobject.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 4
  %171 = ptrtoint ptr %uobject.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %uobject.i, align 8
  %tobool.not.i505 = icmp eq ptr %172, null
  br i1 %tobool.not.i505, label %if.end264.uobj_finalize_uobj_create.exit_crit_edge, label %do.end.i, !prof !54

if.end264.uobj_finalize_uobj_create.exit_crit_edge: ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #15
  br label %uobj_finalize_uobj_create.exit

do.end.i:                                         ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 96, i32 noundef 9, ptr noundef null) #13
  br label %uobj_finalize_uobj_create.exit

uobj_finalize_uobj_create.exit:                   ; preds = %do.end.i, %if.end264.uobj_finalize_uobj_create.exit_crit_edge
  %173 = ptrtoint ptr %uobject.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call.i, ptr %uobject.i, align 8
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %call209, i32 0, i32 19
  %174 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %qp_num, align 4
  %qpn = getelementptr inbounds %struct.ib_uverbs_create_qp_resp, ptr %resp, i32 0, i32 1
  %176 = ptrtoint ptr %qpn to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %qpn, align 4
  %id = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 6
  %177 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %id, align 8
  %179 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %resp, align 4
  %180 = ptrtoint ptr %max_recv_sge190 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %max_recv_sge190, align 4
  %max_recv_sge273 = getelementptr inbounds %struct.ib_uverbs_create_qp_resp, ptr %resp, i32 0, i32 5
  %182 = ptrtoint ptr %max_recv_sge273 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %max_recv_sge273, align 4
  %183 = ptrtoint ptr %max_send_sge187 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %max_send_sge187, align 4
  %max_send_sge277 = getelementptr inbounds %struct.ib_uverbs_create_qp_resp, ptr %resp, i32 0, i32 4
  %185 = ptrtoint ptr %max_send_sge277 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %max_send_sge277, align 4
  %186 = ptrtoint ptr %max_recv_wr185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %max_recv_wr185, align 4
  %max_recv_wr281 = getelementptr inbounds %struct.ib_uverbs_create_qp_resp, ptr %resp, i32 0, i32 3
  %188 = ptrtoint ptr %max_recv_wr281 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %max_recv_wr281, align 4
  %189 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %cap, align 4
  %max_send_wr285 = getelementptr inbounds %struct.ib_uverbs_create_qp_resp, ptr %resp, i32 0, i32 2
  %191 = ptrtoint ptr %max_send_wr285 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %max_send_wr285, align 4
  %192 = ptrtoint ptr %max_inline_data192 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %max_inline_data192, align 4
  %max_inline_data289 = getelementptr inbounds %struct.ib_uverbs_create_qp_resp, ptr %resp, i32 0, i32 6
  %194 = ptrtoint ptr %max_inline_data289 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %max_inline_data289, align 4
  %outlen.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 1, i32 3
  %195 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %outlen.i, align 4
  %197 = call i32 @llvm.umin.i32(i32 %196, i32 40) #13
  %response_length = getelementptr inbounds %struct.ib_uverbs_ex_create_qp_resp, ptr %resp, i32 0, i32 2
  %198 = ptrtoint ptr %response_length to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %response_length, align 4
  %call291 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 40)
  br label %cleanup

err_put:                                          ; preds = %if.then211, %if.then203.err_put_crit_edge, %if.end172.err_put_crit_edge, %if.end58.err_put_crit_edge, %if.then42.err_put_crit_edge
  %ret.0 = phi i32 [ %152, %if.then211 ], [ -22, %if.then42.err_put_crit_edge ], [ -22, %if.end58.err_put_crit_edge ], [ -22, %if.end172.err_put_crit_edge ], [ -1, %if.then203.err_put_crit_edge ]
  %srq.3 = phi ptr [ %srq.2, %if.then211 ], [ null, %if.then42.err_put_crit_edge ], [ null, %if.end58.err_put_crit_edge ], [ %srq.2, %if.end172.err_put_crit_edge ], [ %srq.2, %if.then203.err_put_crit_edge ]
  %rcq.3 = phi ptr [ %rcq.2, %if.then211 ], [ null, %if.then42.err_put_crit_edge ], [ null, %if.end58.err_put_crit_edge ], [ %rcq.2, %if.end172.err_put_crit_edge ], [ %rcq.2, %if.then203.err_put_crit_edge ]
  %scq.2 = phi ptr [ %scq.1, %if.then211 ], [ null, %if.then42.err_put_crit_edge ], [ null, %if.end58.err_put_crit_edge ], [ %scq.1, %if.end172.err_put_crit_edge ], [ %scq.1, %if.then203.err_put_crit_edge ]
  %xrcd_uobj.1 = phi ptr [ %xrcd_uobj.0, %if.then211 ], [ %call55, %if.then42.err_put_crit_edge ], [ %call55, %if.end58.err_put_crit_edge ], [ %xrcd_uobj.0, %if.end172.err_put_crit_edge ], [ %xrcd_uobj.0, %if.then203.err_put_crit_edge ]
  %pd.1 = phi ptr [ %pd.0, %if.then211 ], [ null, %if.then42.err_put_crit_edge ], [ null, %if.end58.err_put_crit_edge ], [ %pd.0, %if.end172.err_put_crit_edge ], [ %pd.0, %if.then203.err_put_crit_edge ]
  %cmp.i507 = icmp ugt ptr %xrcd_uobj.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i507, label %err_put.if.end294_crit_edge, label %if.then293

err_put.if.end294_crit_edge:                      ; preds = %err_put
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end294

if.then293:                                       ; preds = %err_put
  call void @__sanitizer_cov_trace_pc() #15
  call void @rdma_lookup_put_uobject(ptr noundef %xrcd_uobj.1, i32 noundef 0) #13
  br label %if.end294

if.end294:                                        ; preds = %if.then293, %err_put.if.end294_crit_edge
  %tobool295.not = icmp eq ptr %pd.1, null
  br i1 %tobool295.not, label %if.end294.if.end298_crit_edge, label %if.end294.if.then296_crit_edge

if.end294.if.then296_crit_edge:                   ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then296

if.end294.if.end298_crit_edge:                    ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end298

if.then296:                                       ; preds = %if.end294.if.then296_crit_edge, %lor.lhs.false164.if.then296_crit_edge
  %ret.0528560 = phi i32 [ %ret.0, %if.end294.if.then296_crit_edge ], [ -22, %lor.lhs.false164.if.then296_crit_edge ]
  %srq.3530558 = phi ptr [ %srq.3, %if.end294.if.then296_crit_edge ], [ %srq.1, %lor.lhs.false164.if.then296_crit_edge ]
  %rcq.3531557 = phi ptr [ %rcq.3, %if.end294.if.then296_crit_edge ], [ %rcq.1, %lor.lhs.false164.if.then296_crit_edge ]
  %scq.2532556 = phi ptr [ %scq.2, %if.end294.if.then296_crit_edge ], [ null, %lor.lhs.false164.if.then296_crit_edge ]
  %pd.1534555 = phi ptr [ %pd.1, %if.end294.if.then296_crit_edge ], [ %113, %lor.lhs.false164.if.then296_crit_edge ]
  %uobject297 = getelementptr inbounds %struct.ib_pd, ptr %pd.1534555, i32 0, i32 3
  %199 = ptrtoint ptr %uobject297 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %uobject297, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %200, i32 noundef 0) #13
  br label %if.end298

if.end298:                                        ; preds = %if.then296, %if.end294.if.end298_crit_edge, %_uobj_get_obj_read.exit502.if.end298_crit_edge, %if.end147.if.end298_crit_edge
  %ret.0528546 = phi i32 [ %ret.0528560, %if.then296 ], [ %ret.0, %if.end294.if.end298_crit_edge ], [ -22, %_uobj_get_obj_read.exit502.if.end298_crit_edge ], [ -22, %if.end147.if.end298_crit_edge ]
  %srq.3530544 = phi ptr [ %srq.3530558, %if.then296 ], [ %srq.3, %if.end294.if.end298_crit_edge ], [ %srq.1, %_uobj_get_obj_read.exit502.if.end298_crit_edge ], [ %srq.1, %if.end147.if.end298_crit_edge ]
  %rcq.3531543 = phi ptr [ %rcq.3531557, %if.then296 ], [ %rcq.3, %if.end294.if.end298_crit_edge ], [ %rcq.1, %_uobj_get_obj_read.exit502.if.end298_crit_edge ], [ %rcq.1, %if.end147.if.end298_crit_edge ]
  %scq.2532542 = phi ptr [ %scq.2532556, %if.then296 ], [ %scq.2, %if.end294.if.end298_crit_edge ], [ %scq.0, %_uobj_get_obj_read.exit502.if.end298_crit_edge ], [ %scq.0, %if.end147.if.end298_crit_edge ]
  %tobool299.not = icmp eq ptr %scq.2532542, null
  br i1 %tobool299.not, label %if.end298.if.end304_crit_edge, label %if.then300

if.end298.if.end304_crit_edge:                    ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end304

if.then300:                                       ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #15
  %uobject301 = getelementptr inbounds %struct.ib_cq, ptr %scq.2532542, i32 0, i32 1
  %201 = ptrtoint ptr %uobject301 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %uobject301, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %202, i32 noundef 0) #13
  br label %if.end304

if.end304:                                        ; preds = %if.then300, %if.end298.if.end304_crit_edge
  %tobool305.not = icmp eq ptr %rcq.3531543, null
  %cmp307.not = icmp eq ptr %rcq.3531543, %scq.2532542
  %or.cond461 = select i1 %tobool305.not, i1 true, i1 %cmp307.not
  br i1 %or.cond461, label %if.end304.if.end313_crit_edge, label %if.then309

if.end304.if.end313_crit_edge:                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end313

if.then309:                                       ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #15
  %uobject310 = getelementptr inbounds %struct.ib_cq, ptr %rcq.3531543, i32 0, i32 1
  %203 = ptrtoint ptr %uobject310 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %uobject310, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %204, i32 noundef 0) #13
  br label %if.end313

if.end313:                                        ; preds = %if.then309, %if.end304.if.end313_crit_edge, %_uobj_get_obj_read.exit486.if.end313_crit_edge, %if.then99.if.end313_crit_edge
  %ret.0528546567581 = phi i32 [ %ret.0528546, %if.then309 ], [ %ret.0528546, %if.end304.if.end313_crit_edge ], [ -22, %_uobj_get_obj_read.exit486.if.end313_crit_edge ], [ -22, %if.then99.if.end313_crit_edge ]
  %ind_tbl.1529545568580 = phi ptr [ %ind_tbl.0512, %if.then309 ], [ %ind_tbl.0512, %if.end304.if.end313_crit_edge ], [ null, %_uobj_get_obj_read.exit486.if.end313_crit_edge ], [ null, %if.then99.if.end313_crit_edge ]
  %srq.3530544569579 = phi ptr [ %srq.3530544, %if.then309 ], [ %srq.3530544, %if.end304.if.end313_crit_edge ], [ %srq.0, %_uobj_get_obj_read.exit486.if.end313_crit_edge ], [ %srq.0, %if.then99.if.end313_crit_edge ]
  %tobool314.not = icmp eq ptr %srq.3530544569579, null
  br i1 %tobool314.not, label %if.end313.if.end319_crit_edge, label %if.end313.if.then315_crit_edge

if.end313.if.then315_crit_edge:                   ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then315

if.end313.if.end319_crit_edge:                    ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end319

if.then315:                                       ; preds = %if.end313.if.then315_crit_edge, %lor.lhs.false89.if.then315_crit_edge
  %srq.3530544569579595 = phi ptr [ %srq.3530544569579, %if.end313.if.then315_crit_edge ], [ %69, %lor.lhs.false89.if.then315_crit_edge ]
  %ind_tbl.1529545568580594 = phi ptr [ %ind_tbl.1529545568580, %if.end313.if.then315_crit_edge ], [ %ind_tbl.0512, %lor.lhs.false89.if.then315_crit_edge ]
  %ret.0528546567581593 = phi i32 [ %ret.0528546567581, %if.end313.if.then315_crit_edge ], [ -22, %lor.lhs.false89.if.then315_crit_edge ]
  %uobject316 = getelementptr inbounds %struct.ib_srq, ptr %srq.3530544569579595, i32 0, i32 2
  %205 = ptrtoint ptr %uobject316 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %uobject316, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %206, i32 noundef 0) #13
  br label %if.end319

if.end319:                                        ; preds = %if.then315, %if.end313.if.end319_crit_edge, %_uobj_get_obj_read.exit478.if.end319_crit_edge, %if.then73.if.end319_crit_edge
  %ind_tbl.1529545568580587 = phi ptr [ %ind_tbl.1529545568580594, %if.then315 ], [ %ind_tbl.1529545568580, %if.end313.if.end319_crit_edge ], [ %ind_tbl.0512, %if.then73.if.end319_crit_edge ], [ %ind_tbl.0512, %_uobj_get_obj_read.exit478.if.end319_crit_edge ]
  %ret.0528546567581586 = phi i32 [ %ret.0528546567581593, %if.then315 ], [ %ret.0528546567581, %if.end313.if.end319_crit_edge ], [ -22, %if.then73.if.end319_crit_edge ], [ -22, %_uobj_get_obj_read.exit478.if.end319_crit_edge ]
  %tobool320.not = icmp eq ptr %ind_tbl.1529545568580587, null
  br i1 %tobool320.not, label %if.end319.if.end323_crit_edge, label %if.end319.if.then321_crit_edge

if.end319.if.then321_crit_edge:                   ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then321

if.end319.if.end323_crit_edge:                    ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end323

if.then321:                                       ; preds = %if.end319.if.then321_crit_edge, %lor.lhs.false28.if.then321_crit_edge, %lor.lhs.false.if.then321_crit_edge, %land.lhs.true.if.then321_crit_edge
  %ret.0528546567581586600 = phi i32 [ %ret.0528546567581586, %if.end319.if.then321_crit_edge ], [ -22, %lor.lhs.false28.if.then321_crit_edge ], [ -22, %lor.lhs.false.if.then321_crit_edge ], [ -22, %land.lhs.true.if.then321_crit_edge ]
  %ind_tbl.1529545568580587599 = phi ptr [ %ind_tbl.1529545568580587, %if.end319.if.then321_crit_edge ], [ %29, %lor.lhs.false28.if.then321_crit_edge ], [ %29, %lor.lhs.false.if.then321_crit_edge ], [ %29, %land.lhs.true.if.then321_crit_edge ]
  %uobject322 = getelementptr inbounds %struct.ib_rwq_ind_table, ptr %ind_tbl.1529545568580587599, i32 0, i32 1
  %207 = ptrtoint ptr %uobject322 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %uobject322, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %208, i32 noundef 0) #13
  br label %if.end323

if.end323:                                        ; preds = %if.then321, %if.end319.if.end323_crit_edge, %_uobj_get_obj_read.exit.if.end323_crit_edge, %if.then11.if.end323_crit_edge
  %ret.0528546567581586601 = phi i32 [ %ret.0528546567581586600, %if.then321 ], [ %ret.0528546567581586, %if.end319.if.end323_crit_edge ], [ -22, %if.then11.if.end323_crit_edge ], [ -22, %_uobj_get_obj_read.exit.if.end323_crit_edge ]
  call void @rdma_alloc_abort_uobject(ptr noundef %call.i, ptr noundef %attrs, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end323, %uobj_finalize_uobj_create.exit, %if.then7, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then7 ], [ %ret.0528546567581586601, %if.end323 ], [ %call291, %uobj_finalize_uobj_create.exit ], [ -1, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_qp_event_handler(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_qp_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_qp_usecnt_inc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_detach_mcast(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @modify_qp(ptr noundef %attrs, ptr noundef %cmd) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %1 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uapi, align 4
  %call4.i = tail call ptr @radix_tree_lookup(ptr noundef %6, i32 noundef 8192) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %7 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ufile, align 8
  %qp_handle = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 2
  %9 = ptrtoint ptr %qp_handle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qp_handle, align 8
  %conv3 = zext i32 %10 to i64
  %call4 = tail call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i, ptr noundef %8, i64 noundef %conv3, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.out_crit_edge, label %_uobj_get_obj_read.exit

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

_uobj_get_obj_read.exit:                          ; preds = %if.end
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call4, i32 0, i32 3
  %11 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %object.i, align 8
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %_uobj_get_obj_read.exit.out_crit_edge, label %if.end8

_uobj_get_obj_read.exit.out_crit_edge:            ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end8:                                          ; preds = %_uobj_get_obj_read.exit
  %attr_mask = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 3
  %13 = ptrtoint ptr %attr_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %attr_mask, align 4
  %and = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end8.if.end17_crit_edge, label %land.lhs.true

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end8
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %port_num = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 19
  %17 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %port_num, align 8
  %conv13 = zext i8 %18 to i32
  %is_switch.i.i.i = getelementptr inbounds %struct.ib_device, ptr %16, i32 0, i32 19
  %19 = ptrtoint ptr %is_switch.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i.i.i = load i8, ptr %is_switch.i.i.i, align 4
  %20 = xor i8 %bf.load.i.i.i, -1
  %21 = lshr i8 %20, 7
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %18)
  %cmp.not.i = icmp ugt i8 %21, %18
  br i1 %cmp.not.i, label %land.lhs.true.release_qp_crit_edge, label %land.rhs.i

land.lhs.true.release_qp_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_qp

land.rhs.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i)
  %tobool.i.i.i = icmp slt i8 %bf.load.i.i.i, 0
  br i1 %tobool.i.i.i, label %land.rhs.i.rdma_is_port_valid.exit_crit_edge, label %cond.false.i.i

land.rhs.i.rdma_is_port_valid.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_is_port_valid.exit

cond.false.i.i:                                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %phys_port_cnt.i.i = getelementptr inbounds %struct.ib_device, ptr %16, i32 0, i32 21
  %22 = ptrtoint ptr %phys_port_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %phys_port_cnt.i.i, align 8
  br label %rdma_is_port_valid.exit

rdma_is_port_valid.exit:                          ; preds = %cond.false.i.i, %land.rhs.i.rdma_is_port_valid.exit_crit_edge
  %cond.i.i = phi i32 [ %23, %cond.false.i.i ], [ 0, %land.rhs.i.rdma_is_port_valid.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %conv13)
  %cmp2.i.not = icmp ult i32 %cond.i.i, %conv13
  br i1 %cmp2.i.not, label %rdma_is_port_valid.exit.release_qp_crit_edge, label %rdma_is_port_valid.exit.if.end17_crit_edge

rdma_is_port_valid.exit.if.end17_crit_edge:       ; preds = %rdma_is_port_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

rdma_is_port_valid.exit.release_qp_crit_edge:     ; preds = %rdma_is_port_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_qp

if.end17:                                         ; preds = %rdma_is_port_valid.exit.if.end17_crit_edge, %if.end8.if.end17_crit_edge
  %and20 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end17.if.end81_crit_edge, label %if.then22

if.end17.if.end81_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then22:                                        ; preds = %if.end17
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %12, align 4
  %port_num25 = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %cmd, i32 0, i32 11
  %26 = ptrtoint ptr %port_num25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %port_num25, align 1
  %conv26 = zext i8 %27 to i32
  %is_switch.i.i.i439 = getelementptr inbounds %struct.ib_device, ptr %25, i32 0, i32 19
  %28 = ptrtoint ptr %is_switch.i.i.i439 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i.i.i440 = load i8, ptr %is_switch.i.i.i439, align 4
  %29 = xor i8 %bf.load.i.i.i440, -1
  %30 = lshr i8 %29, 7
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %27)
  %cmp.not.i442 = icmp ugt i8 %30, %27
  br i1 %cmp.not.i442, label %if.then22.release_qp_crit_edge, label %land.rhs.i444

if.then22.release_qp_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_qp

land.rhs.i444:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i440)
  %tobool.i.i.i443 = icmp slt i8 %bf.load.i.i.i440, 0
  br i1 %tobool.i.i.i443, label %land.rhs.i444.rdma_is_port_valid.exit451_crit_edge, label %cond.false.i.i446

land.rhs.i444.rdma_is_port_valid.exit451_crit_edge: ; preds = %land.rhs.i444
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_is_port_valid.exit451

cond.false.i.i446:                                ; preds = %land.rhs.i444
  call void @__sanitizer_cov_trace_pc() #15
  %phys_port_cnt.i.i445 = getelementptr inbounds %struct.ib_device, ptr %25, i32 0, i32 21
  %31 = ptrtoint ptr %phys_port_cnt.i.i445 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phys_port_cnt.i.i445, align 8
  br label %rdma_is_port_valid.exit451

rdma_is_port_valid.exit451:                       ; preds = %cond.false.i.i446, %land.rhs.i444.rdma_is_port_valid.exit451_crit_edge
  %cond.i.i447 = phi i32 [ %32, %cond.false.i.i446 ], [ 0, %land.rhs.i444.rdma_is_port_valid.exit451_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i447, i32 %conv26)
  %cmp2.i448.not = icmp ult i32 %cond.i.i447, %conv26
  br i1 %cmp2.i448.not, label %rdma_is_port_valid.exit451.release_qp_crit_edge, label %if.end30

rdma_is_port_valid.exit451.release_qp_crit_edge:  ; preds = %rdma_is_port_valid.exit451
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_qp

if.end30:                                         ; preds = %rdma_is_port_valid.exit451
  %and33 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end30.if.else_crit_edge, label %land.lhs.true35

if.end30.if.else_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true35:                                  ; preds = %if.end30
  %qp_state = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 11
  %33 = ptrtoint ptr %qp_state to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %qp_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %cmp38 = icmp eq i8 %34, 2
  br i1 %cmp38, label %if.then40, label %land.lhs.true35.if.else_crit_edge

land.lhs.true35.if.else_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then40:                                        ; preds = %land.lhs.true35
  %real_qp = getelementptr inbounds %struct.ib_qp, ptr %12, i32 0, i32 13
  %35 = ptrtoint ptr %real_qp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %real_qp, align 4
  %port = getelementptr inbounds %struct.ib_qp, ptr %36, i32 0, i32 25
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv26)
  %cmp45.not = icmp eq i32 %38, %conv26
  br i1 %cmp45.not, label %if.then40.if.end81_crit_edge, label %if.then40.release_qp_crit_edge

if.then40.release_qp_crit_edge:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_qp

if.then40.if.end81_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.else:                                          ; preds = %land.lhs.true35.if.else_crit_edge, %if.end30.if.else_crit_edge
  %39 = trunc i32 %14 to i8
  %trunc = and i8 %39, -96
  %40 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %trunc, label %if.else.if.end81_crit_edge [
    i8 -96, label %land.lhs.true54
    i8 -128, label %if.then71
  ]

if.else.if.end81_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

land.lhs.true54:                                  ; preds = %if.else
  %port_num56 = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 19
  %41 = ptrtoint ptr %port_num56 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %port_num56, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %27)
  %cmp62.not = icmp eq i8 %42, %27
  br i1 %cmp62.not, label %land.lhs.true54.if.end81_crit_edge, label %land.lhs.true54.release_qp_crit_edge

land.lhs.true54.release_qp_crit_edge:             ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_qp

land.lhs.true54.if.end81_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then71:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i32 %14, 32
  %43 = ptrtoint ptr %attr_mask to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or, ptr %attr_mask, align 4
  %port_num78 = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 19
  %44 = ptrtoint ptr %port_num78 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %27, ptr %port_num78, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.then71, %land.lhs.true54.if.end81_crit_edge, %if.else.if.end81_crit_edge, %if.then40.if.end81_crit_edge, %if.end17.if.end81_crit_edge
  %45 = ptrtoint ptr %attr_mask to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %attr_mask, align 4
  %and84 = and i32 %46, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end81.if.end109_crit_edge, label %land.lhs.true86

if.end81.if.end109_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

land.lhs.true86:                                  ; preds = %if.end81
  %47 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %12, align 4
  %alt_port_num = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 23
  %49 = ptrtoint ptr %alt_port_num to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %alt_port_num, align 4
  %conv89 = zext i8 %50 to i32
  %is_switch.i.i.i452 = getelementptr inbounds %struct.ib_device, ptr %48, i32 0, i32 19
  %51 = ptrtoint ptr %is_switch.i.i.i452 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i.i.i453 = load i8, ptr %is_switch.i.i.i452, align 4
  %52 = xor i8 %bf.load.i.i.i453, -1
  %53 = lshr i8 %52, 7
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %50)
  %cmp.not.i455 = icmp ugt i8 %53, %50
  br i1 %cmp.not.i455, label %land.lhs.true86.release_qp_crit_edge, label %land.rhs.i457

land.lhs.true86.release_qp_crit_edge:             ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_qp

land.rhs.i457:                                    ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i453)
  %tobool.i.i.i456 = icmp slt i8 %bf.load.i.i.i453, 0
  br i1 %tobool.i.i.i456, label %land.rhs.i457.rdma_is_port_valid.exit464_crit_edge, label %cond.false.i.i459

land.rhs.i457.rdma_is_port_valid.exit464_crit_edge: ; preds = %land.rhs.i457
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_is_port_valid.exit464

cond.false.i.i459:                                ; preds = %land.rhs.i457
  call void @__sanitizer_cov_trace_pc() #15
  %phys_port_cnt.i.i458 = getelementptr inbounds %struct.ib_device, ptr %48, i32 0, i32 21
  %54 = ptrtoint ptr %phys_port_cnt.i.i458 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %phys_port_cnt.i.i458, align 8
  br label %rdma_is_port_valid.exit464

rdma_is_port_valid.exit464:                       ; preds = %cond.false.i.i459, %land.rhs.i457.rdma_is_port_valid.exit464_crit_edge
  %cond.i.i460 = phi i32 [ %55, %cond.false.i.i459 ], [ 0, %land.rhs.i457.rdma_is_port_valid.exit464_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i460, i32 %conv89)
  %cmp2.i461.not = icmp ult i32 %cond.i.i460, %conv89
  br i1 %cmp2.i461.not, label %rdma_is_port_valid.exit464.release_qp_crit_edge, label %lor.lhs.false

rdma_is_port_valid.exit464.release_qp_crit_edge:  ; preds = %rdma_is_port_valid.exit464
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_qp

lor.lhs.false:                                    ; preds = %rdma_is_port_valid.exit464
  %port_num94 = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 1, i32 11
  %56 = ptrtoint ptr %port_num94 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %port_num94, align 1
  %conv95 = zext i8 %57 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %57)
  %cmp.not.i468 = icmp ugt i8 %53, %57
  br i1 %cmp.not.i468, label %lor.lhs.false.release_qp_crit_edge, label %land.rhs.i470

lor.lhs.false.release_qp_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_qp

land.rhs.i470:                                    ; preds = %lor.lhs.false
  br i1 %tobool.i.i.i456, label %land.rhs.i470.rdma_is_port_valid.exit477_crit_edge, label %cond.false.i.i472

land.rhs.i470.rdma_is_port_valid.exit477_crit_edge: ; preds = %land.rhs.i470
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_is_port_valid.exit477

cond.false.i.i472:                                ; preds = %land.rhs.i470
  call void @__sanitizer_cov_trace_pc() #15
  %phys_port_cnt.i.i471 = getelementptr inbounds %struct.ib_device, ptr %48, i32 0, i32 21
  %58 = ptrtoint ptr %phys_port_cnt.i.i471 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %phys_port_cnt.i.i471, align 8
  br label %rdma_is_port_valid.exit477

rdma_is_port_valid.exit477:                       ; preds = %cond.false.i.i472, %land.rhs.i470.rdma_is_port_valid.exit477_crit_edge
  %cond.i.i473 = phi i32 [ %59, %cond.false.i.i472 ], [ 0, %land.rhs.i470.rdma_is_port_valid.exit477_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i473, i32 %conv95)
  %cmp2.i474 = icmp uge i32 %cond.i.i473, %conv95
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %57)
  %cmp106.not = icmp eq i8 %50, %57
  %or.cond = select i1 %cmp2.i474, i1 %cmp106.not, i1 false
  br i1 %or.cond, label %rdma_is_port_valid.exit477.if.end109_crit_edge, label %rdma_is_port_valid.exit477.release_qp_crit_edge

rdma_is_port_valid.exit477.release_qp_crit_edge:  ; preds = %rdma_is_port_valid.exit477
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_qp

rdma_is_port_valid.exit477.if.end109_crit_edge:   ; preds = %rdma_is_port_valid.exit477
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

if.end109:                                        ; preds = %rdma_is_port_valid.exit477.if.end109_crit_edge, %if.end81.if.end109_crit_edge
  %and112 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end109.lor.lhs.false119_crit_edge, label %land.lhs.true114

if.end109.lor.lhs.false119_crit_edge:             ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false119

land.lhs.true114:                                 ; preds = %if.end109
  %cur_qp_state = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 12
  %60 = ptrtoint ptr %cur_qp_state to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cur_qp_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %61)
  %cmp117 = icmp ugt i8 %61, 6
  br i1 %cmp117, label %land.lhs.true114.release_qp_crit_edge, label %land.lhs.true114.lor.lhs.false119_crit_edge

land.lhs.true114.lor.lhs.false119_crit_edge:      ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false119

land.lhs.true114.release_qp_crit_edge:            ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_qp

lor.lhs.false119:                                 ; preds = %land.lhs.true114.lor.lhs.false119_crit_edge, %if.end109.lor.lhs.false119_crit_edge
  %and122 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %lor.lhs.false119.if.end141_crit_edge, label %land.lhs.true124

lor.lhs.false119.if.end141_crit_edge:             ; preds = %lor.lhs.false119
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

land.lhs.true124:                                 ; preds = %lor.lhs.false119
  %qp_state126 = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 11
  %62 = ptrtoint ptr %qp_state126 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %qp_state126, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %63)
  %cmp128 = icmp ugt i8 %63, 6
  br i1 %cmp128, label %land.lhs.true124.release_qp_crit_edge, label %if.then136

land.lhs.true124.release_qp_crit_edge:            ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_qp

if.then136:                                       ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %qp_state126 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %qp_state126, align 8
  %conv139 = zext i8 %65 to i32
  %66 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv139, ptr %call7.i.i, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.then136, %lor.lhs.false119.if.end141_crit_edge
  br i1 %tobool113.not, label %if.end141.if.end151_crit_edge, label %if.then146

if.end141.if.end151_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151

if.then146:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #15
  %cur_qp_state148 = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 12
  %67 = ptrtoint ptr %cur_qp_state148 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %cur_qp_state148, align 1
  %conv149 = zext i8 %68 to i32
  %cur_qp_state150 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %cur_qp_state150 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv149, ptr %cur_qp_state150, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then146, %if.end141.if.end151_crit_edge
  %and154 = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end151.if.end160_crit_edge, label %if.then156

if.end151.if.end160_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end160

if.then156:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #15
  %path_mtu = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 13
  %70 = ptrtoint ptr %path_mtu to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %path_mtu, align 2
  %conv158 = zext i8 %71 to i32
  %path_mtu159 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %path_mtu159 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv158, ptr %path_mtu159, align 8
  br label %if.end160

if.end160:                                        ; preds = %if.then156, %if.end151.if.end160_crit_edge
  %and163 = and i32 %46, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %if.end160.if.end169_crit_edge, label %if.then165

if.end160.if.end169_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end169

if.then165:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #15
  %path_mig_state = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 14
  %73 = ptrtoint ptr %path_mig_state to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %path_mig_state, align 1
  %conv167 = zext i8 %74 to i32
  %path_mig_state168 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 3
  %75 = ptrtoint ptr %path_mig_state168 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv167, ptr %path_mig_state168, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.then165, %if.end160.if.end169_crit_edge
  %and172 = and i32 %46, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %if.end169.if.end177_crit_edge, label %if.then174

if.end169.if.end177_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end177

if.then174:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #15
  %qkey = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 4
  %76 = ptrtoint ptr %qkey to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %qkey, align 8
  %qkey176 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 4
  %78 = ptrtoint ptr %qkey176 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %qkey176, align 8
  br label %if.end177

if.end177:                                        ; preds = %if.then174, %if.end169.if.end177_crit_edge
  %and180 = and i32 %46, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %if.end177.if.end185_crit_edge, label %if.then182

if.end177.if.end185_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.then182:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #15
  %rq_psn = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 5
  %79 = ptrtoint ptr %rq_psn to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rq_psn, align 4
  %rq_psn184 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 5
  %81 = ptrtoint ptr %rq_psn184 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %rq_psn184, align 4
  br label %if.end185

if.end185:                                        ; preds = %if.then182, %if.end177.if.end185_crit_edge
  %and188 = and i32 %46, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  br i1 %tobool189.not, label %if.end185.if.end193_crit_edge, label %if.then190

if.end185.if.end193_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end193

if.then190:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #15
  %sq_psn = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 6
  %82 = ptrtoint ptr %sq_psn to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sq_psn, align 8
  %sq_psn192 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 6
  %84 = ptrtoint ptr %sq_psn192 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %sq_psn192, align 8
  br label %if.end193

if.end193:                                        ; preds = %if.then190, %if.end185.if.end193_crit_edge
  %and196 = and i32 %46, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %if.end193.if.end201_crit_edge, label %if.then198

if.end193.if.end201_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end201

if.then198:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #15
  %dest_qp_num = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 7
  %85 = ptrtoint ptr %dest_qp_num to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dest_qp_num, align 4
  %dest_qp_num200 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 7
  %87 = ptrtoint ptr %dest_qp_num200 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %dest_qp_num200, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.then198, %if.end193.if.end201_crit_edge
  %and204 = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  br i1 %tobool205.not, label %if.end201.if.end209_crit_edge, label %if.then206

if.end201.if.end209_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end209

if.then206:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #15
  %qp_access_flags = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 8
  %88 = ptrtoint ptr %qp_access_flags to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %qp_access_flags, align 8
  %qp_access_flags208 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 8
  %90 = ptrtoint ptr %qp_access_flags208 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %qp_access_flags208, align 8
  br label %if.end209

if.end209:                                        ; preds = %if.then206, %if.end201.if.end209_crit_edge
  %and212 = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  br i1 %tobool213.not, label %if.end209.if.end217_crit_edge, label %if.then214

if.end209.if.end217_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end217

if.then214:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #15
  %pkey_index = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 9
  %91 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %pkey_index, align 4
  %pkey_index216 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 12
  %93 = ptrtoint ptr %pkey_index216 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %pkey_index216, align 8
  br label %if.end217

if.end217:                                        ; preds = %if.then214, %if.end209.if.end217_crit_edge
  %and220 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220)
  %tobool221.not = icmp eq i32 %and220, 0
  br i1 %tobool221.not, label %if.end217.if.end225_crit_edge, label %if.then222

if.end217.if.end225_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end225

if.then222:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #15
  %en_sqd_async_notify = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 15
  %94 = ptrtoint ptr %en_sqd_async_notify to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %en_sqd_async_notify, align 4
  %en_sqd_async_notify224 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 14
  %96 = ptrtoint ptr %en_sqd_async_notify224 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %en_sqd_async_notify224, align 4
  br label %if.end225

if.end225:                                        ; preds = %if.then222, %if.end217.if.end225_crit_edge
  %and228 = and i32 %46, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228)
  %tobool229.not = icmp eq i32 %and228, 0
  br i1 %tobool229.not, label %if.end225.if.end233_crit_edge, label %if.then230

if.end225.if.end233_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end233

if.then230:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #15
  %max_rd_atomic = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 16
  %97 = ptrtoint ptr %max_rd_atomic to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %max_rd_atomic, align 1
  %max_rd_atomic232 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 16
  %99 = ptrtoint ptr %max_rd_atomic232 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %max_rd_atomic232, align 2
  br label %if.end233

if.end233:                                        ; preds = %if.then230, %if.end225.if.end233_crit_edge
  %and236 = and i32 %46, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and236)
  %tobool237.not = icmp eq i32 %and236, 0
  br i1 %tobool237.not, label %if.end233.if.end241_crit_edge, label %if.then238

if.end233.if.end241_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end241

if.then238:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #15
  %max_dest_rd_atomic = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 17
  %100 = ptrtoint ptr %max_dest_rd_atomic to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %max_dest_rd_atomic, align 2
  %max_dest_rd_atomic240 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 17
  %102 = ptrtoint ptr %max_dest_rd_atomic240 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %max_dest_rd_atomic240, align 1
  br label %if.end241

if.end241:                                        ; preds = %if.then238, %if.end233.if.end241_crit_edge
  %and244 = and i32 %46, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %tobool245.not = icmp eq i32 %and244, 0
  br i1 %tobool245.not, label %if.end241.if.end249_crit_edge, label %if.then246

if.end241.if.end249_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end249

if.then246:                                       ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #15
  %min_rnr_timer = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 18
  %103 = ptrtoint ptr %min_rnr_timer to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %min_rnr_timer, align 1
  %min_rnr_timer248 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 18
  %105 = ptrtoint ptr %min_rnr_timer248 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %min_rnr_timer248, align 8
  br label %if.end249

if.end249:                                        ; preds = %if.then246, %if.end241.if.end249_crit_edge
  %and252 = and i32 %46, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and252)
  %tobool253.not = icmp eq i32 %and252, 0
  br i1 %tobool253.not, label %if.end249.if.end259_crit_edge, label %if.then254

if.end249.if.end259_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end259

if.then254:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #15
  %port_num256 = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 19
  %106 = ptrtoint ptr %port_num256 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %port_num256, align 8
  %conv257 = zext i8 %107 to i32
  %port_num258 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 19
  %108 = ptrtoint ptr %port_num258 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %conv257, ptr %port_num258, align 4
  br label %if.end259

if.end259:                                        ; preds = %if.then254, %if.end249.if.end259_crit_edge
  %and262 = and i32 %46, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262)
  %tobool263.not = icmp eq i32 %and262, 0
  br i1 %tobool263.not, label %if.end259.if.end267_crit_edge, label %if.then264

if.end259.if.end267_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end267

if.then264:                                       ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #15
  %timeout = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 20
  %109 = ptrtoint ptr %timeout to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %timeout, align 1
  %timeout266 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 20
  %111 = ptrtoint ptr %timeout266 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %timeout266, align 8
  br label %if.end267

if.end267:                                        ; preds = %if.then264, %if.end259.if.end267_crit_edge
  %and270 = and i32 %46, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and270)
  %tobool271.not = icmp eq i32 %and270, 0
  br i1 %tobool271.not, label %if.end267.if.end275_crit_edge, label %if.then272

if.end267.if.end275_crit_edge:                    ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end275

if.then272:                                       ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #15
  %retry_cnt = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 21
  %112 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %retry_cnt, align 2
  %retry_cnt274 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 21
  %114 = ptrtoint ptr %retry_cnt274 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %retry_cnt274, align 1
  br label %if.end275

if.end275:                                        ; preds = %if.then272, %if.end267.if.end275_crit_edge
  %and278 = and i32 %46, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and278)
  %tobool279.not = icmp eq i32 %and278, 0
  br i1 %tobool279.not, label %if.end275.if.end283_crit_edge, label %if.then280

if.end275.if.end283_crit_edge:                    ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end283

if.then280:                                       ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #15
  %rnr_retry = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 22
  %115 = ptrtoint ptr %rnr_retry to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %rnr_retry, align 1
  %rnr_retry282 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 22
  %117 = ptrtoint ptr %rnr_retry282 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %rnr_retry282, align 2
  br label %if.end283

if.end283:                                        ; preds = %if.then280, %if.end275.if.end283_crit_edge
  br i1 %tobool85.not, label %if.end283.if.end297_crit_edge, label %if.then288

if.end283.if.end297_crit_edge:                    ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end297

if.then288:                                       ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #15
  %alt_port_num290 = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 23
  %118 = ptrtoint ptr %alt_port_num290 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %alt_port_num290, align 4
  %conv291 = zext i8 %119 to i32
  %alt_port_num292 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 23
  %120 = ptrtoint ptr %alt_port_num292 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %conv291, ptr %alt_port_num292, align 4
  %alt_timeout = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 24
  %121 = ptrtoint ptr %alt_timeout to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %alt_timeout, align 1
  %alt_timeout294 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 24
  %123 = ptrtoint ptr %alt_timeout294 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %alt_timeout294, align 8
  %alt_pkey_index = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 10
  %124 = ptrtoint ptr %alt_pkey_index to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %alt_pkey_index, align 2
  %alt_pkey_index296 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 13
  %126 = ptrtoint ptr %alt_pkey_index296 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %alt_pkey_index296, align 2
  br label %if.end297

if.end297:                                        ; preds = %if.then288, %if.end283.if.end297_crit_edge
  %and300 = and i32 %46, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and300)
  %tobool301.not = icmp eq i32 %and300, 0
  br i1 %tobool301.not, label %if.end297.if.end304_crit_edge, label %if.then302

if.end297.if.end304_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end304

if.then302:                                       ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #15
  %rate_limit = getelementptr inbounds %struct.ib_uverbs_ex_modify_qp, ptr %cmd, i32 0, i32 1
  %127 = ptrtoint ptr %rate_limit to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rate_limit, align 8
  %rate_limit303 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 25
  %129 = ptrtoint ptr %rate_limit303 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %rate_limit303, align 4
  br label %if.end304

if.end304:                                        ; preds = %if.then302, %if.end297.if.end304_crit_edge
  %and307 = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and307)
  %tobool308.not = icmp eq i32 %and307, 0
  br i1 %tobool308.not, label %if.end304.if.end313_crit_edge, label %if.then309

if.end304.if.end313_crit_edge:                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end313

if.then309:                                       ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #15
  %130 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %12, align 4
  %ah_attr = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 10
  tail call fastcc void @copy_ah_attr_from_uverbs(ptr noundef %131, ptr noundef %ah_attr, ptr noundef %cmd)
  br label %if.end313

if.end313:                                        ; preds = %if.then309, %if.end304.if.end313_crit_edge
  %132 = ptrtoint ptr %attr_mask to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %attr_mask, align 4
  %and316 = and i32 %133, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and316)
  %tobool317.not = icmp eq i32 %and316, 0
  br i1 %tobool317.not, label %if.end313.if.end322_crit_edge, label %if.then318

if.end313.if.end322_crit_edge:                    ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end322

if.then318:                                       ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #15
  %134 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %12, align 4
  %alt_ah_attr = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i.i, i32 0, i32 11
  %alt_dest321 = getelementptr inbounds %struct.ib_uverbs_modify_qp, ptr %cmd, i32 0, i32 1
  tail call fastcc void @copy_ah_attr_from_uverbs(ptr noundef %135, ptr noundef %alt_ah_attr, ptr noundef %alt_dest321)
  br label %if.end322

if.end322:                                        ; preds = %if.then318, %if.end313.if.end322_crit_edge
  %qp_type = getelementptr inbounds %struct.ib_qp, ptr %12, i32 0, i32 22
  %136 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %qp_type, align 4
  %138 = ptrtoint ptr %attr_mask to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %attr_mask, align 4
  %140 = zext i32 %137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %140, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %137, label %if.end322.modify_qp_mask.exit_crit_edge [
    i32 9, label %sw.bb.i
    i32 10, label %sw.bb1.i
  ]

if.end322.modify_qp_mask.exit_crit_edge:          ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #15
  br label %modify_qp_mask.exit

sw.bb.i:                                          ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #15
  %and.i = and i32 %139, -163841
  br label %modify_qp_mask.exit

sw.bb1.i:                                         ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #15
  %and2.i = and i32 %139, -11265
  br label %modify_qp_mask.exit

modify_qp_mask.exit:                              ; preds = %sw.bb1.i, %sw.bb.i, %if.end322.modify_qp_mask.exit_crit_edge
  %retval.0.i478 = phi i32 [ %and2.i, %sw.bb1.i ], [ %and.i, %sw.bb.i ], [ %139, %if.end322.modify_qp_mask.exit_crit_edge ]
  %call326 = tail call i32 @ib_modify_qp_with_udata(ptr noundef nonnull %12, ptr noundef nonnull %call7.i.i, i32 noundef %retval.0.i478, ptr noundef %attrs) #13
  br label %release_qp

release_qp:                                       ; preds = %modify_qp_mask.exit, %land.lhs.true124.release_qp_crit_edge, %land.lhs.true114.release_qp_crit_edge, %rdma_is_port_valid.exit477.release_qp_crit_edge, %lor.lhs.false.release_qp_crit_edge, %rdma_is_port_valid.exit464.release_qp_crit_edge, %land.lhs.true86.release_qp_crit_edge, %land.lhs.true54.release_qp_crit_edge, %if.then40.release_qp_crit_edge, %rdma_is_port_valid.exit451.release_qp_crit_edge, %if.then22.release_qp_crit_edge, %rdma_is_port_valid.exit.release_qp_crit_edge, %land.lhs.true.release_qp_crit_edge
  %ret.0 = phi i32 [ %call326, %modify_qp_mask.exit ], [ -22, %rdma_is_port_valid.exit.release_qp_crit_edge ], [ -22, %rdma_is_port_valid.exit451.release_qp_crit_edge ], [ -22, %if.then40.release_qp_crit_edge ], [ -22, %land.lhs.true54.release_qp_crit_edge ], [ -22, %rdma_is_port_valid.exit477.release_qp_crit_edge ], [ -22, %rdma_is_port_valid.exit464.release_qp_crit_edge ], [ -22, %land.lhs.true124.release_qp_crit_edge ], [ -22, %land.lhs.true114.release_qp_crit_edge ], [ -22, %land.lhs.true.release_qp_crit_edge ], [ -22, %if.then22.release_qp_crit_edge ], [ -22, %land.lhs.true86.release_qp_crit_edge ], [ -22, %lor.lhs.false.release_qp_crit_edge ]
  %uobject = getelementptr inbounds %struct.ib_qp, ptr %12, i32 0, i32 14
  %141 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %uobject, align 4
  tail call void @rdma_lookup_put_uobject(ptr noundef %142, i32 noundef 0) #13
  br label %out

out:                                              ; preds = %release_qp, %_uobj_get_obj_read.exit.out_crit_edge, %if.end.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %release_qp ], [ -22, %_uobj_get_obj_read.exit.out_crit_edge ], [ -22, %if.end.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @copy_ah_attr_from_uverbs(ptr nocapture noundef readonly %dev, ptr nocapture noundef %rdma_attr, ptr nocapture noundef readonly %uverb_attr) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %port_num = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %uverb_attr, i32 0, i32 11
  %0 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_num, align 1
  %conv = zext i8 %1 to i32
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 11
  %2 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %3, i32 %conv, i32 1, i32 2
  %4 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %5, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %entry.rdma_ah_find_type.exit_crit_edge

entry.rdma_ah_find_type.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_ah_find_type.exit

if.end.i:                                         ; preds = %entry
  %and.i13.i = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.i14.not.i = icmp eq i32 %and.i13.i, 0
  br i1 %tobool.i14.not.i, label %if.end.i.rdma_ah_find_type.exit_crit_edge, label %if.then2.i

if.end.i.rdma_ah_find_type.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rdma_ah_find_type.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %and.i17.i = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %cmp.i.not.i = icmp eq i32 %and.i17.i, 0
  %..i = select i1 %cmp.i.not.i, i32 1, i32 3
  br label %rdma_ah_find_type.exit

rdma_ah_find_type.exit:                           ; preds = %if.then2.i, %if.end.i.rdma_ah_find_type.exit_crit_edge, %entry.rdma_ah_find_type.exit_crit_edge
  %retval.0.i = phi i32 [ 2, %entry.rdma_ah_find_type.exit_crit_edge ], [ %..i, %if.then2.i ], [ 0, %if.end.i.rdma_ah_find_type.exit_crit_edge ]
  %type = getelementptr inbounds %struct.rdma_ah_attr, ptr %rdma_attr, i32 0, i32 5
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i, ptr %type, align 4
  %is_global = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %uverb_attr, i32 0, i32 10
  %7 = ptrtoint ptr %is_global to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_global, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %rdma_ah_find_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  %flow_label = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %uverb_attr, i32 0, i32 1
  %9 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flow_label, align 4
  %sgid_index = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %uverb_attr, i32 0, i32 4
  %11 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sgid_index, align 4
  %hop_limit = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %uverb_attr, i32 0, i32 5
  %13 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hop_limit, align 1
  %traffic_class = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %uverb_attr, i32 0, i32 6
  %15 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %traffic_class, align 2
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %rdma_attr, i32 0, i32 4
  %17 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %ah_flags.i, align 8
  %flow_label2.i = getelementptr inbounds %struct.ib_global_route, ptr %rdma_attr, i32 0, i32 2
  %18 = ptrtoint ptr %flow_label2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %10, ptr %flow_label2.i, align 8
  %sgid_index3.i = getelementptr inbounds %struct.ib_global_route, ptr %rdma_attr, i32 0, i32 3
  %19 = ptrtoint ptr %sgid_index3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %12, ptr %sgid_index3.i, align 4
  %hop_limit4.i = getelementptr inbounds %struct.ib_global_route, ptr %rdma_attr, i32 0, i32 4
  %20 = ptrtoint ptr %hop_limit4.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %14, ptr %hop_limit4.i, align 1
  %traffic_class5.i = getelementptr inbounds %struct.ib_global_route, ptr %rdma_attr, i32 0, i32 5
  %21 = ptrtoint ptr %traffic_class5.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %16, ptr %traffic_class5.i, align 2
  %22 = ptrtoint ptr %rdma_attr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %rdma_attr, align 8
  %dgid1.i = getelementptr inbounds %struct.ib_global_route, ptr %rdma_attr, i32 0, i32 1
  %23 = call ptr @memcpy(ptr %dgid1.i, ptr %uverb_attr, i32 16)
  br label %if.end

if.else:                                          ; preds = %rdma_ah_find_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  %ah_flags.i24 = getelementptr inbounds %struct.rdma_ah_attr, ptr %rdma_attr, i32 0, i32 4
  %24 = ptrtoint ptr %ah_flags.i24 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %ah_flags.i24, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dlid = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %uverb_attr, i32 0, i32 2
  %25 = ptrtoint ptr %dlid to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %dlid, align 4
  %27 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %retval.0.i, label %rdma_ah_set_dlid.exit [
    i32 1, label %rdma_ah_set_dlid.exit.thread
    i32 3, label %rdma_ah_set_dlid.exit.thread33
  ]

rdma_ah_set_dlid.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %28 = getelementptr inbounds %struct.rdma_ah_attr, ptr %rdma_attr, i32 0, i32 6
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %26, ptr %28, align 8
  %sl30 = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %uverb_attr, i32 0, i32 7
  %30 = ptrtoint ptr %sl30 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sl30, align 1
  %sl1.i31 = getelementptr inbounds %struct.rdma_ah_attr, ptr %rdma_attr, i32 0, i32 1
  %32 = ptrtoint ptr %sl1.i31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %sl1.i31, align 8
  %src_path_bits32 = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %uverb_attr, i32 0, i32 8
  %33 = ptrtoint ptr %src_path_bits32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %src_path_bits32, align 4
  %src_path_bits1.i = getelementptr inbounds %struct.ib_ah_attr, ptr %28, i32 0, i32 1
  %35 = ptrtoint ptr %src_path_bits1.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %src_path_bits1.i, align 2
  br label %rdma_ah_set_path_bits.exit.thread

rdma_ah_set_dlid.exit.thread33:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv1 = zext i16 %26 to i32
  %36 = getelementptr inbounds %struct.rdma_ah_attr, ptr %rdma_attr, i32 0, i32 6
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv1, ptr %36, align 8
  %sl34 = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %uverb_attr, i32 0, i32 7
  %38 = ptrtoint ptr %sl34 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sl34, align 1
  %sl1.i35 = getelementptr inbounds %struct.rdma_ah_attr, ptr %rdma_attr, i32 0, i32 1
  %40 = ptrtoint ptr %sl1.i35 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %sl1.i35, align 8
  %src_path_bits36 = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %uverb_attr, i32 0, i32 8
  %41 = ptrtoint ptr %src_path_bits36 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %src_path_bits36, align 4
  %src_path_bits5.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %rdma_attr, i32 0, i32 6, i32 0, i32 1
  %43 = ptrtoint ptr %src_path_bits5.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %src_path_bits5.i, align 4
  %static_rate = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %uverb_attr, i32 0, i32 9
  %44 = ptrtoint ptr %static_rate to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %static_rate, align 1
  %static_rate1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %rdma_attr, i32 0, i32 2
  %46 = ptrtoint ptr %static_rate1.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %static_rate1.i, align 1
  %47 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %port_num, align 1
  %conv3 = zext i8 %48 to i32
  %port_num1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %rdma_attr, i32 0, i32 3
  %49 = ptrtoint ptr %port_num1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv3, ptr %port_num1.i, align 4
  %make_grd1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %rdma_attr, i32 0, i32 6, i32 0, i32 2
  %50 = ptrtoint ptr %make_grd1.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %make_grd1.i, align 1
  br label %rdma_ah_set_make_grd.exit

rdma_ah_set_dlid.exit:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sl = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %uverb_attr, i32 0, i32 7
  %51 = ptrtoint ptr %sl to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sl, align 1
  %sl1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %rdma_attr, i32 0, i32 1
  %53 = ptrtoint ptr %sl1.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %sl1.i, align 8
  br label %rdma_ah_set_path_bits.exit.thread

rdma_ah_set_path_bits.exit.thread:                ; preds = %rdma_ah_set_dlid.exit, %rdma_ah_set_dlid.exit.thread
  %static_rate37 = getelementptr inbounds %struct.ib_uverbs_qp_dest, ptr %uverb_attr, i32 0, i32 9
  %54 = ptrtoint ptr %static_rate37 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %static_rate37, align 1
  %static_rate1.i38 = getelementptr inbounds %struct.rdma_ah_attr, ptr %rdma_attr, i32 0, i32 2
  %56 = ptrtoint ptr %static_rate1.i38 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %static_rate1.i38, align 1
  %57 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %port_num, align 1
  %conv339 = zext i8 %58 to i32
  %port_num1.i40 = getelementptr inbounds %struct.rdma_ah_attr, ptr %rdma_attr, i32 0, i32 3
  %59 = ptrtoint ptr %port_num1.i40 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv339, ptr %port_num1.i40, align 4
  br label %rdma_ah_set_make_grd.exit

rdma_ah_set_make_grd.exit:                        ; preds = %rdma_ah_set_path_bits.exit.thread, %rdma_ah_set_dlid.exit.thread33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_modify_qp_with_udata(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ib_uverbs_unmarshall_recv(ptr nocapture noundef %iter, i32 noundef %wr_count, i32 noundef %wqe_size, i32 noundef %sge_count) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %wqe_size)
  %cmp = icmp ult i32 %wqe_size, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = mul i32 %wqe_size, %wr_count
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iter, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul
  %end.i = getelementptr inbounds %struct.uverbs_req_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %cmp.i188 = icmp ugt ptr %add.ptr.i, %3
  br i1 %cmp.i188, label %if.end.cleanup_crit_edge, label %uverbs_request_next_ptr.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

uverbs_request_next_ptr.exit:                     ; preds = %if.end
  %4 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %iter, align 4
  %cmp.i190 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %uverbs_request_next_ptr.exit.cleanup_crit_edge, label %if.end5

uverbs_request_next_ptr.exit.cleanup_crit_edge:   ; preds = %uverbs_request_next_ptr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %uverbs_request_next_ptr.exit
  %mul6 = shl i32 %sge_count, 4
  %5 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iter, align 4
  %add.ptr.i191 = getelementptr i8, ptr %6, i32 %mul6
  %cmp.i193 = icmp ugt ptr %add.ptr.i191, %3
  br i1 %cmp.i193, label %if.end5.cleanup_crit_edge, label %uverbs_request_next_ptr.exit196

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

uverbs_request_next_ptr.exit196:                  ; preds = %if.end5
  %7 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i191, ptr %iter, align 4
  %cmp.i197 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %uverbs_request_next_ptr.exit196.cleanup_crit_edge, label %if.end11

uverbs_request_next_ptr.exit196.cleanup_crit_edge: ; preds = %uverbs_request_next_ptr.exit196
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %uverbs_request_next_ptr.exit196
  %8 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iter, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub.ptr.sub.i)
  %cmp.i.i199 = icmp ugt i32 %sub.ptr.sub.i, 65535
  br i1 %cmp.i.i199, label %if.end11.cleanup_crit_edge, label %if.end.i.i201

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i201:                                    ; preds = %if.end11
  %call.i.i200 = tail call ptr @memdup_user(ptr noundef %9, i32 noundef %sub.ptr.sub.i) #13
  %cmp.i.i.i = icmp ugt ptr %call.i.i200, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.i.i201.cleanup_crit_edge, label %ib_is_buffer_cleared.exit.i

if.end.i.i201.cleanup_crit_edge:                  ; preds = %if.end.i.i201
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

ib_is_buffer_cleared.exit.i:                      ; preds = %if.end.i.i201
  %call4.i.i = tail call ptr @memchr_inv(ptr noundef %call.i.i200, i32 noundef 0, i32 noundef %sub.ptr.sub.i) #13
  %tobool.not.i.i202 = icmp eq ptr %call4.i.i, null
  tail call void @kfree(ptr noundef %call.i.i200) #13
  br i1 %tobool.not.i.i202, label %if.end8.i, label %ib_is_buffer_cleared.exit.i.cleanup_crit_edge

ib_is_buffer_cleared.exit.i.cleanup_crit_edge:    ; preds = %ib_is_buffer_cleared.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i:                                        ; preds = %ib_is_buffer_cleared.exit.i
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %wqe_size, i32 noundef 3264) #16
  %tobool17.not = icmp eq ptr %call9.i, null
  br i1 %tobool17.not, label %if.end8.i.cleanup_crit_edge, label %for.cond.preheader

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wr_count)
  %cmp21240.not = icmp eq i32 %wr_count, 0
  br i1 %cmp21240.not, label %for.cond.preheader.cleanup.sink.split_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wqe_size)
  %cmp9.i.i = icmp slt i32 %wqe_size, 0
  %num_sge = getelementptr inbounds %struct.ib_uverbs_recv_wr, ptr %call9.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0244 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sg_ind.0243 = phi i32 [ 0, %for.body.lr.ph ], [ %sg_ind.1, %for.inc.for.body_crit_edge ]
  %last.0242 = phi ptr [ null, %for.body.lr.ph ], [ %call9.i150, %for.inc.for.body_crit_edge ]
  %wr.0241 = phi ptr [ null, %for.body.lr.ph ], [ %wr.1, %for.inc.for.body_crit_edge ]
  %mul22 = mul i32 %i.0244, %wqe_size
  %add.ptr = getelementptr i8, ptr %1, i32 %mul22
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %for.body
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup.sink.split_crit_edge, label %if.then27.i.i, !prof !54

land.rhs16.i.i.cleanup.sink.split_crit_edge:      ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %cleanup.sink.split

if.then.i.i.i:                                    ; preds = %for.body
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %wqe_size, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i123_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i123_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i123

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %wqe_size, i32 -1226833920) #18, !srcloc !57
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i123_crit_edge, !prof !54

land.lhs.true.i.i.if.end.i.i123_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i123

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef %wqe_size) #13
  %11 = tail call i32 @llvm.read_register.i32(metadata !37) #13
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !58
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !60
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i, ptr noundef %add.ptr, i32 noundef %wqe_size) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #13, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !60
  br label %if.end.i.i123

if.end.i.i123:                                    ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i123_crit_edge, %if.then.i.i.i.if.end.i.i123_crit_edge
  %res.0.i.i = phi i32 [ %wqe_size, %if.then.i.i.i.if.end.i.i123_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %wqe_size, %land.lhs.true.i.i.if.end.i.i123_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end26, label %if.then11.i.i, !prof !54

if.then11.i.i:                                    ; preds = %if.end.i.i123
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %wqe_size, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call9.i, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %err

if.end26:                                         ; preds = %if.end.i.i123
  %15 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_sge, align 8
  %add = add i32 %16, %sg_ind.0243
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sge_count)
  %cmp27 = icmp ugt i32 %add, %sge_count
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435452, i32 %16)
  %cmp31 = icmp ugt i32 %16, 268435452
  %or.cond = or i1 %cmp31, %cmp27
  br i1 %or.cond, label %if.end26.err_crit_edge, label %if.end8.i151

if.end26.err_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end8.i151:                                     ; preds = %if.end26
  %mul35 = shl nuw i32 %16, 4
  %add36 = add nuw i32 %mul35, 32
  %call9.i150 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add36, i32 noundef 3264) #16
  %tobool38.not = icmp eq ptr %call9.i150, null
  br i1 %tobool38.not, label %if.end8.i151.err_crit_edge, label %if.end40

if.end8.i151.err_crit_edge:                       ; preds = %if.end8.i151
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end40:                                         ; preds = %if.end8.i151
  %tobool41.not = icmp eq ptr %last.0242, null
  br i1 %tobool41.not, label %if.end40.if.end44_crit_edge, label %if.else

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.else:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %last.0242 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i150, ptr %last.0242, align 128
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.end40.if.end44_crit_edge
  %wr.1 = phi ptr [ %wr.0241, %if.else ], [ %call9.i150, %if.end40.if.end44_crit_edge ]
  %18 = ptrtoint ptr %call9.i150 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %call9.i150, align 128
  %19 = ptrtoint ptr %call9.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %call9.i, align 128
  %21 = getelementptr inbounds %struct.ib_recv_wr, ptr %call9.i150, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %20, ptr %21, align 8
  %23 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_sge, align 8
  %num_sge47 = getelementptr inbounds %struct.ib_recv_wr, ptr %call9.i150, i32 0, i32 3
  %25 = ptrtoint ptr %num_sge47 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %num_sge47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool49.not = icmp eq i32 %24, 0
  br i1 %tobool49.not, label %if.else62, label %if.then50

if.then50:                                        ; preds = %if.end44
  %add.ptr51 = getelementptr i8, ptr %call9.i150, i32 32
  %sg_list = getelementptr inbounds %struct.ib_recv_wr, ptr %call9.i150, i32 0, i32 2
  %26 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr51, ptr %sg_list, align 16
  %add.ptr53 = getelementptr %struct.ib_sge, ptr %6, i32 %sg_ind.0243
  %mul55 = shl i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul55)
  %cmp9.i.i160 = icmp slt i32 %mul55, 0
  br i1 %cmp9.i.i160, label %land.rhs16.i.i163, label %if.then.i.i.i166

land.rhs16.i.i163:                                ; preds = %if.then50
  %.b71.i.i162 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i162, label %land.rhs16.i.i163.err_crit_edge, label %if.then27.i.i164, !prof !54

land.rhs16.i.i163.err_crit_edge:                  ; preds = %land.rhs16.i.i163
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.then27.i.i164:                                 ; preds = %land.rhs16.i.i163
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %err

if.then.i.i.i166:                                 ; preds = %if.then50
  tail call void @__check_object_size(ptr noundef %add.ptr51, i32 noundef %mul55, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i167 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i167, label %if.then.i.i.i166.if.end.i.i181_crit_edge, label %land.lhs.true.i.i171

if.then.i.i.i166.if.end.i.i181_crit_edge:         ; preds = %if.then.i.i.i166
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i181

land.lhs.true.i.i171:                             ; preds = %if.then.i.i.i166
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr53, i32 %mul55, i32 -1226833920) #18, !srcloc !57
  %asmresult.i.i169 = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i169)
  %cmp.i6.i170 = icmp eq i32 %asmresult.i.i169, 0
  br i1 %cmp.i6.i170, label %if.then.i7.i178, label %land.lhs.true.i.i171.if.end.i.i181_crit_edge, !prof !54

land.lhs.true.i.i171.if.end.i.i181_crit_edge:     ; preds = %land.lhs.true.i.i171
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i181

if.then.i7.i178:                                  ; preds = %land.lhs.true.i.i171
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i172 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr51, i32 noundef %mul55) #13
  %28 = tail call i32 @llvm.read_register.i32(metadata !37) #13
  %and.i.i.i.i.i.i173 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i173 to ptr
  %cpu_domain.i.i.i.i.i174 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i174) #8, !srcloc !58
  %and.i.i.i.i175 = and i32 %30, -13
  %or.i.i.i.i176 = or i32 %and.i.i.i.i175, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i176) #13, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !60
  %call1.i.i.i177 = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr51, ptr noundef %add.ptr53, i32 noundef %mul55) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #13, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !60
  br label %if.end.i.i181

if.end.i.i181:                                    ; preds = %if.then.i7.i178, %land.lhs.true.i.i171.if.end.i.i181_crit_edge, %if.then.i.i.i166.if.end.i.i181_crit_edge
  %res.0.i.i179 = phi i32 [ %mul55, %if.then.i.i.i166.if.end.i.i181_crit_edge ], [ %call1.i.i.i177, %if.then.i7.i178 ], [ %mul55, %land.lhs.true.i.i171.if.end.i.i181_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i179)
  %tobool4.not.i.i180 = icmp eq i32 %res.0.i.i179, 0
  br i1 %tobool4.not.i.i180, label %if.end59, label %if.then11.i.i184, !prof !54

if.then11.i.i184:                                 ; preds = %if.end.i.i181
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i182 = sub i32 %mul55, %res.0.i.i179
  %add.ptr.i.i183 = getelementptr i8, ptr %add.ptr51, i32 %sub.i.i182
  %31 = call ptr @memset(ptr %add.ptr.i.i183, i32 0, i32 %res.0.i.i179)
  br label %err

if.end59:                                         ; preds = %if.end.i.i181
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %num_sge47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_sge47, align 4
  %add61 = add i32 %33, %sg_ind.0243
  br label %for.inc

if.else62:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %sg_list63 = getelementptr inbounds %struct.ib_recv_wr, ptr %call9.i150, i32 0, i32 2
  %34 = ptrtoint ptr %sg_list63 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %sg_list63, align 16
  br label %for.inc

for.inc:                                          ; preds = %if.else62, %if.end59
  %sg_ind.1 = phi i32 [ %add61, %if.end59 ], [ %sg_ind.0243, %if.else62 ]
  %inc = add nuw i32 %i.0244, 1
  %exitcond.not = icmp eq i32 %inc, %wr_count
  br i1 %exitcond.not, label %for.inc.cleanup.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

err:                                              ; preds = %if.then11.i.i184, %if.then27.i.i164, %land.rhs16.i.i163.err_crit_edge, %if.end8.i151.err_crit_edge, %if.end26.err_crit_edge, %if.then11.i.i
  %wr.2 = phi ptr [ %wr.0241, %if.then11.i.i ], [ %wr.1, %if.then11.i.i184 ], [ %wr.1, %if.then27.i.i164 ], [ %wr.1, %land.rhs16.i.i163.err_crit_edge ], [ %wr.0241, %if.end26.err_crit_edge ], [ %wr.0241, %if.end8.i151.err_crit_edge ]
  %ret.0 = phi ptr [ inttoptr (i32 -14 to ptr), %if.then11.i.i ], [ inttoptr (i32 -14 to ptr), %if.then11.i.i184 ], [ inttoptr (i32 -14 to ptr), %if.then27.i.i164 ], [ inttoptr (i32 -14 to ptr), %land.rhs16.i.i163.err_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i151.err_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end26.err_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  %tobool65.not245 = icmp eq ptr %wr.2, null
  br i1 %tobool65.not245, label %err.cleanup_crit_edge, label %err.while.body_crit_edge

err.while.body_crit_edge:                         ; preds = %err
  br label %while.body

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err.while.body_crit_edge
  %wr.3246 = phi ptr [ %36, %while.body.while.body_crit_edge ], [ %wr.2, %err.while.body_crit_edge ]
  %35 = ptrtoint ptr %wr.3246 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wr.3246, align 8
  tail call void @kfree(ptr noundef nonnull %wr.3246) #13
  %tobool65.not = icmp eq ptr %36, null
  br i1 %tobool65.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.inc.cleanup.sink.split_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup.sink.split_crit_edge, %for.cond.preheader.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ null, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.then27.i.i ], [ inttoptr (i32 -14 to ptr), %land.rhs16.i.i.cleanup.sink.split_crit_edge ], [ %wr.1, %for.inc.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.body.cleanup_crit_edge, %err.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %ib_is_buffer_cleared.exit.i.cleanup_crit_edge, %if.end.i.i201.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %uverbs_request_next_ptr.exit196.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %uverbs_request_next_ptr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %1, %uverbs_request_next_ptr.exit.cleanup_crit_edge ], [ %6, %uverbs_request_next_ptr.exit196.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.cleanup_crit_edge ], [ inttoptr (i32 -28 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -28 to ptr), %if.end5.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end11.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end.i.i201.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %ib_is_buffer_cleared.exit.i.cleanup_crit_edge ], [ %ret.0, %err.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ %ret.0, %while.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_qp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_wq_event_handler(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__uverbs_create_xsrq(ptr noundef %attrs, ptr nocapture noundef readonly %cmd, ptr noundef %udata) unnamed_addr #1 align 64 {
entry:
  %resp = alloca %struct.ib_uverbs_create_srq_resp, align 4
  %attr = alloca %struct.ib_srq_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %resp) #13
  %0 = call ptr @memset(ptr %resp, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %attr) #13
  %1 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %attr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %attr, i32 0, i32 2, i32 1
  %3 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %attr, i32 0, i32 2, i32 2
  %4 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %attr, i32 0, i32 3
  %5 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %attr, i32 0, i32 4
  %6 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %attr, i32 0, i32 4, i32 1
  %ufile = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 2
  %7 = call ptr @memset(ptr %attr, i32 255, i32 32)
  %8 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ufile, align 8
  %device = getelementptr inbounds %struct.ib_uverbs_file, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %uapi = getelementptr inbounds %struct.ib_uverbs_device, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %uapi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %uapi, align 4
  %call4.i = tail call ptr @radix_tree_lookup(ptr noundef %13, i32 noundef 10240) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -2 to ptr), ptr %call4.i
  %call.i = tail call ptr @rdma_alloc_begin_uobject(ptr noundef %spec.select.i, ptr noundef %attrs) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %srq_type = getelementptr inbounds %struct.ib_uverbs_create_xsrq, ptr %cmd, i32 0, i32 2
  %15 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %srq_type, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %16, label %if.end.if.end28_crit_edge [
    i32 2, label %if.end6.thread
    i32 1, label %if.then9
  ]

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.end6.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %max_num_tags = getelementptr inbounds %struct.ib_uverbs_create_xsrq, ptr %cmd, i32 0, i32 7
  %18 = ptrtoint ptr %max_num_tags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_num_tags, align 4
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %6, align 4
  br label %if.end28

if.then9:                                         ; preds = %if.end
  %21 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ufile, align 8
  %device11 = getelementptr inbounds %struct.ib_uverbs_file, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %device11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device11, align 4
  %uapi12 = getelementptr inbounds %struct.ib_uverbs_device, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %uapi12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %uapi12, align 4
  %call4.i217 = tail call ptr @radix_tree_lookup(ptr noundef %26, i32 noundef 20480) #13
  %tobool.not.i218 = icmp eq ptr %call4.i217, null
  %spec.select.i219 = select i1 %tobool.not.i218, ptr inttoptr (i32 -2 to ptr), ptr %call4.i217
  %27 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ufile, align 8
  %xrcd_handle = getelementptr inbounds %struct.ib_uverbs_create_xsrq, ptr %cmd, i32 0, i32 8
  %29 = ptrtoint ptr %xrcd_handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %xrcd_handle, align 8
  %conv16 = zext i32 %30 to i64
  %call17 = tail call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i219, ptr noundef %28, i64 noundef %conv16, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i220 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220, label %if.then9.err_crit_edge, label %if.end20

if.then9.err_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end20:                                         ; preds = %if.then9
  %object = getelementptr inbounds %struct.ib_uobject, ptr %call17, i32 0, i32 3
  %31 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %object, align 8
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %6, align 4
  %tobool.not = icmp eq ptr %32, null
  br i1 %tobool.not, label %if.end20.err_put_xrcd_crit_edge, label %if.end25

if.end20.err_put_xrcd_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_xrcd

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %uxrcd = getelementptr inbounds %struct.ib_usrq_object, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %uxrcd to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call17, ptr %uxrcd, align 8
  %refcnt = getelementptr inbounds %struct.ib_uxrcd_object, ptr %call17, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !51
  br label %if.end28

if.end28:                                         ; preds = %if.end25, %if.end6.thread, %if.end.if.end28_crit_edge
  %xrcd_uobj.0 = phi ptr [ %call17, %if.end25 ], [ inttoptr (i32 -1 to ptr), %if.end6.thread ], [ inttoptr (i32 -1 to ptr), %if.end.if.end28_crit_edge ]
  %36 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %srq_type, align 8
  %38 = add i32 %37, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %39 = icmp ult i32 %38, 2
  br i1 %39, label %if.then31, label %if.end28.if.end52_crit_edge

if.end28.if.end52_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then31:                                        ; preds = %if.end28
  %40 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ufile, align 8
  %device33 = getelementptr inbounds %struct.ib_uverbs_file, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %device33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device33, align 4
  %uapi34 = getelementptr inbounds %struct.ib_uverbs_device, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %uapi34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %uapi34, align 4
  %call4.i221 = tail call ptr @radix_tree_lookup(ptr noundef %45, i32 noundef 6144) #13
  %tobool.not.i222 = icmp eq ptr %call4.i221, null
  %spec.select.i223 = select i1 %tobool.not.i222, ptr inttoptr (i32 -2 to ptr), ptr %call4.i221
  %46 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ufile, align 8
  %cq_handle = getelementptr inbounds %struct.ib_uverbs_create_xsrq, ptr %cmd, i32 0, i32 9
  %48 = ptrtoint ptr %cq_handle to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cq_handle, align 4
  %conv43 = zext i32 %49 to i64
  %call44 = tail call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i223, ptr noundef %47, i64 noundef %conv43, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i224 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i224, label %_uobj_get_obj_read.exit.thread, label %_uobj_get_obj_read.exit

_uobj_get_obj_read.exit.thread:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %5, align 4
  br label %err_put_xrcd

_uobj_get_obj_read.exit:                          ; preds = %if.then31
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %call44, i32 0, i32 3
  %51 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %object.i, align 8
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %5, align 4
  %tobool49.not = icmp eq ptr %52, null
  br i1 %tobool49.not, label %_uobj_get_obj_read.exit.err_put_xrcd_crit_edge, label %_uobj_get_obj_read.exit.if.end52_crit_edge

_uobj_get_obj_read.exit.if.end52_crit_edge:       ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

_uobj_get_obj_read.exit.err_put_xrcd_crit_edge:   ; preds = %_uobj_get_obj_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_xrcd

if.end52:                                         ; preds = %_uobj_get_obj_read.exit.if.end52_crit_edge, %if.end28.if.end52_crit_edge
  %54 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ufile, align 8
  %device54 = getelementptr inbounds %struct.ib_uverbs_file, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %device54 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device54, align 4
  %uapi55 = getelementptr inbounds %struct.ib_uverbs_device, ptr %57, i32 0, i32 13
  %58 = ptrtoint ptr %uapi55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %uapi55, align 4
  %call4.i225 = tail call ptr @radix_tree_lookup(ptr noundef %59, i32 noundef 2048) #13
  %tobool.not.i226 = icmp eq ptr %call4.i225, null
  %spec.select.i227 = select i1 %tobool.not.i226, ptr inttoptr (i32 -2 to ptr), ptr %call4.i225
  %60 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ufile, align 8
  %pd_handle = getelementptr inbounds %struct.ib_uverbs_create_xsrq, ptr %cmd, i32 0, i32 3
  %62 = ptrtoint ptr %pd_handle to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pd_handle, align 4
  %conv64 = zext i32 %63 to i64
  %call65 = tail call ptr @rdma_lookup_get_uobject(ptr noundef %spec.select.i227, ptr noundef %61, i64 noundef %conv64, i32 noundef 0, ptr noundef %attrs) #13
  %cmp.i.i228 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i228, label %if.end52.err_put_cq_crit_edge, label %_uobj_get_obj_read.exit232

if.end52.err_put_cq_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_cq

_uobj_get_obj_read.exit232:                       ; preds = %if.end52
  %object.i229 = getelementptr inbounds %struct.ib_uobject, ptr %call65, i32 0, i32 3
  %64 = ptrtoint ptr %object.i229 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %object.i229, align 8
  %tobool67.not = icmp eq ptr %65, null
  br i1 %tobool67.not, label %_uobj_get_obj_read.exit232.err_put_cq_crit_edge, label %if.end69

_uobj_get_obj_read.exit232.err_put_cq_crit_edge:  ; preds = %_uobj_get_obj_read.exit232
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_cq

if.end69:                                         ; preds = %_uobj_get_obj_read.exit232
  %66 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @ib_uverbs_srq_event_handler, ptr %attr, align 4
  %67 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %srq_type, align 8
  %69 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %4, align 4
  %max_wr = getelementptr inbounds %struct.ib_uverbs_create_xsrq, ptr %cmd, i32 0, i32 4
  %70 = ptrtoint ptr %max_wr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_wr, align 8
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %1, align 4
  %max_sge = getelementptr inbounds %struct.ib_uverbs_create_xsrq, ptr %cmd, i32 0, i32 5
  %73 = ptrtoint ptr %max_sge to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_sge, align 4
  %75 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %2, align 4
  %srq_limit = getelementptr inbounds %struct.ib_uverbs_create_xsrq, ptr %cmd, i32 0, i32 6
  %76 = ptrtoint ptr %srq_limit to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %srq_limit, align 8
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %3, align 4
  %event_list = getelementptr inbounds %struct.ib_uevent_object, ptr %call.i, i32 0, i32 2
  %79 = ptrtoint ptr %event_list to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %event_list, ptr %event_list, align 4
  %prev.i = getelementptr inbounds %struct.ib_uevent_object, ptr %call.i, i32 0, i32 2, i32 1
  %80 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %event_list, ptr %prev.i, align 4
  %user_handle = getelementptr inbounds %struct.ib_uverbs_create_xsrq, ptr %cmd, i32 0, i32 1
  %81 = ptrtoint ptr %user_handle to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %user_handle, align 8
  %83 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %call.i, align 8
  %call80 = call ptr @ib_create_srq_user(ptr noundef nonnull %65, ptr noundef nonnull %attr, ptr noundef %call.i, ptr noundef %udata) #13
  %cmp.i233 = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i233, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  %84 = ptrtoint ptr %call80 to i32
  %uobject134 = getelementptr inbounds %struct.ib_pd, ptr %65, i32 0, i32 3
  %85 = ptrtoint ptr %uobject134 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %uobject134, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %86, i32 noundef 0) #13
  br label %err_put_cq

if.end84:                                         ; preds = %if.end69
  %object87 = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 3
  %87 = ptrtoint ptr %object87 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call80, ptr %object87, align 8
  %88 = ptrtoint ptr %user_handle to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %user_handle, align 8
  %90 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %call.i, align 8
  %91 = ptrtoint ptr %ufile to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ufile, align 8
  %default_async_file = getelementptr inbounds %struct.ib_uverbs_file, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %default_async_file to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %default_async_file, align 4
  %event_file = getelementptr inbounds %struct.ib_uevent_object, ptr %call.i, i32 0, i32 1
  %95 = ptrtoint ptr %event_file to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %event_file, align 8
  %tobool97.not = icmp eq ptr %94, null
  br i1 %tobool97.not, label %if.end84.if.end101_crit_edge, label %if.then98

if.end84.if.end101_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.then98:                                        ; preds = %if.end84
  %ref.i = getelementptr inbounds %struct.ib_uobject, ptr %94, i32 0, i32 7
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #13
  %96 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #13, !srcloc !65
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then98.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !52

if.then98.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then98
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %97 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %.not.i.i.i.i.i = icmp sgt i32 %97, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end101_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !54

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end101_crit_edge:            ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then98.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then98.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #13
  br label %if.end101

if.end101:                                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end101_crit_edge, %if.end84.if.end101_crit_edge
  %98 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %srq_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp103 = icmp eq i32 %99, 1
  br i1 %cmp103, label %if.then111, label %if.end101.if.end112_crit_edge

if.end101.if.end112_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112

if.then111:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  %srq_num = getelementptr inbounds %struct.ib_srq, ptr %call80, i32 0, i32 7, i32 1, i32 0, i32 1
  %100 = ptrtoint ptr %srq_num to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %srq_num, align 4
  %srqn = getelementptr inbounds %struct.ib_uverbs_create_srq_resp, ptr %resp, i32 0, i32 3
  %102 = ptrtoint ptr %srqn to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %srqn, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %xrcd_uobj.0, i32 noundef 0) #13
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.end101.if.end112_crit_edge
  %103 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %srq_type, align 8
  %105 = add i32 %104, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %105)
  %106 = icmp ult i32 %105, 2
  br i1 %106, label %if.then115, label %if.end112.if.end121_crit_edge

if.end112.if.end121_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end121

if.then115:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %5, align 4
  %uobject118 = getelementptr inbounds %struct.ib_cq, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %uobject118 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %uobject118, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %110, i32 noundef 0) #13
  br label %if.end121

if.end121:                                        ; preds = %if.then115, %if.end112.if.end121_crit_edge
  %uobject122 = getelementptr inbounds %struct.ib_pd, ptr %65, i32 0, i32 3
  %111 = ptrtoint ptr %uobject122 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %uobject122, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %112, i32 noundef 0) #13
  %uobject.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 4
  %113 = ptrtoint ptr %uobject.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %uobject.i, align 8
  %tobool.not.i234 = icmp eq ptr %114, null
  br i1 %tobool.not.i234, label %if.end121.uobj_finalize_uobj_create.exit_crit_edge, label %do.end.i, !prof !54

if.end121.uobj_finalize_uobj_create.exit_crit_edge: ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #15
  br label %uobj_finalize_uobj_create.exit

do.end.i:                                         ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 96, i32 noundef 9, ptr noundef null) #13
  br label %uobj_finalize_uobj_create.exit

uobj_finalize_uobj_create.exit:                   ; preds = %do.end.i, %if.end121.uobj_finalize_uobj_create.exit_crit_edge
  %115 = ptrtoint ptr %uobject.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call.i, ptr %uobject.i, align 8
  %id = getelementptr inbounds %struct.ib_uobject, ptr %call.i, i32 0, i32 6
  %116 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %id, align 8
  %118 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %resp, align 4
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %1, align 4
  %max_wr129 = getelementptr inbounds %struct.ib_uverbs_create_srq_resp, ptr %resp, i32 0, i32 1
  %121 = ptrtoint ptr %max_wr129 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %max_wr129, align 4
  %122 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %2, align 4
  %max_sge132 = getelementptr inbounds %struct.ib_uverbs_create_srq_resp, ptr %resp, i32 0, i32 2
  %124 = ptrtoint ptr %max_sge132 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %max_sge132, align 4
  %call133 = call fastcc i32 @uverbs_response(ptr noundef %attrs, ptr noundef nonnull %resp, i32 noundef 16)
  br label %cleanup

err_put_cq:                                       ; preds = %if.then82, %_uobj_get_obj_read.exit232.err_put_cq_crit_edge, %if.end52.err_put_cq_crit_edge
  %ret.0 = phi i32 [ %84, %if.then82 ], [ -22, %_uobj_get_obj_read.exit232.err_put_cq_crit_edge ], [ -22, %if.end52.err_put_cq_crit_edge ]
  %125 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %srq_type, align 8
  %127 = add i32 %126, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %127)
  %128 = icmp ult i32 %127, 2
  br i1 %128, label %if.then137, label %err_put_cq.err_crit_edge

err_put_cq.err_crit_edge:                         ; preds = %err_put_cq
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.then137:                                       ; preds = %err_put_cq
  call void @__sanitizer_cov_trace_pc() #15
  %129 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %5, align 4
  %uobject140 = getelementptr inbounds %struct.ib_cq, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %uobject140 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %uobject140, align 4
  call void @rdma_lookup_put_uobject(ptr noundef %132, i32 noundef 0) #13
  br label %err_put_xrcd

err_put_xrcd:                                     ; preds = %if.then137, %_uobj_get_obj_read.exit.err_put_xrcd_crit_edge, %_uobj_get_obj_read.exit.thread, %if.end20.err_put_xrcd_crit_edge
  %xrcd_uobj.1.ph = phi ptr [ %xrcd_uobj.0, %_uobj_get_obj_read.exit.thread ], [ %xrcd_uobj.0, %_uobj_get_obj_read.exit.err_put_xrcd_crit_edge ], [ %call17, %if.end20.err_put_xrcd_crit_edge ], [ %xrcd_uobj.0, %if.then137 ]
  %ret.1.ph = phi i32 [ -22, %_uobj_get_obj_read.exit.thread ], [ -22, %_uobj_get_obj_read.exit.err_put_xrcd_crit_edge ], [ -22, %if.end20.err_put_xrcd_crit_edge ], [ %ret.0, %if.then137 ]
  %133 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %133)
  %.pr = load i32, ptr %srq_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp145 = icmp eq i32 %.pr, 1
  br i1 %cmp145, label %if.then147, label %err_put_xrcd.err_crit_edge

err_put_xrcd.err_crit_edge:                       ; preds = %err_put_xrcd
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.then147:                                       ; preds = %err_put_xrcd
  call void @__sanitizer_cov_trace_pc() #15
  %uxrcd148 = getelementptr inbounds %struct.ib_usrq_object, ptr %call.i, i32 0, i32 1
  %134 = ptrtoint ptr %uxrcd148 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %uxrcd148, align 8
  %refcnt149 = getelementptr inbounds %struct.ib_uxrcd_object, ptr %135, i32 0, i32 1
  %call.i.i216 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt149, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %refcnt149, i32 1, i32 3, i32 1) #13
  %136 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt149, ptr %refcnt149, i32 1, ptr elementtype(i32) %refcnt149) #13, !srcloc !53
  call void @rdma_lookup_put_uobject(ptr noundef %xrcd_uobj.1.ph, i32 noundef 0) #13
  br label %err

err:                                              ; preds = %if.then147, %err_put_xrcd.err_crit_edge, %err_put_cq.err_crit_edge, %if.then9.err_crit_edge
  %ret.2 = phi i32 [ %ret.1.ph, %if.then147 ], [ %ret.1.ph, %err_put_xrcd.err_crit_edge ], [ -22, %if.then9.err_crit_edge ], [ %ret.0, %err_put_cq.err_crit_edge ]
  call void @rdma_alloc_abort_uobject(ptr noundef %call.i, ptr noundef %attrs, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %err, %uobj_finalize_uobj_create.exit, %if.then
  %retval.0 = phi i32 [ %14, %if.then ], [ %ret.2, %err ], [ %call133, %uobj_finalize_uobj_create.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %attr) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %resp) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_srq_event_handler(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_srq_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_srq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_open_qp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_alloc_xrcd_user(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !27, !29, !30, !31, !32, !34, !35}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/uverbs_cmd.c", i32 212, i32 11}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ksymtab_flow_resources_alloc, !5, !"__ksymtab_flow_resources_alloc", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/core/uverbs_cmd.c", i32 2584, i32 1}
!6 = !{ptr @__ksymtab_ib_uverbs_flow_resources_free, !7, !"__ksymtab_ib_uverbs_flow_resources_free", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/core/uverbs_cmd.c", i32 2603, i32 1}
!8 = !{ptr @__ksymtab_flow_resources_add, !9, !"__ksymtab_flow_resources_add", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/core/uverbs_cmd.c", i32 2628, i32 1}
!10 = !{ptr @uverbs_def_write_intf, !11, !"uverbs_def_write_intf", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/core/uverbs_cmd.c", i32 3716, i32 30}
!12 = !{ptr @xa_init_flags.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/rdma/uverbs_std_types.h", i32 96, i32 2}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/rdma/ib_verbs.h", i32 4605, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/core/uverbs_cmd.c", i32 3293, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ib_uverbs_ex_create_flow._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @ib_uverbs_ex_create_flow._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @create_qp.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/core/uverbs_cmd.c", i32 1315, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/core/uverbs_cmd.c", i32 1435, i32 11}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2157999518}
!48 = !{i64 2148852828}
!49 = !{i64 2148767537, i64 2148767569, i64 2148767598, i64 2148767632, i64 2148767663, i64 2148767686}
!50 = !{i64 2148853057}
!51 = !{i64 2148764352, i64 2148764378, i64 2148764407, i64 2148764441, i64 2148764472, i64 2148764495}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2148766817, i64 2148766843, i64 2148766872, i64 2148766906, i64 2148766937, i64 2148766960}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{!"auto-init"}
!56 = !{i64 2152275974, i64 2152275999}
!57 = !{i64 2152275293, i64 2152275318}
!58 = !{i64 4770848}
!59 = !{i64 4771045}
!60 = !{i64 2152256278}
!61 = !{!62}
!62 = distinct !{!62, !63, !"fdget: %agg.result"}
!63 = distinct !{!63, !"fdget"}
!64 = !{i64 2152272095, i64 2152272120}
!65 = !{i64 2148765882, i64 2148765914, i64 2148765943, i64 2148765977, i64 2148766008, i64 2148766031}
