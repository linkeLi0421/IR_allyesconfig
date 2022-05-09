; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c_pt.bc'
source_filename = "../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.pvrdma_cmd_req = type { %struct.pvrdma_cmd_modify_qp }
%struct.pvrdma_cmd_modify_qp = type { %struct.pvrdma_cmd_hdr, i32, i32, %struct.pvrdma_qp_attr }
%struct.pvrdma_cmd_hdr = type { i64, i32, i32 }
%struct.pvrdma_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], %struct.pvrdma_qp_cap, %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr }
%struct.pvrdma_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.pvrdma_ah_attr = type { %struct.pvrdma_global_route, i16, i16, i8, i8, i8, i8, i8, [6 x i8], i8 }
%struct.pvrdma_global_route = type { %union.pvrdma_gid, i32, i8, i8, i8, i8 }
%union.pvrdma_gid = type { %struct.anon.175 }
%struct.anon.175 = type { i64, i64 }
%union.pvrdma_cmd_resp = type { %struct.pvrdma_cmd_query_qp_resp }
%struct.pvrdma_cmd_query_qp_resp = type { %struct.pvrdma_cmd_resp_hdr, %struct.pvrdma_qp_attr }
%struct.pvrdma_cmd_resp_hdr = type { i64, i32, i8, [3 x i8] }
%struct.pvrdma_create_qp = type { i64, i64, i32, i32, i64 }
%struct.pvrdma_create_qp_resp = type { i32, i32 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.pvrdma_dev = type { %struct.ib_device, ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, i32, %struct.spinlock, %struct.semaphore, %struct.completion, i32, ptr, ptr, %struct.pvrdma_page_dir, ptr, %struct.pvrdma_page_dir, ptr, %struct.spinlock, ptr, %struct.spinlock, ptr, %struct.spinlock, %struct.pvrdma_uar_table, %struct.pvrdma_uar_map, i64, %struct.spinlock, i32, %struct.mutex, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.notifier_block }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.171 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.ib_odp_caps = type { i64, %struct.anon.144 }
%struct.anon.144 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pvrdma_page_dir = type { i32, ptr, i32, ptr, i64, ptr }
%struct.pvrdma_uar_table = type { %struct.pvrdma_id_table, i32 }
%struct.pvrdma_id_table = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.pvrdma_uar_map = type { i32, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.172, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.172 = type { ptr }
%struct.pvrdma_device_shared_region = type { i32, i32, %struct.pvrdma_gos_info, i64, i64, %struct.pvrdma_ring_page_info, %struct.pvrdma_ring_page_info, %union.anon.173, %struct.pvrdma_device_caps }
%struct.pvrdma_gos_info = type { i32, i32 }
%struct.pvrdma_ring_page_info = type { i32, i32, i64 }
%union.anon.173 = type { i64 }
%struct.pvrdma_device_caps = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32 }
%struct.pvrdma_qp = type { %struct.ib_qp, i32, i32, %struct.pvrdma_wq, %struct.pvrdma_wq, ptr, ptr, %struct.pvrdma_page_dir, ptr, i32, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.refcount_struct, %struct.completion }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.pvrdma_wq = type { ptr, %struct.spinlock, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.pvrdma_ring = type { %struct.atomic_t, %struct.atomic_t }
%struct.pvrdma_pd = type { %struct.ib_pd, i32, i32, i32 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.pvrdma_cmd_create_qp = type { %struct.pvrdma_cmd_hdr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, [3 x i8] }
%struct.pvrdma_cq = type { %struct.ib_cq, i32, %struct.spinlock, ptr, ptr, ptr, %struct.pvrdma_page_dir, i32, i8, %struct.refcount_struct, %struct.completion }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.140, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.140 = type { %struct.work_struct }
%struct.pvrdma_srq = type { %struct.ib_srq, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, %struct.pvrdma_page_dir, i32, i32, %struct.refcount_struct, %struct.completion }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.131, %struct.rdma_restrack_entry }
%struct.anon.131 = type { ptr, %union.anon.132 }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type { ptr, i32 }
%struct.pvrdma_cmd_create_qp_resp_v2 = type { %struct.pvrdma_cmd_resp_hdr, i32, i32, i32, i32, i32, i32, i32 }
%struct.pvrdma_cmd_create_qp_resp = type { %struct.pvrdma_cmd_resp_hdr, i32, i32, i32, i32, i32, i32 }
%struct.pvrdma_cmd_destroy_qp = type { %struct.pvrdma_cmd_hdr, i32, [4 x i8] }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.163 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.143 }
%struct.anon.143 = type { i64, i64 }
%union.anon.163 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_send_wr = type { ptr, %union.anon.127, ptr, i32, i32, i32, %union.anon.141 }
%union.anon.127 = type { i64 }
%union.anon.141 = type { i32 }
%struct.pvrdma_sq_wqe_hdr = type { i64, i32, i32, i32, i32, %union.anon.177, i32, %union.anon.178 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { %struct.anon.181 }
%struct.anon.181 = type { i64, i32, i32, %union.anon.182 }
%union.anon.182 = type { %struct.pvrdma_ex_cmp_swap }
%struct.pvrdma_ex_cmp_swap = type { i64, i64, i64, i64 }
%struct.ib_ud_wr = type { %struct.ib_send_wr, ptr, ptr, i32, i32, i32, i32, i16, i32 }
%struct.anon.184 = type { i32, i32, %struct.pvrdma_av }
%struct.pvrdma_av = type { i32, i32, [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8] }
%struct.pvrdma_ah = type { %struct.ib_ah, %struct.pvrdma_av }
%struct.ib_ah = type { ptr, ptr, ptr, ptr, i32 }
%struct.ib_rdma_wr = type { %struct.ib_send_wr, i64, i32 }
%struct.ib_atomic_wr = type { %struct.ib_send_wr, i64, i64, i64, i64, i64, i32 }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.129, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.129 = type { %struct.list_head }
%struct.pvrdma_user_mr = type { %struct.ib_mr, ptr, %struct.pvrdma_mr, %struct.pvrdma_page_dir, ptr, i32, i32, i32 }
%struct.pvrdma_mr = type { i32, i64, i64 }
%struct.anon.183 = type { i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.pvrdma_sge = type { i64, i32, i32 }
%struct.ib_recv_wr = type { ptr, %union.anon.142, ptr, i32 }
%union.anon.142 = type { i64 }
%struct.pvrdma_rq_wqe_hdr = type { i64, i32, i32 }
%struct.pvrdma_cmd_query_qp = type { %struct.pvrdma_cmd_hdr, i32, i32 }

@pvrdma_create_qp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 210, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"invalid create queuepair flags %#x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvrdma_create_qp\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pvrdma_create_qp._entry_ptr = internal global ptr @pvrdma_create_qp._entry, section ".printk_index", align 4
@pvrdma_create_qp._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 218, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"queuepair type %d not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@pvrdma_create_qp._entry_ptr.7 = internal global ptr @pvrdma_create_qp._entry.5, section ".printk_index", align 4
@pvrdma_create_qp._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 224, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SRQs not supported by device\0A\00", [34 x i8] zeroinitializer }, align 32
@pvrdma_create_qp._entry_ptr.10 = internal global ptr @pvrdma_create_qp._entry.8, section ".printk_index", align 4
@pvrdma_create_qp._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 235, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid queuepair attrs\0A\00", [39 x i8] zeroinitializer }, align 32
@pvrdma_create_qp._entry_ptr.13 = internal global ptr @pvrdma_create_qp._entry.11, section ".printk_index", align 4
@pvrdma_create_qp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&qp->sq.lock\00", [19 x i8] zeroinitializer }, align 32
@pvrdma_create_qp.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&qp->rq.lock\00", [19 x i8] zeroinitializer }, align 32
@pvrdma_create_qp.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&qp->mutex\00", [21 x i8] zeroinitializer }, align 32
@pvrdma_create_qp.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.1, ptr @.str.2, ptr @.str.20, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vmw_pvrdma\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"create queuepair from user space\0A\00", [62 x i8] zeroinitializer }, align 32
@pvrdma_create_qp._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 264, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"create queuepair not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@pvrdma_create_qp._entry_ptr.23 = internal global ptr @pvrdma_create_qp._entry.21, section ".printk_index", align 4
@pvrdma_create_qp._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 323, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"overflow pages in queuepair\0A\00", [35 x i8] zeroinitializer }, align 32
@pvrdma_create_qp._entry_ptr.26 = internal global ptr @pvrdma_create_qp._entry.24, section ".printk_index", align 4
@pvrdma_create_qp._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 332, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not allocate page directory\0A\00", [61 x i8] zeroinitializer }, align 32
@pvrdma_create_qp._entry_ptr.29 = internal global ptr @pvrdma_create_qp._entry.27, section ".printk_index", align 4
@pvrdma_create_qp.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.1, ptr @.str.2, ptr @.str.30, i8 0, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"create queuepair with %d, %d, %d, %d\0A\00", [58 x i8] zeroinitializer }, align 32
@pvrdma_create_qp._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 386, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not create queuepair, error: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@pvrdma_create_qp._entry_ptr.33 = internal global ptr @pvrdma_create_qp._entry.31, section ".printk_index", align 4
@pvrdma_create_qp._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.1, ptr @.str.2, i32 412, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to copy back udata\0A\00", [37 x i8] zeroinitializer }, align 32
@pvrdma_create_qp._entry_ptr.36 = internal global ptr @pvrdma_create_qp._entry.34, section ".printk_index", align 4
@pvrdma_modify_qp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 618, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not modify queuepair, error: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvrdma_modify_qp\00", [47 x i8] zeroinitializer }, align 32
@pvrdma_modify_qp._entry_ptr = internal global ptr @pvrdma_modify_qp._entry, section ".printk_index", align 4
@pvrdma_modify_qp._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 621, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot modify queuepair, error: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@pvrdma_modify_qp._entry_ptr.41 = internal global ptr @pvrdma_modify_qp._entry.39, section ".printk_index", align 4
@pvrdma_post_send._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.pvrdma_post_send = private unnamed_addr constant [17 x i8] c"pvrdma_post_send\00", align 1
@pvrdma_post_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @__func__.pvrdma_post_send, ptr @.str.2, i32 698, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"send queue is full\0A\00", [44 x i8] zeroinitializer }, align 32
@pvrdma_post_send._entry_ptr = internal global ptr @pvrdma_post_send._entry, section ".printk_index", align 4
@pvrdma_post_send._rs.44 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pvrdma_post_send._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @__func__.pvrdma_post_send, ptr @.str.2, i32 706, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"send SGE overflow\0A\00", [45 x i8] zeroinitializer }, align 32
@pvrdma_post_send._entry_ptr.47 = internal global ptr @pvrdma_post_send._entry.45, section ".printk_index", align 4
@pvrdma_post_send._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @__func__.pvrdma_post_send, ptr @.str.2, i32 714, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid send opcode\0A\00", [43 x i8] zeroinitializer }, align 32
@pvrdma_post_send._entry_ptr.51 = internal global ptr @pvrdma_post_send._entry.49, section ".printk_index", align 4
@pvrdma_post_send._rs.52 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pvrdma_post_send._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @__func__.pvrdma_post_send, ptr @.str.2, i32 742, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported queuepair type\0A\00", [36 x i8] zeroinitializer }, align 32
@pvrdma_post_send._entry_ptr.55 = internal global ptr @pvrdma_post_send._entry.53, section ".printk_index", align 4
@pvrdma_post_send._rs.56 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pvrdma_post_send._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @__func__.pvrdma_post_send, ptr @.str.2, i32 751, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@pvrdma_post_send._entry_ptr.58 = internal global ptr @pvrdma_post_send._entry.57, section ".printk_index", align 4
@pvrdma_post_send._rs.59 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pvrdma_post_send._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @__func__.pvrdma_post_send, ptr @.str.2, i32 779, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid address handle\0A\00", [40 x i8] zeroinitializer }, align 32
@pvrdma_post_send._entry_ptr.62 = internal global ptr @pvrdma_post_send._entry.60, section ".printk_index", align 4
@pvrdma_post_send._rs.63 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pvrdma_post_send._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @__func__.pvrdma_post_send, ptr @.str.2, i32 825, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to set fast register work request\0A\00", [54 x i8] zeroinitializer }, align 32
@pvrdma_post_send._entry_ptr.66 = internal global ptr @pvrdma_post_send._entry.64, section ".printk_index", align 4
@pvrdma_post_send._rs.67 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pvrdma_post_send._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @__func__.pvrdma_post_send, ptr @.str.2, i32 837, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid queuepair type\0A\00", [40 x i8] zeroinitializer }, align 32
@pvrdma_post_send._entry_ptr.70 = internal global ptr @pvrdma_post_send._entry.68, section ".printk_index", align 4
@pvrdma_post_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 902, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"QP associated with SRQ\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvrdma_post_recv\00", [47 x i8] zeroinitializer }, align 32
@pvrdma_post_recv._entry_ptr = internal global ptr @pvrdma_post_recv._entry, section ".printk_index", align 4
@pvrdma_post_recv._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pvrdma_post_recv._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 917, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"recv SGE overflow\0A\00", [45 x i8] zeroinitializer }, align 32
@pvrdma_post_recv._entry_ptr.75 = internal global ptr @pvrdma_post_recv._entry.73, section ".printk_index", align 4
@pvrdma_post_recv._rs.76 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pvrdma_post_recv._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.72, ptr @.str.2, i32 926, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"recv queue full\0A\00", [47 x i8] zeroinitializer }, align 32
@pvrdma_post_recv._entry_ptr.79 = internal global ptr @pvrdma_post_recv._entry.77, section ".printk_index", align 4
@pvrdma_query_qp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 1000, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not query queuepair, error: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pvrdma_query_qp\00", [16 x i8] zeroinitializer }, align 32
@pvrdma_query_qp._entry_ptr = internal global ptr @pvrdma_query_qp._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@pvrdma_set_sq_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"send queue size invalid\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvrdma_set_sq_size\00", [45 x i8] zeroinitializer }, align 32
@pvrdma_set_sq_size._entry_ptr = internal global ptr @pvrdma_set_sq_size._entry, section ".printk_index", align 4
@pvrdma_set_rq_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"recv queue size invalid\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvrdma_set_rq_size\00", [45 x i8] zeroinitializer }, align 32
@pvrdma_set_rq_size._entry_ptr = internal global ptr @pvrdma_set_rq_size._entry, section ".printk_index", align 4
@_pvrdma_destroy_qp_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 489, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"destroy queuepair failed, error: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_pvrdma_destroy_qp_work\00", [40 x i8] zeroinitializer }, align 32
@_pvrdma_destroy_qp_work._entry_ptr = internal global ptr @_pvrdma_destroy_qp_work._entry, section ".printk_index", align 4
@switch.table.pvrdma_post_send = internal constant { [34 x i32], [56 x i8] } { [34 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 10, i32 16, i32 8, i32 7, i32 9, i32 12, i32 13, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 11, i32 15], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.92 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.96 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7, i64 9, i64 32]
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 208, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 217, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 223, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 235, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 242, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 243, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 244, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 252, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 263, i32 5 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 322, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 331, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 379, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 385, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 411, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 617, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 620, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 697, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 705, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 713, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 741, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 750, i32 5 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 778, i32 5 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 824, i32 6 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 836, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 902, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 916, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 925, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 999, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 87, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 156, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 161, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 136, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.344 = private constant [48 x i8] c"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 488, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant [30 x i8] c"switch.table.pvrdma_post_send\00", align 1
@llvm.compiler.used = appending global [110 x ptr] [ptr @_pvrdma_destroy_qp_work._entry, ptr @_pvrdma_destroy_qp_work._entry_ptr, ptr @pvrdma_create_qp._entry, ptr @pvrdma_create_qp._entry.11, ptr @pvrdma_create_qp._entry.21, ptr @pvrdma_create_qp._entry.24, ptr @pvrdma_create_qp._entry.27, ptr @pvrdma_create_qp._entry.31, ptr @pvrdma_create_qp._entry.34, ptr @pvrdma_create_qp._entry.5, ptr @pvrdma_create_qp._entry.8, ptr @pvrdma_create_qp._entry_ptr, ptr @pvrdma_create_qp._entry_ptr.10, ptr @pvrdma_create_qp._entry_ptr.13, ptr @pvrdma_create_qp._entry_ptr.23, ptr @pvrdma_create_qp._entry_ptr.26, ptr @pvrdma_create_qp._entry_ptr.29, ptr @pvrdma_create_qp._entry_ptr.33, ptr @pvrdma_create_qp._entry_ptr.36, ptr @pvrdma_create_qp._entry_ptr.7, ptr @pvrdma_modify_qp._entry, ptr @pvrdma_modify_qp._entry.39, ptr @pvrdma_modify_qp._entry_ptr, ptr @pvrdma_modify_qp._entry_ptr.41, ptr @pvrdma_post_recv._entry, ptr @pvrdma_post_recv._entry.73, ptr @pvrdma_post_recv._entry.77, ptr @pvrdma_post_recv._entry_ptr, ptr @pvrdma_post_recv._entry_ptr.75, ptr @pvrdma_post_recv._entry_ptr.79, ptr @pvrdma_post_send._entry, ptr @pvrdma_post_send._entry.45, ptr @pvrdma_post_send._entry.49, ptr @pvrdma_post_send._entry.53, ptr @pvrdma_post_send._entry.57, ptr @pvrdma_post_send._entry.60, ptr @pvrdma_post_send._entry.64, ptr @pvrdma_post_send._entry.68, ptr @pvrdma_post_send._entry_ptr, ptr @pvrdma_post_send._entry_ptr.47, ptr @pvrdma_post_send._entry_ptr.51, ptr @pvrdma_post_send._entry_ptr.55, ptr @pvrdma_post_send._entry_ptr.58, ptr @pvrdma_post_send._entry_ptr.62, ptr @pvrdma_post_send._entry_ptr.66, ptr @pvrdma_post_send._entry_ptr.70, ptr @pvrdma_query_qp._entry, ptr @pvrdma_query_qp._entry_ptr, ptr @pvrdma_set_rq_size._entry, ptr @pvrdma_set_rq_size._entry_ptr, ptr @pvrdma_set_sq_size._entry, ptr @pvrdma_set_sq_size._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @pvrdma_create_qp.__key, ptr @.str.14, ptr @pvrdma_create_qp.__key.15, ptr @.str.16, ptr @pvrdma_create_qp.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @pvrdma_post_send._rs, ptr @.str.42, ptr @.str.43, ptr @pvrdma_post_send._rs.44, ptr @.str.46, ptr @.str.50, ptr @pvrdma_post_send._rs.52, ptr @.str.54, ptr @pvrdma_post_send._rs.56, ptr @pvrdma_post_send._rs.59, ptr @.str.61, ptr @pvrdma_post_send._rs.63, ptr @.str.65, ptr @pvrdma_post_send._rs.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @pvrdma_post_recv._rs, ptr @.str.74, ptr @pvrdma_post_recv._rs.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @init_completion.__key, ptr @.str.82, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @switch.table.pvrdma_post_send], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_qp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_qp._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_qp._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_qp._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_qp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_qp.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_qp.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_qp._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_qp._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_qp._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_qp._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_qp._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_modify_qp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_modify_qp._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_send._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_send._rs.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_send._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_send._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_send._rs.52 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_send._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_send._rs.56 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_send._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_send._rs.59 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_send._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_send._rs.63 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_send._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_send._rs.67 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_send._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_recv._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_recv._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_recv._rs.76 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_post_recv._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_query_qp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_set_sq_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_set_rq_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_pvrdma_destroy_qp_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pvrdma_post_send to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_create_qp(ptr noundef %ibqp, ptr nocapture noundef %init_attr, ptr noundef readonly %udata) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %union.pvrdma_cmd_req, align 8
  %rsp = alloca %union.pvrdma_cmd_resp, align 8
  %ucmd = alloca %struct.pvrdma_create_qp, align 8
  %qp_resp = alloca %struct.pvrdma_create_qp_resp, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibqp, align 4
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req) #7
  %2 = call ptr @memset(ptr %req, i32 255, i32 184)
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %rsp) #7
  %3 = call ptr @memset(ptr %rsp, i32 255, i32 176)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ucmd) #7
  %4 = getelementptr inbounds %struct.pvrdma_create_qp, ptr %ucmd, i32 0, i32 1
  %5 = getelementptr inbounds %struct.pvrdma_create_qp, ptr %ucmd, i32 0, i32 2
  %6 = getelementptr inbounds %struct.pvrdma_create_qp, ptr %ucmd, i32 0, i32 3
  %7 = call ptr @memset(ptr %ucmd, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qp_resp) #7
  %8 = ptrtoint ptr %qp_resp to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %qp_resp, align 8
  %srq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 4
  %9 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %srq, align 4
  %tobool = icmp ne ptr %10, null
  %frombool = zext i1 %tobool to i8
  %create_flags = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 9
  %11 = ptrtoint ptr %create_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %create_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str, i32 noundef %12) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %qp_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 8
  %15 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qp_type, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %do.end14 [
    i32 2, label %if.end.if.end18_crit_edge
    i32 4, label %if.end.if.end18_crit_edge620
    i32 1, label %if.end.if.end18_crit_edge621
  ]

if.end.if.end18_crit_edge621:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end.if.end18_crit_edge620:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev15 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev15, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev16, ptr noundef nonnull @.str.6, i32 noundef %16) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end.if.end18_crit_edge, %if.end.if.end18_crit_edge620, %if.end.if.end18_crit_edge621
  br i1 %tobool, label %land.lhs.true20, label %if.end18.if.end28_crit_edge

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

land.lhs.true20:                                  ; preds = %if.end18
  %dsr = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dsr, align 8
  %max_srq = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %21, i32 0, i32 8, i32 38
  %22 = ptrtoint ptr %max_srq to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %max_srq, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool21.not = icmp eq i32 %23, 0
  br i1 %tobool21.not, label %do.end25, label %land.lhs.true20.if.end28_crit_edge

land.lhs.true20.if.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.end25:                                         ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  %pdev26 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %pdev26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev26, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev27, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true20.if.end28_crit_edge, %if.end18.if.end28_crit_edge
  %num_qps = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 32
  %dsr29 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %dsr29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dsr29, align 8
  %max_qp = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %27, i32 0, i32 8, i32 13
  %28 = ptrtoint ptr %max_qp to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %max_qp, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_qps, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @llvm.prefetch.p0(ptr %num_qps, i32 1, i32 3, i32 1) #7
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %num_qps, ptr %num_qps, i32 %29, i32 1, ptr elementtype(i32) %num_qps) #7, !srcloc !162
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i, i32 %29)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, %29
  br i1 %cmp.not.i.i.i, label %if.end28.cleanup_crit_edge, label %if.end33

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !163
  %31 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qp_type, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %32, label %if.end33.err_qp_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end33.do.body47_crit_edge
    i32 4, label %if.end33.do.body47_crit_edge622
  ]

if.end33.do.body47_crit_edge622:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

if.end33.do.body47_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

if.end33.err_qp_crit_edge:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_qp

sw.bb:                                            ; preds = %if.end33
  %port_num = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 10
  %34 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp35 = icmp eq i32 %35, 0
  br i1 %cmp35, label %sw.bb.do.end42_crit_edge, label %lor.lhs.false

sw.bb.do.end42_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

lor.lhs.false:                                    ; preds = %sw.bb
  %36 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ibqp, align 4
  %phys_port_cnt = getelementptr inbounds %struct.ib_device, ptr %37, i32 0, i32 21
  %38 = ptrtoint ptr %phys_port_cnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %phys_port_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %39)
  %cmp38 = icmp ugt i32 %35, %39
  br i1 %cmp38, label %lor.lhs.false.do.end42_crit_edge, label %lor.lhs.false.do.body47_crit_edge

lor.lhs.false.do.body47_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

lor.lhs.false.do.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

do.end42:                                         ; preds = %lor.lhs.false.do.end42_crit_edge, %sw.bb.do.end42_crit_edge
  %pdev43 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %pdev43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev43, align 8
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev44, ptr noundef nonnull @.str.12) #10
  br label %err_qp

do.body47:                                        ; preds = %lor.lhs.false.do.body47_crit_edge, %if.end33.do.body47_crit_edge, %if.end33.do.body47_crit_edge622
  %sq = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 3
  %lock = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 3, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @pvrdma_create_qp.__key, i16 noundef signext 3) #7
  %rq = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 4
  %lock52 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 4, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock52, ptr noundef nonnull @.str.16, ptr noundef nonnull @pvrdma_create_qp.__key.15, i16 noundef signext 3) #7
  %mutex = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.18, ptr noundef nonnull @pvrdma_create_qp.__key.17) #7
  %refcnt = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #7
  %42 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 1, ptr %refcnt, align 4
  %free = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 18
  %43 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %free, align 4
  %wait.i = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 18, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.82, ptr noundef nonnull @init_completion.__key) #7
  %state = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 14
  %44 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %state, align 1
  %tobool59.not = icmp eq ptr %udata, null
  %is_kernel = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 15
  %frombool61 = zext i1 %tobool59.not to i8
  %45 = ptrtoint ptr %is_kernel to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %frombool61, ptr %is_kernel, align 2
  br i1 %tobool59.not, label %if.else132, label %do.body65

do.body65:                                        ; preds = %do.body47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_create_qp.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_create_qp, %if.then72)) #7
          to label %do.end77 [label %if.then72], !srcloc !164

if.then72:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  %pdev73 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %pdev73 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev73, align 8
  %dev74 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_create_qp.__UNIQUE_ID_ddebug510, ptr noundef %dev74, ptr noundef nonnull @.str.20) #7
  br label %do.end77

do.end77:                                         ; preds = %if.then72, %do.body65
  %48 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %udata, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.85, i32 noundef 156) #7
  %call.i.i.i525 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i525, label %do.end77.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

do.end77.if.then11.i.i.i_crit_edge:               ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %do.end77
  %50 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %49, i32 32, i32 -1226833920) #11, !srcloc !165
  %asmresult.i.i.i526 = extractvalue { i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i526)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i.i526, 0
  br i1 %cmp.i1.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !166

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ucmd, i32 noundef 32) #7
  %51 = call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 4
  %53 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !167
  %and.i.i.i.i.i = and i32 %53, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !168
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ucmd, ptr noundef %49, i32 noundef 32) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #7, !srcloc !168
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end81, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !166

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %do.end77.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 32, %do.end77.if.then11.i.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 32, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %ucmd, i32 %sub.i.i.i
  %54 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %err_qp

if.end81:                                         ; preds = %if.end.i.i.i
  %dsr_version = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 9
  %55 = ptrtoint ptr %dsr_version to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dsr_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %56)
  %cmp82 = icmp ugt i32 %56, 19
  br i1 %cmp82, label %land.lhs.true83, label %if.end81.if.end91_crit_edge

if.end81.if.end91_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

land.lhs.true83:                                  ; preds = %if.end81
  %outlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 3
  %57 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %58)
  %cmp84 = icmp ult i32 %58, 8
  br i1 %cmp84, label %do.end88, label %land.lhs.true83.if.end91_crit_edge

land.lhs.true83.if.end91_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

do.end88:                                         ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #9
  %pdev89 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %59 = ptrtoint ptr %pdev89 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev89, align 8
  %dev90 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev90, ptr noundef nonnull @.str.22) #10
  br label %err_qp

if.end91:                                         ; preds = %land.lhs.true83.if.end91_crit_edge, %if.end81.if.end91_crit_edge
  br i1 %tobool, label %if.else, label %if.then93

if.then93:                                        ; preds = %if.end91
  %61 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ibqp, align 4
  %63 = ptrtoint ptr %ucmd to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %ucmd, align 8
  %conv = trunc i64 %64 to i32
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %5, align 8
  %call95 = call ptr @ib_umem_get(ptr noundef %62, i32 noundef %conv, i32 noundef %66, i32 noundef 0) #7
  %rumem = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 5
  %67 = ptrtoint ptr %rumem to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call95, ptr %rumem, align 4
  %cmp.i = icmp ugt ptr %call95, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then98, label %if.then93.if.end107_crit_edge

if.then93.if.end107_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then98:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %call95 to i32
  br label %err_qp

if.else:                                          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %rumem103 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 5
  %69 = ptrtoint ptr %rumem103 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %rumem103, align 4
  %70 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %srq, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.else, %if.then93.if.end107_crit_edge
  %.sink616 = phi ptr [ %71, %if.else ], [ null, %if.then93.if.end107_crit_edge ]
  %srq106 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 8
  %72 = ptrtoint ptr %srq106 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %.sink616, ptr %srq106, align 8
  %73 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ibqp, align 4
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %4, align 8
  %conv109 = trunc i64 %76 to i32
  %77 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %6, align 4
  %call110 = call ptr @ib_umem_get(ptr noundef %74, i32 noundef %conv109, i32 noundef %78, i32 noundef 0) #7
  %sumem = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 6
  %79 = ptrtoint ptr %sumem to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call110, ptr %sumem, align 8
  %cmp.i527 = icmp ugt ptr %call110, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i527, label %if.then113, label %if.end120

if.then113:                                       ; preds = %if.end107
  br i1 %tobool, label %if.then113.if.end117_crit_edge, label %if.then115

if.then113.if.end117_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.then115:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  %rumem116 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 5
  %80 = ptrtoint ptr %rumem116 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rumem116, align 4
  call void @ib_umem_release(ptr noundef %81) #7
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %if.then113.if.end117_crit_edge
  %82 = ptrtoint ptr %sumem to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sumem, align 8
  %84 = ptrtoint ptr %83 to i32
  br label %err_qp

if.end120:                                        ; preds = %if.end107
  %iova.i = getelementptr inbounds %struct.ib_umem, ptr %call110, i32 0, i32 2
  %85 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %iova.i, align 8
  %length.i = getelementptr inbounds %struct.ib_umem, ptr %call110, i32 0, i32 3
  %87 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %length.i, align 8
  %conv.i = zext i32 %88 to i64
  %add.i = add i64 %86, 4095
  %add2.i = add i64 %add.i, %conv.i
  %and.i = and i64 %add2.i, 4294963200
  %and15.i = and i64 %86, 4294963200
  %sub16.i = sub nsw i64 %and.i, %and15.i
  %conv17.i = trunc i64 %sub16.i to i32
  %div1.i = lshr exact i32 %conv17.i, 12
  %npages_send = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 10
  %89 = ptrtoint ptr %npages_send to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %div1.i, ptr %npages_send, align 8
  br i1 %tobool, label %if.end120.if.end129_crit_edge, label %if.then124

if.end120.if.end129_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129

if.then124:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  %rumem125 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 5
  %90 = ptrtoint ptr %rumem125 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rumem125, align 4
  %iova.i528 = getelementptr inbounds %struct.ib_umem, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %iova.i528 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %iova.i528, align 8
  %length.i529 = getelementptr inbounds %struct.ib_umem, ptr %91, i32 0, i32 3
  %94 = ptrtoint ptr %length.i529 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %length.i529, align 8
  %conv.i530 = zext i32 %95 to i64
  %add.i531 = add i64 %93, 4095
  %add2.i532 = add i64 %add.i531, %conv.i530
  %and.i533 = and i64 %add2.i532, 4294963200
  %and15.i534 = and i64 %93, 4294963200
  %sub16.i535 = sub nsw i64 %and.i533, %and15.i534
  %conv17.i536 = trunc i64 %sub16.i535 to i32
  %div1.i537 = lshr exact i32 %conv17.i536, 12
  br label %if.end129

if.end129:                                        ; preds = %if.then124, %if.end120.if.end129_crit_edge
  %div1.i537.sink = phi i32 [ %div1.i537, %if.then124 ], [ 0, %if.end120.if.end129_crit_edge ]
  %96 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 11
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %div1.i537.sink, ptr %96, align 4
  %add = add nuw nsw i32 %div1.i537.sink, %div1.i
  %npages = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 9
  %98 = ptrtoint ptr %npages to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add, ptr %npages, align 4
  br label %if.end154

if.else132:                                       ; preds = %do.body47
  %99 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ibqp, align 4
  %cap = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6
  %101 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cap, align 4
  %dsr.i = getelementptr inbounds %struct.pvrdma_dev, ptr %100, i32 0, i32 3
  %103 = ptrtoint ptr %dsr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dsr.i, align 8
  %max_qp_wr.i = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %104, i32 0, i32 8, i32 14
  %105 = ptrtoint ptr %max_qp_wr.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %max_qp_wr.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %106)
  %cmp.i538 = icmp ugt i32 %102, %106
  br i1 %cmp.i538, label %if.else132.pvrdma_set_sq_size.exit_crit_edge, label %lor.lhs.false.i

if.else132.pvrdma_set_sq_size.exit_crit_edge:     ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #9
  br label %pvrdma_set_sq_size.exit

lor.lhs.false.i:                                  ; preds = %if.else132
  %max_send_sge.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 2
  %107 = ptrtoint ptr %max_send_sge.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %max_send_sge.i, align 4
  %max_sge.i = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %104, i32 0, i32 8, i32 16
  %109 = ptrtoint ptr %max_sge.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %max_sge.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %110)
  %cmp3.i = icmp ugt i32 %108, %110
  br i1 %cmp3.i, label %lor.lhs.false.i.pvrdma_set_sq_size.exit_crit_edge, label %cond.false72.i

lor.lhs.false.i.pvrdma_set_sq_size.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pvrdma_set_sq_size.exit

cond.false72.i:                                   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp6.i = icmp eq i32 %102, 0
  %.op = add i32 %102, -1
  %sub.i347.i = select i1 %cmp6.i, i32 0, i32 %.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i347.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i347.i, 0
  %111 = tail call i32 @llvm.ctlz.i32(i32 %sub.i347.i, i1 true) #7, !range !170
  %sub.i.i.i.i = sub nuw nsw i32 32, %111
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %shl.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i
  %wqe_cnt.i = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 3, i32 2
  %112 = ptrtoint ptr %wqe_cnt.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %shl.i.i, ptr %wqe_cnt.i, align 4
  %113 = ptrtoint ptr %max_send_sge.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %max_send_sge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp88.i = icmp eq i32 %114, 0
  %.op617 = add i32 %114, -1
  %sub.i351.i = select i1 %cmp88.i, i32 0, i32 %.op617
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i351.i)
  %tobool.not.i.i.i352.i = icmp eq i32 %sub.i351.i, 0
  %115 = tail call i32 @llvm.ctlz.i32(i32 %sub.i351.i, i1 true) #7, !range !170
  %sub.i.i.i353.i = sub nuw nsw i32 32, %115
  %sub.i.i.op.i354.i = shl nuw i32 1, %sub.i.i.i353.i
  %shl.i355.i = select i1 %tobool.not.i.i.i352.i, i32 1, i32 %sub.i.i.op.i354.i
  %max_sg.i = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 3, i32 4
  %116 = ptrtoint ptr %max_sg.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %shl.i355.i, ptr %max_sg.i, align 4
  %117 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %shl.i.i, ptr %cap, align 4
  %118 = load i32, ptr %max_sg.i, align 4
  %119 = ptrtoint ptr %max_send_sge.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %max_send_sge.i, align 4
  %120 = load i32, ptr %max_sg.i, align 4
  %mul.i = shl i32 %120, 4
  %sub208.i = add i32 %mul.i, 79
  %121 = tail call i32 @llvm.ctlz.i32(i32 %sub208.i, i1 true) #7, !range !170
  %sub.i.i.i358.pn.i = sub nuw nsw i32 32, %121
  %cond249.i = shl nuw i32 1, %sub.i.i.i358.pn.i
  %wqe_size.i = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 3, i32 3
  %122 = ptrtoint ptr %wqe_size.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %cond249.i, ptr %wqe_size.i, align 4
  %123 = ptrtoint ptr %wqe_cnt.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %wqe_cnt.i, align 4
  %mul255.i = shl i32 %124, %sub.i.i.i358.pn.i
  %sub257.i = add i32 %mul255.i, 4095
  %div333.i = lshr i32 %sub257.i, 12
  %add258.i = add nuw nsw i32 %div333.i, 1
  %npages_send.i = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 10
  %125 = ptrtoint ptr %npages_send.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %add258.i, ptr %npages_send.i, align 8
  %126 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ibqp, align 4
  %max_recv_wr.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 1
  %128 = ptrtoint ptr %max_recv_wr.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %max_recv_wr.i, align 4
  %dsr.i541 = getelementptr inbounds %struct.pvrdma_dev, ptr %127, i32 0, i32 3
  %130 = ptrtoint ptr %dsr.i541 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dsr.i541, align 8
  %max_qp_wr.i542 = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %131, i32 0, i32 8, i32 14
  %132 = ptrtoint ptr %max_qp_wr.i542 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %max_qp_wr.i542, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %133)
  %cmp.i543 = icmp ugt i32 %129, %133
  br i1 %cmp.i543, label %cond.false72.i.pvrdma_set_rq_size.exit_crit_edge, label %lor.lhs.false.i546

cond.false72.i.pvrdma_set_rq_size.exit_crit_edge: ; preds = %cond.false72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pvrdma_set_rq_size.exit

pvrdma_set_sq_size.exit:                          ; preds = %lor.lhs.false.i.pvrdma_set_sq_size.exit_crit_edge, %if.else132.pvrdma_set_sq_size.exit_crit_edge
  %pdev.i = getelementptr inbounds %struct.pvrdma_dev, ptr %100, i32 0, i32 1
  %134 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pdev.i, align 8
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %135, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4.i, ptr noundef nonnull @.str.86) #10
  br label %err_qp

lor.lhs.false.i546:                               ; preds = %cond.false72.i
  %max_recv_sge.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 3
  %136 = ptrtoint ptr %max_recv_sge.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %max_recv_sge.i, align 4
  %max_sge.i544 = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %131, i32 0, i32 8, i32 16
  %138 = ptrtoint ptr %max_sge.i544 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %max_sge.i544, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %139)
  %cmp3.i545 = icmp ugt i32 %137, %139
  br i1 %cmp3.i545, label %lor.lhs.false.i546.pvrdma_set_rq_size.exit_crit_edge, label %cond.false72.i571

lor.lhs.false.i546.pvrdma_set_rq_size.exit_crit_edge: ; preds = %lor.lhs.false.i546
  call void @__sanitizer_cov_trace_pc() #9
  br label %pvrdma_set_rq_size.exit

cond.false72.i571:                                ; preds = %lor.lhs.false.i546
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp6.i550 = icmp eq i32 %129, 0
  %.op618 = add i32 %129, -1
  %sub.i346.i = select i1 %cmp6.i550, i32 0, i32 %.op618
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i346.i)
  %tobool.not.i.i.i.i567 = icmp eq i32 %sub.i346.i, 0
  %140 = tail call i32 @llvm.ctlz.i32(i32 %sub.i346.i, i1 true) #7, !range !170
  %sub.i.i.i.i568 = sub nuw nsw i32 32, %140
  %sub.i.i.op.i.i569 = shl nuw i32 1, %sub.i.i.i.i568
  %shl.i.i570 = select i1 %tobool.not.i.i.i.i567, i32 1, i32 %sub.i.i.op.i.i569
  %wqe_cnt.i573 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 4, i32 2
  %141 = ptrtoint ptr %wqe_cnt.i573 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %shl.i.i570, ptr %wqe_cnt.i573, align 4
  %142 = ptrtoint ptr %max_recv_sge.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %max_recv_sge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp88.i574 = icmp eq i32 %143, 0
  %.op619 = add i32 %143, -1
  %sub.i350.i = select i1 %cmp88.i574, i32 0, i32 %.op619
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i350.i)
  %tobool.not.i.i.i351.i = icmp eq i32 %sub.i350.i, 0
  %144 = tail call i32 @llvm.ctlz.i32(i32 %sub.i350.i, i1 true) #7, !range !170
  %sub.i.i.i352.i = sub nuw nsw i32 32, %144
  %sub.i.i.op.i353.i = shl nuw i32 1, %sub.i.i.i352.i
  %shl.i354.i = select i1 %tobool.not.i.i.i351.i, i32 1, i32 %sub.i.i.op.i353.i
  %max_sg.i590 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 4, i32 4
  %145 = ptrtoint ptr %max_sg.i590 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %shl.i354.i, ptr %max_sg.i590, align 4
  %146 = ptrtoint ptr %max_recv_wr.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %shl.i.i570, ptr %max_recv_wr.i, align 4
  %147 = load i32, ptr %max_sg.i590, align 4
  %148 = ptrtoint ptr %max_recv_sge.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %max_recv_sge.i, align 4
  %149 = load i32, ptr %max_sg.i590, align 4
  %mul.i591 = shl i32 %149, 4
  %sub208.i592 = or i32 %mul.i591, 15
  %150 = tail call i32 @llvm.ctlz.i32(i32 %sub208.i592, i1 true) #7, !range !170
  %sub.i.i.i357.pn.i = sub nuw nsw i32 32, %150
  %cond249.i593 = shl nuw i32 1, %sub.i.i.i357.pn.i
  %wqe_size.i594 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 4, i32 3
  %151 = ptrtoint ptr %wqe_size.i594 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %cond249.i593, ptr %wqe_size.i594, align 4
  %152 = ptrtoint ptr %wqe_cnt.i573 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %wqe_cnt.i573, align 4
  %mul255.i595 = shl i32 %153, %sub.i.i.i357.pn.i
  %sub257.i596 = add i32 %mul255.i595, 4095
  %div332.i = lshr i32 %sub257.i596, 12
  %npages_recv.i = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 11
  %154 = ptrtoint ptr %npages_recv.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %div332.i, ptr %npages_recv.i, align 4
  %155 = ptrtoint ptr %npages_send.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %npages_send.i, align 8
  %add148 = add i32 %div332.i, %156
  %npages149 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 9
  %157 = ptrtoint ptr %npages149 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %add148, ptr %npages149, align 4
  %offset = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 3, i32 5
  %158 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 4096, ptr %offset, align 4
  %mul = shl i32 %156, 12
  %offset153 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 4, i32 5
  %159 = ptrtoint ptr %offset153 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %mul, ptr %offset153, align 4
  br label %if.end154

pvrdma_set_rq_size.exit:                          ; preds = %lor.lhs.false.i546.pvrdma_set_rq_size.exit_crit_edge, %cond.false72.i.pvrdma_set_rq_size.exit_crit_edge
  %pdev.i547 = getelementptr inbounds %struct.pvrdma_dev, ptr %127, i32 0, i32 1
  %160 = ptrtoint ptr %pdev.i547 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pdev.i547, align 8
  %dev4.i548 = getelementptr inbounds %struct.pci_dev, ptr %161, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4.i548, ptr noundef nonnull @.str.88) #10
  br label %err_qp

if.end154:                                        ; preds = %cond.false72.i571, %if.end129
  %npages155 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 9
  %162 = ptrtoint ptr %npages155 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %npages155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %163)
  %164 = icmp ugt i32 %163, 262144
  br i1 %164, label %do.end165, label %if.end168

do.end165:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  %pdev166 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %165 = ptrtoint ptr %pdev166 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pdev166, align 8
  %dev167 = getelementptr inbounds %struct.pci_dev, ptr %166, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev167, ptr noundef nonnull @.str.25) #10
  br label %err_umem

if.end168:                                        ; preds = %if.end154
  %pdir = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 7
  %conv170613 = zext i32 %163 to i64
  %167 = ptrtoint ptr %is_kernel to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %is_kernel, align 2, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool172 = icmp ne i8 %168, 0
  %call173 = call i32 @pvrdma_page_dir_init(ptr noundef %1, ptr noundef %pdir, i64 noundef %conv170613, i1 noundef zeroext %tobool172) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end181, label %do.end178

do.end178:                                        ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  %pdev179 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %169 = ptrtoint ptr %pdev179 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pdev179, align 8
  %dev180 = getelementptr inbounds %struct.pci_dev, ptr %170, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev180, ptr noundef nonnull @.str.28) #10
  br label %err_umem

if.end181:                                        ; preds = %if.end168
  %171 = ptrtoint ptr %is_kernel to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %is_kernel, align 2, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool183.not = icmp eq i8 %172, 0
  br i1 %tobool183.not, label %if.then184, label %if.else196

if.then184:                                       ; preds = %if.end181
  %sumem186 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 6
  %173 = ptrtoint ptr %sumem186 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %sumem186, align 8
  %call187 = call i32 @pvrdma_page_dir_insert_umem(ptr noundef %pdir, ptr noundef %174, i64 noundef 0) #7
  br i1 %tobool, label %if.then184.sw.epilog_crit_edge, label %if.then189

if.then184.sw.epilog_crit_edge:                   ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then189:                                       ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #9
  %rumem191 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 5
  %175 = ptrtoint ptr %rumem191 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %rumem191, align 4
  %npages_send192 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 10
  %177 = ptrtoint ptr %npages_send192 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %npages_send192, align 8
  %conv193 = sext i32 %178 to i64
  %call194 = call i32 @pvrdma_page_dir_insert_umem(ptr noundef %pdir, ptr noundef %176, i64 noundef %conv193) #7
  br label %sw.epilog

if.else196:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #9
  %pages = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 7, i32 5
  %179 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pages, align 8
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %180, align 4
  %183 = ptrtoint ptr %sq to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %182, ptr %sq, align 4
  %arrayidx203 = getelementptr %struct.pvrdma_ring, ptr %182, i32 1
  %spec.select = select i1 %tobool, ptr null, ptr %arrayidx203
  %184 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %spec.select, ptr %rq, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else196, %if.then189, %if.then184.sw.epilog_crit_edge
  %cap207 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6
  %max_inline_data = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 4
  %185 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %max_inline_data, align 4
  %186 = call ptr @memset(ptr %req, i32 0, i32 80)
  %cmd208 = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req, i32 0, i32 1
  %187 = ptrtoint ptr %cmd208 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 9, ptr %cmd208, align 8
  %pd = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 1
  %188 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pd, align 4
  %pd_handle = getelementptr inbounds %struct.pvrdma_pd, ptr %189, i32 0, i32 2
  %190 = ptrtoint ptr %pd_handle to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %pd_handle, align 4
  %pd_handle210 = getelementptr inbounds %struct.pvrdma_cmd_create_qp, ptr %req, i32 0, i32 2
  %192 = ptrtoint ptr %pd_handle210 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %pd_handle210, align 8
  %send_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 2
  %193 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %send_cq, align 4
  %cq_handle = getelementptr inbounds %struct.pvrdma_cq, ptr %194, i32 0, i32 7
  %195 = ptrtoint ptr %cq_handle to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %cq_handle, align 8
  %send_cq_handle = getelementptr inbounds %struct.pvrdma_cmd_create_qp, ptr %req, i32 0, i32 3
  %197 = ptrtoint ptr %send_cq_handle to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %send_cq_handle, align 4
  %recv_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 3
  %198 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %recv_cq, align 4
  %cq_handle213 = getelementptr inbounds %struct.pvrdma_cq, ptr %199, i32 0, i32 7
  %200 = ptrtoint ptr %cq_handle213 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %cq_handle213, align 8
  %recv_cq_handle = getelementptr inbounds %struct.pvrdma_cmd_create_qp, ptr %req, i32 0, i32 4
  %202 = ptrtoint ptr %recv_cq_handle to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %recv_cq_handle, align 8
  br i1 %tobool, label %if.then215, label %sw.epilog.if.end221_crit_edge

sw.epilog.if.end221_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end221

if.then215:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %203 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %srq, align 4
  %srq_handle = getelementptr inbounds %struct.pvrdma_srq, ptr %204, i32 0, i32 9
  %205 = ptrtoint ptr %srq_handle to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %srq_handle, align 8
  br label %if.end221

if.end221:                                        ; preds = %if.then215, %sw.epilog.if.end221_crit_edge
  %.sink = phi i32 [ %206, %if.then215 ], [ 0, %sw.epilog.if.end221_crit_edge ]
  %207 = getelementptr inbounds %struct.pvrdma_cmd_create_qp, ptr %req, i32 0, i32 5
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %.sink, ptr %207, align 4
  %209 = ptrtoint ptr %cap207 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %cap207, align 4
  %max_send_wr223 = getelementptr inbounds %struct.pvrdma_cmd_create_qp, ptr %req, i32 0, i32 6
  %211 = ptrtoint ptr %max_send_wr223 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %max_send_wr223, align 8
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 1
  %212 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %max_recv_wr, align 4
  %max_recv_wr225 = getelementptr inbounds %struct.pvrdma_cmd_create_qp, ptr %req, i32 0, i32 7
  %214 = ptrtoint ptr %max_recv_wr225 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %max_recv_wr225, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 2
  %215 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %max_send_sge, align 4
  %max_send_sge227 = getelementptr inbounds %struct.pvrdma_cmd_create_qp, ptr %req, i32 0, i32 8
  %217 = ptrtoint ptr %max_send_sge227 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %max_send_sge227, align 8
  %max_recv_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 3
  %218 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %max_recv_sge, align 4
  %max_recv_sge229 = getelementptr inbounds %struct.pvrdma_cmd_create_qp, ptr %req, i32 0, i32 9
  %220 = ptrtoint ptr %max_recv_sge229 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %max_recv_sge229, align 4
  %sq_sig_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 7
  %221 = ptrtoint ptr %sq_sig_type to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %sq_sig_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %cmp233 = icmp eq i32 %222, 0
  %conv236 = zext i1 %cmp233 to i8
  %sq_sig_all = getelementptr inbounds %struct.pvrdma_cmd_create_qp, ptr %req, i32 0, i32 16
  %223 = ptrtoint ptr %sq_sig_all to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %conv236, ptr %sq_sig_all, align 2
  %224 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %qp_type, align 4
  %conv239 = trunc i32 %225 to i8
  %qp_type240 = getelementptr inbounds %struct.pvrdma_cmd_create_qp, ptr %req, i32 0, i32 17
  %226 = ptrtoint ptr %qp_type240 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %conv239, ptr %qp_type240, align 1
  %is_srq243 = getelementptr inbounds %struct.pvrdma_cmd_create_qp, ptr %req, i32 0, i32 18
  %227 = ptrtoint ptr %is_srq243 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %frombool, ptr %is_srq243, align 4
  %access_flags = getelementptr inbounds %struct.pvrdma_cmd_create_qp, ptr %req, i32 0, i32 12
  %228 = ptrtoint ptr %access_flags to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 1, ptr %access_flags, align 8
  %229 = ptrtoint ptr %npages155 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %npages155, align 4
  %conv245 = trunc i32 %230 to i16
  %total_chunks = getelementptr inbounds %struct.pvrdma_cmd_create_qp, ptr %req, i32 0, i32 13
  %231 = ptrtoint ptr %total_chunks to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 %conv245, ptr %total_chunks, align 4
  %npages_send246 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 10
  %232 = ptrtoint ptr %npages_send246 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %npages_send246, align 8
  %234 = trunc i32 %233 to i16
  %conv247 = add i16 %234, -1
  %send_chunks = getelementptr inbounds %struct.pvrdma_cmd_create_qp, ptr %req, i32 0, i32 14
  %235 = ptrtoint ptr %send_chunks to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 %conv247, ptr %send_chunks, align 2
  %236 = ptrtoint ptr %pdir to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %pdir, align 8
  %conv249 = zext i32 %237 to i64
  %pdir_dma = getelementptr inbounds %struct.pvrdma_cmd_create_qp, ptr %req, i32 0, i32 1
  %238 = ptrtoint ptr %pdir_dma to i32
  call void @__asan_store8_noabort(i32 %238)
  store i64 %conv249, ptr %pdir_dma, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_create_qp.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_create_qp, %if.then262)) #7
          to label %do.end271 [label %if.then262], !srcloc !164

if.then262:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  %pdev263 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %239 = ptrtoint ptr %pdev263 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %pdev263, align 8
  %dev264 = getelementptr inbounds %struct.pci_dev, ptr %240, i32 0, i32 44
  %241 = ptrtoint ptr %max_send_wr223 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %max_send_wr223, align 8
  %243 = ptrtoint ptr %max_recv_wr225 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %max_recv_wr225, align 4
  %245 = ptrtoint ptr %max_send_sge227 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %max_send_sge227, align 8
  %247 = ptrtoint ptr %max_recv_sge229 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %max_recv_sge229, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_create_qp.__UNIQUE_ID_ddebug511, ptr noundef %dev264, ptr noundef nonnull @.str.30, i32 noundef %242, i32 noundef %244, i32 noundef %246, i32 noundef %248) #7
  br label %do.end271

do.end271:                                        ; preds = %if.then262, %if.end221
  %call272 = call i32 @pvrdma_cmd_post(ptr noundef %1, ptr noundef nonnull %req, ptr noundef nonnull %rsp, i32 noundef -2147483639) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call272)
  %cmp273 = icmp slt i32 %call272, 0
  br i1 %cmp273, label %do.end278, label %if.end281

do.end278:                                        ; preds = %do.end271
  call void @__sanitizer_cov_trace_pc() #9
  %pdev279 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %249 = ptrtoint ptr %pdev279 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %pdev279, align 8
  %dev280 = getelementptr inbounds %struct.pci_dev, ptr %250, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev280, ptr noundef nonnull @.str.32, i32 noundef %call272) #10
  call void @pvrdma_page_dir_cleanup(ptr noundef %1, ptr noundef %pdir) #7
  br label %err_umem

if.end281:                                        ; preds = %do.end271
  %port_num282 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 10
  %251 = ptrtoint ptr %port_num282 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %port_num282, align 4
  %conv283 = trunc i32 %252 to i8
  %port = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 13
  %253 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %conv283, ptr %port, align 4
  %dsr_version284 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 9
  %254 = ptrtoint ptr %dsr_version284 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %dsr_version284, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %255)
  %cmp285 = icmp ugt i32 %255, 19
  br i1 %cmp285, label %if.then287, label %if.else290

if.then287:                                       ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #9
  %qpn = getelementptr inbounds %struct.pvrdma_cmd_create_qp_resp_v2, ptr %rsp, i32 0, i32 1
  %256 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %qpn, align 8
  %qp_handle = getelementptr inbounds %struct.pvrdma_cmd_create_qp_resp_v2, ptr %rsp, i32 0, i32 2
  %258 = ptrtoint ptr %qp_handle to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %qp_handle, align 4
  br label %do.body298

if.else290:                                       ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #9
  %qpn291 = getelementptr inbounds %struct.pvrdma_cmd_create_qp_resp, ptr %rsp, i32 0, i32 1
  %260 = ptrtoint ptr %qpn291 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %qpn291, align 8
  br label %do.body298

do.body298:                                       ; preds = %if.else290, %if.then287
  %.sink615 = phi i32 [ %257, %if.then287 ], [ %261, %if.else290 ]
  %.sink614 = phi i32 [ %259, %if.then287 ], [ %261, %if.else290 ]
  %262 = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 19
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %.sink615, ptr %262, align 4
  %264 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 1
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %.sink614, ptr %264, align 4
  %qp_tbl_lock = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 24
  %call303 = call i32 @_raw_spin_lock_irqsave(ptr noundef %qp_tbl_lock) #7
  %qp_tbl = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 23
  %266 = ptrtoint ptr %qp_tbl to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %qp_tbl, align 8
  %268 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %264, align 4
  %270 = ptrtoint ptr %dsr29 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dsr29, align 8
  %max_qp311 = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %271, i32 0, i32 8, i32 13
  %272 = ptrtoint ptr %max_qp311 to i32
  call void @__asan_loadN_noabort(i32 %272, i32 4)
  %273 = load i32, ptr %max_qp311, align 1
  %rem = urem i32 %269, %273
  %arrayidx312 = getelementptr ptr, ptr %267, i32 %rem
  %274 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %ibqp, ptr %arrayidx312, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %qp_tbl_lock, i32 noundef %call303) #7
  br i1 %tobool59.not, label %do.body298.cleanup_crit_edge, label %if.then315

do.body298.cleanup_crit_edge:                     ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then315:                                       ; preds = %do.body298
  %275 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %262, align 4
  %277 = ptrtoint ptr %qp_resp to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %276, ptr %qp_resp, align 8
  %278 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %264, align 4
  %qp_handle320 = getelementptr inbounds %struct.pvrdma_create_qp_resp, ptr %qp_resp, i32 0, i32 1
  %280 = ptrtoint ptr %qp_handle320 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %279, ptr %qp_handle320, align 4
  %outlen321 = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 3
  %281 = ptrtoint ptr %outlen321 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %outlen321, align 4
  %283 = call i32 @llvm.umin.i32(i32 %282, i32 8)
  %outbuf.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %284 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %outbuf.i, align 4
  call void @__check_object_size(ptr noundef nonnull %qp_resp, i32 noundef %283, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.85, i32 noundef 174) #7
  %call.i.i.i600 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i600, label %if.then315.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i603

if.then315.copy_to_user.exit.i_crit_edge:         ; preds = %if.then315
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.i

if.end.i.i.i603:                                  ; preds = %if.then315
  %286 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %285, i32 %283, i32 -1226833920) #11, !srcloc !172
  %asmresult.i.i.i602 = extractvalue { i32, i32 } %286, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i602)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i602, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i603.copy_to_user.exit.i_crit_edge

if.end.i.i.i603.copy_to_user.exit.i_crit_edge:    ; preds = %if.end.i.i.i603
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i603
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i604 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %qp_resp, i32 noundef %283) #7
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %285, ptr noundef nonnull %qp_resp, i32 noundef %283) #7
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i603.copy_to_user.exit.i_crit_edge, %if.then315.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %283, %if.then315.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %283, %if.end.i.i.i603.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool.not.i, label %copy_to_user.exit.i.cleanup_crit_edge, label %do.end334

copy_to_user.exit.i.cleanup_crit_edge:            ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end334:                                        ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %pdev335 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %287 = ptrtoint ptr %pdev335 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %pdev335, align 8
  %dev336 = getelementptr inbounds %struct.pci_dev, ptr %288, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev336, ptr noundef nonnull @.str.35) #10
  call fastcc void @__pvrdma_destroy_qp(ptr noundef %1, ptr noundef %ibqp)
  br label %cleanup

err_umem:                                         ; preds = %do.end278, %do.end178, %do.end165
  %ret.0 = phi i32 [ -22, %do.end165 ], [ %call173, %do.end178 ], [ %call272, %do.end278 ]
  %rumem340 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 5
  %289 = ptrtoint ptr %rumem340 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %rumem340, align 4
  call void @ib_umem_release(ptr noundef %290) #7
  %sumem341 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 6
  %291 = ptrtoint ptr %sumem341 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %sumem341, align 8
  call void @ib_umem_release(ptr noundef %292) #7
  br label %err_qp

err_qp:                                           ; preds = %err_umem, %pvrdma_set_rq_size.exit, %pvrdma_set_sq_size.exit, %if.end117, %if.then98, %do.end88, %if.then11.i.i.i, %do.end42, %if.end33.err_qp_crit_edge
  %ret.1 = phi i32 [ -22, %pvrdma_set_sq_size.exit ], [ -22, %pvrdma_set_rq_size.exit ], [ %ret.0, %err_umem ], [ -95, %do.end88 ], [ %84, %if.end117 ], [ %68, %if.then98 ], [ -22, %do.end42 ], [ -22, %if.end33.err_qp_crit_edge ], [ -14, %if.then11.i.i.i ]
  %call.i.i524 = call zeroext i1 @__kasan_check_write(ptr noundef %num_qps, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %num_qps, i32 1, i32 3, i32 1) #7
  %293 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_qps, ptr %num_qps, i32 1, ptr elementtype(i32) %num_qps) #7, !srcloc !173
  br label %cleanup

cleanup:                                          ; preds = %err_qp, %do.end334, %copy_to_user.exit.i.cleanup_crit_edge, %do.body298.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %do.end25, %do.end14, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ -95, %do.end14 ], [ %ret.1, %err_qp ], [ -22, %do.end334 ], [ -22, %do.end25 ], [ 0, %do.body298.cleanup_crit_edge ], [ 0, %copy_to_user.exit.i.cleanup_crit_edge ], [ -12, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qp_resp) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ucmd) #7
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %rsp) #7
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_page_dir_init(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_page_dir_insert_umem(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_cmd_post(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__pvrdma_destroy_qp(ptr noundef %dev, ptr noundef %qp) unnamed_addr #0 align 64 {
entry:
  %req.i = alloca %union.pvrdma_cmd_req, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qp_handle = getelementptr inbounds %struct.pvrdma_qp, ptr %qp, i32 0, i32 1
  %0 = ptrtoint ptr %qp_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qp_handle, align 4
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req.i) #7
  %2 = getelementptr inbounds i8, ptr %req.i, i32 24
  %3 = call ptr @memset(ptr %2, i32 255, i32 160)
  %4 = call ptr @memset(ptr %req.i, i32 0, i32 24)
  %cmd1.i = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req.i, i32 0, i32 1
  %5 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 12, ptr %cmd1.i, align 8
  %qp_handle2.i = getelementptr inbounds %struct.pvrdma_cmd_destroy_qp, ptr %req.i, i32 0, i32 1
  %6 = ptrtoint ptr %qp_handle2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %qp_handle2.i, align 8
  %call.i = call i32 @pvrdma_cmd_post(ptr noundef %dev, ptr noundef nonnull %req.i, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry._pvrdma_destroy_qp_work.exit_crit_edge

entry._pvrdma_destroy_qp_work.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_pvrdma_destroy_qp_work.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3.i, ptr noundef nonnull @.str.90, i32 noundef %call.i) #10
  br label %_pvrdma_destroy_qp_work.exit

_pvrdma_destroy_qp_work.exit:                     ; preds = %do.end.i, %entry._pvrdma_destroy_qp_work.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req.i) #7
  call fastcc void @_pvrdma_free_qp(ptr noundef %qp)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvrdma_page_dir_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_destroy_qp(ptr noundef %qp, ptr nocapture noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  %scq_flags.i = alloca i32, align 4
  %rcq_flags.i = alloca i32, align 4
  %req.i = alloca %union.pvrdma_cmd_req, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 4
  %qp_handle = getelementptr inbounds %struct.pvrdma_qp, ptr %qp, i32 0, i32 1
  %2 = ptrtoint ptr %qp_handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qp_handle, align 4
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req.i) #7
  %4 = getelementptr inbounds i8, ptr %req.i, i32 24
  %5 = call ptr @memset(ptr %4, i32 255, i32 160)
  %6 = call ptr @memset(ptr %req.i, i32 0, i32 24)
  %cmd1.i = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req.i, i32 0, i32 1
  %7 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 12, ptr %cmd1.i, align 8
  %qp_handle2.i = getelementptr inbounds %struct.pvrdma_cmd_destroy_qp, ptr %req.i, i32 0, i32 1
  %8 = ptrtoint ptr %qp_handle2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %qp_handle2.i, align 8
  %call.i = call i32 @pvrdma_cmd_post(ptr noundef %1, ptr noundef nonnull %req.i, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry._pvrdma_destroy_qp_work.exit_crit_edge

entry._pvrdma_destroy_qp_work.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_pvrdma_destroy_qp_work.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3.i, ptr noundef nonnull @.str.90, i32 noundef %call.i) #10
  br label %_pvrdma_destroy_qp_work.exit

_pvrdma_destroy_qp_work.exit:                     ; preds = %do.end.i, %entry._pvrdma_destroy_qp_work.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scq_flags.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rcq_flags.i)
  %11 = ptrtoint ptr %rcq_flags.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %rcq_flags.i, align 4
  %send_cq1.i.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 2
  %12 = ptrtoint ptr %send_cq1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %send_cq1.i.i, align 8
  %recv_cq3.i.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 3
  %14 = ptrtoint ptr %recv_cq3.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %recv_cq3.i.i, align 4
  %cmp.i.i = icmp eq ptr %13, %15
  br i1 %cmp.i.i, label %if.end.thread.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %_pvrdma_destroy_qp_work.exit
  %cq_handle.i.i = getelementptr inbounds %struct.pvrdma_cq, ptr %13, i32 0, i32 7
  %16 = ptrtoint ptr %cq_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cq_handle.i.i, align 8
  %cq_handle5.i.i = getelementptr inbounds %struct.pvrdma_cq, ptr %15, i32 0, i32 7
  %18 = ptrtoint ptr %cq_handle5.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cq_handle5.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp6.i.i = icmp ult i32 %17, %19
  br i1 %cmp6.i.i, label %do.body10.i.i, label %do.body35.i.i

do.body10.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cq_lock16.i.i = getelementptr inbounds %struct.pvrdma_cq, ptr %13, i32 0, i32 2
  %call18.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_lock16.i.i) #7
  %20 = ptrtoint ptr %scq_flags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call18.i.i, ptr %scq_flags.i, align 4
  %cq_lock28.i.i = getelementptr inbounds %struct.pvrdma_cq, ptr %15, i32 0, i32 2
  %call30.i.i = call i32 @_raw_spin_lock_irqsave_nested(ptr noundef %cq_lock28.i.i, i32 noundef 1) #7
  %21 = ptrtoint ptr %rcq_flags.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call30.i.i, ptr %rcq_flags.i, align 4
  br label %if.else.i6.i

do.body35.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cq_lock41.i.i = getelementptr inbounds %struct.pvrdma_cq, ptr %15, i32 0, i32 2
  %call43.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_lock41.i.i) #7
  %22 = ptrtoint ptr %rcq_flags.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call43.i.i, ptr %rcq_flags.i, align 4
  %cq_lock53.i.i = getelementptr inbounds %struct.pvrdma_cq, ptr %13, i32 0, i32 2
  %call55.i.i = call i32 @_raw_spin_lock_irqsave_nested(ptr noundef %cq_lock53.i.i, i32 noundef 1) #7
  %23 = ptrtoint ptr %scq_flags.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call55.i.i, ptr %scq_flags.i, align 4
  br label %if.else.i6.i

if.end.thread.i:                                  ; preds = %_pvrdma_destroy_qp_work.exit
  call void @__sanitizer_cov_trace_pc() #9
  %cq_lock.i.i = getelementptr inbounds %struct.pvrdma_cq, ptr %13, i32 0, i32 2
  %call3.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_lock.i.i) #7
  %24 = ptrtoint ptr %scq_flags.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call3.i.i, ptr %scq_flags.i, align 4
  call void @_pvrdma_flush_cqe(ptr noundef %qp, ptr noundef %13) #7
  br label %pvrdma_free_qp.exit

if.else.i6.i:                                     ; preds = %do.body35.i.i, %do.body10.i.i
  call void @_pvrdma_flush_cqe(ptr noundef %qp, ptr noundef %13) #7
  call void @_pvrdma_flush_cqe(ptr noundef %qp, ptr noundef %15) #7
  %25 = ptrtoint ptr %cq_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cq_handle.i.i, align 8
  %27 = ptrtoint ptr %cq_handle5.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cq_handle5.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp2.i.i = icmp ult i32 %26, %28
  %rcq.scq.i.i = select i1 %cmp2.i.i, ptr %15, ptr %13
  %scq.rcq.i.i = select i1 %cmp2.i.i, ptr %13, ptr %15
  %scq_flags.rcq_flags.i.i = select i1 %cmp2.i.i, ptr %scq_flags.i, ptr %rcq_flags.i
  %cq_lock4.i.i = getelementptr inbounds %struct.pvrdma_cq, ptr %rcq.scq.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %rcq_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %rcq_flags.i.0.rcq_flags.i.0.rcq_flags.0.rcq_flags.val.i = load i32, ptr %rcq_flags.i, align 4
  %30 = ptrtoint ptr %scq_flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %scq_flags.i.0.scq_flags.i.0.scq_flags.0.scq_flags.val.i = load i32, ptr %scq_flags.i, align 4
  %31 = select i1 %cmp2.i.i, i32 %rcq_flags.i.0.rcq_flags.i.0.rcq_flags.0.rcq_flags.val.i, i32 %scq_flags.i.0.scq_flags.i.0.scq_flags.0.scq_flags.val.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_lock4.i.i, i32 noundef %31) #7
  br label %pvrdma_free_qp.exit

pvrdma_free_qp.exit:                              ; preds = %if.else.i6.i, %if.end.thread.i
  %scq.sink.i.i = phi ptr [ %scq.rcq.i.i, %if.else.i6.i ], [ %13, %if.end.thread.i ]
  %scq_flags.sink.i.i = phi ptr [ %scq_flags.rcq_flags.i.i, %if.else.i6.i ], [ %scq_flags.i, %if.end.thread.i ]
  %cq_lock5.i.i = getelementptr inbounds %struct.pvrdma_cq, ptr %scq.sink.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %scq_flags.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %scq_flags.sink.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_lock5.i.i, i32 noundef %33) #7
  call fastcc void @_pvrdma_free_qp(ptr noundef %qp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rcq_flags.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scq_flags.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_modify_qp(ptr noundef %ibqp, ptr noundef %attr, i32 noundef %attr_mask, ptr nocapture noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %union.pvrdma_cmd_req, align 8
  %rsp = alloca %union.pvrdma_cmd_resp, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibqp, align 4
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req) #7
  %2 = call ptr @memset(ptr %req, i32 255, i32 184)
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %rsp) #7
  %3 = call ptr @memset(ptr %rsp, i32 255, i32 176)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %attr_mask)
  %tobool.not = icmp ult i32 %attr_mask, 2097152
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %and2 = and i32 %attr_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cur_qp_state = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %cur_qp_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_qp_state, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 14
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %state, align 1
  %conv = zext i8 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %conv, %cond.false ]
  %and4 = and i32 %attr_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %cond.end.cond.end8_crit_edge, label %cond.true6

cond.end.cond.end8_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end8

cond.true6:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attr, align 8
  br label %cond.end8

cond.end8:                                        ; preds = %cond.true6, %cond.end.cond.end8_crit_edge
  %cond9 = phi i32 [ %9, %cond.true6 ], [ %cond, %cond.end.cond.end8_crit_edge ]
  %qp_type = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 22
  %10 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qp_type, align 4
  %call10 = tail call zeroext i1 @ib_modify_qp_is_ok(i32 noundef %cond, i32 noundef %cond9, i32 noundef %11, i32 noundef %attr_mask) #7
  br i1 %call10, label %if.end12, label %cond.end8.out_crit_edge

cond.end8.out_crit_edge:                          ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end12:                                         ; preds = %cond.end8
  %and13 = and i32 %attr_mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end23_crit_edge, label %if.then15

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then15:                                        ; preds = %if.end12
  %port_num = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 19
  %12 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then15.out_crit_edge, label %lor.lhs.false

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %if.then15
  %14 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ibqp, align 4
  %phys_port_cnt = getelementptr inbounds %struct.ib_device, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %phys_port_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys_port_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %17)
  %cmp19 = icmp ugt i32 %13, %17
  br i1 %cmp19, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false.if.end23_crit_edge

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end23:                                         ; preds = %lor.lhs.false.if.end23_crit_edge, %if.end12.if.end23_crit_edge
  %and24 = and i32 %attr_mask, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end32_crit_edge, label %if.then26

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then26:                                        ; preds = %if.end23
  %min_rnr_timer = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 18
  %18 = ptrtoint ptr %min_rnr_timer to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %min_rnr_timer, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %19)
  %cmp28 = icmp ugt i8 %19, 31
  br i1 %cmp28, label %if.then26.out_crit_edge, label %if.then26.if.end32_crit_edge

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then26.out_crit_edge:                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end32:                                         ; preds = %if.then26.if.end32_crit_edge, %if.end23.if.end32_crit_edge
  %and33 = and i32 %attr_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end42_crit_edge, label %if.then35

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then35:                                        ; preds = %if.end32
  %pkey_index = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 12
  %20 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %pkey_index, align 8
  %dsr = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dsr, align 8
  %max_pkeys = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %23, i32 0, i32 8, i32 43
  %24 = ptrtoint ptr %max_pkeys to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %max_pkeys, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %25)
  %cmp38.not = icmp ult i16 %21, %25
  br i1 %cmp38.not, label %if.then35.if.end42_crit_edge, label %if.then35.out_crit_edge

if.then35.out_crit_edge:                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then35.if.end42_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.end42:                                         ; preds = %if.then35.if.end42_crit_edge, %if.end32.if.end42_crit_edge
  %and43 = and i32 %attr_mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end47_crit_edge, label %if.then45

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %qkey = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 4
  %26 = ptrtoint ptr %qkey to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qkey, align 8
  %qkey46 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 2
  %28 = ptrtoint ptr %qkey46 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %qkey46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end42.if.end47_crit_edge
  %29 = or i32 %cond9, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %if.end47.out_crit_edge, label %if.end53

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end53:                                         ; preds = %if.end47
  %conv54 = trunc i32 %cond9 to i8
  %state55 = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 14
  %31 = ptrtoint ptr %state55 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv54, ptr %state55, align 1
  %32 = call ptr @memset(ptr %req, i32 0, i32 184)
  %cmd56 = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req, i32 0, i32 1
  %33 = ptrtoint ptr %cmd56 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 10, ptr %cmd56, align 8
  %qp_handle = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 1
  %34 = ptrtoint ptr %qp_handle to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qp_handle, align 4
  %qp_handle57 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 1
  %36 = ptrtoint ptr %qp_handle57 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %qp_handle57, align 8
  %attr_mask59 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 2
  %37 = ptrtoint ptr %attr_mask59 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %attr_mask, ptr %attr_mask59, align 4
  %38 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %attr, align 8
  %attrs = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3
  %40 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %attrs, align 8
  %cur_qp_state63 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 1
  %41 = ptrtoint ptr %cur_qp_state63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cur_qp_state63, align 4
  %cur_qp_state66 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %cur_qp_state66 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %cur_qp_state66, align 4
  %path_mtu = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 2
  %44 = ptrtoint ptr %path_mtu to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %path_mtu, align 8
  %path_mtu69 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 2
  %46 = ptrtoint ptr %path_mtu69 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %path_mtu69, align 8
  %path_mig_state = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 3
  %47 = ptrtoint ptr %path_mig_state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %path_mig_state, align 4
  %path_mig_state72 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %path_mig_state72 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %path_mig_state72, align 4
  %qkey73 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 4
  %50 = ptrtoint ptr %qkey73 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %qkey73, align 8
  %qkey75 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 4
  %52 = ptrtoint ptr %qkey75 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %qkey75, align 8
  %rq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 5
  %53 = ptrtoint ptr %rq_psn to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rq_psn, align 4
  %rq_psn77 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 5
  %55 = ptrtoint ptr %rq_psn77 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %rq_psn77, align 4
  %sq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 6
  %56 = ptrtoint ptr %sq_psn to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sq_psn, align 8
  %sq_psn79 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 6
  %58 = ptrtoint ptr %sq_psn79 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %sq_psn79, align 8
  %dest_qp_num = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 7
  %59 = ptrtoint ptr %dest_qp_num to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dest_qp_num, align 4
  %dest_qp_num81 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 7
  %61 = ptrtoint ptr %dest_qp_num81 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %dest_qp_num81, align 4
  %qp_access_flags = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 8
  %62 = ptrtoint ptr %qp_access_flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %qp_access_flags, align 8
  %qp_access_flags84 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 8
  %64 = ptrtoint ptr %qp_access_flags84 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %qp_access_flags84, align 8
  %pkey_index85 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 12
  %65 = ptrtoint ptr %pkey_index85 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %pkey_index85, align 8
  %pkey_index87 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 9
  %67 = ptrtoint ptr %pkey_index87 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %pkey_index87, align 4
  %alt_pkey_index = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 13
  %68 = ptrtoint ptr %alt_pkey_index to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %alt_pkey_index, align 2
  %alt_pkey_index89 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 10
  %70 = ptrtoint ptr %alt_pkey_index89 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %alt_pkey_index89, align 2
  %en_sqd_async_notify = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 14
  %71 = ptrtoint ptr %en_sqd_async_notify to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %en_sqd_async_notify, align 4
  %en_sqd_async_notify91 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 11
  %73 = ptrtoint ptr %en_sqd_async_notify91 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %en_sqd_async_notify91, align 8
  %sq_draining = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 15
  %74 = ptrtoint ptr %sq_draining to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %sq_draining, align 1
  %sq_draining93 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 12
  %76 = ptrtoint ptr %sq_draining93 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %sq_draining93, align 1
  %max_rd_atomic = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 16
  %77 = ptrtoint ptr %max_rd_atomic to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %max_rd_atomic, align 2
  %max_rd_atomic95 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 13
  %79 = ptrtoint ptr %max_rd_atomic95 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %max_rd_atomic95, align 2
  %max_dest_rd_atomic = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 17
  %80 = ptrtoint ptr %max_dest_rd_atomic to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %max_dest_rd_atomic, align 1
  %max_dest_rd_atomic97 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 14
  %82 = ptrtoint ptr %max_dest_rd_atomic97 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %max_dest_rd_atomic97, align 1
  %min_rnr_timer98 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 18
  %83 = ptrtoint ptr %min_rnr_timer98 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %min_rnr_timer98, align 8
  %min_rnr_timer100 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 15
  %85 = ptrtoint ptr %min_rnr_timer100 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %min_rnr_timer100, align 4
  %port_num101 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 19
  %86 = ptrtoint ptr %port_num101 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %port_num101, align 4
  %conv102 = trunc i32 %87 to i8
  %port_num104 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 16
  %88 = ptrtoint ptr %port_num104 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv102, ptr %port_num104, align 1
  %timeout = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 20
  %89 = ptrtoint ptr %timeout to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %timeout, align 8
  %timeout106 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 17
  %91 = ptrtoint ptr %timeout106 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %timeout106, align 2
  %retry_cnt = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 21
  %92 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %retry_cnt, align 1
  %retry_cnt108 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 18
  %94 = ptrtoint ptr %retry_cnt108 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %retry_cnt108, align 1
  %rnr_retry = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 22
  %95 = ptrtoint ptr %rnr_retry to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %rnr_retry, align 2
  %rnr_retry110 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 19
  %97 = ptrtoint ptr %rnr_retry110 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %rnr_retry110, align 8
  %alt_port_num = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 23
  %98 = ptrtoint ptr %alt_port_num to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %alt_port_num, align 4
  %conv111 = trunc i32 %99 to i8
  %alt_port_num113 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 20
  %100 = ptrtoint ptr %alt_port_num113 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv111, ptr %alt_port_num113, align 1
  %alt_timeout = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 24
  %101 = ptrtoint ptr %alt_timeout to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %alt_timeout, align 8
  %alt_timeout115 = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 21
  %103 = ptrtoint ptr %alt_timeout115 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %alt_timeout115, align 2
  %cap = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 23
  %cap117 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 9
  call void @ib_qp_cap_to_pvrdma(ptr noundef %cap, ptr noundef %cap117) #7
  %ah_attr = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 24
  %ah_attr119 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 10
  call void @rdma_ah_attr_to_pvrdma(ptr noundef %ah_attr, ptr noundef %ah_attr119) #7
  %alt_ah_attr = getelementptr inbounds %struct.pvrdma_cmd_modify_qp, ptr %req, i32 0, i32 3, i32 25
  %alt_ah_attr121 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 11
  call void @rdma_ah_attr_to_pvrdma(ptr noundef %alt_ah_attr, ptr noundef %alt_ah_attr121) #7
  %call122 = call i32 @pvrdma_cmd_post(ptr noundef %1, ptr noundef nonnull %req, ptr noundef nonnull %rsp, i32 noundef -2147483638) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %do.end, label %if.else

do.end:                                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %104 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdev, align 8
  %dev126 = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev126, ptr noundef nonnull @.str.37, i32 noundef %call122) #10
  br label %out

if.else:                                          ; preds = %if.end53
  %err = getelementptr inbounds %struct.pvrdma_cmd_resp_hdr, ptr %rsp, i32 0, i32 2
  %106 = ptrtoint ptr %err to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %cmp128.not = icmp eq i8 %107, 0
  br i1 %cmp128.not, label %if.end139, label %do.end133

do.end133:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv127 = zext i8 %107 to i32
  %pdev134 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %108 = ptrtoint ptr %pdev134 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdev134, align 8
  %dev135 = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev135, ptr noundef nonnull @.str.40, i32 noundef %conv127) #10
  br label %out

if.end139:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp140 = icmp eq i32 %call122, 0
  br i1 %cmp140, label %land.lhs.true142, label %if.end139.out_crit_edge

if.end139.out_crit_edge:                          ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true142:                                 ; preds = %if.end139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond9)
  %cmp143 = icmp eq i32 %cond9, 0
  br i1 %cmp143, label %if.then145, label %land.lhs.true142.out_crit_edge

land.lhs.true142.out_crit_edge:                   ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then145:                                       ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @pvrdma_reset_qp(ptr noundef %ibqp)
  br label %out

out:                                              ; preds = %if.then145, %land.lhs.true142.out_crit_edge, %if.end139.out_crit_edge, %do.end133, %do.end, %if.end47.out_crit_edge, %if.then35.out_crit_edge, %if.then26.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.then15.out_crit_edge, %cond.end8.out_crit_edge
  %ret.1 = phi i32 [ 0, %if.then145 ], [ 0, %land.lhs.true142.out_crit_edge ], [ %call122, %if.end139.out_crit_edge ], [ -22, %cond.end8.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %if.then15.out_crit_edge ], [ -22, %if.then26.out_crit_edge ], [ -22, %if.then35.out_crit_edge ], [ 0, %if.end47.out_crit_edge ], [ -22, %do.end133 ], [ %call122, %do.end ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %rsp) #7
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ib_modify_qp_is_ok(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_qp_cap_to_pvrdma(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_ah_attr_to_pvrdma(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pvrdma_reset_qp(ptr noundef %qp) unnamed_addr #0 align 64 {
entry:
  %scq_flags = alloca i32, align 4
  %rcq_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scq_flags)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rcq_flags)
  %0 = ptrtoint ptr %rcq_flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rcq_flags, align 4
  %send_cq1.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 2
  %1 = ptrtoint ptr %send_cq1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %send_cq1.i, align 8
  %recv_cq3.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 3
  %3 = ptrtoint ptr %recv_cq3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %recv_cq3.i, align 4
  %cmp.i = icmp eq ptr %2, %4
  br i1 %cmp.i, label %if.end.thread, label %if.else.i

if.else.i:                                        ; preds = %entry
  %cq_handle.i = getelementptr inbounds %struct.pvrdma_cq, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %cq_handle.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cq_handle.i, align 8
  %cq_handle5.i = getelementptr inbounds %struct.pvrdma_cq, ptr %4, i32 0, i32 7
  %7 = ptrtoint ptr %cq_handle5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cq_handle5.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp6.i = icmp ult i32 %6, %8
  br i1 %cmp6.i, label %do.body10.i, label %do.body35.i

do.body10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %cq_lock16.i = getelementptr inbounds %struct.pvrdma_cq, ptr %2, i32 0, i32 2
  %call18.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_lock16.i) #7
  %9 = ptrtoint ptr %scq_flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call18.i, ptr %scq_flags, align 4
  %cq_lock28.i = getelementptr inbounds %struct.pvrdma_cq, ptr %4, i32 0, i32 2
  %call30.i = tail call i32 @_raw_spin_lock_irqsave_nested(ptr noundef %cq_lock28.i, i32 noundef 1) #7
  %10 = ptrtoint ptr %rcq_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call30.i, ptr %rcq_flags, align 4
  br label %if.else.i32

do.body35.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %cq_lock41.i = getelementptr inbounds %struct.pvrdma_cq, ptr %4, i32 0, i32 2
  %call43.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_lock41.i) #7
  %11 = ptrtoint ptr %rcq_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call43.i, ptr %rcq_flags, align 4
  %cq_lock53.i = getelementptr inbounds %struct.pvrdma_cq, ptr %2, i32 0, i32 2
  %call55.i = tail call i32 @_raw_spin_lock_irqsave_nested(ptr noundef %cq_lock53.i, i32 noundef 1) #7
  %12 = ptrtoint ptr %scq_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call55.i, ptr %scq_flags, align 4
  br label %if.else.i32

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cq_lock.i = getelementptr inbounds %struct.pvrdma_cq, ptr %2, i32 0, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_lock.i) #7
  %13 = ptrtoint ptr %scq_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call3.i, ptr %scq_flags, align 4
  tail call void @_pvrdma_flush_cqe(ptr noundef %qp, ptr noundef %2) #7
  br label %pvrdma_unlock_cqs.exit

if.else.i32:                                      ; preds = %do.body35.i, %do.body10.i
  tail call void @_pvrdma_flush_cqe(ptr noundef %qp, ptr noundef %2) #7
  tail call void @_pvrdma_flush_cqe(ptr noundef %qp, ptr noundef %4) #7
  %14 = ptrtoint ptr %cq_handle.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cq_handle.i, align 8
  %16 = ptrtoint ptr %cq_handle5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cq_handle5.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp2.i = icmp ult i32 %15, %17
  %rcq.scq.i = select i1 %cmp2.i, ptr %4, ptr %2
  %scq.rcq.i = select i1 %cmp2.i, ptr %2, ptr %4
  %scq_flags.rcq_flags.i = select i1 %cmp2.i, ptr %scq_flags, ptr %rcq_flags
  %cq_lock4.i = getelementptr inbounds %struct.pvrdma_cq, ptr %rcq.scq.i, i32 0, i32 2
  %18 = ptrtoint ptr %rcq_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %rcq_flags.0.rcq_flags.val = load i32, ptr %rcq_flags, align 4
  %19 = ptrtoint ptr %scq_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %scq_flags.0.scq_flags.val = load i32, ptr %scq_flags, align 4
  %20 = select i1 %cmp2.i, i32 %rcq_flags.0.rcq_flags.val, i32 %scq_flags.0.scq_flags.val
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_lock4.i, i32 noundef %20) #7
  br label %pvrdma_unlock_cqs.exit

pvrdma_unlock_cqs.exit:                           ; preds = %if.else.i32, %if.end.thread
  %scq.sink.i = phi ptr [ %scq.rcq.i, %if.else.i32 ], [ %2, %if.end.thread ]
  %scq_flags.sink.i = phi ptr [ %scq_flags.rcq_flags.i, %if.else.i32 ], [ %scq_flags, %if.end.thread ]
  %cq_lock5.i = getelementptr inbounds %struct.pvrdma_cq, ptr %scq.sink.i, i32 0, i32 2
  %21 = ptrtoint ptr %scq_flags.sink.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scq_flags.sink.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_lock5.i, i32 noundef %22) #7
  %rq = getelementptr inbounds %struct.pvrdma_qp, ptr %qp, i32 0, i32 4
  %23 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rq, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %pvrdma_unlock_cqs.exit.if.end6_crit_edge, label %if.then1

pvrdma_unlock_cqs.exit.if.end6_crit_edge:         ; preds = %pvrdma_unlock_cqs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then1:                                         ; preds = %pvrdma_unlock_cqs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %cons_head = getelementptr inbounds %struct.pvrdma_ring, ptr %24, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cons_head, i32 noundef 4) #7
  %25 = ptrtoint ptr %cons_head to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %cons_head, align 4
  %26 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rq, align 4
  %call.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %27, i32 noundef 4) #7
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %27, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then1, %pvrdma_unlock_cqs.exit.if.end6_crit_edge
  %sq = getelementptr inbounds %struct.pvrdma_qp, ptr %qp, i32 0, i32 3
  %29 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sq, align 4
  %tobool8.not = icmp eq ptr %30, null
  br i1 %tobool8.not, label %if.end6.if.end16_crit_edge, label %if.then9

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %cons_head12 = getelementptr inbounds %struct.pvrdma_ring, ptr %30, i32 0, i32 1
  %call.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cons_head12, i32 noundef 4) #7
  %31 = ptrtoint ptr %cons_head12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 0, ptr %cons_head12, align 4
  %32 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sq, align 4
  %call.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %33, i32 noundef 4) #7
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 0, ptr %33, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.end6.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rcq_flags)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scq_flags)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_post_send(ptr noundef %ibqp, ptr noundef %wr, ptr nocapture noundef writeonly %bad_wr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibqp, align 4
  %state = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 14
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp ult i8 %3, 3
  br i1 %cmp, label %if.then, label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %wr, ptr %bad_wr, align 4
  br label %cleanup293

do.body3:                                         ; preds = %entry
  %sq = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 3
  %lock = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 3, i32 1
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %tobool.not437 = icmp eq ptr %wr, null
  br i1 %tobool.not437, label %do.body3.if.then291_crit_edge, label %while.body.lr.ph

do.body3.if.then291_crit_edge:                    ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then291

while.body.lr.ph:                                 ; preds = %do.body3
  %wqe_cnt = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 3, i32 2
  %max_sg = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 3, i32 4
  %qp_type = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 22
  %offset.i = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 3, i32 5
  %wqe_size.i = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 3, i32 3
  %pages.i.i = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 7, i32 5
  %qkey = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %wr.addr.0438 = phi ptr [ %wr, %while.body.lr.ph ], [ %148, %cleanup.while.body_crit_edge ]
  %5 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sq, align 4
  %7 = ptrtoint ptr %wqe_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wqe_cnt, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %6, i32 noundef 4) #7
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %6, align 4
  %cons_head.i = getelementptr inbounds %struct.pvrdma_ring, ptr %6, i32 0, i32 1
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cons_head.i, i32 noundef 4) #7
  %11 = ptrtoint ptr %cons_head.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %cons_head.i, align 4
  %shl.neg.i.i = mul i32 %8, -2
  %and.i.i = and i32 %10, %shl.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  %and.i15.i = and i32 %12, %shl.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15.i)
  %cmp.i16.not.i = icmp eq i32 %and.i15.i, 0
  %or.cond.i = select i1 %cmp.i.not.i, i1 %cmp.i16.not.i, i1 false
  br i1 %or.cond.i, label %pvrdma_idx_ring_has_space.exit, label %while.body.if.end29_crit_edge

while.body.if.end29_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

pvrdma_idx_ring_has_space.exit:                   ; preds = %while.body
  %sub.i = add i32 %8, -1
  %and.i = and i32 %10, %sub.i
  %xor.i = xor i32 %12, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %xor.i)
  %cmp.i.not = icmp eq i32 %10, %xor.i
  br i1 %cmp.i.not, label %do.body18, label %pvrdma_idx_ring_has_space.exit.if.end29_crit_edge, !prof !174

pvrdma_idx_ring_has_space.exit.if.end29_crit_edge: ; preds = %pvrdma_idx_ring_has_space.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.body18:                                        ; preds = %pvrdma_idx_ring_has_space.exit
  %call19 = tail call i32 @___ratelimit(ptr noundef nonnull @pvrdma_post_send._rs, ptr noundef nonnull @__func__.pvrdma_post_send) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body18.out_crit_edge, label %do.body18.out.sink.split_crit_edge

do.body18.out.sink.split_crit_edge:               ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

do.body18.out_crit_edge:                          ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end29:                                         ; preds = %pvrdma_idx_ring_has_space.exit.if.end29_crit_edge, %while.body.if.end29_crit_edge
  %tail.0417 = phi i32 [ %and.i, %pvrdma_idx_ring_has_space.exit.if.end29_crit_edge ], [ 0, %while.body.if.end29_crit_edge ]
  %num_sge = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0438, i32 0, i32 3
  %13 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_sge, align 4
  %15 = ptrtoint ptr %max_sg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_sg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp31 = icmp sgt i32 %14, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp34 = icmp slt i32 %14, 0
  %spec.select = or i1 %cmp34, %cmp31
  br i1 %spec.select, label %do.body43, label %if.end55, !prof !174

do.body43:                                        ; preds = %if.end29
  %call44 = tail call i32 @___ratelimit(ptr noundef nonnull @pvrdma_post_send._rs.44, ptr noundef nonnull @__func__.pvrdma_post_send) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.body43.out_crit_edge, label %do.body43.out.sink.split_crit_edge

do.body43.out.sink.split_crit_edge:               ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

do.body43.out_crit_edge:                          ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end55:                                         ; preds = %if.end29
  %opcode = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0438, i32 0, i32 4
  %17 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %opcode, align 8
  %19 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qp_type, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %20, label %land.lhs.true85 [
    i32 4, label %if.then110
    i32 2, label %if.end55.if.end133_crit_edge
  ]

if.end55.if.end133_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

land.lhs.true85:                                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp87.not = icmp eq i32 %18, 2
  br i1 %cmp87.not, label %land.lhs.true85.if.end133_crit_edge, label %do.body90

land.lhs.true85.if.end133_crit_edge:              ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

do.body90:                                        ; preds = %land.lhs.true85
  %call91 = tail call i32 @___ratelimit(ptr noundef nonnull @pvrdma_post_send._rs.52, ptr noundef nonnull @__func__.pvrdma_post_send) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %do.body90.out_crit_edge, label %do.body90.out.sink.split_crit_edge

do.body90.out.sink.split_crit_edge:               ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

do.body90.out_crit_edge:                          ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then110:                                       ; preds = %if.end55
  %22 = and i32 %18, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %switch = icmp eq i32 %22, 2
  br i1 %switch, label %if.then110.if.end133_crit_edge, label %do.body119

if.then110.if.end133_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

do.body119:                                       ; preds = %if.then110
  %call120 = tail call i32 @___ratelimit(ptr noundef nonnull @pvrdma_post_send._rs.56, ptr noundef nonnull @__func__.pvrdma_post_send) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %do.body119.out_crit_edge, label %do.body119.out.sink.split_crit_edge

do.body119.out.sink.split_crit_edge:              ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

do.body119.out_crit_edge:                         ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end133:                                        ; preds = %if.then110.if.end133_crit_edge, %land.lhs.true85.if.end133_crit_edge, %if.end55.if.end133_crit_edge
  %23 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset.i, align 4
  %25 = ptrtoint ptr %wqe_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wqe_size.i, align 4
  %mul.i = mul i32 %26, %tail.0417
  %add.i = add i32 %mul.i, %24
  %27 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pages.i.i, align 8
  %29 = lshr i32 %add.i, 12
  %arrayidx.i.i = getelementptr ptr, ptr %28, i32 %29
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i, align 4
  %idx.ext.i.i = and i32 %add.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %idx.ext.i.i
  %32 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 80)
  %33 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0438, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %33, align 8
  %36 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %add.ptr.i.i, align 8
  %37 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_sge, align 4
  %num_sge136 = getelementptr inbounds %struct.pvrdma_sq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %num_sge136 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %num_sge136, align 8
  %40 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %opcode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %41)
  %42 = icmp ult i32 %41, 34
  br i1 %42, label %switch.lookup, label %if.end133.ib_wr_opcode_to_pvrdma.exit_crit_edge

if.end133.ib_wr_opcode_to_pvrdma.exit_crit_edge:  ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %ib_wr_opcode_to_pvrdma.exit

switch.lookup:                                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [34 x i32], ptr @switch.table.pvrdma_post_send, i32 0, i32 %41
  %43 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ib_wr_opcode_to_pvrdma.exit

ib_wr_opcode_to_pvrdma.exit:                      ; preds = %switch.lookup, %if.end133.ib_wr_opcode_to_pvrdma.exit_crit_edge
  %retval.0.i407 = phi i32 [ %switch.load, %switch.lookup ], [ 16, %if.end133.ib_wr_opcode_to_pvrdma.exit_crit_edge ]
  %opcode139 = getelementptr inbounds %struct.pvrdma_sq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %opcode139 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %retval.0.i407, ptr %opcode139, align 8
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0438, i32 0, i32 5
  %45 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %send_flags, align 4
  %and.i408 = and i32 %46, 31
  %send_flags141 = getelementptr inbounds %struct.pvrdma_sq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %47 = ptrtoint ptr %send_flags141 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and.i408, ptr %send_flags141, align 4
  %48 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %opcode, align 8
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %49, label %ib_wr_opcode_to_pvrdma.exit.if.end151_crit_edge [
    i32 3, label %ib_wr_opcode_to_pvrdma.exit.if.then149_crit_edge
    i32 1, label %ib_wr_opcode_to_pvrdma.exit.if.then149_crit_edge489
  ]

ib_wr_opcode_to_pvrdma.exit.if.then149_crit_edge489: ; preds = %ib_wr_opcode_to_pvrdma.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then149

ib_wr_opcode_to_pvrdma.exit.if.then149_crit_edge: ; preds = %ib_wr_opcode_to_pvrdma.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then149

ib_wr_opcode_to_pvrdma.exit.if.end151_crit_edge:  ; preds = %ib_wr_opcode_to_pvrdma.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

if.then149:                                       ; preds = %ib_wr_opcode_to_pvrdma.exit.if.then149_crit_edge, %ib_wr_opcode_to_pvrdma.exit.if.then149_crit_edge489
  %ex = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0438, i32 0, i32 6
  %51 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ex, align 8
  %ex150 = getelementptr inbounds %struct.pvrdma_sq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %53 = ptrtoint ptr %ex150 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %ex150, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %ib_wr_opcode_to_pvrdma.exit.if.end151_crit_edge
  %54 = ptrtoint ptr %opcode139 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %opcode139, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %55)
  %cmp153 = icmp eq i32 %55, 16
  br i1 %cmp153, label %if.end151.out_crit_edge, label %if.end162, !prof !174

if.end151.out_crit_edge:                          ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end162:                                        ; preds = %if.end151
  %56 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %qp_type, align 8
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %57, label %do.body255 [
    i32 1, label %if.end162.sw.bb_crit_edge
    i32 4, label %if.end162.sw.bb_crit_edge490
    i32 2, label %sw.bb203
  ]

if.end162.sw.bb_crit_edge490:                     ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end162.sw.bb_crit_edge:                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end162.sw.bb_crit_edge, %if.end162.sw.bb_crit_edge490
  %ah = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0438, i32 0, i32 1
  %59 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ah, align 8
  %tobool166.not = icmp eq ptr %60, null
  br i1 %tobool166.not, label %do.body176, label %if.end188, !prof !174

do.body176:                                       ; preds = %sw.bb
  %call177 = tail call i32 @___ratelimit(ptr noundef nonnull @pvrdma_post_send._rs.59, ptr noundef nonnull @__func__.pvrdma_post_send) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %do.body176.out_crit_edge, label %do.body176.out.sink.split_crit_edge

do.body176.out.sink.split_crit_edge:              ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

do.body176.out_crit_edge:                         ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end188:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %remote_qpn = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0438, i32 0, i32 5
  %61 = ptrtoint ptr %remote_qpn to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %remote_qpn, align 8
  %wr190 = getelementptr inbounds %struct.pvrdma_sq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 7
  %63 = ptrtoint ptr %wr190 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %wr190, align 8
  %remote_qkey = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0438, i32 0, i32 6
  %64 = ptrtoint ptr %remote_qkey to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %remote_qkey, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool193.not425 = icmp slt i32 %65, 0
  %spec.select424 = select i1 %tobool193.not425, ptr %qkey, ptr %remote_qkey
  %66 = ptrtoint ptr %spec.select424 to i32
  call void @__asan_load4_noabort(i32 %66)
  %cond = load i32, ptr %spec.select424, align 4
  %remote_qkey197 = getelementptr inbounds %struct.anon.184, ptr %wr190, i32 0, i32 1
  %67 = ptrtoint ptr %remote_qkey197 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %cond, ptr %remote_qkey197, align 4
  %av = getelementptr inbounds %struct.pvrdma_sq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 7, i32 0, i32 1
  %68 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ah, align 8
  %av202 = getelementptr inbounds %struct.pvrdma_ah, ptr %69, i32 0, i32 1
  %70 = call ptr @memcpy(ptr %av, ptr %av202, i32 40)
  br label %sw.epilog267

sw.bb203:                                         ; preds = %if.end162
  %71 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %opcode, align 8
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %72, label %sw.bb203.sw.epilog267_crit_edge [
    i32 4, label %sw.bb203.sw.bb205_crit_edge
    i32 0, label %sw.bb203.sw.bb205_crit_edge491
    i32 1, label %sw.bb203.sw.bb205_crit_edge492
    i32 7, label %sw.bb203.sw.bb212_crit_edge
    i32 9, label %sw.bb203.sw.bb212_crit_edge493
    i32 5, label %sw.bb203.sw.bb215_crit_edge
    i32 6, label %sw.bb203.sw.bb215_crit_edge494
    i32 32, label %sw.bb235
  ]

sw.bb203.sw.bb215_crit_edge494:                   ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb215

sw.bb203.sw.bb215_crit_edge:                      ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb215

sw.bb203.sw.bb212_crit_edge493:                   ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb212

sw.bb203.sw.bb212_crit_edge:                      ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb212

sw.bb203.sw.bb205_crit_edge492:                   ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb205

sw.bb203.sw.bb205_crit_edge491:                   ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb205

sw.bb203.sw.bb205_crit_edge:                      ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb205

sw.bb203.sw.epilog267_crit_edge:                  ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog267

sw.bb205:                                         ; preds = %sw.bb203.sw.bb205_crit_edge, %sw.bb203.sw.bb205_crit_edge491, %sw.bb203.sw.bb205_crit_edge492
  %remote_addr = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0438, i32 0, i32 1
  %74 = ptrtoint ptr %remote_addr to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %remote_addr, align 8
  %wr207 = getelementptr inbounds %struct.pvrdma_sq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 7
  %76 = ptrtoint ptr %wr207 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %wr207, align 8
  %rkey = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0438, i32 0, i32 2
  %77 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rkey, align 8
  %rkey211 = getelementptr inbounds %struct.pvrdma_sq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 7, i32 0, i32 1
  %79 = ptrtoint ptr %rkey211 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %rkey211, align 8
  br label %sw.epilog267

sw.bb212:                                         ; preds = %sw.bb203.sw.bb212_crit_edge, %sw.bb203.sw.bb212_crit_edge493
  %ex213 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0438, i32 0, i32 6
  %80 = ptrtoint ptr %ex213 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ex213, align 8
  %ex214 = getelementptr inbounds %struct.pvrdma_sq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %82 = ptrtoint ptr %ex214 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %ex214, align 8
  br label %sw.epilog267

sw.bb215:                                         ; preds = %sw.bb203.sw.bb215_crit_edge, %sw.bb203.sw.bb215_crit_edge494
  %remote_addr217 = getelementptr inbounds %struct.ib_atomic_wr, ptr %wr.addr.0438, i32 0, i32 1
  %83 = ptrtoint ptr %remote_addr217 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %remote_addr217, align 8
  %wr218 = getelementptr inbounds %struct.pvrdma_sq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 7
  %85 = ptrtoint ptr %wr218 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %wr218, align 8
  %rkey221 = getelementptr inbounds %struct.ib_atomic_wr, ptr %wr.addr.0438, i32 0, i32 6
  %86 = ptrtoint ptr %rkey221 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rkey221, align 8
  %rkey223 = getelementptr inbounds %struct.pvrdma_sq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 7, i32 0, i32 3, i32 0, i32 1
  %88 = ptrtoint ptr %rkey223 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %rkey223, align 8
  %compare_add = getelementptr inbounds %struct.ib_atomic_wr, ptr %wr.addr.0438, i32 0, i32 2
  %89 = ptrtoint ptr %compare_add to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %compare_add, align 8
  %compare_add226 = getelementptr inbounds %struct.pvrdma_sq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 7, i32 0, i32 1
  %91 = ptrtoint ptr %compare_add226 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %compare_add226, align 8
  %92 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %opcode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %93)
  %cmp228 = icmp eq i32 %93, 5
  br i1 %cmp228, label %if.then230, label %sw.bb215.sw.epilog267_crit_edge

sw.bb215.sw.epilog267_crit_edge:                  ; preds = %sw.bb215
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog267

if.then230:                                       ; preds = %sw.bb215
  call void @__sanitizer_cov_trace_pc() #9
  %swap = getelementptr inbounds %struct.ib_atomic_wr, ptr %wr.addr.0438, i32 0, i32 3
  %94 = ptrtoint ptr %swap to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %swap, align 8
  %swap233 = getelementptr inbounds %struct.pvrdma_sq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 7, i32 0, i32 3
  %96 = ptrtoint ptr %swap233 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %swap233, align 8
  br label %sw.epilog267

sw.bb235:                                         ; preds = %sw.bb203
  %mr1.i = getelementptr inbounds %struct.ib_reg_wr, ptr %wr.addr.0438, i32 0, i32 1
  %97 = ptrtoint ptr %mr1.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mr1.i, align 8
  %iova.i = getelementptr inbounds %struct.ib_mr, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %iova.i, align 8
  %wr2.i = getelementptr inbounds %struct.pvrdma_sq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 7
  %101 = ptrtoint ptr %wr2.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %wr2.i, align 8
  %pdir.i = getelementptr inbounds %struct.pvrdma_user_mr, ptr %98, i32 0, i32 3
  %102 = ptrtoint ptr %pdir.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pdir.i, align 8
  %conv.i409 = zext i32 %103 to i64
  %pl_pdir_dma.i = getelementptr inbounds %struct.pvrdma_sq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 7, i32 0, i32 1
  %104 = ptrtoint ptr %pl_pdir_dma.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %conv.i409, ptr %pl_pdir_dma.i, align 8
  %page_shift.i = getelementptr inbounds %struct.pvrdma_user_mr, ptr %98, i32 0, i32 7
  %105 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %page_shift.i, align 4
  %page_shift5.i = getelementptr inbounds %struct.pvrdma_sq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 7, i32 0, i32 3
  %107 = ptrtoint ptr %page_shift5.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %page_shift5.i, align 8
  %npages.i = getelementptr inbounds %struct.pvrdma_user_mr, ptr %98, i32 0, i32 5
  %108 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %npages.i, align 4
  %page_list_len.i = getelementptr inbounds %struct.anon.183, ptr %wr2.i, i32 0, i32 3
  %110 = ptrtoint ptr %page_list_len.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %page_list_len.i, align 4
  %length.i = getelementptr inbounds %struct.ib_mr, ptr %98, i32 0, i32 5
  %111 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %length.i, align 8
  %conv8.i = trunc i64 %112 to i32
  %length10.i = getelementptr inbounds %struct.pvrdma_sq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 7, i32 0, i32 3, i32 0, i32 1
  %113 = ptrtoint ptr %length10.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %conv8.i, ptr %length10.i, align 8
  %access.i = getelementptr inbounds %struct.ib_reg_wr, ptr %wr.addr.0438, i32 0, i32 3
  %114 = ptrtoint ptr %access.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %access.i, align 8
  %access_flags.i = getelementptr inbounds %struct.anon.183, ptr %wr2.i, i32 0, i32 5
  %116 = ptrtoint ptr %access_flags.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %access_flags.i, align 4
  %key.i = getelementptr inbounds %struct.ib_reg_wr, ptr %wr.addr.0438, i32 0, i32 2
  %117 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %key.i, align 4
  %rkey.i = getelementptr inbounds %struct.pvrdma_sq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 7, i32 0, i32 3, i32 0, i32 2
  %119 = ptrtoint ptr %rkey.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %rkey.i, align 8
  %pages.i = getelementptr inbounds %struct.pvrdma_user_mr, ptr %98, i32 0, i32 4
  %120 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pages.i, align 8
  %122 = load i32, ptr %npages.i, align 4
  %call15.i = tail call i32 @pvrdma_page_dir_insert_page_list(ptr noundef %pdir.i, ptr noundef %121, i32 noundef %122) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp238 = icmp slt i32 %call15.i, 0
  br i1 %cmp238, label %do.body241, label %sw.bb235.sw.epilog267_crit_edge

sw.bb235.sw.epilog267_crit_edge:                  ; preds = %sw.bb235
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog267

do.body241:                                       ; preds = %sw.bb235
  %call242 = tail call i32 @___ratelimit(ptr noundef nonnull @pvrdma_post_send._rs.63, ptr noundef nonnull @__func__.pvrdma_post_send) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call242)
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %do.body241.out_crit_edge, label %do.body241.out.sink.split_crit_edge

do.body241.out.sink.split_crit_edge:              ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

do.body241.out_crit_edge:                         ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body255:                                       ; preds = %if.end162
  %call256 = tail call i32 @___ratelimit(ptr noundef nonnull @pvrdma_post_send._rs.67, ptr noundef nonnull @__func__.pvrdma_post_send) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call256)
  %tobool257.not = icmp eq i32 %call256, 0
  br i1 %tobool257.not, label %do.body255.out_crit_edge, label %do.body255.out.sink.split_crit_edge

do.body255.out.sink.split_crit_edge:              ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

do.body255.out_crit_edge:                         ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.epilog267:                                     ; preds = %sw.bb235.sw.epilog267_crit_edge, %if.then230, %sw.bb215.sw.epilog267_crit_edge, %sw.bb212, %sw.bb205, %sw.bb203.sw.epilog267_crit_edge, %if.end188
  %123 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %num_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp269434 = icmp sgt i32 %124, 0
  br i1 %cmp269434, label %for.body.lr.ph, label %sw.epilog267.cleanup_crit_edge

sw.epilog267.cleanup_crit_edge:                   ; preds = %sw.epilog267
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %sw.epilog267
  %add.ptr = getelementptr %struct.pvrdma_sq_wqe_hdr, ptr %add.ptr.i.i, i32 1
  %sg_list = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0438, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0436 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %sge.0435 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %125 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %sg_list, align 8
  %arrayidx = getelementptr %struct.ib_sge, ptr %126, i32 %i.0436
  %127 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %arrayidx, align 8
  %129 = ptrtoint ptr %sge.0435 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %128, ptr %sge.0435, align 8
  %130 = load ptr, ptr %sg_list, align 8
  %length = getelementptr %struct.ib_sge, ptr %130, i32 %i.0436, i32 1
  %131 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %length, align 8
  %length274 = getelementptr inbounds %struct.pvrdma_sge, ptr %sge.0435, i32 0, i32 1
  %133 = ptrtoint ptr %length274 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %length274, align 8
  %134 = load ptr, ptr %sg_list, align 8
  %lkey = getelementptr %struct.ib_sge, ptr %134, i32 %i.0436, i32 2
  %135 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %lkey, align 4
  %lkey277 = getelementptr inbounds %struct.pvrdma_sge, ptr %sge.0435, i32 0, i32 2
  %137 = ptrtoint ptr %lkey277 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %lkey277, align 4
  %incdec.ptr = getelementptr %struct.pvrdma_sge, ptr %sge.0435, i32 1
  %inc = add nuw nsw i32 %i.0436, 1
  %138 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %num_sge, align 4
  %cmp269 = icmp slt i32 %inc, %139
  br i1 %cmp269, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %sw.epilog267.cleanup_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !175
  %140 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sq, align 4
  %142 = ptrtoint ptr %wqe_cnt to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %wqe_cnt, align 4
  %call.i.i.i410 = tail call zeroext i1 @__kasan_check_read(ptr noundef %141, i32 noundef 4) #7
  %144 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %141, align 4
  %add.i411 = add i32 %145, 1
  %shl.i = shl i32 %143, 1
  %sub.i412 = add i32 %shl.i, -1
  %and.i413 = and i32 %add.i411, %sub.i412
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %141, i32 noundef 4) #7
  %146 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile i32 %and.i413, ptr %141, align 4
  %147 = ptrtoint ptr %wr.addr.0438 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %wr.addr.0438, align 8
  %tobool.not = icmp eq ptr %148, null
  br i1 %tobool.not, label %cleanup.if.then291_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.if.then291_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then291

out.sink.split:                                   ; preds = %do.body255.out.sink.split_crit_edge, %do.body241.out.sink.split_crit_edge, %do.body176.out.sink.split_crit_edge, %do.body119.out.sink.split_crit_edge, %do.body90.out.sink.split_crit_edge, %do.body43.out.sink.split_crit_edge, %do.body18.out.sink.split_crit_edge
  %.str.69.sink = phi ptr [ @.str.43, %do.body18.out.sink.split_crit_edge ], [ @.str.46, %do.body43.out.sink.split_crit_edge ], [ @.str.54, %do.body90.out.sink.split_crit_edge ], [ @.str.50, %do.body119.out.sink.split_crit_edge ], [ @.str.61, %do.body176.out.sink.split_crit_edge ], [ @.str.65, %do.body241.out.sink.split_crit_edge ], [ @.str.69, %do.body255.out.sink.split_crit_edge ]
  %ret.2.ph.ph = phi i32 [ -12, %do.body18.out.sink.split_crit_edge ], [ -22, %do.body43.out.sink.split_crit_edge ], [ -22, %do.body90.out.sink.split_crit_edge ], [ -22, %do.body119.out.sink.split_crit_edge ], [ -22, %do.body176.out.sink.split_crit_edge ], [ %call15.i, %do.body241.out.sink.split_crit_edge ], [ -22, %do.body255.out.sink.split_crit_edge ]
  %pdev262 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %149 = ptrtoint ptr %pdev262 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pdev262, align 8
  %dev263 = getelementptr inbounds %struct.pci_dev, ptr %150, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev263, ptr noundef nonnull %.str.69.sink) #10
  br label %out

out:                                              ; preds = %out.sink.split, %do.body255.out_crit_edge, %do.body241.out_crit_edge, %do.body176.out_crit_edge, %if.end151.out_crit_edge, %do.body119.out_crit_edge, %do.body90.out_crit_edge, %do.body43.out_crit_edge, %do.body18.out_crit_edge
  %ret.2.ph = phi i32 [ -12, %do.body18.out_crit_edge ], [ -22, %do.body43.out_crit_edge ], [ -22, %do.body90.out_crit_edge ], [ -22, %do.body119.out_crit_edge ], [ -22, %do.body176.out_crit_edge ], [ %call15.i, %do.body241.out_crit_edge ], [ -22, %do.body255.out_crit_edge ], [ %ret.2.ph.ph, %out.sink.split ], [ -22, %if.end151.out_crit_edge ]
  %151 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %wr.addr.0438, ptr %bad_wr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #7
  br label %cleanup293

if.then291:                                       ; preds = %cleanup.if.then291_crit_edge, %do.body3.if.then291_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #7
  %qp_handle = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 1
  %152 = ptrtoint ptr %qp_handle to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %qp_handle, align 4
  %or = or i32 %153, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  tail call void @arm_heavy_mb() #7
  %map.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 26, i32 1
  %154 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %map.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %or) #7, !srcloc !177
  br label %cleanup293

cleanup293:                                       ; preds = %if.then291, %out, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.then291 ], [ %ret.2.ph, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_post_recv(ptr noundef %ibqp, ptr noundef %wr, ptr nocapture noundef writeonly %bad_wr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibqp, align 4
  %state = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 14
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %wr, ptr %bad_wr, align 4
  br label %cleanup92

if.end:                                           ; preds = %entry
  %srq = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 8
  %5 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %srq, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.body7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.71) #10
  %9 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %wr, ptr %bad_wr, align 4
  br label %cleanup92

do.body7:                                         ; preds = %if.end
  %rq = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 4
  %lock = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 4, i32 1
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %tobool16.not159 = icmp eq ptr %wr, null
  br i1 %tobool16.not159, label %do.body7.while.end_crit_edge, label %while.body.lr.ph

do.body7.while.end_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.body7
  %max_sg = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 4, i32 4
  %wqe_cnt = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 4, i32 2
  %offset.i = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 4, i32 5
  %wqe_size.i = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 4, i32 3
  %pages.i.i = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 7, i32 5
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %wr.addr.0160 = phi ptr [ %wr, %while.body.lr.ph ], [ %65, %cleanup.while.body_crit_edge ]
  %num_sge = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0160, i32 0, i32 3
  %10 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_sge, align 4
  %12 = ptrtoint ptr %max_sg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_sg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp18 = icmp sgt i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp21 = icmp slt i32 %11, 0
  %spec.select = or i1 %cmp21, %cmp18
  br i1 %spec.select, label %if.then25, label %if.end38, !prof !174

if.then25:                                        ; preds = %while.body
  %14 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %wr.addr.0160, ptr %bad_wr, align 4
  %call27 = tail call i32 @___ratelimit(ptr noundef nonnull @pvrdma_post_recv._rs, ptr noundef nonnull @.str.72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then25.out_crit_edge, label %if.then25.out.sink.split_crit_edge

if.then25.out.sink.split_crit_edge:               ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.then25.out_crit_edge:                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end38:                                         ; preds = %while.body
  %15 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rq, align 4
  %17 = ptrtoint ptr %wqe_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wqe_cnt, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %16, i32 noundef 4) #7
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %16, align 4
  %cons_head.i = getelementptr inbounds %struct.pvrdma_ring, ptr %16, i32 0, i32 1
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cons_head.i, i32 noundef 4) #7
  %21 = ptrtoint ptr %cons_head.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %cons_head.i, align 4
  %shl.neg.i.i = mul i32 %18, -2
  %and.i.i = and i32 %20, %shl.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  %and.i15.i = and i32 %22, %shl.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15.i)
  %cmp.i16.not.i = icmp eq i32 %and.i15.i, 0
  %or.cond.i = select i1 %cmp.i.not.i, i1 %cmp.i16.not.i, i1 false
  br i1 %or.cond.i, label %pvrdma_idx_ring_has_space.exit, label %if.end38.if.end64_crit_edge

if.end38.if.end64_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

pvrdma_idx_ring_has_space.exit:                   ; preds = %if.end38
  %sub.i = add i32 %18, -1
  %and.i = and i32 %20, %sub.i
  %xor.i = xor i32 %22, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %xor.i)
  %cmp.i.not = icmp eq i32 %20, %xor.i
  br i1 %cmp.i.not, label %if.then51, label %pvrdma_idx_ring_has_space.exit.if.end64_crit_edge, !prof !174

pvrdma_idx_ring_has_space.exit.if.end64_crit_edge: ; preds = %pvrdma_idx_ring_has_space.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then51:                                        ; preds = %pvrdma_idx_ring_has_space.exit
  %23 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %wr.addr.0160, ptr %bad_wr, align 4
  %call53 = tail call i32 @___ratelimit(ptr noundef nonnull @pvrdma_post_recv._rs.76, ptr noundef nonnull @.str.72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then51.out_crit_edge, label %if.then51.out.sink.split_crit_edge

if.then51.out.sink.split_crit_edge:               ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.then51.out_crit_edge:                          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end64:                                         ; preds = %pvrdma_idx_ring_has_space.exit.if.end64_crit_edge, %if.end38.if.end64_crit_edge
  %tail.0149 = phi i32 [ %and.i, %pvrdma_idx_ring_has_space.exit.if.end64_crit_edge ], [ 0, %if.end38.if.end64_crit_edge ]
  %24 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset.i, align 4
  %26 = ptrtoint ptr %wqe_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wqe_size.i, align 4
  %mul.i = mul i32 %27, %tail.0149
  %add.i = add i32 %mul.i, %25
  %28 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pages.i.i, align 8
  %30 = lshr i32 %add.i, 12
  %arrayidx.i.i = getelementptr ptr, ptr %29, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i, align 4
  %idx.ext.i.i = and i32 %add.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %idx.ext.i.i
  %33 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0160, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %33, align 8
  %36 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %add.ptr.i.i, align 8
  %37 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_sge, align 4
  %num_sge67 = getelementptr inbounds %struct.pvrdma_rq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %num_sge67 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %num_sge67, align 8
  %total_len = getelementptr inbounds %struct.pvrdma_rq_wqe_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %total_len to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %total_len, align 4
  %41 = load i32, ptr %num_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp69156 = icmp sgt i32 %41, 0
  br i1 %cmp69156, label %for.body.lr.ph, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end64
  %add.ptr = getelementptr %struct.pvrdma_rq_wqe_hdr, ptr %add.ptr.i.i, i32 1
  %sg_list = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0160, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0158 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %sge.0157 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %42 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sg_list, align 8
  %arrayidx = getelementptr %struct.ib_sge, ptr %43, i32 %i.0158
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx, align 8
  %46 = ptrtoint ptr %sge.0157 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %sge.0157, align 8
  %47 = load ptr, ptr %sg_list, align 8
  %length = getelementptr %struct.ib_sge, ptr %47, i32 %i.0158, i32 1
  %48 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %length, align 8
  %length74 = getelementptr inbounds %struct.pvrdma_sge, ptr %sge.0157, i32 0, i32 1
  %50 = ptrtoint ptr %length74 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %length74, align 8
  %51 = load ptr, ptr %sg_list, align 8
  %lkey = getelementptr %struct.ib_sge, ptr %51, i32 %i.0158, i32 2
  %52 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lkey, align 4
  %lkey77 = getelementptr inbounds %struct.pvrdma_sge, ptr %sge.0157, i32 0, i32 2
  %54 = ptrtoint ptr %lkey77 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %lkey77, align 4
  %incdec.ptr = getelementptr %struct.pvrdma_sge, ptr %sge.0157, i32 1
  %inc = add nuw nsw i32 %i.0158, 1
  %55 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_sge, align 4
  %cmp69 = icmp slt i32 %inc, %56
  br i1 %cmp69, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end64.cleanup_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !178
  %57 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rq, align 4
  %59 = ptrtoint ptr %wqe_cnt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %wqe_cnt, align 4
  %call.i.i.i142 = tail call zeroext i1 @__kasan_check_read(ptr noundef %58, i32 noundef 4) #7
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %58, align 4
  %add.i143 = add i32 %62, 1
  %shl.i = shl i32 %60, 1
  %sub.i144 = add i32 %shl.i, -1
  %and.i145 = and i32 %add.i143, %sub.i144
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %58, i32 noundef 4) #7
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 %and.i145, ptr %58, align 4
  %64 = ptrtoint ptr %wr.addr.0160 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wr.addr.0160, align 8
  %tobool16.not = icmp eq ptr %65, null
  br i1 %tobool16.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %do.body7.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #7
  %qp_handle = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 1
  %66 = ptrtoint ptr %qp_handle to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %qp_handle, align 4
  %or = or i32 %67, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  tail call void @arm_heavy_mb() #7
  %map.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 26, i32 1
  %68 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %map.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %or) #7, !srcloc !177
  br label %cleanup92

out.sink.split:                                   ; preds = %if.then51.out.sink.split_crit_edge, %if.then25.out.sink.split_crit_edge
  %.str.74.sink = phi ptr [ @.str.74, %if.then25.out.sink.split_crit_edge ], [ @.str.78, %if.then51.out.sink.split_crit_edge ]
  %ret.1.ph.ph = phi i32 [ -22, %if.then25.out.sink.split_crit_edge ], [ -12, %if.then51.out.sink.split_crit_edge ]
  %pdev33 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %70 = ptrtoint ptr %pdev33 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev33, align 8
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev34, ptr noundef nonnull %.str.74.sink) #10
  br label %out

out:                                              ; preds = %out.sink.split, %if.then51.out_crit_edge, %if.then25.out_crit_edge
  %ret.1.ph = phi i32 [ -12, %if.then51.out_crit_edge ], [ -22, %if.then25.out_crit_edge ], [ %ret.1.ph.ph, %out.sink.split ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #7
  br label %cleanup92

cleanup92:                                        ; preds = %out, %while.end, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %do.end ], [ %ret.1.ph, %out ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_query_qp(ptr noundef %ibqp, ptr noundef %attr, i32 noundef %attr_mask, ptr nocapture noundef writeonly %init_attr) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %union.pvrdma_cmd_req, align 8
  %rsp = alloca %union.pvrdma_cmd_resp, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibqp, align 4
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req) #7
  %2 = call ptr @memset(ptr %req, i32 255, i32 184)
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %rsp) #7
  %3 = call ptr @memset(ptr %rsp, i32 255, i32 176)
  %mutex = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 14
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %attr, align 8
  br label %out

if.end:                                           ; preds = %entry
  %7 = call ptr @memset(ptr %req, i32 0, i32 16)
  %cmd3 = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %cmd3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 11, ptr %cmd3, align 8
  %qp_handle = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 1
  %9 = ptrtoint ptr %qp_handle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qp_handle, align 4
  %qp_handle4 = getelementptr inbounds %struct.pvrdma_cmd_query_qp, ptr %req, i32 0, i32 1
  %11 = ptrtoint ptr %qp_handle4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %qp_handle4, align 8
  %and.i = and i32 %attr_mask, 2097151
  %attr_mask6 = getelementptr inbounds %struct.pvrdma_cmd_query_qp, ptr %req, i32 0, i32 2
  %12 = ptrtoint ptr %attr_mask6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i, ptr %attr_mask6, align 4
  %call7 = call i32 @pvrdma_cmd_post(ptr noundef %1, ptr noundef nonnull %req, ptr noundef nonnull %rsp, i32 noundef -2147483637) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11, ptr noundef nonnull @.str.80, i32 noundef %call7) #10
  br label %out

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %attrs = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1
  %15 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %attrs, align 8
  %17 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %attr, align 8
  %cur_qp_state = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %cur_qp_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cur_qp_state, align 4
  %cur_qp_state18 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 1
  %20 = ptrtoint ptr %cur_qp_state18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cur_qp_state18, align 4
  %path_mtu = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %path_mtu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %path_mtu, align 8
  %path_mtu21 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 2
  %23 = ptrtoint ptr %path_mtu21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %path_mtu21, align 8
  %path_mig_state = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %path_mig_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %path_mig_state, align 4
  %path_mig_state24 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 3
  %26 = ptrtoint ptr %path_mig_state24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %path_mig_state24, align 4
  %qkey = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %qkey to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qkey, align 8
  %qkey26 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 4
  %29 = ptrtoint ptr %qkey26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %qkey26, align 8
  %rq_psn = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 5
  %30 = ptrtoint ptr %rq_psn to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rq_psn, align 4
  %rq_psn28 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 5
  %32 = ptrtoint ptr %rq_psn28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %rq_psn28, align 4
  %sq_psn = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 6
  %33 = ptrtoint ptr %sq_psn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sq_psn, align 8
  %sq_psn30 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 6
  %35 = ptrtoint ptr %sq_psn30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %sq_psn30, align 8
  %dest_qp_num = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 7
  %36 = ptrtoint ptr %dest_qp_num to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dest_qp_num, align 4
  %dest_qp_num32 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 7
  %38 = ptrtoint ptr %dest_qp_num32 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %dest_qp_num32, align 4
  %qp_access_flags = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 8
  %39 = ptrtoint ptr %qp_access_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qp_access_flags, align 8
  %and.i173 = and i32 %40, 127
  %qp_access_flags35 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 8
  %41 = ptrtoint ptr %qp_access_flags35 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and.i173, ptr %qp_access_flags35, align 8
  %pkey_index = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 9
  %42 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %pkey_index, align 4
  %pkey_index37 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 12
  %44 = ptrtoint ptr %pkey_index37 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %pkey_index37, align 8
  %alt_pkey_index = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 10
  %45 = ptrtoint ptr %alt_pkey_index to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %alt_pkey_index, align 2
  %alt_pkey_index39 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 13
  %47 = ptrtoint ptr %alt_pkey_index39 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %alt_pkey_index39, align 2
  %en_sqd_async_notify = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 11
  %48 = ptrtoint ptr %en_sqd_async_notify to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %en_sqd_async_notify, align 8
  %en_sqd_async_notify41 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 14
  %50 = ptrtoint ptr %en_sqd_async_notify41 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %en_sqd_async_notify41, align 4
  %sq_draining = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 12
  %51 = ptrtoint ptr %sq_draining to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sq_draining, align 1
  %sq_draining43 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 15
  %53 = ptrtoint ptr %sq_draining43 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %sq_draining43, align 1
  %max_rd_atomic = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 13
  %54 = ptrtoint ptr %max_rd_atomic to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %max_rd_atomic, align 2
  %max_rd_atomic45 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 16
  %56 = ptrtoint ptr %max_rd_atomic45 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %max_rd_atomic45, align 2
  %max_dest_rd_atomic = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 14
  %57 = ptrtoint ptr %max_dest_rd_atomic to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %max_dest_rd_atomic, align 1
  %max_dest_rd_atomic47 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 17
  %59 = ptrtoint ptr %max_dest_rd_atomic47 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %max_dest_rd_atomic47, align 1
  %min_rnr_timer = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 15
  %60 = ptrtoint ptr %min_rnr_timer to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %min_rnr_timer, align 4
  %min_rnr_timer49 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 18
  %62 = ptrtoint ptr %min_rnr_timer49 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %min_rnr_timer49, align 8
  %port_num = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 16
  %63 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %port_num, align 1
  %conv51 = zext i8 %64 to i32
  %port_num52 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 19
  %65 = ptrtoint ptr %port_num52 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv51, ptr %port_num52, align 4
  %timeout = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 17
  %66 = ptrtoint ptr %timeout to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %timeout, align 2
  %timeout54 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 20
  %68 = ptrtoint ptr %timeout54 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %timeout54, align 8
  %retry_cnt = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 18
  %69 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %retry_cnt, align 1
  %retry_cnt56 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 21
  %71 = ptrtoint ptr %retry_cnt56 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %retry_cnt56, align 1
  %rnr_retry = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 19
  %72 = ptrtoint ptr %rnr_retry to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %rnr_retry, align 8
  %rnr_retry58 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 22
  %74 = ptrtoint ptr %rnr_retry58 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %rnr_retry58, align 2
  %alt_port_num = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 20
  %75 = ptrtoint ptr %alt_port_num to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %alt_port_num, align 1
  %conv60 = zext i8 %76 to i32
  %alt_port_num61 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 23
  %77 = ptrtoint ptr %alt_port_num61 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv60, ptr %alt_port_num61, align 4
  %alt_timeout = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 21
  %78 = ptrtoint ptr %alt_timeout to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %alt_timeout, align 2
  %alt_timeout63 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 24
  %80 = ptrtoint ptr %alt_timeout63 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %alt_timeout63, align 8
  %cap = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 9
  %cap65 = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 23
  call void @pvrdma_qp_cap_to_ib(ptr noundef %cap, ptr noundef %cap65) #7
  %ah_attr = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 10
  %ah_attr67 = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 24
  call void @pvrdma_ah_attr_to_rdma(ptr noundef %ah_attr, ptr noundef %ah_attr67) #7
  %alt_ah_attr = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 11
  %alt_ah_attr69 = getelementptr inbounds %struct.pvrdma_cmd_query_qp_resp, ptr %rsp, i32 0, i32 1, i32 25
  call void @pvrdma_ah_attr_to_rdma(ptr noundef %alt_ah_attr, ptr noundef %alt_ah_attr69) #7
  %81 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %attr, align 8
  %conv71 = trunc i32 %82 to i8
  %83 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv71, ptr %state, align 1
  br label %out

out:                                              ; preds = %if.end12, %do.end, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ %call7, %do.end ], [ 0, %if.end12 ]
  %84 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %attr, align 8
  %cur_qp_state74 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 1
  %86 = ptrtoint ptr %cur_qp_state74 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %cur_qp_state74, align 4
  %event_handler = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 15
  %87 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %event_handler, align 4
  %89 = ptrtoint ptr %init_attr to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %init_attr, align 4
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 16
  %90 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %qp_context, align 8
  %qp_context78 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 1
  %92 = ptrtoint ptr %qp_context78 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %qp_context78, align 4
  %send_cq = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 2
  %93 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %send_cq, align 8
  %send_cq80 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 2
  %95 = ptrtoint ptr %send_cq80 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %send_cq80, align 4
  %recv_cq = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 3
  %96 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %recv_cq, align 4
  %recv_cq82 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 3
  %98 = ptrtoint ptr %recv_cq82 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %recv_cq82, align 4
  %srq = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 8
  %99 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %srq, align 8
  %srq84 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 4
  %101 = ptrtoint ptr %srq84 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %srq84, align 4
  %xrcd = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 5
  %102 = ptrtoint ptr %xrcd to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %xrcd, align 4
  %cap85 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6
  %cap86 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 9
  %103 = call ptr @memcpy(ptr %cap85, ptr %cap86, i32 24)
  %sq_sig_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 7
  %104 = ptrtoint ptr %sq_sig_type to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %sq_sig_type, align 4
  %qp_type = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 22
  %105 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %qp_type, align 8
  %qp_type88 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 8
  %107 = ptrtoint ptr %qp_type88 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %qp_type88, align 4
  %create_flags = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 9
  %108 = ptrtoint ptr %create_flags to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %create_flags, align 4
  %port = getelementptr inbounds %struct.pvrdma_qp, ptr %ibqp, i32 0, i32 13
  %109 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %port, align 4
  %conv89 = zext i8 %110 to i32
  %port_num90 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 10
  %111 = ptrtoint ptr %port_num90 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %conv89, ptr %port_num90, align 4
  call void @mutex_unlock(ptr noundef %mutex) #7
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %rsp) #7
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvrdma_qp_cap_to_ib(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvrdma_ah_attr_to_rdma(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_pvrdma_flush_cqe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_pvrdma_free_qp(ptr noundef %qp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_tbl_lock = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 24
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qp_tbl_lock) #7
  %qp_tbl = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %qp_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_tbl, align 8
  %qp_handle = getelementptr inbounds %struct.pvrdma_qp, ptr %qp, i32 0, i32 1
  %4 = ptrtoint ptr %qp_handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qp_handle, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qp_tbl_lock, i32 noundef %call3) #7
  %refcnt = getelementptr inbounds %struct.pvrdma_qp, ptr %qp, i32 0, i32 17
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #7
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #7, !srcloc !180
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !166

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !181
  %free = getelementptr inbounds %struct.pvrdma_qp, ptr %qp, i32 0, i32 18
  tail call void @complete(ptr noundef %free) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  %free8 = getelementptr inbounds %struct.pvrdma_qp, ptr %qp, i32 0, i32 18
  tail call void @wait_for_completion(ptr noundef %free8) #7
  %rumem = getelementptr inbounds %struct.pvrdma_qp, ptr %qp, i32 0, i32 5
  %8 = ptrtoint ptr %rumem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rumem, align 4
  tail call void @ib_umem_release(ptr noundef %9) #7
  %sumem = getelementptr inbounds %struct.pvrdma_qp, ptr %qp, i32 0, i32 6
  %10 = ptrtoint ptr %sumem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sumem, align 8
  tail call void @ib_umem_release(ptr noundef %11) #7
  %pdir = getelementptr inbounds %struct.pvrdma_qp, ptr %qp, i32 0, i32 7
  tail call void @pvrdma_page_dir_cleanup(ptr noundef %1, ptr noundef %pdir) #7
  %num_qps = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 32
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_qps, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %num_qps, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_qps, ptr %num_qps, i32 1, ptr elementtype(i32) %num_qps) #7, !srcloc !173
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave_nested(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_page_dir_insert_page_list(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !131, !132, !134, !136, !138, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150}
!llvm.named.register.sp = !{!151}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 208, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pvrdma_create_qp._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pvrdma_create_qp._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 217, i32 3}
!10 = !{ptr @pvrdma_create_qp._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @pvrdma_create_qp._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 223, i32 3}
!14 = !{ptr @pvrdma_create_qp._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @pvrdma_create_qp._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 235, i32 4}
!18 = !{ptr @pvrdma_create_qp._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @pvrdma_create_qp._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @pvrdma_create_qp.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 242, i32 3}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pvrdma_create_qp.__key.15, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 243, i32 3}
!25 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pvrdma_create_qp.__key.17, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 244, i32 3}
!28 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 252, i32 4}
!31 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @pvrdma_create_qp.__UNIQUE_ID_ddebug510, !30, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 263, i32 5}
!35 = !{ptr @pvrdma_create_qp._entry.21, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @pvrdma_create_qp._entry_ptr.23, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 322, i32 4}
!39 = !{ptr @pvrdma_create_qp._entry.24, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @pvrdma_create_qp._entry_ptr.26, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 331, i32 4}
!43 = !{ptr @pvrdma_create_qp._entry.27, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @pvrdma_create_qp._entry_ptr.29, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.30, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 379, i32 2}
!47 = !{ptr @pvrdma_create_qp.__UNIQUE_ID_ddebug511, !46, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!48 = !{ptr @.str.32, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 385, i32 3}
!50 = !{ptr @pvrdma_create_qp._entry.31, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @pvrdma_create_qp._entry_ptr.33, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.35, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 411, i32 4}
!54 = !{ptr @pvrdma_create_qp._entry.34, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @pvrdma_create_qp._entry_ptr.36, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.37, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 617, i32 3}
!58 = !{ptr @.str.38, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @pvrdma_modify_qp._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @pvrdma_modify_qp._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.40, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 620, i32 3}
!63 = !{ptr @pvrdma_modify_qp._entry.39, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @pvrdma_modify_qp._entry_ptr.41, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.42, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 697, i32 4}
!67 = !{ptr @pvrdma_post_send._rs, !66, !"_rs", i1 false, i1 false}
!68 = !{ptr @__func__.pvrdma_post_send, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.43, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @pvrdma_post_send._entry, !66, !"_entry", i1 false, i1 false}
!71 = !{ptr @pvrdma_post_send._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @pvrdma_post_send._rs.44, !73, !"_rs", i1 false, i1 false}
!73 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 705, i32 4}
!74 = !{ptr @.str.46, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @pvrdma_post_send._entry.45, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @pvrdma_post_send._entry_ptr.47, !73, !"_entry_ptr", i1 false, i1 false}
!77 = distinct !{null, !78, !"_rs", i1 false, i1 false}
!78 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 713, i32 4}
!79 = !{ptr @.str.50, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @pvrdma_post_send._entry.49, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @pvrdma_post_send._entry_ptr.51, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @pvrdma_post_send._rs.52, !83, !"_rs", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 741, i32 4}
!84 = !{ptr @.str.54, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @pvrdma_post_send._entry.53, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @pvrdma_post_send._entry_ptr.55, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @pvrdma_post_send._rs.56, !88, !"_rs", i1 false, i1 false}
!88 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 750, i32 5}
!89 = !{ptr @pvrdma_post_send._entry.57, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @pvrdma_post_send._entry_ptr.58, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @pvrdma_post_send._rs.59, !92, !"_rs", i1 false, i1 false}
!92 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 778, i32 5}
!93 = !{ptr @.str.61, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @pvrdma_post_send._entry.60, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @pvrdma_post_send._entry_ptr.62, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @pvrdma_post_send._rs.63, !97, !"_rs", i1 false, i1 false}
!97 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 824, i32 6}
!98 = !{ptr @.str.65, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @pvrdma_post_send._entry.64, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @pvrdma_post_send._entry_ptr.66, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @pvrdma_post_send._rs.67, !102, !"_rs", i1 false, i1 false}
!102 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 836, i32 4}
!103 = !{ptr @.str.69, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @pvrdma_post_send._entry.68, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @pvrdma_post_send._entry_ptr.70, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.71, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 902, i32 3}
!108 = !{ptr @.str.72, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @pvrdma_post_recv._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @pvrdma_post_recv._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @pvrdma_post_recv._rs, !112, !"_rs", i1 false, i1 false}
!112 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 916, i32 4}
!113 = !{ptr @.str.74, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @pvrdma_post_recv._entry.73, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @pvrdma_post_recv._entry_ptr.75, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @pvrdma_post_recv._rs.76, !117, !"_rs", i1 false, i1 false}
!117 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 925, i32 4}
!118 = !{ptr @.str.78, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @pvrdma_post_recv._entry.77, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @pvrdma_post_recv._entry_ptr.79, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.80, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 999, i32 3}
!123 = !{ptr @.str.81, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @pvrdma_query_qp._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @pvrdma_query_qp._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @init_completion.__key, !127, !"__key", i1 false, i1 false}
!127 = !{!"../include/linux/completion.h", i32 87, i32 2}
!128 = !{ptr @.str.82, !127, !"<string literal>", i1 false, i1 false}
!129 = distinct !{null, !130, !"__already_done", i1 false, i1 false}
!130 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!131 = distinct !{null, !130, !"<string literal>", i1 false, i1 false}
!132 = distinct !{null, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!134 = !{ptr @.str.85, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!136 = !{ptr @.str.86, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 161, i32 3}
!138 = !{ptr @.str.87, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @pvrdma_set_sq_size._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @pvrdma_set_sq_size._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.88, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 136, i32 3}
!143 = !{ptr @.str.89, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @pvrdma_set_rq_size._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @pvrdma_set_rq_size._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.90, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_qp.c", i32 488, i32 3}
!148 = !{ptr @.str.91, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @_pvrdma_destroy_qp_work._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @_pvrdma_destroy_qp_work._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{!"sp"}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{i64 2148224044}
!162 = !{i64 708867, i64 708892, i64 708914, i64 708930, i64 708942, i64 708962, i64 708986, i64 709002, i64 709014}
!163 = !{i64 2148224232}
!164 = !{i64 2148712189, i64 2148712194, i64 2148712207, i64 2148712251, i64 2148712285, i64 2148712306}
!165 = !{i64 2152424366, i64 2152424391}
!166 = !{!"branch_weights", i32 2000, i32 1}
!167 = !{i64 4919921}
!168 = !{i64 4920118}
!169 = !{i64 2152405351}
!170 = !{i32 0, i32 33}
!171 = !{i8 0, i8 2}
!172 = !{i64 2152425047, i64 2152425072}
!173 = !{i64 2148227090, i64 2148227116, i64 2148227145, i64 2148227179, i64 2148227210, i64 2148227233}
!174 = !{!"branch_weights", i32 1, i32 2000}
!175 = !{i64 2158449622}
!176 = !{i64 2158349431}
!177 = !{i64 1245032}
!178 = !{i64 2158457287}
!179 = !{i64 2148314156}
!180 = !{i64 2148228620, i64 2148228652, i64 2148228681, i64 2148228715, i64 2148228746, i64 2148228769}
!181 = !{i64 2149669113}
