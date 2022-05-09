; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mthca/mthca_qp.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mthca/mthca_qp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ib_event = type { ptr, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.mthca_dev = type { %struct.ib_device, ptr, i32, i32, i32, i32, [64 x i8], i64, %union.anon.186, i64, i64, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, %union.anon.189, %struct.mthca_cmd, %struct.mthca_limits, %struct.mthca_uar_table, %struct.mthca_pd_table, %struct.mthca_mr_table, %struct.mthca_eq_table, %struct.mthca_cq_table, %struct.mthca_srq_table, %struct.mthca_qp_table, %struct.mthca_av_table, %struct.mthca_mcg_table, %struct.mthca_catas_err, %struct.mthca_uar, ptr, %struct.mthca_pd, %struct.mthca_mr, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x i8], i8 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.173, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.173 = type { %struct.ib_core_device }
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
%struct.ib_odp_caps = type { i64, %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.186 = type { %struct.anon.188 }
%struct.anon.188 = type { i64, i64, i64, ptr, ptr, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.189 = type { %struct.anon.191 }
%struct.anon.191 = type { ptr, ptr }
%struct.mthca_cmd = type { ptr, %struct.mutex, %struct.semaphore, %struct.semaphore, i32, %struct.spinlock, i32, ptr, i16, i32, ptr, [8 x i16] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mthca_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.mthca_uar_table = type { %struct.mthca_alloc, i64, i32 }
%struct.mthca_alloc = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.mthca_pd_table = type { %struct.mthca_alloc }
%struct.mthca_mr_table = type { %struct.mthca_alloc, %struct.mthca_buddy, ptr, i64, i64, ptr, ptr, %struct.anon.192 }
%struct.mthca_buddy = type { ptr, ptr, i32, %struct.spinlock }
%struct.anon.192 = type { ptr, ptr, %struct.mthca_buddy }
%struct.mthca_eq_table = type { %struct.mthca_alloc, ptr, i32, i32, [3 x %struct.mthca_eq], i64, ptr, i32, i32, i8 }
%struct.mthca_eq = type { ptr, i32, i32, i32, i16, i16, i32, i32, ptr, %struct.mthca_mr, [64 x i8] }
%struct.mthca_cq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_array = type { ptr }
%struct.mthca_srq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_qp_table = type { %struct.mthca_alloc, i32, i32, i32, %struct.spinlock, %struct.mthca_array, ptr, ptr, ptr }
%struct.mthca_av_table = type { ptr, i32, i64, ptr, %struct.mthca_alloc }
%struct.mthca_mcg_table = type { %struct.mutex, %struct.mthca_alloc, ptr }
%struct.mthca_catas_err = type { i64, ptr, i32, %struct.timer_list, %struct.list_head }
%struct.mthca_uar = type { i32, i32 }
%struct.mthca_pd = type { %struct.ib_pd, i32, %struct.atomic_t, %struct.mthca_mr, i32 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mthca_mr = type { %struct.ib_mr, ptr, ptr }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.127, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.127 = type { %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mthca_qp = type { %struct.ib_qp, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.mthca_mr, %struct.mthca_wq, %struct.mthca_wq, i32, i32, i32, ptr, %union.mthca_buf, %struct.wait_queue_head, %struct.mutex, ptr }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.mthca_wq = type { %struct.spinlock, i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr }
%union.mthca_buf = type { %struct.mthca_buf_list }
%struct.mthca_buf_list = type { ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.185, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.185 = type { ptr }
%struct.mthca_mailbox = type { i32, ptr }
%struct.mthca_qp_param = type { i32, i32, %struct.mthca_qp_context, [62 x i32] }
%struct.mthca_qp_context = type { i32, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], %struct.mthca_qp_path, %struct.mthca_qp_path, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [18 x i32] }
%struct.mthca_qp_path = type { i32, i8, i8, i16, i8, i8, i8, i8, i32, [16 x i8] }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.163 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.158 }
%struct.anon.158 = type { i64, i64 }
%union.anon.163 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.ib_ah_attr = type { i16, i8 }
%struct.mthca_init_ib_param = type { i32, i32, i32, i16, i16, i32, i64, i32, i64, i32, i64 }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.168 }
%union.anon.168 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.169, i16, i16, i8 }
%union.anon.169 = type { i64 }
%struct.mthca_ucontext = type { %struct.ib_ucontext, %struct.mthca_uar, ptr, i32 }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.mthca_cq = type { %struct.ib_cq, %struct.spinlock, i32, i32, i32, %struct.mthca_cq_buf, ptr, i32, i32, ptr, i32, ptr, i32, %struct.wait_queue_head, %struct.mutex }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.139, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.139 = type { %struct.work_struct }
%struct.mthca_cq_buf = type { %union.mthca_buf, %struct.mthca_mr, i32 }
%struct.mthca_srq = type { %struct.ib_srq, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i16, i32, ptr, ptr, i32, ptr, %union.mthca_buf, %struct.mthca_mr, %struct.wait_queue_head, %struct.mutex }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.130, %struct.rdma_restrack_entry }
%struct.anon.130 = type { ptr, %union.anon.131 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { ptr, i32 }
%struct.mthca_sqp = type { i32, i32, i32, %struct.ib_ud_header, i32, ptr, i32 }
%struct.ib_ud_header = type { i32, %struct.ib_unpacked_lrh, i32, %struct.ib_unpacked_eth, i32, %struct.ib_unpacked_vlan, i32, %struct.ib_unpacked_grh, i32, %struct.ib_unpacked_ip4, i32, %struct.ib_unpacked_udp, %struct.ib_unpacked_bth, %struct.ib_unpacked_deth, i32, i32 }
%struct.ib_unpacked_lrh = type { i8, i8, i8, i8, i16, i16, i16 }
%struct.ib_unpacked_eth = type { [4 x i8], [2 x i8], [2 x i8], [4 x i8], i16 }
%struct.ib_unpacked_vlan = type { i16, i16 }
%struct.ib_unpacked_grh = type { i8, i8, i32, i16, i8, i8, %union.ib_gid, %union.ib_gid }
%struct.ib_unpacked_ip4 = type { i8, i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ib_unpacked_udp = type { i16, i16, i16, i16 }
%struct.ib_unpacked_bth = type { i8, i8, i8, i8, i8, i16, i32, i8, i32 }
%struct.ib_unpacked_deth = type { i32, i32 }
%struct.mthca_next_seg = type { i32, i32, i32, i32 }
%struct.mthca_data_seg = type { i32, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ib_send_wr = type { ptr, %union.anon.159, ptr, i32, i32, i32, %union.anon.160 }
%union.anon.159 = type { i64 }
%union.anon.160 = type { i32 }
%struct.ib_atomic_wr = type { %struct.ib_send_wr, i64, i64, i64, i64, i64, i32 }
%struct.ib_rdma_wr = type { %struct.ib_send_wr, i64, i32 }
%struct.ib_ud_wr = type { %struct.ib_send_wr, ptr, ptr, i32, i32, i32, i32, i16, i32 }
%struct.mthca_ah = type { %struct.ib_ah, i32, i32, ptr, i32 }
%struct.ib_ah = type { ptr, ptr, ptr, ptr, i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.mthca_mlx_seg = type { i32, i32, i32, i16, i16 }
%struct.ib_recv_wr = type { ptr, %union.anon.161, ptr, i32 }
%union.anon.161 = type { i64 }

@mthca_qp_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Async event %d for bogus QP %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mthca_qp_event\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/infiniband/hw/mthca/mthca_qp.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mthca_qp_event._entry_ptr = internal global ptr @mthca_qp_event._entry, section ".printk_index", align 4
@mthca_query_qp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 456, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"QUERY_QP failed (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mthca_query_qp\00", [17 x i8] zeroinitializer }, align 32
@mthca_query_qp._entry_ptr = internal global ptr @mthca_query_qp._entry, section ".printk_index", align 4
@mthca_debug_level = external dso_local local_unnamed_addr global i32, align 4
@mthca_modify_qp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 887, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Bad QP transition (transport %d) %d->%d with attr 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mthca_modify_qp\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@mthca_modify_qp._entry_ptr = internal global ptr @mthca_modify_qp._entry, section ".printk_index", align 4
@mthca_modify_qp._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 894, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"P_Key index (%u) too large. max is %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mthca_modify_qp._entry_ptr.12 = internal global ptr @mthca_modify_qp._entry.10, section ".printk_index", align 4
@mthca_modify_qp._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.2, i32 900, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Port number (%u) is invalid\0A\00", [35 x i8] zeroinitializer }, align 32
@mthca_modify_qp._entry_ptr.15 = internal global ptr @mthca_modify_qp._entry.13, section ".printk_index", align 4
@mthca_modify_qp._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.2, i32 907, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Max rdma_atomic as initiator %u too large (max is %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@mthca_modify_qp._entry_ptr.18 = internal global ptr @mthca_modify_qp._entry.16, section ".printk_index", align 4
@mthca_modify_qp._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.8, ptr @.str.2, i32 914, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Max rdma_atomic as responder %u too large (max %d)\0A\00", [44 x i8] zeroinitializer }, align 32
@mthca_modify_qp._entry_ptr.21 = internal global ptr @mthca_modify_qp._entry.19, section ".printk_index", align 4
@mthca_tavor_post_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1660, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"SQ %06x full (%u head, %u tail, %d max, %d nreq)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mthca_tavor_post_send\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mthca_tavor_post_send._entry_ptr = internal global ptr @mthca_tavor_post_send._entry, section ".printk_index", align 4
@mthca_tavor_post_send._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.2, i32 1753, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"too many gathers\0A\00", [46 x i8] zeroinitializer }, align 32
@mthca_tavor_post_send._entry_ptr.27 = internal global ptr @mthca_tavor_post_send._entry.25, section ".printk_index", align 4
@mthca_tavor_post_send._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.23, ptr @.str.2, i32 1777, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"opcode invalid\0A\00", [16 x i8] zeroinitializer }, align 32
@mthca_tavor_post_send._entry_ptr.30 = internal global ptr @mthca_tavor_post_send._entry.28, section ".printk_index", align 4
@mthca_opcode = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\08\09\0A\0B\10\11\12", [25 x i8] zeroinitializer }, align 32
@mthca_tavor_post_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 1856, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"RQ %06x full (%u head, %u tail, %d max, %d nreq)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mthca_tavor_post_receive\00", [39 x i8] zeroinitializer }, align 32
@mthca_tavor_post_receive._entry_ptr = internal global ptr @mthca_tavor_post_receive._entry, section ".printk_index", align 4
@mthca_arbel_post_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.33, ptr @.str.2, i32 1990, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mthca_arbel_post_send\00", [42 x i8] zeroinitializer }, align 32
@mthca_arbel_post_send._entry_ptr = internal global ptr @mthca_arbel_post_send._entry, section ".printk_index", align 4
@mthca_arbel_post_send._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.33, ptr @.str.2, i32 2083, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mthca_arbel_post_send._entry_ptr.35 = internal global ptr @mthca_arbel_post_send._entry.34, section ".printk_index", align 4
@mthca_arbel_post_send._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.33, ptr @.str.2, i32 2107, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mthca_arbel_post_send._entry_ptr.37 = internal global ptr @mthca_arbel_post_send._entry.36, section ".printk_index", align 4
@mthca_arbel_post_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.38, ptr @.str.2, i32 2185, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mthca_arbel_post_receive\00", [39 x i8] zeroinitializer }, align 32
@mthca_arbel_post_receive._entry_ptr = internal global ptr @mthca_arbel_post_receive._entry, section ".printk_index", align 4
@mthca_init_qp_table.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->qp_table.lock\00", [44 x i8] zeroinitializer }, align 32
@mthca_init_qp_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 2292, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CONF_SPECIAL_QP returned %d, aborting.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mthca_init_qp_table\00", [44 x i8] zeroinitializer }, align 32
@mthca_init_qp_table._entry_ptr = internal global ptr @mthca_init_qp_table._entry, section ".printk_index", align 4
@__mthca_modify_qp._entry = internal constant %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 608, ptr @.str.9, ptr @.str.4 }, align 1
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"path MTU (%u) is invalid\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__mthca_modify_qp\00", [46 x i8] zeroinitializer }, align 32
@__mthca_modify_qp._entry_ptr = internal global ptr @__mthca_modify_qp._entry, section ".printk_index", align 4
@__mthca_modify_qp._entry.44 = internal constant %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 688, ptr @.str.9, ptr @.str.4 }, align 1
@.str.45 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Alternate P_Key index (%u) too large. max is %d\0A\00", [47 x i8] zeroinitializer }, align 32
@__mthca_modify_qp._entry_ptr.46 = internal global ptr @__mthca_modify_qp._entry.44, section ".printk_index", align 4
@__mthca_modify_qp._entry.47 = internal constant %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 694, ptr @.str.9, ptr @.str.4 }, align 1
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Alternate port number (%u) is invalid\0A\00", [57 x i8] zeroinitializer }, align 32
@__mthca_modify_qp._entry_ptr.49 = internal global ptr @__mthca_modify_qp._entry.47, section ".printk_index", align 4
@__mthca_modify_qp._entry.50 = internal constant %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 797, ptr @.str.3, ptr @.str.4 }, align 1
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"modify QP %d->%d returned %d.\0A\00", [33 x i8] zeroinitializer }, align 32
@__mthca_modify_qp._entry_ptr.52 = internal global ptr @__mthca_modify_qp._entry.50, section ".printk_index", align 4
@mthca_path_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 536, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sgid_index (%u) too large. max is %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mthca_path_set\00", [17 x i8] zeroinitializer }, align 32
@mthca_path_set._entry_ptr = internal global ptr @mthca_path_set._entry, section ".printk_index", align 4
@init_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 325, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"INIT_IB failed, return code %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_port\00", [22 x i8] zeroinitializer }, align 32
@init_port._entry_ptr = internal global ptr @init_port._entry, section ".printk_index", align 4
@mthca_alloc_qp_common.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&qp->wait\00", [22 x i8] zeroinitializer }, align 32
@mthca_alloc_qp_common.__key.58 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&qp->mutex\00", [21 x i8] zeroinitializer }, align 32
@mthca_alloc_qp_common.__key.60 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&qp->sq.lock\00", [19 x i8] zeroinitializer }, align 32
@mthca_alloc_qp_common.__key.62 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&qp->rq.lock\00", [19 x i8] zeroinitializer }, align 32
@switch.table.mthca_query_qp = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 6, i32 4], [32 x i8] zeroinitializer }, align 32
@switch.table.mthca_query_qp.64 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 1, i32 -1, i32 0], [16 x i8] zeroinitializer }, align 32
@switch.table.mthca_modify_qp = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 268435456, i32 536870912, i32 805306368, i32 1342177280, i32 1073741824, i32 1610612736], [36 x i8] zeroinitializer }, align 32
@switch.table.mthca_modify_qp.65 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 65536, i32 196608, i32 131072, i32 -65536, i32 458752], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.71 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.72 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.76 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 251, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 456, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 884, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 893, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 900, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 906, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 913, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1657, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1753, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1777, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant [13 x i8] c"mthca_opcode\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 186, i32 17 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1853, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1987, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2083, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2107, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2182, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2265, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2291, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 607, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 687, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 693, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 796, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 534, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 325, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1175, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1176, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1184, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.266 = private constant [42 x i8] c"../drivers/infiniband/hw/mthca/mthca_qp.c\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1185, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [28 x i8] c"switch.table.mthca_query_qp\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [31 x i8] c"switch.table.mthca_query_qp.64\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [29 x i8] c"switch.table.mthca_modify_qp\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [32 x i8] c"switch.table.mthca_modify_qp.65\00", align 1
@llvm.compiler.used = appending global [93 x ptr] [ptr @__mthca_modify_qp._entry, ptr @__mthca_modify_qp._entry.44, ptr @__mthca_modify_qp._entry.47, ptr @__mthca_modify_qp._entry.50, ptr @__mthca_modify_qp._entry_ptr, ptr @__mthca_modify_qp._entry_ptr.46, ptr @__mthca_modify_qp._entry_ptr.49, ptr @__mthca_modify_qp._entry_ptr.52, ptr @init_port._entry, ptr @init_port._entry_ptr, ptr @mthca_arbel_post_receive._entry, ptr @mthca_arbel_post_receive._entry_ptr, ptr @mthca_arbel_post_send._entry, ptr @mthca_arbel_post_send._entry.34, ptr @mthca_arbel_post_send._entry.36, ptr @mthca_arbel_post_send._entry_ptr, ptr @mthca_arbel_post_send._entry_ptr.35, ptr @mthca_arbel_post_send._entry_ptr.37, ptr @mthca_init_qp_table._entry, ptr @mthca_init_qp_table._entry_ptr, ptr @mthca_modify_qp._entry, ptr @mthca_modify_qp._entry.10, ptr @mthca_modify_qp._entry.13, ptr @mthca_modify_qp._entry.16, ptr @mthca_modify_qp._entry.19, ptr @mthca_modify_qp._entry_ptr, ptr @mthca_modify_qp._entry_ptr.12, ptr @mthca_modify_qp._entry_ptr.15, ptr @mthca_modify_qp._entry_ptr.18, ptr @mthca_modify_qp._entry_ptr.21, ptr @mthca_path_set._entry, ptr @mthca_path_set._entry_ptr, ptr @mthca_qp_event._entry, ptr @mthca_qp_event._entry_ptr, ptr @mthca_query_qp._entry, ptr @mthca_query_qp._entry_ptr, ptr @mthca_tavor_post_receive._entry, ptr @mthca_tavor_post_receive._entry_ptr, ptr @mthca_tavor_post_send._entry, ptr @mthca_tavor_post_send._entry.25, ptr @mthca_tavor_post_send._entry.28, ptr @mthca_tavor_post_send._entry_ptr, ptr @mthca_tavor_post_send._entry_ptr.27, ptr @mthca_tavor_post_send._entry_ptr.30, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @mthca_opcode, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.38, ptr @mthca_init_qp_table.__key, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @mthca_alloc_qp_common.__key, ptr @.str.57, ptr @mthca_alloc_qp_common.__key.58, ptr @.str.59, ptr @mthca_alloc_qp_common.__key.60, ptr @.str.61, ptr @mthca_alloc_qp_common.__key.62, ptr @.str.63, ptr @switch.table.mthca_query_qp, ptr @switch.table.mthca_query_qp.64, ptr @switch.table.mthca_modify_qp, ptr @switch.table.mthca_modify_qp.65], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_qp_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_query_qp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_modify_qp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_modify_qp._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_modify_qp._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_modify_qp._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_modify_qp._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_tavor_post_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_tavor_post_send._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_tavor_post_send._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_opcode to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_tavor_post_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_arbel_post_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_arbel_post_send._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_arbel_post_send._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_arbel_post_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_qp_table.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_qp_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_path_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_alloc_qp_common.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_alloc_qp_common.__key.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_alloc_qp_common.__key.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_alloc_qp_common.__key.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mthca_query_qp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mthca_query_qp.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mthca_modify_qp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mthca_modify_qp.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_qp_event(ptr noundef %dev, i32 noundef %qpn, i32 noundef %event_type) local_unnamed_addr #0 align 64 {
entry:
  %event = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event) #10
  %0 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %lock = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %qp2 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 5
  %num_qps = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %num_qps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_qps, align 8
  %sub = add i32 %3, -1
  %and = and i32 %sub, %qpn
  %call = tail call ptr @mthca_array_get(ptr noundef %qp2, i32 noundef %and) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end.critedge, label %if.then

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.mthca_qp, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refcount, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %refcount, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event_type)
  %cmp = icmp eq i32 %event_type, 6
  br i1 %cmp, label %if.then9, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.end.critedge:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7, ptr noundef nonnull @.str, i32 noundef %event_type, i32 noundef %qpn) #13
  br label %cleanup

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %alt_port = getelementptr inbounds %struct.mthca_qp, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %alt_port to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %alt_port, align 1
  %port = getelementptr inbounds %struct.mthca_qp, ptr %call, i32 0, i32 4
  %10 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %port, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then.if.end10_crit_edge
  %11 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %event, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %event_type, ptr %1, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %0, align 4
  %event_handler = getelementptr inbounds %struct.ib_qp, ptr %call, i32 0, i32 15
  %14 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %event_handler, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %if.end10.if.end18_crit_edge, label %if.then14

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %call, i32 0, i32 16
  %16 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qp_context, align 8
  call void %15(ptr noundef nonnull %event, ptr noundef %17) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end10.if.end18_crit_edge
  call void @_raw_spin_lock(ptr noundef %lock) #10
  %18 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %refcount, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool22.not = icmp eq i32 %dec, 0
  br i1 %tobool22.not, label %if.then23, label %if.end18.if.end24_crit_edge

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %wait = getelementptr inbounds %struct.mthca_qp, ptr %call, i32 0, i32 18
  call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end18.if.end24_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end.critedge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mthca_array_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_query_qp(ptr noundef %ibqp, ptr noundef %qp_attr, i32 noundef %qp_attr_mask, ptr nocapture noundef writeonly %qp_init_attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibqp, align 4
  %mutex = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %state = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 7
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qp_attr, align 8
  br label %done

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @mthca_alloc_mailbox(ptr noundef %1, i32 noundef 3264) #10
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call3 to i32
  br label %out

if.end7:                                          ; preds = %if.end
  %qpn = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 2
  %6 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qpn, align 8
  %call8 = tail call i32 @mthca_QUERY_QP(ptr noundef %1, i32 noundef %7, i32 noundef 0, ptr noundef %call3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev10, ptr noundef nonnull @.str.5, i32 noundef %call8) #13
  br label %out_mailbox

if.end11:                                         ; preds = %if.end7
  %buf = getelementptr inbounds %struct.mthca_mailbox, ptr %call3, i32 0, i32 1
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf, align 4
  %context12 = getelementptr inbounds %struct.mthca_qp_param, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %context12 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %context12, align 1
  %shr = lshr i32 %13, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %switch.lookup, label %if.end11.to_ib_qp_state.exit_crit_edge

if.end11.to_ib_qp_state.exit_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %to_ib_qp_state.exit

switch.lookup:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.mthca_query_qp, i32 0, i32 %shr
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %to_ib_qp_state.exit

to_ib_qp_state.exit:                              ; preds = %switch.lookup, %if.end11.to_ib_qp_state.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -1, %if.end11.to_ib_qp_state.exit_crit_edge ]
  %conv14 = trunc i32 %retval.0.i to i8
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv14, ptr %state, align 1
  %conv17 = and i32 %retval.0.i, 255
  %17 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv17, ptr %qp_attr, align 8
  %mtu_msgmax = getelementptr inbounds %struct.mthca_qp_param, ptr %11, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %mtu_msgmax to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mtu_msgmax, align 1
  %20 = lshr i8 %19, 5
  %21 = zext i8 %20 to i32
  %path_mtu = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 2
  %22 = ptrtoint ptr %path_mtu to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %path_mtu, align 8
  %23 = ptrtoint ptr %context12 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %context12, align 1
  %shr22 = lshr i32 %24, 11
  %and = and i32 %shr22, 3
  %switch.gep179 = getelementptr inbounds [4 x i32], ptr @switch.table.mthca_query_qp.64, i32 0, i32 %and
  %25 = ptrtoint ptr %switch.gep179 to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load180 = load i32, ptr %switch.gep179, align 4
  %path_mig_state = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 3
  %26 = ptrtoint ptr %path_mig_state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %switch.load180, ptr %path_mig_state, align 4
  %qkey = getelementptr inbounds %struct.mthca_qp_param, ptr %11, i32 0, i32 2, i32 30
  %27 = ptrtoint ptr %qkey to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %qkey, align 1
  %qkey24 = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 4
  %29 = ptrtoint ptr %qkey24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %qkey24, align 8
  %rnr_nextrecvpsn = getelementptr inbounds %struct.mthca_qp_param, ptr %11, i32 0, i32 2, i32 25
  %30 = ptrtoint ptr %rnr_nextrecvpsn to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %rnr_nextrecvpsn, align 1
  %and25 = and i32 %31, 16777215
  %rq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 5
  %32 = ptrtoint ptr %rq_psn to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and25, ptr %rq_psn, align 4
  %next_send_psn = getelementptr inbounds %struct.mthca_qp_param, ptr %11, i32 0, i32 2, i32 18
  %33 = ptrtoint ptr %next_send_psn to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %next_send_psn, align 1
  %and26 = and i32 %34, 16777215
  %sq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 6
  %35 = ptrtoint ptr %sq_psn to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and26, ptr %sq_psn, align 8
  %remote_qpn = getelementptr inbounds %struct.mthca_qp_param, ptr %11, i32 0, i32 2, i32 8
  %36 = ptrtoint ptr %remote_qpn to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %remote_qpn, align 1
  %and27 = and i32 %37, 16777215
  %dest_qp_num = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 7
  %38 = ptrtoint ptr %dest_qp_num to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and27, ptr %dest_qp_num, align 4
  %params2 = getelementptr inbounds %struct.mthca_qp_param, ptr %11, i32 0, i32 2, i32 24
  %39 = ptrtoint ptr %params2 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %params2, align 1
  %and.i = lshr i32 %40, 13
  %41 = and i32 %and.i, 6
  %and6.i = lshr i32 %40, 10
  %42 = and i32 %and6.i, 8
  %43 = or i32 %41, %42
  %qp_access_flags = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 8
  %44 = ptrtoint ptr %qp_access_flags to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %qp_access_flags, align 8
  %transport = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 6
  %45 = ptrtoint ptr %transport to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %transport, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %46)
  %switch = icmp ult i8 %46, 2
  br i1 %switch, label %if.then36, label %to_ib_qp_state.exit.if.end42_crit_edge

to_ib_qp_state.exit.if.end42_crit_edge:           ; preds = %to_ib_qp_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then36:                                        ; preds = %to_ib_qp_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ah_attr = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 10
  %pri_path = getelementptr inbounds %struct.mthca_qp_param, ptr %11, i32 0, i32 2, i32 10
  tail call fastcc void @to_rdma_ah_attr(ptr noundef %1, ptr noundef %ah_attr, ptr noundef %pri_path)
  %alt_ah_attr = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 11
  %alt_path = getelementptr inbounds %struct.mthca_qp_param, ptr %11, i32 0, i32 2, i32 11
  tail call fastcc void @to_rdma_ah_attr(ptr noundef %1, ptr noundef %alt_ah_attr, ptr noundef %alt_path)
  %47 = ptrtoint ptr %alt_path to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %alt_path, align 1
  %49 = trunc i32 %48 to i16
  %conv39 = and i16 %49, 127
  %alt_pkey_index = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 13
  %50 = ptrtoint ptr %alt_pkey_index to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv39, ptr %alt_pkey_index, align 2
  %port_num.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 11, i32 3
  %51 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port_num.i, align 4
  %alt_port_num = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 23
  %53 = ptrtoint ptr %alt_port_num to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %alt_port_num, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %to_ib_qp_state.exit.if.end42_crit_edge
  %pri_path43 = getelementptr inbounds %struct.mthca_qp_param, ptr %11, i32 0, i32 2, i32 10
  %54 = ptrtoint ptr %pri_path43 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %pri_path43, align 1
  %56 = trunc i32 %55 to i16
  %conv46 = and i16 %56, 127
  %pkey_index = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 12
  %57 = ptrtoint ptr %pkey_index to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv46, ptr %pkey_index, align 8
  %58 = load i32, ptr %pri_path43, align 1
  %shr49 = lshr i32 %58, 24
  %and50 = and i32 %shr49, 3
  %port_num = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 19
  %59 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and50, ptr %port_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr)
  %cmp51 = icmp eq i32 %shr, 7
  %conv53 = zext i1 %cmp51 to i8
  %sq_draining = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 15
  %60 = ptrtoint ptr %sq_draining to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv53, ptr %sq_draining, align 1
  %params1 = getelementptr inbounds %struct.mthca_qp_param, ptr %11, i32 0, i32 2, i32 16
  %61 = ptrtoint ptr %params1 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %params1, align 1
  %shr54 = lshr i32 %62, 21
  %and55 = and i32 %shr54, 7
  %shl = shl nuw nsw i32 1, %and55
  %conv56 = trunc i32 %shl to i8
  %max_rd_atomic = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 16
  %63 = ptrtoint ptr %max_rd_atomic to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv56, ptr %max_rd_atomic, align 2
  %64 = ptrtoint ptr %params2 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %params2, align 1
  %shr58 = lshr i32 %65, 21
  %and59 = and i32 %shr58, 7
  %shl60 = shl nuw nsw i32 1, %and59
  %conv61 = trunc i32 %shl60 to i8
  %max_dest_rd_atomic = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 17
  %66 = ptrtoint ptr %max_dest_rd_atomic to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv61, ptr %max_dest_rd_atomic, align 1
  %67 = ptrtoint ptr %rnr_nextrecvpsn to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %rnr_nextrecvpsn, align 1
  %shr63 = lshr i32 %68, 24
  %69 = trunc i32 %shr63 to i8
  %conv65 = and i8 %69, 31
  %min_rnr_timer = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 18
  %70 = ptrtoint ptr %min_rnr_timer to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv65, ptr %min_rnr_timer, align 8
  %ackto = getelementptr inbounds %struct.mthca_qp_param, ptr %11, i32 0, i32 2, i32 10, i32 4
  %71 = ptrtoint ptr %ackto to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ackto, align 1
  %73 = lshr i8 %72, 3
  %timeout = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 20
  %74 = ptrtoint ptr %timeout to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %timeout, align 8
  %75 = load i32, ptr %params1, align 1
  %shr71 = lshr i32 %75, 16
  %76 = trunc i32 %shr71 to i8
  %conv73 = and i8 %76, 7
  %retry_cnt = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 21
  %77 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv73, ptr %retry_cnt, align 1
  %rnr_retry = getelementptr inbounds %struct.mthca_qp_param, ptr %11, i32 0, i32 2, i32 10, i32 1
  %78 = ptrtoint ptr %rnr_retry to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %rnr_retry, align 1
  %80 = lshr i8 %79, 5
  %rnr_retry78 = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 22
  %81 = ptrtoint ptr %rnr_retry78 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %rnr_retry78, align 2
  %ackto80 = getelementptr inbounds %struct.mthca_qp_param, ptr %11, i32 0, i32 2, i32 11, i32 4
  %82 = ptrtoint ptr %ackto80 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ackto80, align 1
  %84 = lshr i8 %83, 3
  %alt_timeout = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 24
  %85 = ptrtoint ptr %alt_timeout to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %alt_timeout, align 8
  br label %done

done:                                             ; preds = %if.end42, %if.then
  %mailbox.0 = phi ptr [ null, %if.then ], [ %call3, %if.end42 ]
  %86 = ptrtoint ptr %qp_attr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %qp_attr, align 8
  %cur_qp_state = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 1
  %88 = ptrtoint ptr %cur_qp_state to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %cur_qp_state, align 4
  %max = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 1
  %89 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %max, align 4
  %cap = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 9
  %91 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %cap, align 4
  %max85 = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 1
  %92 = ptrtoint ptr %max85 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max85, align 4
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 9, i32 1
  %94 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %max_recv_wr, align 4
  %max_gs = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 7
  %95 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %max_gs, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 9, i32 2
  %97 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %max_send_sge, align 4
  %max_gs90 = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 7
  %98 = ptrtoint ptr %max_gs90 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %max_gs90, align 4
  %max_recv_sge = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 9, i32 3
  %100 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %max_recv_sge, align 4
  %max_inline_data = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 15
  %101 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %max_inline_data, align 8
  %max_inline_data93 = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 9, i32 4
  %103 = ptrtoint ptr %max_inline_data93 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %max_inline_data93, align 4
  %cap94 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 6
  %104 = call ptr @memcpy(ptr %cap94, ptr %cap, i32 24)
  %sq_policy = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 13
  %105 = ptrtoint ptr %sq_policy to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sq_policy, align 8
  %sq_sig_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 7
  %107 = ptrtoint ptr %sq_sig_type to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %sq_sig_type, align 4
  br label %out_mailbox

out_mailbox:                                      ; preds = %done, %do.end
  %err.1 = phi i32 [ 0, %done ], [ %call8, %do.end ]
  %mailbox.1 = phi ptr [ %mailbox.0, %done ], [ %call3, %do.end ]
  tail call void @mthca_free_mailbox(ptr noundef %1, ptr noundef %mailbox.1) #10
  br label %out

out:                                              ; preds = %out_mailbox, %if.then5
  %err.2 = phi i32 [ %err.1, %out_mailbox ], [ %5, %if.then5 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mthca_alloc_mailbox(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_QUERY_QP(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @to_rdma_ah_attr(ptr noundef %dev, ptr nocapture noundef %ah_attr, ptr nocapture noundef readonly %path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %path to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %path, align 1
  %shr = lshr i32 %1, 24
  %conv = and i32 %shr, 3
  %2 = call ptr @memset(ptr %ah_attr, i32 0, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %limits = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %limits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %limits, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %4)
  %cmp4 = icmp sgt i32 %conv, %4
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 11
  %5 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %6, i32 %conv, i32 1, i32 2
  %7 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %8, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.end.rdma_ah_set_dlid.exit_crit_edge

if.end.rdma_ah_set_dlid.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rdma_ah_set_dlid.exit

if.end.i:                                         ; preds = %if.end
  %and.i13.i = and i32 %8, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.i14.not.i = icmp eq i32 %and.i13.i, 0
  br i1 %tobool.i14.not.i, label %if.end.i.rdma_ah_set_dlid.exit_crit_edge, label %if.then2.i

if.end.i.rdma_ah_set_dlid.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rdma_ah_set_dlid.exit

if.then2.i:                                       ; preds = %if.end.i
  %and.i17.i = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %cmp.i.not.i = icmp eq i32 %and.i17.i, 0
  %type69 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  br i1 %cmp.i.not.i, label %if.then.i60, label %if.then4.i

rdma_ah_set_dlid.exit:                            ; preds = %if.end.i.rdma_ah_set_dlid.exit_crit_edge, %if.end.rdma_ah_set_dlid.exit_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %if.end.i.rdma_ah_set_dlid.exit_crit_edge ], [ 2, %if.end.rdma_ah_set_dlid.exit_crit_edge ]
  %type62 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  %9 = ptrtoint ptr %type62 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i.ph, ptr %type62, align 4
  %port_num1.i63 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 3
  %10 = ptrtoint ptr %port_num1.i63 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %port_num1.i63, align 4
  %sl_tclass_flowlabel = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 8
  %11 = ptrtoint ptr %sl_tclass_flowlabel to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %sl_tclass_flowlabel, align 1
  %shr9 = lshr i32 %12, 28
  %conv10 = trunc i32 %shr9 to i8
  %sl1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 1
  %13 = ptrtoint ptr %sl1.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv10, ptr %sl1.i, align 8
  %g_mylmc = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 2
  br label %rdma_ah_set_path_bits.exit

if.then.i60:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %type69 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type69, align 4
  %port_num1.i70 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 3
  %15 = ptrtoint ptr %port_num1.i70 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %port_num1.i70, align 4
  %rlid71 = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 3
  %16 = ptrtoint ptr %rlid71 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %rlid71, align 1
  %18 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %17, ptr %18, align 8
  %sl_tclass_flowlabel75 = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 8
  %20 = ptrtoint ptr %sl_tclass_flowlabel75 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %sl_tclass_flowlabel75, align 1
  %shr976 = lshr i32 %21, 28
  %conv1077 = trunc i32 %shr976 to i8
  %sl1.i78 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 1
  %22 = ptrtoint ptr %sl1.i78 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv1077, ptr %sl1.i78, align 8
  %g_mylmc79 = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 2
  %23 = ptrtoint ptr %g_mylmc79 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %g_mylmc79, align 1
  %25 = and i8 %24, 127
  %src_path_bits1.i = getelementptr inbounds %struct.ib_ah_attr, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %src_path_bits1.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %src_path_bits1.i, align 2
  br label %rdma_ah_set_path_bits.exit

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %type69 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %type69, align 4
  %port_num1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 3
  %28 = ptrtoint ptr %port_num1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv, ptr %port_num1.i, align 4
  %rlid = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 3
  %29 = ptrtoint ptr %rlid to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %rlid, align 1
  %conv8 = zext i16 %30 to i32
  %31 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv8, ptr %31, align 8
  %sl_tclass_flowlabel86 = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 8
  %33 = ptrtoint ptr %sl_tclass_flowlabel86 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %sl_tclass_flowlabel86, align 1
  %shr987 = lshr i32 %34, 28
  %conv1088 = trunc i32 %shr987 to i8
  %sl1.i89 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 1
  %35 = ptrtoint ptr %sl1.i89 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv1088, ptr %sl1.i89, align 8
  %g_mylmc90 = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 2
  %36 = ptrtoint ptr %g_mylmc90 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %g_mylmc90, align 1
  %38 = and i8 %37, 127
  %src_path_bits5.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6, i32 0, i32 1
  %39 = ptrtoint ptr %src_path_bits5.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %src_path_bits5.i, align 4
  br label %rdma_ah_set_path_bits.exit

rdma_ah_set_path_bits.exit:                       ; preds = %if.then4.i, %if.then.i60, %rdma_ah_set_dlid.exit
  %g_mylmc83 = phi ptr [ %g_mylmc, %rdma_ah_set_dlid.exit ], [ %g_mylmc79, %if.then.i60 ], [ %g_mylmc90, %if.then4.i ]
  %sl_tclass_flowlabel81 = phi ptr [ %sl_tclass_flowlabel, %rdma_ah_set_dlid.exit ], [ %sl_tclass_flowlabel75, %if.then.i60 ], [ %sl_tclass_flowlabel86, %if.then4.i ]
  %static_rate = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 6
  %40 = ptrtoint ptr %static_rate to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %static_rate, align 1
  %42 = and i8 %41, 15
  %call18 = tail call i32 @mthca_rate_to_ib(ptr noundef %dev, i8 noundef zeroext %42, i32 noundef %conv) #10
  %conv19 = trunc i32 %call18 to i8
  %static_rate1.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 2
  %43 = ptrtoint ptr %static_rate1.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv19, ptr %static_rate1.i, align 1
  %44 = ptrtoint ptr %g_mylmc83 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %g_mylmc83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %tobool.not = icmp sgt i8 %45, -1
  br i1 %tobool.not, label %rdma_ah_set_path_bits.exit.cleanup_crit_edge, label %if.then23

rdma_ah_set_path_bits.exit.cleanup_crit_edge:     ; preds = %rdma_ah_set_path_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %rdma_ah_set_path_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %sl_tclass_flowlabel81 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %sl_tclass_flowlabel81, align 1
  %and25 = and i32 %47, 1048575
  %mgid_index = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 5
  %48 = ptrtoint ptr %mgid_index to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %mgid_index, align 1
  %gid_table_len = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 3
  %50 = ptrtoint ptr %gid_table_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %gid_table_len, align 4
  %52 = trunc i32 %51 to i8
  %53 = add i8 %52, -1
  %conv29 = and i8 %53, %49
  %hop_limit = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 7
  %54 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %hop_limit, align 1
  %shr30 = lshr i32 %47, 20
  %conv32 = trunc i32 %shr30 to i8
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 4
  %56 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %ah_flags.i, align 8
  %flow_label2.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 2
  %57 = ptrtoint ptr %flow_label2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and25, ptr %flow_label2.i, align 8
  %sgid_index3.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 3
  %58 = ptrtoint ptr %sgid_index3.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv29, ptr %sgid_index3.i, align 4
  %hop_limit4.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 4
  %59 = ptrtoint ptr %hop_limit4.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %55, ptr %hop_limit4.i, align 1
  %traffic_class5.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 5
  %60 = ptrtoint ptr %traffic_class5.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv32, ptr %traffic_class5.i, align 2
  %61 = ptrtoint ptr %ah_attr to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %ah_attr, align 8
  %rgid = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 9
  %dgid1.i = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 1
  %62 = call ptr @memcpy(ptr %dgid1.i, ptr %rgid, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %rdma_ah_set_path_bits.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_mailbox(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_modify_qp(ptr noundef %ibqp, ptr noundef readonly %attr, i32 noundef %attr_mask, ptr noundef readonly %udata) local_unnamed_addr #0 align 64 {
entry:
  %param.i.i = alloca %struct.mthca_init_ib_param, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibqp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %attr_mask)
  %tobool.not = icmp ult i32 %attr_mask, 2097152
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %and2 = and i32 %attr_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %cur_qp_state = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %cur_qp_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_qp_state, align 4
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sq = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %sq) #10
  %rq = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %rq) #10
  %state = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 7
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state, align 1
  %conv = zext i8 %5 to i32
  tail call void @_raw_spin_unlock(ptr noundef %rq) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %sq) #10
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then4
  %cur_state.0 = phi i32 [ %3, %if.then4 ], [ %conv, %if.else ]
  %and11 = and i32 %attr_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.cond.end_crit_edge, label %cond.true

if.end10.cond.end_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end10.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.true ], [ %cur_state.0, %if.end10.cond.end_crit_edge ]
  %qp_type = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 22
  %8 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qp_type, align 4
  %call13 = tail call zeroext i1 @ib_modify_qp_is_ok(i32 noundef %cur_state.0, i32 noundef %cond, i32 noundef %9, i32 noundef %attr_mask) #10
  br i1 %call13, label %if.end23, label %do.body

do.body:                                          ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %10 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool15.not = icmp eq i32 %10, 0
  br i1 %tobool15.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %transport = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 6
  %13 = ptrtoint ptr %transport to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %transport, align 2
  %conv19 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev18, ptr noundef nonnull @.str.7, i32 noundef %conv19, i32 noundef %cur_state.0, i32 noundef %cond, i32 noundef %attr_mask) #13
  br label %out

if.end23:                                         ; preds = %cond.end
  %and24 = and i32 %attr_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end44_crit_edge, label %land.lhs.true

if.end23.if.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end23
  %pkey_index = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 12
  %15 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pkey_index, align 8
  %conv26 = zext i16 %16 to i32
  %pkey_table_len = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 18, i32 4
  %17 = ptrtoint ptr %pkey_table_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pkey_table_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv26)
  %cmp.not = icmp sgt i32 %18, %conv26
  br i1 %cmp.not, label %land.lhs.true.if.end44_crit_edge, label %do.body29

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

do.body29:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %19 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool30.not = icmp eq i32 %19, 0
  br i1 %tobool30.not, label %do.body29.out_crit_edge, label %do.end34

do.body29.out_crit_edge:                          ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end34:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %pdev35 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %pdev35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev35, align 8
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %sub = add i32 %18, -1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev36, ptr noundef nonnull @.str.11, i32 noundef %conv26, i32 noundef %sub) #13
  br label %out

if.end44:                                         ; preds = %land.lhs.true.if.end44_crit_edge, %if.end23.if.end44_crit_edge
  %and45 = and i32 %attr_mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end67_crit_edge, label %land.lhs.true47

if.end44.if.end67_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

land.lhs.true47:                                  ; preds = %if.end44
  %port_num = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 19
  %22 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp48 = icmp eq i32 %23, 0
  br i1 %cmp48, label %land.lhs.true47.do.body55_crit_edge, label %lor.lhs.false

land.lhs.true47.do.body55_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55

lor.lhs.false:                                    ; preds = %land.lhs.true47
  %limits51 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 18
  %24 = ptrtoint ptr %limits51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %limits51, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp52 = icmp ugt i32 %23, %25
  br i1 %cmp52, label %lor.lhs.false.do.body55_crit_edge, label %lor.lhs.false.if.end67_crit_edge

lor.lhs.false.if.end67_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

lor.lhs.false.do.body55_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55

do.body55:                                        ; preds = %lor.lhs.false.do.body55_crit_edge, %land.lhs.true47.do.body55_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %26 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool56.not = icmp eq i32 %26, 0
  br i1 %tobool56.not, label %do.body55.out_crit_edge, label %do.end60

do.body55.out_crit_edge:                          ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end60:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  %pdev61 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %pdev61 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev61, align 8
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev62, ptr noundef nonnull @.str.14, i32 noundef %23) #13
  br label %out

if.end67:                                         ; preds = %lor.lhs.false.if.end67_crit_edge, %if.end44.if.end67_crit_edge
  %and68 = and i32 %attr_mask, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.if.end91_crit_edge, label %land.lhs.true70

if.end67.if.end91_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

land.lhs.true70:                                  ; preds = %if.end67
  %max_rd_atomic = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 16
  %29 = ptrtoint ptr %max_rd_atomic to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %max_rd_atomic, align 2
  %conv71 = zext i8 %30 to i32
  %max_qp_init_rdma = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 18, i32 11
  %31 = ptrtoint ptr %max_qp_init_rdma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_qp_init_rdma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv71)
  %cmp73 = icmp slt i32 %32, %conv71
  br i1 %cmp73, label %do.body76, label %land.lhs.true70.if.end91_crit_edge

land.lhs.true70.if.end91_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

do.body76:                                        ; preds = %land.lhs.true70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %33 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool77.not = icmp eq i32 %33, 0
  br i1 %tobool77.not, label %do.body76.out_crit_edge, label %do.end81

do.body76.out_crit_edge:                          ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end81:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #12
  %pdev82 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %pdev82 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev82, align 8
  %dev83 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev83, ptr noundef nonnull @.str.17, i32 noundef %conv71, i32 noundef %32) #13
  br label %out

if.end91:                                         ; preds = %land.lhs.true70.if.end91_crit_edge, %if.end67.if.end91_crit_edge
  %and92 = and i32 %attr_mask, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end91.if.end115_crit_edge, label %land.lhs.true94

if.end91.if.end115_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

land.lhs.true94:                                  ; preds = %if.end91
  %max_dest_rd_atomic = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 17
  %36 = ptrtoint ptr %max_dest_rd_atomic to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %max_dest_rd_atomic, align 1
  %conv95 = zext i8 %37 to i32
  %rdb_shift = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 25, i32 2
  %38 = ptrtoint ptr %rdb_shift to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rdb_shift, align 4
  %shl = shl nuw i32 1, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %conv95)
  %cmp96 = icmp slt i32 %shl, %conv95
  br i1 %cmp96, label %do.body99, label %land.lhs.true94.if.end115_crit_edge

land.lhs.true94.if.end115_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

do.body99:                                        ; preds = %land.lhs.true94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %40 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool100.not = icmp eq i32 %40, 0
  br i1 %tobool100.not, label %do.body99.out_crit_edge, label %do.end104

do.body99.out_crit_edge:                          ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end104:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #12
  %pdev105 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %pdev105 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev105, align 8
  %dev106 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev106, ptr noundef nonnull @.str.20, i32 noundef %conv95, i32 noundef %shl) #13
  br label %out

if.end115:                                        ; preds = %land.lhs.true94.if.end115_crit_edge, %if.end91.if.end115_crit_edge
  %43 = or i32 %cond, %cur_state.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %if.end115.out_crit_edge, label %if.end122

if.end115.out_crit_edge:                          ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end122:                                        ; preds = %if.end115
  %45 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ibqp, align 4
  %tobool.not.i = icmp eq ptr %udata, null
  br i1 %tobool.not.i, label %if.end122.cond.end.i_crit_edge, label %cond.true.i

if.end122.cond.end.i_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  %context3.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %47 = ptrtoint ptr %context3.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %context3.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end122.cond.end.i_crit_edge
  %cond.i = phi ptr [ %48, %cond.true.i ], [ null, %if.end122.cond.end.i_crit_edge ]
  %call4.i = tail call ptr @mthca_alloc_mailbox(ptr noundef %46, i32 noundef 3264) #10
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %call4.i to i32
  br label %out

if.end.i:                                         ; preds = %cond.end.i
  %buf.i = getelementptr inbounds %struct.mthca_mailbox, ptr %call4.i, i32 0, i32 1
  %50 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buf.i, align 4
  %context7.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2
  %52 = call ptr @memset(ptr %51, i32 0, i32 512)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cond)
  %53 = icmp ult i32 %cond, 7
  br i1 %53, label %switch.lookup, label %if.end.i.to_mthca_state.exit.i_crit_edge

if.end.i.to_mthca_state.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %to_mthca_state.exit.i

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.mthca_modify_qp, i32 0, i32 %cond
  %54 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %54)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %to_mthca_state.exit.i

to_mthca_state.exit.i:                            ; preds = %switch.lookup, %if.end.i.to_mthca_state.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ -268435456, %if.end.i.to_mthca_state.exit.i_crit_edge ]
  %transport.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 6
  %55 = ptrtoint ptr %transport.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %transport.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %56)
  %57 = icmp ult i8 %56, 6
  br i1 %57, label %switch.lookup180, label %to_mthca_state.exit.i.to_mthca_st.exit.i_crit_edge

to_mthca_state.exit.i.to_mthca_st.exit.i_crit_edge: ; preds = %to_mthca_state.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %to_mthca_st.exit.i

switch.lookup180:                                 ; preds = %to_mthca_state.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = sext i8 %56 to i32
  %switch.gep181 = getelementptr inbounds [6 x i32], ptr @switch.table.mthca_modify_qp.65, i32 0, i32 %58
  %59 = ptrtoint ptr %switch.gep181 to i32
  call void @__asan_load4_noabort(i32 %59)
  %switch.load182 = load i32, ptr %switch.gep181, align 4
  br label %to_mthca_st.exit.i

to_mthca_st.exit.i:                               ; preds = %switch.lookup180, %to_mthca_state.exit.i.to_mthca_st.exit.i_crit_edge
  %retval.0.i827.i = phi i32 [ %switch.load182, %switch.lookup180 ], [ -65536, %to_mthca_state.exit.i.to_mthca_st.exit.i_crit_edge ]
  %or.i = or i32 %retval.0.i827.i, %retval.0.i.i
  %or12.i = or i32 %or.i, 256
  %60 = ptrtoint ptr %context7.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %or12.i, ptr %context7.i, align 1
  %and.i = and i32 %attr_mask, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %to_mthca_st.exit.i.if.end26.sink.split.i_crit_edge, label %if.else.i

to_mthca_st.exit.i.if.end26.sink.split.i_crit_edge: ; preds = %to_mthca_st.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.sink.split.i

if.else.i:                                        ; preds = %to_mthca_st.exit.i
  %61 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %51, align 1
  %or17.i = or i32 %62, 1024
  store i32 %or17.i, ptr %51, align 1
  %path_mig_state.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 3
  %63 = ptrtoint ptr %path_mig_state.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %path_mig_state.i, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values)
  switch i32 %64, label %if.else.i.if.end26.i_crit_edge [
    i32 0, label %if.else.i.if.end26.sink.split.i_crit_edge
    i32 1, label %sw.bb20.i
  ]

if.else.i.if.end26.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.sink.split.i

if.else.i.if.end26.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

sw.bb20.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.sink.split.i

if.end26.sink.split.i:                            ; preds = %sw.bb20.i, %if.else.i.if.end26.sink.split.i_crit_edge, %to_mthca_st.exit.i.if.end26.sink.split.i_crit_edge
  %.sink878.i = phi i32 [ 2304, %sw.bb20.i ], [ 6400, %to_mthca_st.exit.i.if.end26.sink.split.i_crit_edge ], [ 6400, %if.else.i.if.end26.sink.split.i_crit_edge ]
  %or19.i = or i32 %.sink878.i, %or.i
  %66 = ptrtoint ptr %context7.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %or19.i, ptr %context7.i, align 1
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end26.sink.split.i, %if.else.i.if.end26.i_crit_edge
  %67 = ptrtoint ptr %transport.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %transport.i, align 2
  %69 = zext i8 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %68, label %if.else35.i [
    i8 5, label %if.end26.i.if.end61.sink.split.i_crit_edge
    i8 2, label %if.end26.i.if.end61.sink.split.i_crit_edge183
  ]

if.end26.i.if.end61.sink.split.i_crit_edge183:    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61.sink.split.i

if.end26.i.if.end61.sink.split.i_crit_edge:       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61.sink.split.i

if.else35.i:                                      ; preds = %if.end26.i
  %and36.i = and i32 %attr_mask, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.else35.i.if.end61.i_crit_edge, label %if.then38.i

if.else35.i.if.end61.i_crit_edge:                 ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61.i

if.then38.i:                                      ; preds = %if.else35.i
  %path_mtu.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 2
  %70 = ptrtoint ptr %path_mtu.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %path_mtu.i, align 8
  %72 = add i32 %71, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %72)
  %73 = icmp ult i32 %72, -4
  br i1 %73, label %do.body.i, label %if.end54.i

do.body.i:                                        ; preds = %if.then38.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %74 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool46.not.i = icmp eq i32 %74, 0
  br i1 %tobool46.not.i, label %do.body.i.out_mailbox.i_crit_edge, label %do.end.i

do.body.i.out_mailbox.i_crit_edge:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mailbox.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i = getelementptr inbounds %struct.mthca_dev, ptr %46, i32 0, i32 1
  %75 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev.i, align 8
  %dev49.i = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev49.i, ptr noundef nonnull @.str.42, i32 noundef %71) #13
  br label %out_mailbox.i

if.end54.i:                                       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  %.tr.i = trunc i32 %71 to i8
  %77 = shl nuw i8 %.tr.i, 5
  %conv58.i = or i8 %77, 31
  br label %if.end61.sink.split.i

if.end61.sink.split.i:                            ; preds = %if.end54.i, %if.end26.i.if.end61.sink.split.i_crit_edge, %if.end26.i.if.end61.sink.split.i_crit_edge183
  %conv58.sink.i = phi i8 [ %conv58.i, %if.end54.i ], [ -117, %if.end26.i.if.end61.sink.split.i_crit_edge ], [ -117, %if.end26.i.if.end61.sink.split.i_crit_edge183 ]
  %mtu_msgmax59.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 2
  %78 = ptrtoint ptr %mtu_msgmax59.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv58.sink.i, ptr %mtu_msgmax59.i, align 1
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.end61.sink.split.i, %if.else35.i.if.end61.i_crit_edge
  %mthca_flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %46, i32 0, i32 3
  %79 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i.i = and i32 %80, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool63.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool63.not.i, label %if.end61.i.if.end131.i_crit_edge, label %if.then64.i

if.end61.i.if.end131.i_crit_edge:                 ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131.i

if.then64.i:                                      ; preds = %if.end61.i
  %max.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 1
  %81 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool65.not.i = icmp eq i32 %82, 0
  br i1 %tobool65.not.i, label %if.then64.i.if.end89.i_crit_edge, label %cond.end85.i

if.then64.i.if.end89.i_crit_edge:                 ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89.i

cond.end85.i:                                     ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = tail call i32 @llvm.ctlz.i32(i32 %82, i1 true) #10, !range !126
  %84 = trunc i32 %83 to i8
  %cond86.tr.i = xor i8 %84, -1
  %conv88.i = shl i8 %cond86.tr.i, 3
  %rq_size_stride.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 3
  %85 = ptrtoint ptr %rq_size_stride.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv88.i, ptr %rq_size_stride.i, align 1
  br label %if.end89.i

if.end89.i:                                       ; preds = %cond.end85.i, %if.then64.i.if.end89.i_crit_edge
  %wqe_shift.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 8
  %86 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %wqe_shift.i, align 8
  %rq_size_stride92.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 3
  %88 = ptrtoint ptr %rq_size_stride92.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %rq_size_stride92.i, align 1
  %90 = trunc i32 %87 to i8
  %91 = add i8 %90, -4
  %conv95.i = or i8 %91, %89
  store i8 %conv95.i, ptr %rq_size_stride92.i, align 1
  %max96.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 1
  %92 = ptrtoint ptr %max96.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max96.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool97.not.i = icmp eq i32 %93, 0
  br i1 %tobool97.not.i, label %if.end89.i.if.end123.i_crit_edge, label %cond.end119.i

if.end89.i.if.end123.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123.i

cond.end119.i:                                    ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = tail call i32 @llvm.ctlz.i32(i32 %93, i1 true) #10, !range !126
  %95 = trunc i32 %94 to i8
  %cond120.tr.i = xor i8 %95, -1
  %conv122.i = shl i8 %cond120.tr.i, 3
  %sq_size_stride.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 4
  %96 = ptrtoint ptr %sq_size_stride.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv122.i, ptr %sq_size_stride.i, align 1
  br label %if.end123.i

if.end123.i:                                      ; preds = %cond.end119.i, %if.end89.i.if.end123.i_crit_edge
  %wqe_shift125.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 8
  %97 = ptrtoint ptr %wqe_shift125.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %wqe_shift125.i, align 4
  %sq_size_stride127.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 4
  %99 = ptrtoint ptr %sq_size_stride127.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %sq_size_stride127.i, align 1
  %101 = trunc i32 %98 to i8
  %102 = add i8 %101, -4
  %conv130.i = or i8 %102, %100
  store i8 %conv130.i, ptr %sq_size_stride127.i, align 1
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.end123.i, %if.end61.i.if.end131.i_crit_edge
  %uobject.i = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 14
  %103 = ptrtoint ptr %uobject.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %uobject.i, align 8
  %tobool133.not.i = icmp eq ptr %104, null
  %index136.i = getelementptr inbounds %struct.mthca_dev, ptr %46, i32 0, i32 29, i32 1
  %index.i = getelementptr inbounds %struct.mthca_ucontext, ptr %cond.i, i32 0, i32 1, i32 1
  %.sink.in.i = select i1 %tobool133.not.i, ptr %index136.i, ptr %index.i
  %105 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %106 = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 6
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 4)
  store i32 %.sink.i, ptr %106, align 1
  %qpn.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 2
  %108 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %qpn.i, align 8
  %local_qpn.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 7
  %110 = ptrtoint ptr %local_qpn.i to i32
  call void @__asan_storeN_noabort(i32 %110, i32 4)
  store i32 %109, ptr %local_qpn.i, align 1
  %and139.i = and i32 %attr_mask, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139.i)
  %tobool140.not.i = icmp eq i32 %and139.i, 0
  br i1 %tobool140.not.i, label %if.end131.i.if.end142.i_crit_edge, label %if.then141.i

if.end131.i.if.end142.i_crit_edge:                ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142.i

if.then141.i:                                     ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #12
  %dest_qp_num.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 7
  %111 = ptrtoint ptr %dest_qp_num.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dest_qp_num.i, align 4
  %remote_qpn.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 8
  %113 = ptrtoint ptr %remote_qpn.i to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %112, ptr %remote_qpn.i, align 1
  br label %if.end142.i

if.end142.i:                                      ; preds = %if.then141.i, %if.end131.i.if.end142.i_crit_edge
  %114 = ptrtoint ptr %transport.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %transport.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %115)
  %cmp145.i = icmp eq i8 %115, 5
  br i1 %cmp145.i, label %if.then147.i, label %if.else151.i

if.then147.i:                                     ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #12
  %port.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 4
  %116 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %port.i, align 8
  %conv148.i = zext i8 %117 to i32
  %shl149.i = shl nuw i32 %conv148.i, 24
  %pri_path.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 10
  %118 = ptrtoint ptr %pri_path.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %pri_path.i, align 1
  br label %if.end162.sink.split.i

if.else151.i:                                     ; preds = %if.end142.i
  br i1 %tobool46.not, label %if.else151.i.if.end162.i_crit_edge, label %if.then154.i

if.else151.i.if.end162.i_crit_edge:               ; preds = %if.else151.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end162.i

if.then154.i:                                     ; preds = %if.else151.i
  call void @__sanitizer_cov_trace_pc() #12
  %port_num.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 19
  %120 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %port_num.i, align 4
  %shl155.i = shl i32 %121, 24
  %pri_path156.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 10
  %122 = ptrtoint ptr %pri_path156.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %pri_path156.i, align 1
  %or158.i = or i32 %123, %shl155.i
  store i32 %or158.i, ptr %pri_path156.i, align 1
  %124 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %51, align 1
  br label %if.end162.sink.split.i

if.end162.sink.split.i:                           ; preds = %if.then154.i, %if.then147.i
  %.sink881.i = phi i32 [ 2048, %if.then154.i ], [ %119, %if.then147.i ]
  %.sink880.i = phi i32 [ %125, %if.then154.i ], [ %shl149.i, %if.then147.i ]
  %.sink879.i = phi ptr [ %51, %if.then154.i ], [ %pri_path.i, %if.then147.i ]
  %or160.i = or i32 %.sink880.i, %.sink881.i
  %126 = ptrtoint ptr %.sink879.i to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 %or160.i, ptr %.sink879.i, align 1
  br label %if.end162.i

if.end162.i:                                      ; preds = %if.end162.sink.split.i, %if.else151.i.if.end162.i_crit_edge
  br i1 %tobool25.not, label %if.end162.i.if.end172.i_crit_edge, label %if.then165.i

if.end162.i.if.end172.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end172.i

if.then165.i:                                     ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #12
  %pkey_index.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 12
  %127 = ptrtoint ptr %pkey_index.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %pkey_index.i, align 8
  %conv166.i = zext i16 %128 to i32
  %pri_path167.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 10
  %129 = ptrtoint ptr %pri_path167.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %pri_path167.i, align 1
  %or169.i = or i32 %130, %conv166.i
  store i32 %or169.i, ptr %pri_path167.i, align 1
  %131 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %51, align 1
  %or171.i = or i32 %132, 16
  store i32 %or171.i, ptr %51, align 1
  br label %if.end172.i

if.end172.i:                                      ; preds = %if.then165.i, %if.end162.i.if.end172.i_crit_edge
  %and173.i = and i32 %attr_mask, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173.i)
  %tobool174.not.i = icmp eq i32 %and173.i, 0
  br i1 %tobool174.not.i, label %if.end172.i.if.end184.i_crit_edge, label %if.then175.i

if.end172.i.if.end184.i_crit_edge:                ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end184.i

if.then175.i:                                     ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #12
  %rnr_retry.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 22
  %133 = ptrtoint ptr %rnr_retry.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %rnr_retry.i, align 2
  %shl177.i = shl i8 %134, 5
  %rnr_retry180.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 10, i32 1
  %135 = ptrtoint ptr %rnr_retry180.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %shl177.i, ptr %rnr_retry180.i, align 1
  %rnr_retry181.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 11, i32 1
  %136 = ptrtoint ptr %rnr_retry181.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %shl177.i, ptr %rnr_retry181.i, align 1
  %137 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %51, align 1
  %or183.i = or i32 %138, 40960
  store i32 %or183.i, ptr %51, align 1
  br label %if.end184.i

if.end184.i:                                      ; preds = %if.then175.i, %if.end172.i.if.end184.i_crit_edge
  %and185.i = and i32 %attr_mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185.i)
  %tobool186.not.i = icmp eq i32 %and185.i, 0
  br i1 %tobool186.not.i, label %if.end184.i.if.end205.i_crit_edge, label %if.then187.i

if.end184.i.if.end205.i_crit_edge:                ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end205.i

if.then187.i:                                     ; preds = %if.end184.i
  %ah_attr.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 10
  %pri_path188.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 10
  br i1 %tobool46.not, label %cond.false193.i, label %cond.true191.i

cond.true191.i:                                   ; preds = %if.then187.i
  call void @__sanitizer_cov_trace_pc() #12
  %port_num192.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 19
  %139 = ptrtoint ptr %port_num192.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %port_num192.i, align 4
  br label %cond.end196.i

cond.false193.i:                                  ; preds = %if.then187.i
  call void @__sanitizer_cov_trace_pc() #12
  %port194.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 4
  %141 = ptrtoint ptr %port194.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %port194.i, align 8
  %conv195.i = zext i8 %142 to i32
  br label %cond.end196.i

cond.end196.i:                                    ; preds = %cond.false193.i, %cond.true191.i
  %cond197.i = phi i32 [ %140, %cond.true191.i ], [ %conv195.i, %cond.false193.i ]
  %conv198.i = trunc i32 %cond197.i to i8
  %call199.i = tail call fastcc i32 @mthca_path_set(ptr noundef %46, ptr noundef %ah_attr.i, ptr noundef %pri_path188.i, i8 noundef zeroext %conv198.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199.i)
  %tobool200.not.i = icmp eq i32 %call199.i, 0
  br i1 %tobool200.not.i, label %if.end202.i, label %cond.end196.i.out_mailbox.i_crit_edge

cond.end196.i.out_mailbox.i_crit_edge:            ; preds = %cond.end196.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mailbox.i

if.end202.i:                                      ; preds = %cond.end196.i
  call void @__sanitizer_cov_trace_pc() #12
  %143 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %51, align 1
  %or204.i = or i32 %144, 128
  store i32 %or204.i, ptr %51, align 1
  br label %if.end205.i

if.end205.i:                                      ; preds = %if.end202.i, %if.end184.i.if.end205.i_crit_edge
  %145 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %qp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %146)
  %cmp206.i = icmp eq i32 %146, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cur_state.0)
  %cmp208.i = icmp eq i32 %cur_state.0, 1
  %or.cond814.i = and i1 %cmp208.i, %cmp206.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond)
  %cmp211.i = icmp eq i32 %cond, 2
  %or.cond815.i = and i1 %cmp211.i, %or.cond814.i
  br i1 %or.cond815.i, label %if.then213.i, label %if.end205.i.if.end231.i_crit_edge

if.end205.i.if.end231.i_crit_edge:                ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231.i

if.then213.i:                                     ; preds = %if.end205.i
  %147 = ptrtoint ptr %uobject.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %uobject.i, align 4
  %tobool215.not.i = icmp eq ptr %148, null
  %conv217.i = select i1 %tobool215.not.i, i8 1, i8 2
  %149 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i833.i = and i32 %150, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i833.i)
  %tobool219.not.i = icmp eq i32 %and.i833.i, 0
  br i1 %tobool219.not.i, label %if.else225.i, label %if.then220.i

if.then220.i:                                     ; preds = %if.then213.i
  call void @__sanitizer_cov_trace_pc() #12
  %rlkey_arbel_sched_queue.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 5
  %151 = ptrtoint ptr %rlkey_arbel_sched_queue.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %rlkey_arbel_sched_queue.i, align 1
  %or223813.i = or i8 %152, %conv217.i
  store i8 %or223813.i, ptr %rlkey_arbel_sched_queue.i, align 1
  br label %if.end228.i

if.else225.i:                                     ; preds = %if.then213.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv226.i = zext i8 %conv217.i to i32
  %tavor_sched_queue.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 1
  %153 = ptrtoint ptr %tavor_sched_queue.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %tavor_sched_queue.i, align 1
  %or227.i = or i32 %154, %conv226.i
  store i32 %or227.i, ptr %tavor_sched_queue.i, align 1
  br label %if.end228.i

if.end228.i:                                      ; preds = %if.else225.i, %if.then220.i
  %155 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %155, i32 4)
  %156 = load i32, ptr %51, align 1
  %or230.i = or i32 %156, 65536
  store i32 %or230.i, ptr %51, align 1
  br label %if.end231.i

if.end231.i:                                      ; preds = %if.end228.i, %if.end205.i.if.end231.i_crit_edge
  %and232.i = and i32 %attr_mask, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232.i)
  %tobool233.not.i = icmp eq i32 %and232.i, 0
  br i1 %tobool233.not.i, label %if.end231.i.if.end241.i_crit_edge, label %if.then234.i

if.end231.i.if.end241.i_crit_edge:                ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end241.i

if.then234.i:                                     ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #12
  %timeout.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 20
  %157 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %timeout.i, align 8
  %shl236.i = shl i8 %158, 3
  %ackto.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 10, i32 4
  %159 = ptrtoint ptr %ackto.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %shl236.i, ptr %ackto.i, align 1
  %160 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 4)
  %161 = load i32, ptr %51, align 1
  %or240.i = or i32 %161, 16384
  store i32 %or240.i, ptr %51, align 1
  br label %if.end241.i

if.end241.i:                                      ; preds = %if.then234.i, %if.end231.i.if.end241.i_crit_edge
  %and242.i = and i32 %attr_mask, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242.i)
  %tobool243.not.i = icmp eq i32 %and242.i, 0
  br i1 %tobool243.not.i, label %if.end241.i.if.end310.i_crit_edge, label %if.then244.i

if.end241.i.if.end310.i_crit_edge:                ; preds = %if.end241.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end310.i

if.then244.i:                                     ; preds = %if.end241.i
  %alt_pkey_index.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 13
  %162 = ptrtoint ptr %alt_pkey_index.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %alt_pkey_index.i, align 2
  %conv245.i = zext i16 %163 to i32
  %limits.i = getelementptr inbounds %struct.mthca_dev, ptr %46, i32 0, i32 18
  %pkey_table_len.i = getelementptr inbounds %struct.mthca_dev, ptr %46, i32 0, i32 18, i32 4
  %164 = ptrtoint ptr %pkey_table_len.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %pkey_table_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %conv245.i)
  %cmp246.not.i = icmp sgt i32 %165, %conv245.i
  br i1 %cmp246.not.i, label %if.end265.i, label %do.body249.i

do.body249.i:                                     ; preds = %if.then244.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %166 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool250.not.i = icmp eq i32 %166, 0
  br i1 %tobool250.not.i, label %do.body249.i.out_mailbox.i_crit_edge, label %do.end254.i

do.body249.i.out_mailbox.i_crit_edge:             ; preds = %do.body249.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mailbox.i

do.end254.i:                                      ; preds = %do.body249.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev255.i = getelementptr inbounds %struct.mthca_dev, ptr %46, i32 0, i32 1
  %167 = ptrtoint ptr %pdev255.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pdev255.i, align 8
  %dev256.i = getelementptr inbounds %struct.pci_dev, ptr %168, i32 0, i32 44
  %sub261.i = add i32 %165, -1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev256.i, ptr noundef nonnull @.str.45, i32 noundef %conv245.i, i32 noundef %sub261.i) #13
  br label %out_mailbox.i

if.end265.i:                                      ; preds = %if.then244.i
  %alt_port_num.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 23
  %169 = ptrtoint ptr %alt_port_num.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %alt_port_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp266.i = icmp eq i32 %170, 0
  br i1 %cmp266.i, label %if.end265.i.do.body274.i_crit_edge, label %lor.lhs.false268.i

if.end265.i.do.body274.i_crit_edge:               ; preds = %if.end265.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body274.i

lor.lhs.false268.i:                               ; preds = %if.end265.i
  %171 = ptrtoint ptr %limits.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %limits.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %172)
  %cmp271.i = icmp ugt i32 %170, %172
  br i1 %cmp271.i, label %lor.lhs.false268.i.do.body274.i_crit_edge, label %if.end286.i

lor.lhs.false268.i.do.body274.i_crit_edge:        ; preds = %lor.lhs.false268.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body274.i

do.body274.i:                                     ; preds = %lor.lhs.false268.i.do.body274.i_crit_edge, %if.end265.i.do.body274.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %173 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool275.not.i = icmp eq i32 %173, 0
  br i1 %tobool275.not.i, label %do.body274.i.out_mailbox.i_crit_edge, label %do.end279.i

do.body274.i.out_mailbox.i_crit_edge:             ; preds = %do.body274.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mailbox.i

do.end279.i:                                      ; preds = %do.body274.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev280.i = getelementptr inbounds %struct.mthca_dev, ptr %46, i32 0, i32 1
  %174 = ptrtoint ptr %pdev280.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pdev280.i, align 8
  %dev281.i = getelementptr inbounds %struct.pci_dev, ptr %175, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev281.i, ptr noundef nonnull @.str.48, i32 noundef %170) #13
  br label %out_mailbox.i

if.end286.i:                                      ; preds = %lor.lhs.false268.i
  %alt_ah_attr.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 11
  %alt_path287.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 11
  %port_num.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 11, i32 3
  %176 = ptrtoint ptr %port_num.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %port_num.i.i, align 4
  %conv290.i = trunc i32 %177 to i8
  %call291.i = tail call fastcc i32 @mthca_path_set(ptr noundef %46, ptr noundef %alt_ah_attr.i, ptr noundef %alt_path287.i, i8 noundef zeroext %conv290.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call291.i)
  %tobool292.not.i = icmp eq i32 %call291.i, 0
  br i1 %tobool292.not.i, label %if.end294.i, label %if.end286.i.out_mailbox.i_crit_edge

if.end286.i.out_mailbox.i_crit_edge:              ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mailbox.i

if.end294.i:                                      ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #12
  %178 = ptrtoint ptr %alt_pkey_index.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %alt_pkey_index.i, align 2
  %conv296.i = zext i16 %179 to i32
  %180 = ptrtoint ptr %alt_port_num.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %alt_port_num.i, align 4
  %shl298.i = shl i32 %181, 24
  %or299.i = or i32 %shl298.i, %conv296.i
  %182 = ptrtoint ptr %alt_path287.i to i32
  call void @__asan_loadN_noabort(i32 %182, i32 4)
  %183 = load i32, ptr %alt_path287.i, align 1
  %or302.i = or i32 %or299.i, %183
  store i32 %or302.i, ptr %alt_path287.i, align 1
  %alt_timeout.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 24
  %184 = ptrtoint ptr %alt_timeout.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %alt_timeout.i, align 8
  %shl304.i = shl i8 %185, 3
  %ackto307.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 11, i32 4
  %186 = ptrtoint ptr %ackto307.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %shl304.i, ptr %ackto307.i, align 1
  %187 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %187, i32 4)
  %188 = load i32, ptr %51, align 1
  %or309.i = or i32 %188, 1
  store i32 %or309.i, ptr %51, align 1
  br label %if.end310.i

if.end310.i:                                      ; preds = %if.end294.i, %if.end241.i.if.end310.i_crit_edge
  %pd.i = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 1
  %189 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %pd.i, align 4
  %pd_num.i = getelementptr inbounds %struct.mthca_pd, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %pd_num.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %pd_num.i, align 8
  %pd312.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 13
  %193 = ptrtoint ptr %pd312.i to i32
  call void @__asan_storeN_noabort(i32 %193, i32 4)
  store i32 %192, ptr %pd312.i, align 1
  %lkey.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 10, i32 0, i32 2
  %194 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %lkey.i, align 8
  %wqe_lkey.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 15
  %196 = ptrtoint ptr %wqe_lkey.i to i32
  call void @__asan_storeN_noabort(i32 %196, i32 4)
  store i32 %195, ptr %wqe_lkey.i, align 1
  %params1.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 16
  %197 = ptrtoint ptr %params1.i to i32
  call void @__asan_storeN_noabort(i32 %197, i32 4)
  store i32 -1459601408, ptr %params1.i, align 1
  %sq_policy.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 13
  %198 = ptrtoint ptr %sq_policy.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %sq_policy.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %cmp313.i = icmp eq i32 %199, 0
  %spec.store.select.i = select i1 %cmp313.i, i32 -1459601400, i32 -1459601408
  %200 = ptrtoint ptr %params1.i to i32
  call void @__asan_storeN_noabort(i32 %200, i32 4)
  store i32 %spec.store.select.i, ptr %params1.i, align 1
  %and319.i = and i32 %attr_mask, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and319.i)
  %tobool320.not.i = icmp eq i32 %and319.i, 0
  br i1 %tobool320.not.i, label %if.end310.i.if.end328.i_crit_edge, label %if.then321.i

if.end310.i.if.end328.i_crit_edge:                ; preds = %if.end310.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end328.i

if.then321.i:                                     ; preds = %if.end310.i
  call void @__sanitizer_cov_trace_pc() #12
  %retry_cnt.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 21
  %201 = ptrtoint ptr %retry_cnt.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %retry_cnt.i, align 1
  %conv322.i = zext i8 %202 to i32
  %shl323.i = shl nuw nsw i32 %conv322.i, 16
  %or325.i = or i32 %shl323.i, %spec.store.select.i
  %203 = ptrtoint ptr %params1.i to i32
  call void @__asan_storeN_noabort(i32 %203, i32 4)
  store i32 %or325.i, ptr %params1.i, align 1
  %204 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %204, i32 4)
  %205 = load i32, ptr %51, align 1
  %or327.i = or i32 %205, 4096
  store i32 %or327.i, ptr %51, align 1
  br label %if.end328.i

if.end328.i:                                      ; preds = %if.then321.i, %if.end310.i.if.end328.i_crit_edge
  br i1 %tobool69.not, label %if.end328.i.if.end346.i_crit_edge, label %if.then331.i

if.end328.i.if.end346.i_crit_edge:                ; preds = %if.end328.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end346.i

if.then331.i:                                     ; preds = %if.end328.i
  %max_rd_atomic.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 16
  %206 = ptrtoint ptr %max_rd_atomic.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %max_rd_atomic.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool332.not.i = icmp eq i8 %207, 0
  br i1 %tobool332.not.i, label %if.then331.i.if.end343.i_crit_edge, label %if.then333.i

if.then331.i.if.end343.i_crit_edge:               ; preds = %if.then331.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end343.i

if.then333.i:                                     ; preds = %if.then331.i
  call void @__sanitizer_cov_trace_pc() #12
  %208 = ptrtoint ptr %params1.i to i32
  call void @__asan_loadN_noabort(i32 %208, i32 4)
  %209 = load i32, ptr %params1.i, align 1
  %or335.i = or i32 %209, 40960
  store i32 %or335.i, ptr %params1.i, align 1
  %210 = ptrtoint ptr %max_rd_atomic.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %max_rd_atomic.i, align 2
  %conv337.i = zext i8 %211 to i32
  %sub338.i = add nsw i32 %conv337.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub338.i)
  %tobool.not.i.i = icmp eq i32 %sub338.i, 0
  %212 = tail call i32 @llvm.ctlz.i32(i32 %sub338.i, i1 true) #10, !range !126
  %.neg.i = mul nsw i32 %212, -2097152
  %sub.i.op.i = add nsw i32 %.neg.i, 67108864
  %shl340.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.op.i
  %or342.i = or i32 %shl340.i, %or335.i
  %213 = ptrtoint ptr %params1.i to i32
  call void @__asan_storeN_noabort(i32 %213, i32 4)
  store i32 %or342.i, ptr %params1.i, align 1
  br label %if.end343.i

if.end343.i:                                      ; preds = %if.then333.i, %if.then331.i.if.end343.i_crit_edge
  %214 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %214, i32 4)
  %215 = load i32, ptr %51, align 1
  %or345.i = or i32 %215, 256
  store i32 %or345.i, ptr %51, align 1
  br label %if.end346.i

if.end346.i:                                      ; preds = %if.end343.i, %if.end328.i.if.end346.i_crit_edge
  %and347.i = and i32 %attr_mask, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and347.i)
  %tobool348.not.i = icmp eq i32 %and347.i, 0
  br i1 %tobool348.not.i, label %if.end346.i.if.end350.i_crit_edge, label %if.then349.i

if.end346.i.if.end350.i_crit_edge:                ; preds = %if.end346.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end350.i

if.then349.i:                                     ; preds = %if.end346.i
  call void @__sanitizer_cov_trace_pc() #12
  %sq_psn.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 6
  %216 = ptrtoint ptr %sq_psn.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %sq_psn.i, align 8
  %next_send_psn.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 18
  %218 = ptrtoint ptr %next_send_psn.i to i32
  call void @__asan_storeN_noabort(i32 %218, i32 4)
  store i32 %217, ptr %next_send_psn.i, align 1
  br label %if.end350.i

if.end350.i:                                      ; preds = %if.then349.i, %if.end346.i.if.end350.i_crit_edge
  %send_cq.i = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 2
  %219 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %send_cq.i, align 4
  %cqn.i = getelementptr inbounds %struct.mthca_cq, ptr %220, i32 0, i32 3
  %221 = ptrtoint ptr %cqn.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %cqn.i, align 8
  %cqn_snd.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 19
  %223 = ptrtoint ptr %cqn_snd.i to i32
  call void @__asan_storeN_noabort(i32 %223, i32 4)
  store i32 %222, ptr %cqn_snd.i, align 1
  %224 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i835.i = and i32 %225, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i835.i)
  %tobool353.not.i = icmp eq i32 %and.i835.i, 0
  br i1 %tobool353.not.i, label %if.end350.i.if.end356.i_crit_edge, label %if.then354.i

if.end350.i.if.end356.i_crit_edge:                ; preds = %if.end350.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end356.i

if.then354.i:                                     ; preds = %if.end350.i
  call void @__sanitizer_cov_trace_pc() #12
  %send_wqe_offset.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 14
  %226 = ptrtoint ptr %send_wqe_offset.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %send_wqe_offset.i, align 4
  %snd_wqe_base_l.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 20
  %228 = ptrtoint ptr %snd_wqe_base_l.i to i32
  call void @__asan_storeN_noabort(i32 %228, i32 4)
  store i32 %227, ptr %snd_wqe_base_l.i, align 1
  %db_index.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 9
  %229 = ptrtoint ptr %db_index.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %db_index.i, align 4
  %snd_db_index.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 21
  %231 = ptrtoint ptr %snd_db_index.i to i32
  call void @__asan_storeN_noabort(i32 %231, i32 4)
  store i32 %230, ptr %snd_db_index.i, align 1
  br label %if.end356.i

if.end356.i:                                      ; preds = %if.then354.i, %if.end350.i.if.end356.i_crit_edge
  br i1 %tobool93.not, label %if.end356.i.if.end371.i_crit_edge, label %if.then359.i

if.end356.i.if.end371.i_crit_edge:                ; preds = %if.end356.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end371.i

if.then359.i:                                     ; preds = %if.end356.i
  %max_dest_rd_atomic.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 17
  %232 = ptrtoint ptr %max_dest_rd_atomic.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %max_dest_rd_atomic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool360.not.i = icmp eq i8 %233, 0
  br i1 %tobool360.not.i, label %if.then359.i.if.end368.i_crit_edge, label %if.then361.i

if.then359.i.if.end368.i_crit_edge:               ; preds = %if.then359.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end368.i

if.then361.i:                                     ; preds = %if.then359.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv363.i = zext i8 %233 to i32
  %sub364.i = add nsw i32 %conv363.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub364.i)
  %tobool.not.i819.i = icmp eq i32 %sub364.i, 0
  %234 = tail call i32 @llvm.ctlz.i32(i32 %sub364.i, i1 true) #10, !range !126
  %.neg877.i = mul nsw i32 %234, -2097152
  %sub.i820.op.i = add nsw i32 %.neg877.i, 67108864
  %shl366.i = select i1 %tobool.not.i819.i, i32 0, i32 %sub.i820.op.i
  %params2.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 24
  %235 = ptrtoint ptr %params2.i to i32
  call void @__asan_loadN_noabort(i32 %235, i32 4)
  %236 = load i32, ptr %params2.i, align 1
  %or367.i = or i32 %236, %shl366.i
  store i32 %or367.i, ptr %params2.i, align 1
  br label %if.end368.i

if.end368.i:                                      ; preds = %if.then361.i, %if.then359.i.if.end368.i_crit_edge
  %237 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %237, i32 4)
  %238 = load i32, ptr %51, align 1
  %or370.i = or i32 %238, 512
  store i32 %or370.i, ptr %51, align 1
  br label %if.end371.i

if.end371.i:                                      ; preds = %if.end368.i, %if.end356.i.if.end371.i_crit_edge
  %and372.i = and i32 %attr_mask, 131080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and372.i)
  %tobool373.not.i = icmp eq i32 %and372.i, 0
  br i1 %tobool373.not.i, label %if.end371.i.if.end380.i_crit_edge, label %if.then374.i

if.end371.i.if.end380.i_crit_edge:                ; preds = %if.end371.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end380.i

if.then374.i:                                     ; preds = %if.end371.i
  %max_dest_rd_atomic.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 17
  %resp_depth.i.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 9
  %dest_rd_atomic.0.in.i.i = select i1 %tobool93.not, ptr %resp_depth.i.i, ptr %max_dest_rd_atomic.i.i
  %239 = ptrtoint ptr %dest_rd_atomic.0.in.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %dest_rd_atomic.0.i.i = load i8, ptr %dest_rd_atomic.0.in.i.i, align 1
  %and1.i.i = and i32 %attr_mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.else4.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.then374.i
  call void @__sanitizer_cov_trace_pc() #12
  %qp_access_flags.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 8
  %240 = ptrtoint ptr %qp_access_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %qp_access_flags.i.i, align 8
  br label %get_hw_access_flags.exit.i

if.else4.i.i:                                     ; preds = %if.then374.i
  call void @__sanitizer_cov_trace_pc() #12
  %atomic_rd_en.i.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 8
  %242 = ptrtoint ptr %atomic_rd_en.i.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %atomic_rd_en.i.i, align 4
  %conv.i.i = zext i8 %243 to i32
  br label %get_hw_access_flags.exit.i

get_hw_access_flags.exit.i:                       ; preds = %if.else4.i.i, %if.then3.i.i
  %access_flags.0.i.i = phi i32 [ %241, %if.then3.i.i ], [ %conv.i.i, %if.else4.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dest_rd_atomic.0.i.i)
  %tobool6.not.i.i = icmp eq i8 %dest_rd_atomic.0.i.i, 0
  %and8.i.i = and i32 %access_flags.0.i.i, 2
  %spec.select.i.i = select i1 %tobool6.not.i.i, i32 %and8.i.i, i32 %access_flags.0.i.i
  %and10.i.i = shl i32 %spec.select.i.i, 13
  %244 = and i32 %and10.i.i, 32768
  %and14.i.i = shl i32 %spec.select.i.i, 10
  %245 = and i32 %and14.i.i, 8192
  %246 = or i32 %245, %244
  %247 = shl nuw nsw i32 %and8.i.i, 13
  %248 = or i32 %246, %247
  %params2376.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 24
  %249 = ptrtoint ptr %params2376.i to i32
  call void @__asan_loadN_noabort(i32 %249, i32 4)
  %250 = load i32, ptr %params2376.i, align 1
  %or377.i = or i32 %248, %250
  store i32 %or377.i, ptr %params2376.i, align 1
  %251 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %251, i32 4)
  %252 = load i32, ptr %51, align 1
  %or379.i = or i32 %252, 14
  store i32 %or379.i, ptr %51, align 1
  br label %if.end380.i

if.end380.i:                                      ; preds = %get_hw_access_flags.exit.i, %if.end371.i.if.end380.i_crit_edge
  %params2381.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 24
  %253 = ptrtoint ptr %params2381.i to i32
  call void @__asan_loadN_noabort(i32 %253, i32 4)
  %254 = load i32, ptr %params2381.i, align 1
  %or382.i = or i32 %254, 8
  store i32 %or382.i, ptr %params2381.i, align 1
  %srq.i = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 8
  %255 = ptrtoint ptr %srq.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %srq.i, align 4
  %tobool383.not.i = icmp eq ptr %256, null
  br i1 %tobool383.not.i, label %if.end380.i.if.end387.i_crit_edge, label %if.then384.i

if.end380.i.if.end387.i_crit_edge:                ; preds = %if.end380.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end387.i

if.then384.i:                                     ; preds = %if.end380.i
  call void @__sanitizer_cov_trace_pc() #12
  %or386.i = or i32 %254, 24
  %257 = ptrtoint ptr %params2381.i to i32
  call void @__asan_storeN_noabort(i32 %257, i32 4)
  store i32 %or386.i, ptr %params2381.i, align 1
  br label %if.end387.i

if.end387.i:                                      ; preds = %if.then384.i, %if.end380.i.if.end387.i_crit_edge
  %and388.i = and i32 %attr_mask, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and388.i)
  %tobool389.not.i = icmp eq i32 %and388.i, 0
  br i1 %tobool389.not.i, label %if.end387.i.if.end396.i_crit_edge, label %if.then390.i

if.end387.i.if.end396.i_crit_edge:                ; preds = %if.end387.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end396.i

if.then390.i:                                     ; preds = %if.end387.i
  call void @__sanitizer_cov_trace_pc() #12
  %min_rnr_timer.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 18
  %258 = ptrtoint ptr %min_rnr_timer.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %min_rnr_timer.i, align 8
  %conv391.i = zext i8 %259 to i32
  %shl392.i = shl nuw i32 %conv391.i, 24
  %rnr_nextrecvpsn.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 25
  %260 = ptrtoint ptr %rnr_nextrecvpsn.i to i32
  call void @__asan_loadN_noabort(i32 %260, i32 4)
  %261 = load i32, ptr %rnr_nextrecvpsn.i, align 1
  %or393.i = or i32 %shl392.i, %261
  store i32 %or393.i, ptr %rnr_nextrecvpsn.i, align 1
  %262 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %262, i32 4)
  %263 = load i32, ptr %51, align 1
  %or395.i = or i32 %263, 64
  store i32 %or395.i, ptr %51, align 1
  br label %if.end396.i

if.end396.i:                                      ; preds = %if.then390.i, %if.end387.i.if.end396.i_crit_edge
  %and397.i = and i32 %attr_mask, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and397.i)
  %tobool398.not.i = icmp eq i32 %and397.i, 0
  br i1 %tobool398.not.i, label %if.end396.i.if.end402.i_crit_edge, label %if.then399.i

if.end396.i.if.end402.i_crit_edge:                ; preds = %if.end396.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end402.i

if.then399.i:                                     ; preds = %if.end396.i
  call void @__sanitizer_cov_trace_pc() #12
  %rq_psn.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 5
  %264 = ptrtoint ptr %rq_psn.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %rq_psn.i, align 4
  %rnr_nextrecvpsn400.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 25
  %266 = ptrtoint ptr %rnr_nextrecvpsn400.i to i32
  call void @__asan_loadN_noabort(i32 %266, i32 4)
  %267 = load i32, ptr %rnr_nextrecvpsn400.i, align 1
  %or401.i = or i32 %267, %265
  store i32 %or401.i, ptr %rnr_nextrecvpsn400.i, align 1
  br label %if.end402.i

if.end402.i:                                      ; preds = %if.then399.i, %if.end396.i.if.end402.i_crit_edge
  %rdb_base.i = getelementptr inbounds %struct.mthca_dev, ptr %46, i32 0, i32 25, i32 1
  %268 = ptrtoint ptr %rdb_base.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %rdb_base.i, align 8
  %270 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %qpn.i, align 8
  %num_qps.i = getelementptr inbounds %struct.mthca_dev, ptr %46, i32 0, i32 18, i32 8
  %272 = ptrtoint ptr %num_qps.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %num_qps.i, align 8
  %sub405.i = add i32 %273, 134217727
  %and406.i = and i32 %sub405.i, %271
  %mul.i = shl i32 %and406.i, 5
  %rdb_shift.i = getelementptr inbounds %struct.mthca_dev, ptr %46, i32 0, i32 25, i32 2
  %274 = ptrtoint ptr %rdb_shift.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %rdb_shift.i, align 4
  %shl408.i = shl i32 %mul.i, %275
  %add.i = add i32 %shl408.i, %269
  %ra_buff_indx.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 26
  %276 = ptrtoint ptr %ra_buff_indx.i to i32
  call void @__asan_storeN_noabort(i32 %276, i32 4)
  store i32 %add.i, ptr %ra_buff_indx.i, align 1
  %recv_cq.i = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 3
  %277 = ptrtoint ptr %recv_cq.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %recv_cq.i, align 4
  %cqn410.i = getelementptr inbounds %struct.mthca_cq, ptr %278, i32 0, i32 3
  %279 = ptrtoint ptr %cqn410.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %cqn410.i, align 8
  %cqn_rcv.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 27
  %281 = ptrtoint ptr %cqn_rcv.i to i32
  call void @__asan_storeN_noabort(i32 %281, i32 4)
  store i32 %280, ptr %cqn_rcv.i, align 1
  %282 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i839.i = and i32 %283, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i839.i)
  %tobool412.not.i = icmp eq i32 %and.i839.i, 0
  br i1 %tobool412.not.i, label %if.end402.i.if.end416.i_crit_edge, label %if.then413.i

if.end402.i.if.end416.i_crit_edge:                ; preds = %if.end402.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end416.i

if.then413.i:                                     ; preds = %if.end402.i
  call void @__sanitizer_cov_trace_pc() #12
  %db_index415.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 9
  %284 = ptrtoint ptr %db_index415.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %db_index415.i, align 4
  %rcv_db_index.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 29
  %286 = ptrtoint ptr %rcv_db_index.i to i32
  call void @__asan_storeN_noabort(i32 %286, i32 4)
  store i32 %285, ptr %rcv_db_index.i, align 1
  br label %if.end416.i

if.end416.i:                                      ; preds = %if.then413.i, %if.end402.i.if.end416.i_crit_edge
  %and417.i = and i32 %attr_mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and417.i)
  %tobool418.not.i = icmp eq i32 %and417.i, 0
  br i1 %tobool418.not.i, label %if.end416.i.if.end423.i_crit_edge, label %if.then419.i

if.end416.i.if.end423.i_crit_edge:                ; preds = %if.end416.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end423.i

if.then419.i:                                     ; preds = %if.end416.i
  call void @__sanitizer_cov_trace_pc() #12
  %qkey.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 4
  %287 = ptrtoint ptr %qkey.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %qkey.i, align 8
  %qkey420.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 30
  %289 = ptrtoint ptr %qkey420.i to i32
  call void @__asan_storeN_noabort(i32 %289, i32 4)
  store i32 %288, ptr %qkey420.i, align 1
  %290 = ptrtoint ptr %51 to i32
  call void @__asan_loadN_noabort(i32 %290, i32 4)
  %291 = load i32, ptr %51, align 1
  %or422.i = or i32 %291, 32
  store i32 %or422.i, ptr %51, align 1
  br label %if.end423.i

if.end423.i:                                      ; preds = %if.then419.i, %if.end416.i.if.end423.i_crit_edge
  %292 = ptrtoint ptr %srq.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %srq.i, align 4
  %tobool425.not.i = icmp eq ptr %293, null
  br i1 %tobool425.not.i, label %if.end423.i.if.end431.i_crit_edge, label %if.then426.i

if.end423.i.if.end431.i_crit_edge:                ; preds = %if.end423.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end431.i

if.then426.i:                                     ; preds = %if.end423.i
  call void @__sanitizer_cov_trace_pc() #12
  %srqn.i = getelementptr inbounds %struct.mthca_srq, ptr %293, i32 0, i32 3
  %294 = ptrtoint ptr %srqn.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %srqn.i, align 4
  %or429.i = or i32 %295, 16777216
  %srqn430.i = getelementptr inbounds %struct.mthca_qp_param, ptr %51, i32 0, i32 2, i32 31
  %296 = ptrtoint ptr %srqn430.i to i32
  call void @__asan_storeN_noabort(i32 %296, i32 4)
  store i32 %or429.i, ptr %srqn430.i, align 1
  br label %if.end431.i

if.end431.i:                                      ; preds = %if.then426.i, %if.end423.i.if.end431.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cur_state.0)
  %cmp432.i = icmp ne i32 %cur_state.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cond)
  %cmp435.i = icmp ne i32 %cond, 4
  %or.cond816.not.i = or i1 %cmp432.i, %cmp435.i
  %and438.i = and i32 %attr_mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and438.i)
  %tobool439.not.i = icmp eq i32 %and438.i, 0
  %or.cond817.i = or i1 %tobool439.not.i, %or.cond816.not.i
  br i1 %or.cond817.i, label %if.end431.i.if.end444.i_crit_edge, label %land.lhs.true440.i

if.end431.i.if.end444.i_crit_edge:                ; preds = %if.end431.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end444.i

land.lhs.true440.i:                               ; preds = %if.end431.i
  call void @__sanitizer_cov_trace_pc() #12
  %en_sqd_async_notify.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 14
  %297 = ptrtoint ptr %en_sqd_async_notify.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %en_sqd_async_notify.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %298)
  %tobool442.not.i = icmp eq i8 %298, 0
  %spec.select.i = select i1 %tobool442.not.i, i32 0, i32 -2147483648
  br label %if.end444.i

if.end444.i:                                      ; preds = %land.lhs.true440.i, %if.end431.i.if.end444.i_crit_edge
  %sqd_event.0.i = phi i32 [ 0, %if.end431.i.if.end444.i_crit_edge ], [ %spec.select.i, %land.lhs.true440.i ]
  %299 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %qpn.i, align 8
  %call446.i = tail call i32 @mthca_MODIFY_QP(ptr noundef %46, i32 noundef %cur_state.0, i32 noundef %cond, i32 noundef %300, i32 noundef 0, ptr noundef %call4.i, i32 noundef %sqd_event.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call446.i)
  %tobool447.not.i = icmp eq i32 %call446.i, 0
  br i1 %tobool447.not.i, label %if.end454.i, label %do.end451.i

do.end451.i:                                      ; preds = %if.end444.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev452.i = getelementptr inbounds %struct.mthca_dev, ptr %46, i32 0, i32 1
  %301 = ptrtoint ptr %pdev452.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %pdev452.i, align 8
  %dev453.i = getelementptr inbounds %struct.pci_dev, ptr %302, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev453.i, ptr noundef nonnull @.str.51, i32 noundef %cur_state.0, i32 noundef %cond, i32 noundef %call446.i) #13
  br label %out_mailbox.i

if.end454.i:                                      ; preds = %if.end444.i
  %conv455.i = trunc i32 %cond to i8
  %state.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 7
  %303 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %conv455.i, ptr %state.i, align 1
  %and456.i = and i32 %attr_mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and456.i)
  %tobool457.not.i = icmp eq i32 %and456.i, 0
  br i1 %tobool457.not.i, label %if.end454.i.if.end460.i_crit_edge, label %if.then458.i

if.end454.i.if.end460.i_crit_edge:                ; preds = %if.end454.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end460.i

if.then458.i:                                     ; preds = %if.end454.i
  call void @__sanitizer_cov_trace_pc() #12
  %qp_access_flags.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 8
  %304 = ptrtoint ptr %qp_access_flags.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %qp_access_flags.i, align 8
  %conv459.i = trunc i32 %305 to i8
  %atomic_rd_en.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 8
  %306 = ptrtoint ptr %atomic_rd_en.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %conv459.i, ptr %atomic_rd_en.i, align 4
  br label %if.end460.i

if.end460.i:                                      ; preds = %if.then458.i, %if.end454.i.if.end460.i_crit_edge
  br i1 %tobool93.not, label %if.end460.i.if.end465.i_crit_edge, label %if.then463.i

if.end460.i.if.end465.i_crit_edge:                ; preds = %if.end460.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end465.i

if.then463.i:                                     ; preds = %if.end460.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_dest_rd_atomic464.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 17
  %307 = ptrtoint ptr %max_dest_rd_atomic464.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %max_dest_rd_atomic464.i, align 1
  %resp_depth.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 9
  %309 = ptrtoint ptr %resp_depth.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %308, ptr %resp_depth.i, align 1
  br label %if.end465.i

if.end465.i:                                      ; preds = %if.then463.i, %if.end460.i.if.end465.i_crit_edge
  br i1 %tobool46.not, label %if.end465.i.if.end472.i_crit_edge, label %if.then468.i

if.end465.i.if.end472.i_crit_edge:                ; preds = %if.end465.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end472.i

if.then468.i:                                     ; preds = %if.end465.i
  call void @__sanitizer_cov_trace_pc() #12
  %port_num469.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 19
  %310 = ptrtoint ptr %port_num469.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %port_num469.i, align 4
  %conv470.i = trunc i32 %311 to i8
  %port471.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 4
  %312 = ptrtoint ptr %port471.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 %conv470.i, ptr %port471.i, align 8
  br label %if.end472.i

if.end472.i:                                      ; preds = %if.then468.i, %if.end465.i.if.end472.i_crit_edge
  br i1 %tobool243.not.i, label %if.end472.i.if.end478.i_crit_edge, label %if.then475.i

if.end472.i.if.end478.i_crit_edge:                ; preds = %if.end472.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end478.i

if.then475.i:                                     ; preds = %if.end472.i
  call void @__sanitizer_cov_trace_pc() #12
  %alt_port_num476.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 23
  %313 = ptrtoint ptr %alt_port_num476.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %alt_port_num476.i, align 4
  %conv477.i = trunc i32 %314 to i8
  %alt_port.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 5
  %315 = ptrtoint ptr %alt_port.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 %conv477.i, ptr %alt_port.i, align 1
  br label %if.end478.i

if.end478.i:                                      ; preds = %if.then475.i, %if.end472.i.if.end478.i_crit_edge
  %316 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %qpn.i, align 8
  %sqp_start.i.i = getelementptr inbounds %struct.mthca_dev, ptr %46, i32 0, i32 25, i32 3
  %318 = ptrtoint ptr %sqp_start.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %sqp_start.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %317, i32 %319)
  %cmp.not.i.i = icmp ult i32 %317, %319
  %add.i.i = add i32 %319, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %317, i32 %add.i.i)
  %cmp4.i.i = icmp ugt i32 %317, %add.i.i
  %tobool480.not.i = or i1 %cmp.not.i.i, %cmp4.i.i
  br i1 %tobool480.not.i, label %if.end478.i.if.end482.i_crit_edge, label %if.then481.i

if.end478.i.if.end482.i_crit_edge:                ; preds = %if.end478.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end482.i

if.then481.i:                                     ; preds = %if.end478.i
  %sqp.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 20
  %320 = ptrtoint ptr %sqp.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %sqp.i, align 8
  br i1 %tobool25.not, label %if.then481.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then481.i.if.end.i.i_crit_edge:                ; preds = %if.then481.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then481.i
  call void @__sanitizer_cov_trace_pc() #12
  %pkey_index.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 12
  %322 = ptrtoint ptr %pkey_index.i.i to i32
  call void @__asan_load2_noabort(i32 %322)
  %323 = load i16, ptr %pkey_index.i.i, align 8
  %conv.i842.i = zext i16 %323 to i32
  %324 = ptrtoint ptr %321 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %conv.i842.i, ptr %321, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then481.i.if.end.i.i_crit_edge
  br i1 %tobool418.not.i, label %if.end.i.i.if.end6.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %qkey.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 4
  %325 = ptrtoint ptr %qkey.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %qkey.i.i, align 8
  %qkey5.i.i = getelementptr inbounds %struct.mthca_sqp, ptr %321, i32 0, i32 1
  %327 = ptrtoint ptr %qkey5.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %326, ptr %qkey5.i.i, align 4
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.end.i.i.if.end6.i.i_crit_edge
  br i1 %tobool348.not.i, label %if.end6.i.i.if.end482.i_crit_edge, label %if.then9.i.i

if.end6.i.i.if.end482.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end482.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sq_psn.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 6
  %328 = ptrtoint ptr %sq_psn.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %sq_psn.i.i, align 8
  %send_psn.i.i = getelementptr inbounds %struct.mthca_sqp, ptr %321, i32 0, i32 2
  %330 = ptrtoint ptr %send_psn.i.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %329, ptr %send_psn.i.i, align 8
  br label %if.end482.i

if.end482.i:                                      ; preds = %if.then9.i.i, %if.end6.i.i.if.end482.i_crit_edge, %if.end478.i.if.end482.i_crit_edge
  %331 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %qpn.i, align 8
  %333 = ptrtoint ptr %sqp_start.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %sqp_start.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %332, i32 %334)
  %cmp.not.i845.i = icmp ult i32 %332, %334
  %add.i846.i = add i32 %334, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %332, i32 %add.i846.i)
  %cmp4.i847.i = icmp ugt i32 %332, %add.i846.i
  %tobool484.not.i = or i1 %cmp.not.i845.i, %cmp4.i847.i
  br i1 %tobool484.not.i, label %if.end482.i.if.end511.i_crit_edge, label %if.then485.i

if.end482.i.if.end511.i_crit_edge:                ; preds = %if.end482.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end511.i

if.then485.i:                                     ; preds = %if.end482.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cur_state.0)
  %cmp486.not.i = icmp ne i32 %cur_state.0, 2
  %or.cond818.i = and i1 %cmp486.not.i, %cmp211.i
  br i1 %or.cond818.i, label %if.then491.i, label %if.then485.i.if.end494.i_crit_edge

if.then485.i.if.end494.i_crit_edge:               ; preds = %if.then485.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end494.i

if.then491.i:                                     ; preds = %if.then485.i
  %port492.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 4
  %335 = ptrtoint ptr %port492.i to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %port492.i, align 8
  %conv493.i = zext i8 %336 to i32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %param.i.i) #10
  %337 = getelementptr inbounds i8, ptr %param.i.i, i32 16
  %338 = call ptr @memset(ptr %337, i32 0, i32 48)
  %port_width_cap.i.i = getelementptr inbounds %struct.mthca_dev, ptr %46, i32 0, i32 18, i32 39
  %339 = ptrtoint ptr %port_width_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %port_width_cap.i.i, align 2
  %conv.i849.i = zext i8 %340 to i32
  %341 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %conv.i849.i, ptr %param.i.i, align 8
  %vl_cap.i.i = getelementptr inbounds %struct.mthca_dev, ptr %46, i32 0, i32 18, i32 1
  %342 = ptrtoint ptr %vl_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %vl_cap.i.i, align 4
  %vl_cap2.i.i = getelementptr inbounds %struct.mthca_init_ib_param, ptr %param.i.i, i32 0, i32 1
  %344 = ptrtoint ptr %vl_cap2.i.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %343, ptr %vl_cap2.i.i, align 4
  %mtu_cap.i.i = getelementptr inbounds %struct.mthca_dev, ptr %46, i32 0, i32 18, i32 2
  %345 = ptrtoint ptr %mtu_cap.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %mtu_cap.i.i, align 8
  %mtu_cap4.i.i = getelementptr inbounds %struct.mthca_init_ib_param, ptr %param.i.i, i32 0, i32 2
  %347 = ptrtoint ptr %mtu_cap4.i.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %346, ptr %mtu_cap4.i.i, align 8
  %gid_table_len.i.i = getelementptr inbounds %struct.mthca_dev, ptr %46, i32 0, i32 18, i32 3
  %348 = ptrtoint ptr %gid_table_len.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %gid_table_len.i.i, align 4
  %conv6.i.i = trunc i32 %349 to i16
  %gid_cap.i.i = getelementptr inbounds %struct.mthca_init_ib_param, ptr %param.i.i, i32 0, i32 3
  %350 = ptrtoint ptr %gid_cap.i.i to i32
  call void @__asan_store2_noabort(i32 %350)
  store i16 %conv6.i.i, ptr %gid_cap.i.i, align 4
  %pkey_table_len.i.i = getelementptr inbounds %struct.mthca_dev, ptr %46, i32 0, i32 18, i32 4
  %351 = ptrtoint ptr %pkey_table_len.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %pkey_table_len.i.i, align 8
  %conv8.i.i = trunc i32 %352 to i16
  %pkey_cap.i.i = getelementptr inbounds %struct.mthca_init_ib_param, ptr %param.i.i, i32 0, i32 4
  %353 = ptrtoint ptr %pkey_cap.i.i to i32
  call void @__asan_store2_noabort(i32 %353)
  store i16 %conv8.i.i, ptr %pkey_cap.i.i, align 2
  %call.i.i = call i32 @mthca_INIT_IB(ptr noundef %46, ptr noundef nonnull %param.i.i, i32 noundef %conv493.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i850.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i850.i, label %if.then491.i.init_port.exit.i_crit_edge, label %do.end.i.i

if.then491.i.init_port.exit.i_crit_edge:          ; preds = %if.then491.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_port.exit.i

do.end.i.i:                                       ; preds = %if.then491.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i.i = getelementptr inbounds %struct.mthca_dev, ptr %46, i32 0, i32 1
  %354 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %pdev.i.i, align 8
  %dev9.i.i = getelementptr inbounds %struct.pci_dev, ptr %355, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9.i.i, ptr noundef nonnull @.str.55, i32 noundef %call.i.i) #13
  br label %init_port.exit.i

init_port.exit.i:                                 ; preds = %do.end.i.i, %if.then491.i.init_port.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %param.i.i) #10
  br label %if.end494.i

if.end494.i:                                      ; preds = %init_port.exit.i, %if.then485.i.if.end494.i_crit_edge
  %356 = zext i32 %cur_state.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %356, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %cur_state.0, label %land.lhs.true500.i [
    i32 0, label %if.end494.i.if.end511.i_crit_edge
    i32 6, label %if.end494.i.if.end511.i_crit_edge184
  ]

if.end494.i.if.end511.i_crit_edge184:             ; preds = %if.end494.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end511.i

if.end494.i.if.end511.i_crit_edge:                ; preds = %if.end494.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end511.i

land.lhs.true500.i:                               ; preds = %if.end494.i
  %357 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %357, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %cond, label %land.lhs.true500.i.out_mailbox.i_crit_edge [
    i32 0, label %land.lhs.true500.i.if.then506.i_crit_edge
    i32 6, label %land.lhs.true500.i.if.then506.i_crit_edge185
  ]

land.lhs.true500.i.if.then506.i_crit_edge185:     ; preds = %land.lhs.true500.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then506.i

land.lhs.true500.i.if.then506.i_crit_edge:        ; preds = %land.lhs.true500.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then506.i

land.lhs.true500.i.out_mailbox.i_crit_edge:       ; preds = %land.lhs.true500.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mailbox.i

if.then506.i:                                     ; preds = %land.lhs.true500.i.if.then506.i_crit_edge, %land.lhs.true500.i.if.then506.i_crit_edge185
  %port507.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 4
  %358 = ptrtoint ptr %port507.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %port507.i, align 8
  %conv508.i = zext i8 %359 to i32
  %call509.i = call i32 @mthca_CLOSE_IB(ptr noundef %46, i32 noundef %conv508.i) #10
  br label %if.end511.i

if.end511.i:                                      ; preds = %if.then506.i, %if.end494.i.if.end511.i_crit_edge, %if.end494.i.if.end511.i_crit_edge184, %if.end482.i.if.end511.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp512.i = icmp eq i32 %cond, 0
  br i1 %cmp512.i, label %land.lhs.true514.i, label %if.end511.i.out_mailbox.i_crit_edge

if.end511.i.out_mailbox.i_crit_edge:              ; preds = %if.end511.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mailbox.i

land.lhs.true514.i:                               ; preds = %if.end511.i
  %360 = ptrtoint ptr %uobject.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %uobject.i, align 8
  %tobool517.not.i = icmp eq ptr %361, null
  br i1 %tobool517.not.i, label %if.then518.i, label %land.lhs.true514.i.out_mailbox.i_crit_edge

land.lhs.true514.i.out_mailbox.i_crit_edge:       ; preds = %land.lhs.true514.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mailbox.i

if.then518.i:                                     ; preds = %land.lhs.true514.i
  %362 = ptrtoint ptr %recv_cq.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %recv_cq.i, align 4
  %364 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %qpn.i, align 8
  %366 = ptrtoint ptr %srq.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %srq.i, align 8
  call void @mthca_cq_clean(ptr noundef %46, ptr noundef %363, i32 noundef %365, ptr noundef %367) #10
  %368 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %send_cq.i, align 8
  %370 = ptrtoint ptr %recv_cq.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %recv_cq.i, align 4
  %cmp537.not.i = icmp eq ptr %369, %371
  br i1 %cmp537.not.i, label %if.then518.i.if.end544.i_crit_edge, label %if.then539.i

if.then518.i.if.end544.i_crit_edge:               ; preds = %if.then518.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end544.i

if.then539.i:                                     ; preds = %if.then518.i
  call void @__sanitizer_cov_trace_pc() #12
  %372 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %qpn.i, align 8
  call void @mthca_cq_clean(ptr noundef %46, ptr noundef %369, i32 noundef %373, ptr noundef null) #10
  br label %if.end544.i

if.end544.i:                                      ; preds = %if.then539.i, %if.then518.i.if.end544.i_crit_edge
  %next_ind.i.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 2
  %374 = ptrtoint ptr %next_ind.i.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 0, ptr %next_ind.i.i, align 4
  %max.i.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 1
  %375 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %max.i.i, align 4
  %sub.i852.i = add i32 %376, -1
  %last_comp.i.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 3
  %377 = ptrtoint ptr %last_comp.i.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %sub.i852.i, ptr %last_comp.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 4
  %378 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 0, ptr %head.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 5
  %379 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 0, ptr %tail.i.i, align 4
  %is_direct.i.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 3
  %380 = ptrtoint ptr %is_direct.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %is_direct.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %381)
  %tobool.not.i853.i = icmp eq i32 %381, 0
  %queue2.i.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 17
  %382 = ptrtoint ptr %queue2.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %queue2.i.i, align 8
  %send_wqe_offset3.i.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 14
  %384 = ptrtoint ptr %send_wqe_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %send_wqe_offset3.i.i, align 4
  br i1 %tobool.not.i853.i, label %if.else.i.i, label %if.then.i854.i

if.then.i854.i:                                   ; preds = %if.end544.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %383, i32 %385
  %wqe_shift.i.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 8
  %386 = ptrtoint ptr %wqe_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %wqe_shift.i.i, align 4
  %shl.i.i = shl i32 %sub.i852.i, %387
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %shl.i.i
  br label %get_send_wqe.exit.i

if.else.i.i:                                      ; preds = %if.end544.i
  call void @__sanitizer_cov_trace_pc() #12
  %wqe_shift5.i.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 8
  %388 = ptrtoint ptr %wqe_shift5.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %wqe_shift5.i.i, align 4
  %shl6.i.i = shl i32 %sub.i852.i, %389
  %add.i855.i = add i32 %shl6.i.i, %385
  %shr.i.i = ashr i32 %add.i855.i, 12
  %arrayidx.i.i = getelementptr %struct.mthca_buf_list, ptr %383, i32 %shr.i.i
  %390 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %arrayidx.i.i, align 4
  %and.i856.i = and i32 %add.i855.i, 4095
  %add.ptr13.i.i = getelementptr i8, ptr %391, i32 %and.i856.i
  br label %get_send_wqe.exit.i

get_send_wqe.exit.i:                              ; preds = %if.else.i.i, %if.then.i854.i
  %retval.0.i857.i = phi ptr [ %add.ptr1.i.i, %if.then.i854.i ], [ %add.ptr13.i.i, %if.else.i.i ]
  %last.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 6
  %392 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr %retval.0.i857.i, ptr %last.i, align 4
  %next_ind.i858.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 2
  %393 = ptrtoint ptr %next_ind.i858.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 0, ptr %next_ind.i858.i, align 4
  %max.i859.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 1
  %394 = ptrtoint ptr %max.i859.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %max.i859.i, align 4
  %sub.i860.i = add i32 %395, -1
  %last_comp.i861.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 3
  %396 = ptrtoint ptr %last_comp.i861.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %sub.i860.i, ptr %last_comp.i861.i, align 4
  %head.i862.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 4
  %397 = ptrtoint ptr %head.i862.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 0, ptr %head.i862.i, align 4
  %tail.i863.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 5
  %398 = ptrtoint ptr %tail.i863.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 0, ptr %tail.i863.i, align 4
  %wqe_shift3.i.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 8
  %399 = ptrtoint ptr %wqe_shift3.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %wqe_shift3.i.i, align 8
  %shl4.i.i = shl i32 %sub.i860.i, %400
  br i1 %tobool.not.i853.i, label %if.else.i871.i, label %if.then.i867.i

if.then.i867.i:                                   ; preds = %get_send_wqe.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i866.i = getelementptr i8, ptr %383, i32 %shl4.i.i
  br label %get_recv_wqe.exit.i

if.else.i871.i:                                   ; preds = %get_send_wqe.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i868.i = ashr i32 %shl4.i.i, 12
  %arrayidx.i869.i = getelementptr %struct.mthca_buf_list, ptr %383, i32 %shr.i868.i
  %401 = ptrtoint ptr %arrayidx.i869.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %arrayidx.i869.i, align 4
  %and.i870.i = and i32 %shl4.i.i, 4095
  %add.ptr9.i.i = getelementptr i8, ptr %402, i32 %and.i870.i
  br label %get_recv_wqe.exit.i

get_recv_wqe.exit.i:                              ; preds = %if.else.i871.i, %if.then.i867.i
  %retval.0.i872.i = phi ptr [ %add.ptr.i866.i, %if.then.i867.i ], [ %add.ptr9.i.i, %if.else.i871.i ]
  %last557.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 6
  %403 = ptrtoint ptr %last557.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store ptr %retval.0.i872.i, ptr %last557.i, align 8
  %404 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i874.i = and i32 %405, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i874.i)
  %tobool559.not.i = icmp eq i32 %and.i874.i, 0
  br i1 %tobool559.not.i, label %get_recv_wqe.exit.i.out_mailbox.i_crit_edge, label %if.then560.i

get_recv_wqe.exit.i.out_mailbox.i_crit_edge:      ; preds = %get_recv_wqe.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_mailbox.i

if.then560.i:                                     ; preds = %get_recv_wqe.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %db.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 10
  %406 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %db.i, align 4
  %408 = ptrtoint ptr %407 to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 0, ptr %407, align 4
  %db563.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 10
  %409 = ptrtoint ptr %db563.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %db563.i, align 8
  %411 = ptrtoint ptr %410 to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 0, ptr %410, align 4
  br label %out_mailbox.i

out_mailbox.i:                                    ; preds = %if.then560.i, %get_recv_wqe.exit.i.out_mailbox.i_crit_edge, %land.lhs.true514.i.out_mailbox.i_crit_edge, %if.end511.i.out_mailbox.i_crit_edge, %land.lhs.true500.i.out_mailbox.i_crit_edge, %do.end451.i, %if.end286.i.out_mailbox.i_crit_edge, %do.end279.i, %do.body274.i.out_mailbox.i_crit_edge, %do.end254.i, %do.body249.i.out_mailbox.i_crit_edge, %cond.end196.i.out_mailbox.i_crit_edge, %do.end.i, %do.body.i.out_mailbox.i_crit_edge
  %err.0.i = phi i32 [ -22, %cond.end196.i.out_mailbox.i_crit_edge ], [ -22, %do.end254.i ], [ -22, %do.body249.i.out_mailbox.i_crit_edge ], [ -22, %do.end279.i ], [ -22, %do.body274.i.out_mailbox.i_crit_edge ], [ -22, %if.end286.i.out_mailbox.i_crit_edge ], [ %call446.i, %do.end451.i ], [ 0, %land.lhs.true514.i.out_mailbox.i_crit_edge ], [ 0, %if.then560.i ], [ 0, %get_recv_wqe.exit.i.out_mailbox.i_crit_edge ], [ 0, %if.end511.i.out_mailbox.i_crit_edge ], [ -22, %do.end.i ], [ -22, %do.body.i.out_mailbox.i_crit_edge ], [ 0, %land.lhs.true500.i.out_mailbox.i_crit_edge ]
  call void @mthca_free_mailbox(ptr noundef %46, ptr noundef %call4.i) #10
  br label %out

out:                                              ; preds = %out_mailbox.i, %if.then.i, %if.end115.out_crit_edge, %do.end104, %do.body99.out_crit_edge, %do.end81, %do.body76.out_crit_edge, %do.end60, %do.body55.out_crit_edge, %do.end34, %do.body29.out_crit_edge, %do.end, %do.body.out_crit_edge
  %err.0 = phi i32 [ -22, %do.end34 ], [ -22, %do.body29.out_crit_edge ], [ -22, %do.end60 ], [ -22, %do.body55.out_crit_edge ], [ -22, %do.end81 ], [ -22, %do.body76.out_crit_edge ], [ -22, %do.end104 ], [ -22, %do.body99.out_crit_edge ], [ -22, %do.end ], [ -22, %do.body.out_crit_edge ], [ 0, %if.end115.out_crit_edge ], [ %49, %if.then.i ], [ %err.0.i, %out_mailbox.i ]
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ib_modify_qp_is_ok(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_alloc_qp(ptr noundef %dev, ptr noundef %pd, ptr nocapture noundef readnone %send_cq, ptr nocapture noundef readnone %recv_cq, i32 noundef %type, i32 noundef %send_policy, ptr nocapture noundef readonly %cap, ptr noundef %qp, ptr noundef %udata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %type, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %transport4 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 6
  %1 = ptrtoint ptr %transport4 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %switch.idx.cast, ptr %transport4, align 2
  %call = tail call fastcc i32 @mthca_set_qp_size(ptr noundef %dev, ptr noundef %cap, ptr noundef %pd, ptr noundef %qp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %qp_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25
  %call5 = tail call i32 @mthca_alloc(ptr noundef %qp_table) #10
  %qpn = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 2
  %2 = ptrtoint ptr %qpn to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call5, ptr %qpn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp = icmp eq i32 %call5, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %port = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 4
  %3 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %port, align 8
  %call9 = tail call fastcc i32 @mthca_alloc_qp_common(ptr noundef %dev, ptr noundef %pd, i32 noundef %send_policy, ptr noundef %qp, ptr noundef %udata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end15, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qpn, align 8
  tail call void @mthca_free(ptr noundef %qp_table, i32 noundef %5) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %qp18 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 5
  %6 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qpn, align 8
  %num_qps = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 8
  %8 = ptrtoint ptr %num_qps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_qps, align 8
  %sub = add i32 %9, -1
  %and = and i32 %sub, %7
  %call20 = tail call i32 @mthca_array_set(ptr noundef %qp18, i32 noundef %and, ptr noundef %qp) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then11, %if.end.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then11 ], [ 0, %if.end15 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %switch.lookup.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @mthca_set_qp_size(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %cap, ptr nocapture noundef readonly %pd, ptr nocapture noundef %qp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %max_desc_sz = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 10
  %0 = ptrtoint ptr %max_desc_sz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_desc_sz, align 8
  %transport.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 6
  %2 = ptrtoint ptr %transport.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %transport.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %switch.selectcmp.i = icmp eq i8 %3, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -64, i32 -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %switch.selectcmp10.i = icmp eq i8 %3, 5
  %switch.select11.i = select i1 %switch.selectcmp10.i, i32 -48, i32 %switch.select.i
  %4 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cap, align 4
  %max_wqes = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 9
  %6 = ptrtoint ptr %max_wqes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_wqes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ugt i32 %5, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_cap, ptr %cap, i32 0, i32 1
  %8 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_recv_wr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp4 = icmp ugt i32 %9, %7
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %max_send_sge = getelementptr inbounds %struct.ib_qp_cap, ptr %cap, i32 0, i32 2
  %10 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_send_sge, align 4
  %max_sg = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 7
  %12 = ptrtoint ptr %max_sg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_sg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp7 = icmp ugt i32 %11, %13
  br i1 %cmp7, label %lor.lhs.false5.cleanup_crit_edge, label %lor.lhs.false8

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %max_recv_sge = getelementptr inbounds %struct.ib_qp_cap, ptr %cap, i32 0, i32 3
  %14 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_recv_sge, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp11 = icmp ugt i32 %15, %13
  br i1 %cmp11, label %lor.lhs.false8.cleanup_crit_edge, label %lor.lhs.false12

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %max_inline_data = getelementptr inbounds %struct.ib_qp_cap, ptr %cap, i32 0, i32 4
  %16 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_inline_data, align 4
  %uobject.i = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 3
  %18 = ptrtoint ptr %uobject.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %uobject.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  %sub4.i = add i32 %1, -4
  %sub.i = add i32 %sub4.i, %switch.select11.i
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %spec.select.i)
  %cmp14 = icmp ugt i32 %17, %spec.select.i
  br i1 %cmp14, label %lor.lhs.false12.cleanup_crit_edge, label %if.end

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false12
  %add = add i32 %11, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %13)
  %cmp20 = icmp ugt i32 %add, %13
  %or.cond = select i1 %switch.selectcmp10.i, i1 %cmp20, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %20 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool27.not = icmp eq i32 %9, 0
  br i1 %tobool27.not, label %if.then25.cond.end61_crit_edge, label %cond.false55

if.then25.cond.end61_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end61

cond.false55:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i177 = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i177)
  %tobool.not.i.i.i = icmp eq i32 %sub.i177, 0
  %22 = tail call i32 @llvm.ctlz.i32(i32 %sub.i177, i1 true) #10, !range !126
  %sub.i.i.i = sub nuw nsw i32 32, %22
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false55, %if.then25.cond.end61_crit_edge
  %cond62 = phi i32 [ %shl.i, %cond.false55 ], [ 0, %if.then25.cond.end61_crit_edge ]
  %max = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond62, ptr %max, align 4
  %24 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool64.not = icmp eq i32 %25, 0
  br i1 %tobool64.not, label %cond.end61.if.end114_crit_edge, label %cond.false99

cond.end61.if.end114_crit_edge:                   ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

cond.false99:                                     ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i181 = add i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i181)
  %tobool.not.i.i.i182 = icmp eq i32 %sub.i181, 0
  %26 = tail call i32 @llvm.ctlz.i32(i32 %sub.i181, i1 true) #10, !range !126
  %sub.i.i.i183 = sub nuw nsw i32 32, %26
  %sub.i.i.op.i184 = shl nuw i32 1, %sub.i.i.i183
  %shl.i185 = select i1 %tobool.not.i.i.i182, i32 1, i32 %sub.i.i.op.i184
  br label %if.end114

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %max110 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %max110 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %9, ptr %max110, align 4
  %28 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cap, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.else, %cond.false99, %cond.end61.if.end114_crit_edge
  %.sink = phi i32 [ %29, %if.else ], [ %shl.i185, %cond.false99 ], [ 0, %cond.end61.if.end114_crit_edge ]
  %max113 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 1
  %30 = ptrtoint ptr %max113 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %max113, align 4
  %31 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_recv_sge, align 4
  %max_gs = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 11, i32 7
  %33 = ptrtoint ptr %max_gs to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %max_gs, align 4
  %34 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_send_sge, align 4
  %36 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_inline_data, align 4
  %add120 = add i32 %37, 19
  %div175 = lshr i32 %add120, 4
  %38 = tail call i32 @llvm.smax.i32(i32 %35, i32 %div175)
  %max_gs128 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 7
  %39 = ptrtoint ptr %max_gs128 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %max_gs128, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end114, %if.end.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end114 ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mthca_alloc_qp_common(ptr noundef %dev, ptr noundef %pd, i32 noundef %send_policy, ptr noundef %qp, ptr noundef readnone %udata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 1
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %refcount, align 4
  %wait = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 18
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.57, ptr noundef nonnull @mthca_alloc_qp_common.__key) #10
  %mutex = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.59, ptr noundef nonnull @mthca_alloc_qp_common.__key.58) #10
  %state = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 7
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %state, align 1
  %atomic_rd_en = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 8
  %2 = ptrtoint ptr %atomic_rd_en to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %atomic_rd_en, align 4
  %resp_depth = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 9
  %3 = ptrtoint ptr %resp_depth to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %resp_depth, align 1
  %sq_policy = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 13
  %4 = ptrtoint ptr %sq_policy to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %send_policy, ptr %sq_policy, align 8
  %sq = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12
  %next_ind.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 2
  %5 = ptrtoint ptr %next_ind.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %next_ind.i, align 4
  %max.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max.i, align 4
  %sub.i = add i32 %7, -1
  %last_comp.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 3
  %8 = ptrtoint ptr %last_comp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.i, ptr %last_comp.i, align 4
  %head.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 4
  %9 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 5
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %tail.i, align 4
  %rq = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 11
  %next_ind.i2 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 11, i32 2
  %11 = ptrtoint ptr %next_ind.i2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %next_ind.i2, align 4
  %max.i3 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %max.i3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max.i3, align 4
  %sub.i4 = add i32 %13, -1
  %last_comp.i5 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 11, i32 3
  %14 = ptrtoint ptr %last_comp.i5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.i4, ptr %last_comp.i5, align 4
  %head.i6 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 11, i32 4
  %15 = ptrtoint ptr %head.i6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %head.i6, align 4
  %tail.i7 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 11, i32 5
  %16 = ptrtoint ptr %tail.i7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %tail.i7, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %sq, ptr noundef nonnull @.str.61, ptr noundef nonnull @mthca_alloc_qp_common.__key.60, i16 noundef signext 3) #10
  tail call void @__raw_spin_lock_init(ptr noundef %rq, ptr noundef nonnull @.str.63, ptr noundef nonnull @mthca_alloc_qp_common.__key.62, i16 noundef signext 3) #10
  %mthca_flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %17 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i.i = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %entry
  %qp_table1.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 6
  %19 = ptrtoint ptr %qp_table1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qp_table1.i, align 4
  %qpn.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 2
  %21 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qpn.i, align 8
  %call2.i = tail call i32 @mthca_table_get(ptr noundef %dev, ptr noundef %20, i32 noundef %22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %eqp_table.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 7
  %23 = ptrtoint ptr %eqp_table.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %eqp_table.i, align 8
  %25 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qpn.i, align 8
  %call7.i = tail call i32 @mthca_table_get(ptr noundef %dev, ptr noundef %24, i32 noundef %26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end.i.err_qpc.i_crit_edge

if.end.i.err_qpc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_qpc.i

if.end10.i:                                       ; preds = %if.end.i
  %rdb_table.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 8
  %27 = ptrtoint ptr %rdb_table.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rdb_table.i, align 4
  %29 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qpn.i, align 8
  %rdb_shift.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 2
  %31 = ptrtoint ptr %rdb_shift.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rdb_shift.i, align 4
  %shl.i = shl i32 %30, %32
  %call14.i = tail call i32 @mthca_table_get(ptr noundef %dev, ptr noundef %28, i32 noundef %shl.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end10.i.if.end_crit_edge, label %err_eqpc.i

if.end10.i.if.end_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

err_eqpc.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %eqp_table.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %eqp_table.i, align 8
  %35 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qpn.i, align 8
  tail call void @mthca_table_put(ptr noundef %dev, ptr noundef %34, i32 noundef %36) #10
  br label %err_qpc.i

err_qpc.i:                                        ; preds = %err_eqpc.i, %if.end.i.err_qpc.i_crit_edge
  %ret.0.i = phi i32 [ %call7.i, %if.end.i.err_qpc.i_crit_edge ], [ %call14.i, %err_eqpc.i ]
  %37 = ptrtoint ptr %qp_table1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %qp_table1.i, align 4
  %39 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qpn.i, align 8
  tail call void @mthca_table_put(ptr noundef %dev, ptr noundef %38, i32 noundef %40) #10
  br label %cleanup

if.end:                                           ; preds = %if.end10.i.if.end_crit_edge, %entry.if.end_crit_edge
  %max_gs.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 11, i32 7
  %41 = ptrtoint ptr %max_gs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_gs.i, align 4
  %mul.i = shl i32 %42, 4
  %add.i = add i32 %mul.i, 16
  %max_desc_sz.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 10
  %43 = ptrtoint ptr %max_desc_sz.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_desc_sz.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %44)
  %cmp.i = icmp sgt i32 %add.i, %44
  br i1 %cmp.i, label %if.end.if.then17_crit_edge, label %if.end.for.cond.i_crit_edge

if.end.for.cond.i_crit_edge:                      ; preds = %if.end
  br label %for.cond.i

if.end.if.then17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end.for.cond.i_crit_edge
  %storemerge.i = phi i32 [ %inc.i, %for.cond.i.for.cond.i_crit_edge ], [ 6, %if.end.for.cond.i_crit_edge ]
  %shl.i8 = shl nuw i32 1, %storemerge.i
  %cmp4.i = icmp slt i32 %shl.i8, %add.i
  %inc.i = add i32 %storemerge.i, 1
  br i1 %cmp4.i, label %for.cond.i.for.cond.i_crit_edge, label %for.end.i

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %wqe_shift.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 11, i32 8
  %45 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %storemerge.i, ptr %wqe_shift.i, align 8
  %max_gs7.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 7
  %46 = ptrtoint ptr %max_gs7.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_gs7.i, align 4
  %mul8.i = shl i32 %47, 4
  %transport.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 6
  %48 = ptrtoint ptr %transport.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %transport.i, align 2
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %49, label %for.end.i.sw.epilog.i_crit_edge [
    i8 5, label %sw.bb.i
    i8 2, label %sw.bb10.i
    i8 1, label %sw.bb12.i
    i8 0, label %sw.bb14.i
  ]

for.end.i.sw.epilog.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add9.i = add i32 %mul8.i, 32
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add11.i = add i32 %mul8.i, 48
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add13.i = add i32 %mul8.i, 16
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add15.i = add i32 %mul8.i, 16
  %51 = tail call i32 @llvm.smax.i32(i32 %add15.i, i32 48) #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb14.i, %sw.bb12.i, %sw.bb10.i, %sw.bb.i, %for.end.i.sw.epilog.i_crit_edge
  %size.0.i = phi i32 [ %mul8.i, %for.end.i.sw.epilog.i_crit_edge ], [ %51, %sw.bb14.i ], [ %add13.i, %sw.bb12.i ], [ %add11.i, %sw.bb10.i ], [ %add9.i, %sw.bb.i ]
  %52 = tail call i32 @llvm.smax.i32(i32 %size.0.i, i32 32) #10
  %add26.i = add nuw i32 %52, 16
  %53 = ptrtoint ptr %max_desc_sz.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_desc_sz.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add26.i, i32 %54)
  %cmp29.i = icmp sgt i32 %add26.i, %54
  br i1 %cmp29.i, label %sw.epilog.i.if.then17_crit_edge, label %sw.epilog.i.for.cond35.i_crit_edge

sw.epilog.i.for.cond35.i_crit_edge:               ; preds = %sw.epilog.i
  br label %for.cond35.i

sw.epilog.i.if.then17_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

for.cond35.i:                                     ; preds = %for.cond35.i.for.cond35.i_crit_edge, %sw.epilog.i.for.cond35.i_crit_edge
  %storemerge130.i = phi i32 [ %inc45.i, %for.cond35.i.for.cond35.i_crit_edge ], [ 6, %sw.epilog.i.for.cond35.i_crit_edge ]
  %shl38.i = shl nuw i32 1, %storemerge130.i
  %cmp39.i = icmp slt i32 %shl38.i, %add26.i
  %inc45.i = add i32 %storemerge130.i, 1
  br i1 %cmp39.i, label %for.cond35.i.for.cond35.i_crit_edge, label %for.end46.i

for.cond35.i.for.cond35.i_crit_edge:              ; preds = %for.cond35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond35.i

for.end46.i:                                      ; preds = %for.cond35.i
  %wqe_shift34.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 8
  %55 = ptrtoint ptr %wqe_shift34.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %storemerge130.i, ptr %wqe_shift34.i, align 4
  %56 = ptrtoint ptr %max.i3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max.i3, align 4
  %shl50.i = shl i32 %57, %storemerge.i
  %sub.i10 = add i32 %shl38.i, -1
  %add54.i = add i32 %sub.i10, %shl50.i
  %neg.i = sub i32 0, %shl38.i
  %and.i = and i32 %add54.i, %neg.i
  %send_wqe_offset.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 14
  %58 = ptrtoint ptr %send_wqe_offset.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and.i, ptr %send_wqe_offset.i, align 4
  %tobool59.not.i = icmp eq ptr %udata, null
  br i1 %tobool59.not.i, label %if.end61.i, label %for.end46.i.if.end18_crit_edge

for.end46.i.if.end18_crit_edge:                   ; preds = %for.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end61.i:                                       ; preds = %for.end46.i
  %59 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max.i, align 4
  %add75.i = add i32 %60, %57
  %61 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add75.i, i32 8) #10
  %62 = extractvalue { i32, i1 } %61, 1
  br i1 %62, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !127

kmalloc_array.exit.thread.i:                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #12
  %wrid132.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 16
  %63 = ptrtoint ptr %wrid132.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %wrid132.i, align 4
  br label %err_out.i

if.end7.i.i:                                      ; preds = %if.end61.i
  %64 = extractvalue { i32, i1 } %61, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %64, i32 noundef 3264) #14
  %wrid.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 16
  %65 = ptrtoint ptr %wrid.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call8.i.i, ptr %wrid.i, align 4
  %tobool78.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool78.not.i, label %if.end7.i.i.err_out.i_crit_edge, label %if.end80.i

if.end7.i.i.err_out.i_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out.i

if.end80.i:                                       ; preds = %if.end7.i.i
  %shl67.i = shl i32 %60, %storemerge130.i
  %add68.i = add i32 %and.i, 4095
  %add69.i = add i32 %add68.i, %shl67.i
  %and70.i = and i32 %add69.i, -4096
  %queue.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 17
  %is_direct.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 3
  %mr.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 10
  %call81.i = tail call i32 @mthca_buf_alloc(ptr noundef %dev, i32 noundef %and70.i, i32 noundef 16384, ptr noundef %queue.i, ptr noundef %is_direct.i, ptr noundef %pd, i32 noundef 0, ptr noundef %mr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %if.end80.i.if.end18_crit_edge, label %if.end80.i.err_out.i_crit_edge

if.end80.i.err_out.i_crit_edge:                   ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out.i

if.end80.i.if.end18_crit_edge:                    ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

err_out.i:                                        ; preds = %if.end80.i.err_out.i_crit_edge, %if.end7.i.i.err_out.i_crit_edge, %kmalloc_array.exit.thread.i
  %wrid134.i = phi ptr [ %wrid.i, %if.end80.i.err_out.i_crit_edge ], [ %wrid.i, %if.end7.i.i.err_out.i_crit_edge ], [ %wrid132.i, %kmalloc_array.exit.thread.i ]
  %err.0.i = phi i32 [ %call81.i, %if.end80.i.err_out.i_crit_edge ], [ -12, %if.end7.i.i.err_out.i_crit_edge ], [ -12, %kmalloc_array.exit.thread.i ]
  %66 = ptrtoint ptr %wrid134.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wrid134.i, align 4
  tail call void @kfree(ptr noundef %67) #10
  br label %if.then17

if.then17:                                        ; preds = %err_out.i, %sw.epilog.i.if.then17_crit_edge, %if.end.if.then17_crit_edge
  %retval.0.i11.ph = phi i32 [ -22, %sw.epilog.i.if.then17_crit_edge ], [ -22, %if.end.if.then17_crit_edge ], [ %err.0.i, %err_out.i ]
  %rdb_table.i12 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 8
  %68 = ptrtoint ptr %rdb_table.i12 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rdb_table.i12, align 4
  %qpn.i13 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 2
  %70 = ptrtoint ptr %qpn.i13 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %qpn.i13, align 8
  %rdb_shift.i14 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 2
  %72 = ptrtoint ptr %rdb_shift.i14 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rdb_shift.i14, align 4
  %shl.i15 = shl i32 %71, %73
  tail call void @mthca_table_put(ptr noundef %dev, ptr noundef %69, i32 noundef %shl.i15) #10
  %eqp_table.i16 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 7
  %74 = ptrtoint ptr %eqp_table.i16 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %eqp_table.i16, align 8
  %76 = ptrtoint ptr %qpn.i13 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %qpn.i13, align 8
  tail call void @mthca_table_put(ptr noundef %dev, ptr noundef %75, i32 noundef %77) #10
  %qp_table5.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 6
  %78 = ptrtoint ptr %qp_table5.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %qp_table5.i, align 4
  %80 = ptrtoint ptr %qpn.i13 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %qpn.i13, align 8
  tail call void @mthca_table_put(ptr noundef %dev, ptr noundef %79, i32 noundef %81) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end80.i.if.end18_crit_edge, %for.end46.i.if.end18_crit_edge
  %82 = ptrtoint ptr %max_desc_sz.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_desc_sz.i, align 8
  %84 = ptrtoint ptr %wqe_shift34.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %wqe_shift34.i, align 4
  %shl.i19 = shl nuw i32 1, %85
  %86 = tail call i32 @llvm.smin.i32(i32 %83, i32 %shl.i19) #10
  %87 = ptrtoint ptr %transport.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %transport.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %88)
  %switch.selectcmp.i.i = icmp eq i8 %88, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 -64, i32 -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %88)
  %switch.selectcmp10.i.i = icmp eq i8 %88, 5
  %switch.select11.i.i = select i1 %switch.selectcmp10.i.i, i32 -48, i32 %switch.select.i.i
  %sub4.i.i = add i32 %switch.select11.i.i, %86
  %uobject.i.i = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 3
  %89 = ptrtoint ptr %uobject.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %uobject.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %90, null
  %sub.i.i = add i32 %sub4.i.i, -4
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %max_inline_data.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 15
  %91 = ptrtoint ptr %max_inline_data.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %spec.select.i.i, ptr %max_inline_data.i, align 8
  %max_sg.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 7
  %92 = ptrtoint ptr %max_sg.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max_sg.i, align 4
  %div52.i = lshr i32 %sub4.i.i, 4
  %94 = tail call i32 @llvm.smin.i32(i32 %93, i32 %div52.i) #10
  %95 = ptrtoint ptr %max_gs7.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %max_gs7.i, align 4
  %96 = ptrtoint ptr %max_sg.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %max_sg.i, align 4
  %98 = ptrtoint ptr %max_desc_sz.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %max_desc_sz.i, align 8
  %100 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %wqe_shift.i, align 8
  %shl15.i = shl nuw i32 1, %101
  %102 = tail call i32 @llvm.smin.i32(i32 %99, i32 %shl15.i) #10
  %sub.i21 = add i32 %102, -16
  %div2253.i = lshr i32 %sub.i21, 4
  %103 = tail call i32 @llvm.smin.i32(i32 %97, i32 %div2253.i) #10
  %104 = ptrtoint ptr %max_gs.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %max_gs.i, align 4
  br i1 %tobool59.not.i, label %if.end21, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %105 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i.i23 = and i32 %106, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i23)
  %tobool.not.i24 = icmp eq i32 %and.i.i23, 0
  br i1 %tobool.not.i24, label %if.end21.if.end25_crit_edge, label %if.then.i27

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then.i27:                                      ; preds = %if.end21
  %qpn.i25 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 2
  %107 = ptrtoint ptr %qpn.i25 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %qpn.i25, align 8
  %db.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 11, i32 10
  %call1.i = tail call i32 @mthca_alloc_db(ptr noundef %dev, i32 noundef 4, i32 noundef %108, ptr noundef %db.i) #10
  %db_index.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 11, i32 9
  %109 = ptrtoint ptr %db_index.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call1.i, ptr %db_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i26 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i26, label %if.then.i27.if.then24_crit_edge, label %if.end.i28

if.then.i27.if.then24_crit_edge:                  ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.end.i28:                                       ; preds = %if.then.i27
  %110 = ptrtoint ptr %qpn.i25 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %qpn.i25, align 8
  %db7.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 10
  %call8.i = tail call i32 @mthca_alloc_db(ptr noundef %dev, i32 noundef 3, i32 noundef %111, ptr noundef %db7.i) #10
  %db_index10.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 9
  %112 = ptrtoint ptr %db_index10.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %call8.i, ptr %db_index10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp13.i = icmp slt i32 %call8.i, 0
  br i1 %cmp13.i, label %if.then14.i, label %if.end.i28.if.end25_crit_edge

if.end.i28.if.end25_crit_edge:                    ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then14.i:                                      ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %db_index.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %db_index.i, align 4
  tail call void @mthca_free_db(ptr noundef %dev, i32 noundef 4, i32 noundef %114) #10
  br label %if.then24

if.then24:                                        ; preds = %if.then14.i, %if.then.i27.if.then24_crit_edge
  %115 = ptrtoint ptr %send_wqe_offset.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %send_wqe_offset.i, align 4
  %117 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %max.i, align 4
  %119 = ptrtoint ptr %wqe_shift34.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %wqe_shift34.i, align 4
  %shl.i33 = shl i32 %118, %120
  %add.i34 = add i32 %116, 4095
  %add2.i = add i32 %add.i34, %shl.i33
  %and.i35 = and i32 %add2.i, -4096
  %queue.i36 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 17
  %is_direct.i37 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 3
  %121 = ptrtoint ptr %is_direct.i37 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %is_direct.i37, align 4
  %mr.i38 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 10
  tail call void @mthca_buf_free(ptr noundef %dev, i32 noundef %and.i35, ptr noundef %queue.i36, i32 noundef %122, ptr noundef %mr.i38) #10
  %wrid.i39 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 16
  %123 = ptrtoint ptr %wrid.i39 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %wrid.i39, align 4
  tail call void @kfree(ptr noundef %124) #10
  %rdb_table.i40 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 8
  %125 = ptrtoint ptr %rdb_table.i40 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rdb_table.i40, align 4
  %127 = ptrtoint ptr %qpn.i25 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %qpn.i25, align 8
  %rdb_shift.i42 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 2
  %129 = ptrtoint ptr %rdb_shift.i42 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rdb_shift.i42, align 4
  %shl.i43 = shl i32 %128, %130
  tail call void @mthca_table_put(ptr noundef %dev, ptr noundef %126, i32 noundef %shl.i43) #10
  %eqp_table.i44 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 7
  %131 = ptrtoint ptr %eqp_table.i44 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %eqp_table.i44, align 8
  %133 = ptrtoint ptr %qpn.i25 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %qpn.i25, align 8
  tail call void @mthca_table_put(ptr noundef %dev, ptr noundef %132, i32 noundef %134) #10
  %qp_table5.i45 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 6
  %135 = ptrtoint ptr %qp_table5.i45 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %qp_table5.i45, align 4
  %137 = ptrtoint ptr %qpn.i25 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %qpn.i25, align 8
  tail call void @mthca_table_put(ptr noundef %dev, ptr noundef %136, i32 noundef %138) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end.i28.if.end25_crit_edge, %if.end21.if.end25_crit_edge
  %139 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i46 = and i32 %140, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %tobool27.not = icmp eq i32 %and.i46, 0
  br i1 %tobool27.not, label %for.cond64.preheader, label %if.then28

for.cond64.preheader:                             ; preds = %if.end25
  %141 = ptrtoint ptr %max.i3 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %max.i3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp67134 = icmp sgt i32 %142, 0
  br i1 %cmp67134, label %for.body68.lr.ph, label %for.cond64.preheader.if.end80_crit_edge

for.cond64.preheader.if.end80_crit_edge:          ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

for.body68.lr.ph:                                 ; preds = %for.cond64.preheader
  %is_direct.i64 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 3
  %queue1.i66 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 17
  br label %for.body68

if.then28:                                        ; preds = %if.end25
  %143 = ptrtoint ptr %max_gs.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %max_gs.i, align 4
  %145 = add i32 %144, 1
  %div1 = and i32 %145, 268435455
  %146 = ptrtoint ptr %max.i3 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %max.i3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp129 = icmp sgt i32 %147, 0
  br i1 %cmp129, label %for.body.lr.ph, label %if.then28.for.cond45.preheader_crit_edge

if.then28.for.cond45.preheader_crit_edge:         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond45.preheader

for.body.lr.ph:                                   ; preds = %if.then28
  %is_direct.i47 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 3
  %queue1.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 17
  br label %for.body

for.cond.loopexit:                                ; preds = %for.body42.for.cond.loopexit_crit_edge, %get_recv_wqe.exit.for.cond.loopexit_crit_edge
  %148 = ptrtoint ptr %max.i3 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %max.i3, align 4
  %cmp = icmp slt i32 %add32, %149
  br i1 %cmp, label %for.cond.loopexit.for.body_crit_edge, label %for.cond.loopexit.for.cond45.preheader_crit_edge

for.cond.loopexit.for.cond45.preheader_crit_edge: ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond45.preheader

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond45.preheader:                             ; preds = %for.cond.loopexit.for.cond45.preheader_crit_edge, %if.then28.for.cond45.preheader_crit_edge
  %150 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %cmp48131 = icmp sgt i32 %151, 0
  br i1 %cmp48131, label %for.body49.lr.ph, label %for.cond45.preheader.if.end80_crit_edge

for.cond45.preheader.if.end80_crit_edge:          ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

for.body49.lr.ph:                                 ; preds = %for.cond45.preheader
  %is_direct.i52 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 3
  %queue2.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 17
  br label %for.body49

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %152 = phi i32 [ %147, %for.body.lr.ph ], [ %149, %for.cond.loopexit.for.body_crit_edge ]
  %i.0130 = phi i32 [ 0, %for.body.lr.ph ], [ %add32, %for.cond.loopexit.for.body_crit_edge ]
  %153 = ptrtoint ptr %is_direct.i47 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %is_direct.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not.i48 = icmp eq i32 %154, 0
  %155 = ptrtoint ptr %queue1.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %queue1.i, align 8
  %157 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %wqe_shift.i, align 8
  %shl4.i = shl i32 %i.0130, %158
  br i1 %tobool.not.i48, label %if.else.i, label %if.then.i49

if.then.i49:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %156, i32 %shl4.i
  br label %get_recv_wqe.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i = ashr i32 %shl4.i, 12
  %arrayidx.i = getelementptr %struct.mthca_buf_list, ptr %156, i32 %shr.i
  %159 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.i, align 4
  %and.i50 = and i32 %shl4.i, 4095
  %add.ptr9.i = getelementptr i8, ptr %160, i32 %and.i50
  br label %get_recv_wqe.exit

get_recv_wqe.exit:                                ; preds = %if.else.i, %if.then.i49
  %retval.0.i51 = phi ptr [ %add.ptr.i, %if.then.i49 ], [ %add.ptr9.i, %if.else.i ]
  %add32 = add nuw nsw i32 %i.0130, 1
  %sub = add i32 %152, 2147483647
  %and = and i32 %sub, %add32
  %shl = shl i32 %and, %158
  %161 = ptrtoint ptr %retval.0.i51 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %shl, ptr %retval.0.i51, align 4
  %ee_nds = getelementptr inbounds %struct.mthca_next_seg, ptr %retval.0.i51, i32 0, i32 1
  %162 = ptrtoint ptr %ee_nds to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %div1, ptr %ee_nds, align 4
  %add.ptr = getelementptr %struct.mthca_next_seg, ptr %retval.0.i51, i32 1
  %163 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %wqe_shift.i, align 8
  %shl39125 = shl nuw i32 1, %164
  %add.ptr40126 = getelementptr i8, ptr %retval.0.i51, i32 %shl39125
  %cmp41127 = icmp ult ptr %add.ptr, %add.ptr40126
  br i1 %cmp41127, label %get_recv_wqe.exit.for.body42_crit_edge, label %get_recv_wqe.exit.for.cond.loopexit_crit_edge

get_recv_wqe.exit.for.cond.loopexit_crit_edge:    ; preds = %get_recv_wqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

get_recv_wqe.exit.for.body42_crit_edge:           ; preds = %get_recv_wqe.exit
  br label %for.body42

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %get_recv_wqe.exit.for.body42_crit_edge
  %scatter.0128 = phi ptr [ %incdec.ptr, %for.body42.for.body42_crit_edge ], [ %add.ptr, %get_recv_wqe.exit.for.body42_crit_edge ]
  %lkey = getelementptr inbounds %struct.mthca_data_seg, ptr %scatter.0128, i32 0, i32 1
  %165 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 256, ptr %lkey, align 4
  %incdec.ptr = getelementptr %struct.mthca_data_seg, ptr %scatter.0128, i32 1
  %166 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %wqe_shift.i, align 8
  %shl39 = shl nuw i32 1, %167
  %add.ptr40 = getelementptr i8, ptr %retval.0.i51, i32 %shl39
  %cmp41 = icmp ult ptr %incdec.ptr, %add.ptr40
  br i1 %cmp41, label %for.body42.for.body42_crit_edge, label %for.body42.for.cond.loopexit_crit_edge

for.body42.for.cond.loopexit_crit_edge:           ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body42

for.body49:                                       ; preds = %get_send_wqe.exit.for.body49_crit_edge, %for.body49.lr.ph
  %168 = phi i32 [ %151, %for.body49.lr.ph ], [ %185, %get_send_wqe.exit.for.body49_crit_edge ]
  %i.1132 = phi i32 [ 0, %for.body49.lr.ph ], [ %add51, %get_send_wqe.exit.for.body49_crit_edge ]
  %169 = ptrtoint ptr %is_direct.i52 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %is_direct.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.not.i53 = icmp eq i32 %170, 0
  %171 = ptrtoint ptr %queue2.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %queue2.i, align 8
  %173 = ptrtoint ptr %send_wqe_offset.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %send_wqe_offset.i, align 4
  br i1 %tobool.not.i53, label %if.else.i62, label %if.then.i57

if.then.i57:                                      ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i54 = getelementptr i8, ptr %172, i32 %174
  %175 = ptrtoint ptr %wqe_shift34.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %wqe_shift34.i, align 4
  %shl.i56 = shl i32 %i.1132, %176
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i54, i32 %shl.i56
  br label %get_send_wqe.exit

if.else.i62:                                      ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #12
  %177 = ptrtoint ptr %wqe_shift34.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %wqe_shift34.i, align 4
  %shl6.i = shl i32 %i.1132, %178
  %add.i58 = add i32 %shl6.i, %174
  %shr.i59 = ashr i32 %add.i58, 12
  %arrayidx.i60 = getelementptr %struct.mthca_buf_list, ptr %172, i32 %shr.i59
  %179 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arrayidx.i60, align 4
  %and.i61 = and i32 %add.i58, 4095
  %add.ptr13.i = getelementptr i8, ptr %180, i32 %and.i61
  br label %get_send_wqe.exit

get_send_wqe.exit:                                ; preds = %if.else.i62, %if.then.i57
  %retval.0.i63 = phi ptr [ %add.ptr1.i, %if.then.i57 ], [ %add.ptr13.i, %if.else.i62 ]
  %add51 = add nuw nsw i32 %i.1132, 1
  %sub54 = add i32 %168, 2147483647
  %and55 = and i32 %sub54, %add51
  %181 = ptrtoint ptr %wqe_shift34.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %wqe_shift34.i, align 4
  %shl58 = shl i32 %and55, %182
  %add59 = add i32 %shl58, %174
  %183 = ptrtoint ptr %retval.0.i63 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %add59, ptr %retval.0.i63, align 4
  %184 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %max.i, align 4
  %cmp48 = icmp slt i32 %add51, %185
  br i1 %cmp48, label %get_send_wqe.exit.for.body49_crit_edge, label %get_send_wqe.exit.if.end80_crit_edge

get_send_wqe.exit.if.end80_crit_edge:             ; preds = %get_send_wqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

get_send_wqe.exit.for.body49_crit_edge:           ; preds = %get_send_wqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body49

for.body68:                                       ; preds = %get_recv_wqe.exit77.for.body68_crit_edge, %for.body68.lr.ph
  %186 = phi i32 [ %142, %for.body68.lr.ph ], [ %197, %get_recv_wqe.exit77.for.body68_crit_edge ]
  %i.2135 = phi i32 [ 0, %for.body68.lr.ph ], [ %add70, %get_recv_wqe.exit77.for.body68_crit_edge ]
  %187 = ptrtoint ptr %is_direct.i64 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %is_direct.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.i65 = icmp eq i32 %188, 0
  %189 = ptrtoint ptr %queue1.i66 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %queue1.i66, align 8
  %191 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %wqe_shift.i, align 8
  %shl4.i68 = shl i32 %i.2135, %192
  br i1 %tobool.not.i65, label %if.else.i75, label %if.then.i70

if.then.i70:                                      ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i69 = getelementptr i8, ptr %190, i32 %shl4.i68
  br label %get_recv_wqe.exit77

if.else.i75:                                      ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i71 = ashr i32 %shl4.i68, 12
  %arrayidx.i72 = getelementptr %struct.mthca_buf_list, ptr %190, i32 %shr.i71
  %193 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %arrayidx.i72, align 4
  %and.i73 = and i32 %shl4.i68, 4095
  %add.ptr9.i74 = getelementptr i8, ptr %194, i32 %and.i73
  br label %get_recv_wqe.exit77

get_recv_wqe.exit77:                              ; preds = %if.else.i75, %if.then.i70
  %retval.0.i76 = phi ptr [ %add.ptr.i69, %if.then.i70 ], [ %add.ptr9.i74, %if.else.i75 ]
  %add70 = add nuw nsw i32 %i.2135, 1
  %rem = srem i32 %add70, %186
  %shl75 = shl i32 %rem, %192
  %or = or i32 %shl75, 1
  %195 = ptrtoint ptr %retval.0.i76 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %or, ptr %retval.0.i76, align 4
  %196 = ptrtoint ptr %max.i3 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %max.i3, align 4
  %cmp67 = icmp slt i32 %add70, %197
  br i1 %cmp67, label %get_recv_wqe.exit77.for.body68_crit_edge, label %get_recv_wqe.exit77.if.end80_crit_edge

get_recv_wqe.exit77.if.end80_crit_edge:           ; preds = %get_recv_wqe.exit77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

get_recv_wqe.exit77.for.body68_crit_edge:         ; preds = %get_recv_wqe.exit77
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body68

if.end80:                                         ; preds = %get_recv_wqe.exit77.if.end80_crit_edge, %get_send_wqe.exit.if.end80_crit_edge, %for.cond45.preheader.if.end80_crit_edge, %for.cond64.preheader.if.end80_crit_edge
  %198 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %max.i, align 4
  %sub83 = add i32 %199, -1
  %is_direct.i78 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 3
  %200 = ptrtoint ptr %is_direct.i78 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %is_direct.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool.not.i79 = icmp eq i32 %201, 0
  %queue2.i80 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 17
  %202 = ptrtoint ptr %queue2.i80 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %queue2.i80, align 8
  %204 = ptrtoint ptr %send_wqe_offset.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %send_wqe_offset.i, align 4
  br i1 %tobool.not.i79, label %if.else.i108, label %if.then.i103

if.then.i103:                                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i82 = getelementptr i8, ptr %203, i32 %205
  %206 = ptrtoint ptr %wqe_shift34.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %wqe_shift34.i, align 4
  %shl.i84 = shl i32 %sub83, %207
  %add.ptr1.i85 = getelementptr i8, ptr %add.ptr.i82, i32 %shl.i84
  %last = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 6
  %208 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %add.ptr1.i85, ptr %last, align 4
  %209 = ptrtoint ptr %max.i3 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %max.i3, align 4
  %sub88 = add i32 %210, -1
  %211 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %wqe_shift.i, align 8
  %shl4.i101 = shl i32 %sub88, %212
  %add.ptr.i102 = getelementptr i8, ptr %203, i32 %shl4.i101
  br label %get_recv_wqe.exit110

if.else.i108:                                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %213 = ptrtoint ptr %wqe_shift34.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %wqe_shift34.i, align 4
  %shl6.i88 = shl i32 %sub83, %214
  %add.i89 = add i32 %shl6.i88, %205
  %shr.i90 = ashr i32 %add.i89, 12
  %arrayidx.i91 = getelementptr %struct.mthca_buf_list, ptr %203, i32 %shr.i90
  %215 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx.i91, align 4
  %and.i92 = and i32 %add.i89, 4095
  %add.ptr13.i93 = getelementptr i8, ptr %216, i32 %and.i92
  %last119 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 6
  %217 = ptrtoint ptr %last119 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %add.ptr13.i93, ptr %last119, align 4
  %218 = ptrtoint ptr %max.i3 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %max.i3, align 4
  %sub88121 = add i32 %219, -1
  %220 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %wqe_shift.i, align 8
  %shl4.i101122 = shl i32 %sub88121, %221
  %shr.i104 = ashr i32 %shl4.i101122, 12
  %arrayidx.i105 = getelementptr %struct.mthca_buf_list, ptr %203, i32 %shr.i104
  %222 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %arrayidx.i105, align 4
  %and.i106 = and i32 %shl4.i101122, 4095
  %add.ptr9.i107 = getelementptr i8, ptr %223, i32 %and.i106
  br label %get_recv_wqe.exit110

get_recv_wqe.exit110:                             ; preds = %if.else.i108, %if.then.i103
  %retval.0.i109 = phi ptr [ %add.ptr.i102, %if.then.i103 ], [ %add.ptr9.i107, %if.else.i108 ]
  %last91 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 11, i32 6
  %224 = ptrtoint ptr %last91 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %retval.0.i109, ptr %last91, align 8
  br label %cleanup

cleanup:                                          ; preds = %get_recv_wqe.exit110, %if.then24, %if.end18.cleanup_crit_edge, %if.then17, %err_qpc.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i11.ph, %if.then17 ], [ -12, %if.then24 ], [ 0, %get_recv_wqe.exit110 ], [ 0, %if.end18.cleanup_crit_edge ], [ %ret.0.i, %err_qpc.i ], [ %call2.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_array_set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_alloc_sqp(ptr noundef %dev, ptr noundef %pd, ptr noundef %send_cq, ptr noundef %recv_cq, i32 noundef %send_policy, ptr nocapture noundef readonly %cap, i32 noundef %qpn, i32 noundef %port, ptr noundef %qp, ptr noundef %udata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %qpn, 1
  %sqp_start = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 3
  %0 = ptrtoint ptr %sqp_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sqp_start, align 8
  %add = add i32 %mul, -1
  %add1 = add i32 %add, %port
  %sub = add i32 %add1, %1
  %transport = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 6
  %2 = ptrtoint ptr %transport to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 5, ptr %transport, align 2
  %call = tail call fastcc i32 @mthca_set_qp_size(ptr noundef %dev, ptr noundef %cap, ptr noundef %pd, ptr noundef %qp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %max = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max, align 4
  %mul2 = mul i32 %4, 72
  %sqp = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 20
  %5 = ptrtoint ptr %sqp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sqp, align 8
  %header_buf_size = getelementptr inbounds %struct.mthca_sqp, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %header_buf_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul2, ptr %header_buf_size, align 8
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = load ptr, ptr %sqp, align 8
  %header_buf_size5 = getelementptr inbounds %struct.mthca_sqp, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %header_buf_size5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %header_buf_size5, align 8
  %header_dma = getelementptr inbounds %struct.mthca_sqp, ptr %10, i32 0, i32 6
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev3, i32 noundef %12, ptr noundef %header_dma, i32 noundef 3264, i32 noundef 0) #10
  %13 = ptrtoint ptr %sqp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sqp, align 8
  %header_buf = getelementptr inbounds %struct.mthca_sqp, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %header_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %header_buf, align 4
  %16 = load ptr, ptr %sqp, align 8
  %header_buf10 = getelementptr inbounds %struct.mthca_sqp, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %header_buf10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %header_buf10, align 4
  %tobool11.not = icmp eq ptr %18, null
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %qp16 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 5
  %call17 = tail call ptr @mthca_array_get(ptr noundef %qp16, i32 noundef %sub) #10
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end29, label %if.end13.err_out_crit_edge

if.end13.err_out_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end29:                                         ; preds = %if.end13
  %19 = ptrtoint ptr %sqp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sqp, align 8
  %call23 = tail call i32 @mthca_array_set(ptr noundef %qp16, i32 noundef %sub, ptr noundef %20) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %conv = trunc i32 %port to i8
  %port30 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 4
  %21 = ptrtoint ptr %port30 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %port30, align 8
  %qpn31 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 2
  %22 = ptrtoint ptr %qpn31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %qpn31, align 8
  %23 = ptrtoint ptr %transport to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 5, ptr %transport, align 2
  %call33 = tail call fastcc i32 @mthca_alloc_qp_common(ptr noundef %dev, ptr noundef %pd, i32 noundef %send_policy, ptr noundef %qp, ptr noundef %udata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %err_out_free

if.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %sqp_count = getelementptr inbounds %struct.mthca_pd, ptr %pd, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sqp_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %sqp_count, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sqp_count, ptr %sqp_count, i32 1, ptr elementtype(i32) %sqp_count) #10, !srcloc !128
  br label %cleanup

err_out_free:                                     ; preds = %if.end29
  %cmp.i = icmp eq ptr %send_cq, %recv_cq
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %err_out_free
  call void @__sanitizer_cov_trace_pc() #12
  %lock.i = getelementptr inbounds %struct.mthca_cq, ptr %send_cq, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #10
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  tail call void @mthca_array_clear(ptr noundef %qp16, i32 noundef %sub) #10
  br label %mthca_unlock_cqs.exit

if.else.i:                                        ; preds = %err_out_free
  call void @__sanitizer_cov_trace_pc() #12
  %cqn.i = getelementptr inbounds %struct.mthca_cq, ptr %send_cq, i32 0, i32 3
  %25 = ptrtoint ptr %cqn.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cqn.i, align 8
  %cqn1.i = getelementptr inbounds %struct.mthca_cq, ptr %recv_cq, i32 0, i32 3
  %27 = ptrtoint ptr %cqn1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cqn1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp2.i = icmp slt i32 %26, %28
  %send_cq.recv_cq = select i1 %cmp2.i, ptr %send_cq, ptr %recv_cq
  %recv_cq.send_cq = select i1 %cmp2.i, ptr %recv_cq, ptr %send_cq
  %lock7.i = getelementptr inbounds %struct.mthca_cq, ptr %send_cq.recv_cq, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock7.i) #10
  %lock9.i = getelementptr inbounds %struct.mthca_cq, ptr %recv_cq.send_cq, i32 0, i32 1
  tail call void @_raw_spin_lock_nested(ptr noundef %lock9.i, i32 noundef 1) #10
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  tail call void @mthca_array_clear(ptr noundef %qp16, i32 noundef %sub) #10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %29 = ptrtoint ptr %cqn.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cqn.i, align 8
  %31 = ptrtoint ptr %cqn1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cqn1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp2.i95 = icmp slt i32 %30, %32
  %recv_cq.send_cq.i = select i1 %cmp2.i95, ptr %recv_cq, ptr %send_cq
  %send_cq.recv_cq.i = select i1 %cmp2.i95, ptr %send_cq, ptr %recv_cq
  %lock4.i96 = getelementptr inbounds %struct.mthca_cq, ptr %recv_cq.send_cq.i, i32 0, i32 1
  br label %mthca_unlock_cqs.exit

mthca_unlock_cqs.exit:                            ; preds = %if.else.i, %if.then.i
  %lock.sink = phi ptr [ %lock, %if.then.i ], [ %lock4.i96, %if.else.i ]
  %send_cq.sink.i = phi ptr [ %send_cq, %if.then.i ], [ %send_cq.recv_cq.i, %if.else.i ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.sink) #10
  %lock5.i98 = getelementptr inbounds %struct.mthca_cq, ptr %send_cq.sink.i, i32 0, i32 1
  br label %err_out

err_out:                                          ; preds = %mthca_unlock_cqs.exit, %if.end13.err_out_crit_edge
  %lock.sink101 = phi ptr [ %lock5.i98, %mthca_unlock_cqs.exit ], [ %lock, %if.end13.err_out_crit_edge ]
  %err.1 = phi i32 [ %call33, %mthca_unlock_cqs.exit ], [ -16, %if.end13.err_out_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.sink101) #10
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %sqp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sqp, align 8
  %header_buf_size46 = getelementptr inbounds %struct.mthca_sqp, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %header_buf_size46 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %header_buf_size46, align 8
  %header_buf48 = getelementptr inbounds %struct.mthca_sqp, ptr %36, i32 0, i32 5
  %39 = ptrtoint ptr %header_buf48 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %header_buf48, align 4
  %header_dma50 = getelementptr inbounds %struct.mthca_sqp, ptr %36, i32 0, i32 6
  %41 = ptrtoint ptr %header_dma50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %header_dma50, align 8
  tail call void @dma_free_attrs(ptr noundef %dev44, i32 noundef %38, ptr noundef %40, i32 noundef %42, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end36, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_out ], [ 0, %if.end36 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_array_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_free_qp(ptr noundef %dev, ptr noundef %qp) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %send_cq1 = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 2
  %0 = ptrtoint ptr %send_cq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %send_cq1, align 8
  %recv_cq3 = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 3
  %2 = ptrtoint ptr %recv_cq3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recv_cq3, align 4
  %cmp.i = icmp eq ptr %1, %3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock.i = getelementptr inbounds %struct.mthca_cq, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #10
  br label %mthca_lock_cqs.exit

if.else.i:                                        ; preds = %entry
  %cqn.i = getelementptr inbounds %struct.mthca_cq, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cqn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cqn.i, align 8
  %cqn1.i = getelementptr inbounds %struct.mthca_cq, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %cqn1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cqn1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp2.i = icmp slt i32 %5, %7
  br i1 %cmp2.i, label %if.then3.i, label %if.else6.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %lock4.i = getelementptr inbounds %struct.mthca_cq, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock4.i) #10
  %lock5.i = getelementptr inbounds %struct.mthca_cq, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock_nested(ptr noundef %lock5.i, i32 noundef 1) #10
  br label %mthca_lock_cqs.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %lock7.i = getelementptr inbounds %struct.mthca_cq, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock7.i) #10
  %lock9.i = getelementptr inbounds %struct.mthca_cq, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_nested(ptr noundef %lock9.i, i32 noundef 1) #10
  br label %mthca_lock_cqs.exit

mthca_lock_cqs.exit:                              ; preds = %if.else6.i, %if.then3.i, %if.then.i
  %qp_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25
  %lock = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %qp6 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 5
  %qpn = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 2
  %8 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qpn, align 8
  %num_qps = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 8
  %10 = ptrtoint ptr %num_qps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_qps, align 8
  %sub = add i32 %11, -1
  %and = and i32 %sub, %9
  tail call void @mthca_array_clear(ptr noundef %qp6, i32 noundef %and) #10
  %refcount = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 1
  %12 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %refcount, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %refcount, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br i1 %cmp.i, label %mthca_lock_cqs.exit.mthca_unlock_cqs.exit_crit_edge, label %if.else.i104

mthca_lock_cqs.exit.mthca_unlock_cqs.exit_crit_edge: ; preds = %mthca_lock_cqs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mthca_unlock_cqs.exit

if.else.i104:                                     ; preds = %mthca_lock_cqs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %cqn.i100 = getelementptr inbounds %struct.mthca_cq, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %cqn.i100 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cqn.i100, align 8
  %cqn1.i101 = getelementptr inbounds %struct.mthca_cq, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %cqn1.i101 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cqn1.i101, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp2.i102 = icmp slt i32 %15, %17
  %recv_cq.send_cq.i = select i1 %cmp2.i102, ptr %3, ptr %1
  %send_cq.recv_cq.i = select i1 %cmp2.i102, ptr %1, ptr %3
  %lock4.i103 = getelementptr inbounds %struct.mthca_cq, ptr %recv_cq.send_cq.i, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock4.i103) #10
  br label %mthca_unlock_cqs.exit

mthca_unlock_cqs.exit:                            ; preds = %if.else.i104, %mthca_lock_cqs.exit.mthca_unlock_cqs.exit_crit_edge
  %send_cq.sink.i = phi ptr [ %1, %mthca_lock_cqs.exit.mthca_unlock_cqs.exit_crit_edge ], [ %send_cq.recv_cq.i, %if.else.i104 ]
  %lock5.i105 = getelementptr inbounds %struct.mthca_cq, ptr %send_cq.sink.i, i32 0, i32 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock5.i105) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1468) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %18 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %refcount, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %mthca_unlock_cqs.exit.do.end21_crit_edge, label %if.end

mthca_unlock_cqs.exit.do.end21_crit_edge:         ; preds = %mthca_unlock_cqs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

if.end:                                           ; preds = %mthca_unlock_cqs.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %20 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %wait = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 18
  %call14115 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %21 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %refcount, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool16.not116 = icmp eq i32 %22, 0
  br i1 %tobool16.not116, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #10
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %23 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %refcount, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %tobool16.not = icmp eq i32 %24, 0
  br i1 %tobool16.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.end21

do.end21:                                         ; preds = %for.end, %mthca_unlock_cqs.exit.do.end21_crit_edge
  %state = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 7
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp.not = icmp eq i8 %26, 0
  br i1 %cmp.not, label %do.end21.if.end28_crit_edge, label %if.then23

do.end21.if.end28_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then23:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %26 to i32
  %27 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qpn, align 8
  %call27 = call i32 @mthca_MODIFY_QP(ptr noundef %dev, i32 noundef %conv, i32 noundef 0, i32 noundef %28, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %do.end21.if.end28_crit_edge
  %uobject = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 14
  %29 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %uobject, align 8
  %tobool30.not = icmp eq ptr %30, null
  br i1 %tobool30.not, label %if.then31, label %if.end28.if.end43_crit_edge

if.end28.if.end43_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then31:                                        ; preds = %if.end28
  %31 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qpn, align 8
  %srq = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 8
  %33 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %srq, align 8
  call void @mthca_cq_clean(ptr noundef %dev, ptr noundef %3, i32 noundef %32, ptr noundef %34) #10
  br i1 %cmp.i, label %if.then31.if.end42_crit_edge, label %if.then40

if.then31.if.end42_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then40:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qpn, align 8
  call void @mthca_cq_clean(ptr noundef %dev, ptr noundef %1, i32 noundef %36, ptr noundef null) #10
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.then31.if.end42_crit_edge
  %mthca_flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %37 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i.i = and i32 %38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.end42.mthca_free_memfree.exit_crit_edge, label %if.then.i109

if.end42.mthca_free_memfree.exit_crit_edge:       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %mthca_free_memfree.exit

if.then.i109:                                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %db_index.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 9
  %39 = ptrtoint ptr %db_index.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %db_index.i, align 4
  call void @mthca_free_db(ptr noundef %dev, i32 noundef 3, i32 noundef %40) #10
  %db_index1.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 11, i32 9
  %41 = ptrtoint ptr %db_index1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %db_index1.i, align 4
  call void @mthca_free_db(ptr noundef %dev, i32 noundef 4, i32 noundef %42) #10
  br label %mthca_free_memfree.exit

mthca_free_memfree.exit:                          ; preds = %if.then.i109, %if.end42.mthca_free_memfree.exit_crit_edge
  %send_wqe_offset.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 14
  %43 = ptrtoint ptr %send_wqe_offset.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %send_wqe_offset.i, align 4
  %max.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 1
  %45 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max.i, align 4
  %wqe_shift.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 8
  %47 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wqe_shift.i, align 4
  %shl.i = shl i32 %46, %48
  %add.i = add i32 %44, 4095
  %add2.i = add i32 %add.i, %shl.i
  %and.i = and i32 %add2.i, -4096
  %queue.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 17
  %is_direct.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 3
  %49 = ptrtoint ptr %is_direct.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %is_direct.i, align 4
  %mr.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 10
  call void @mthca_buf_free(ptr noundef %dev, i32 noundef %and.i, ptr noundef %queue.i, i32 noundef %50, ptr noundef %mr.i) #10
  %wrid.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 16
  %51 = ptrtoint ptr %wrid.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wrid.i, align 4
  call void @kfree(ptr noundef %52) #10
  br label %if.end43

if.end43:                                         ; preds = %mthca_free_memfree.exit, %if.end28.if.end43_crit_edge
  %rdb_table.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 8
  %53 = ptrtoint ptr %rdb_table.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rdb_table.i, align 4
  %55 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %qpn, align 8
  %rdb_shift.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 2
  %57 = ptrtoint ptr %rdb_shift.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rdb_shift.i, align 4
  %shl.i110 = shl i32 %56, %58
  call void @mthca_table_put(ptr noundef %dev, ptr noundef %54, i32 noundef %shl.i110) #10
  %eqp_table.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 7
  %59 = ptrtoint ptr %eqp_table.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %eqp_table.i, align 8
  %61 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %qpn, align 8
  call void @mthca_table_put(ptr noundef %dev, ptr noundef %60, i32 noundef %62) #10
  %qp_table5.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 6
  %63 = ptrtoint ptr %qp_table5.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %qp_table5.i, align 4
  %65 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %qpn, align 8
  call void @mthca_table_put(ptr noundef %dev, ptr noundef %64, i32 noundef %66) #10
  %67 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %qpn, align 8
  %sqp_start.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 3
  %69 = ptrtoint ptr %sqp_start.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sqp_start.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp.not.i = icmp ult i32 %68, %70
  %add.i112 = add i32 %70, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %add.i112)
  %cmp4.i = icmp ugt i32 %68, %add.i112
  %tobool45.not = or i1 %cmp.not.i, %cmp4.i
  br i1 %tobool45.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %pd = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 1
  %71 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pd, align 4
  %sqp_count = getelementptr inbounds %struct.mthca_pd, ptr %72, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sqp_count, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %sqp_count, i32 1, i32 3, i32 1) #10
  %73 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sqp_count, ptr %sqp_count, i32 1, ptr elementtype(i32) %sqp_count) #10, !srcloc !129
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %74 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  %sqp = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 20
  %76 = ptrtoint ptr %sqp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sqp, align 8
  %header_buf_size = getelementptr inbounds %struct.mthca_sqp, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %header_buf_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %header_buf_size, align 8
  %header_buf = getelementptr inbounds %struct.mthca_sqp, ptr %77, i32 0, i32 5
  %80 = ptrtoint ptr %header_buf to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %header_buf, align 4
  %header_dma = getelementptr inbounds %struct.mthca_sqp, ptr %77, i32 0, i32 6
  %82 = ptrtoint ptr %header_dma to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %header_dma, align 8
  call void @dma_free_attrs(ptr noundef %dev49, i32 noundef %79, ptr noundef %81, i32 noundef %83, i32 noundef 0) #10
  br label %if.end54

if.else:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  call void @mthca_free(ptr noundef %qp_table, i32 noundef %68) #10
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then46
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_MODIFY_QP(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_cq_clean(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_tavor_post_send(ptr noundef %ibqp, ptr noundef %wr, ptr nocapture noundef writeonly %bad_wr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibqp, align 4
  %sq = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sq) #10
  %next_ind = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 2
  %2 = ptrtoint ptr %next_ind to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_ind, align 4
  %tobool.not356 = icmp eq ptr %wr, null
  br i1 %tobool.not356, label %entry.if.end183_crit_edge, label %for.body.lr.ph

entry.if.end183_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183

for.body.lr.ph:                                   ; preds = %entry
  %head.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 4
  %tail.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 5
  %max.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 1
  %send_cq = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 2
  %is_direct.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 3
  %queue2.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 17
  %send_wqe_offset3.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 14
  %wqe_shift.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 8
  %last = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 6
  %transport = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 6
  %max_gs = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 7
  %wrid = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 16
  %max103 = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc155.for.body_crit_edge, %for.body.lr.ph
  %wr.addr.0362 = phi ptr [ %wr, %for.body.lr.ph ], [ %169, %for.inc155.for.body_crit_edge ]
  %op0.0361 = phi i8 [ 0, %for.body.lr.ph ], [ %op0.1, %for.inc155.for.body_crit_edge ]
  %ind.0360 = phi i32 [ %3, %for.body.lr.ph ], [ %ind.1, %for.inc155.for.body_crit_edge ]
  %f0.0359 = phi i32 [ -1, %for.body.lr.ph ], [ %f0.1, %for.inc155.for.body_crit_edge ]
  %size0.0358 = phi i32 [ -1, %for.body.lr.ph ], [ %size0.1, %for.inc155.for.body_crit_edge ]
  %nreq.0357 = phi i32 [ 0, %for.body.lr.ph ], [ %inc156, %for.inc155.for.body_crit_edge ]
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head.i, align 4
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail.i, align 4
  %sub.i = add i32 %5, %nreq.0357
  %add.i = sub i32 %sub.i, %7
  %8 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %9)
  %cmp.i311 = icmp ult i32 %add.i, %9
  br i1 %cmp.i311, label %for.body.if.end_crit_edge, label %mthca_wq_overflow.exit, !prof !130

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

mthca_wq_overflow.exit:                           ; preds = %for.body
  %10 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %send_cq, align 8
  %lock.i = getelementptr inbounds %struct.mthca_cq, ptr %11, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %head.i, align 4
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tail.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  %sub4.i = add i32 %13, %nreq.0357
  %add6.i = sub i32 %sub4.i, %15
  %16 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %17)
  %cmp8.i.not = icmp ult i32 %add6.i, %17
  br i1 %cmp8.i.not, label %mthca_wq_overflow.exit.if.end_crit_edge, label %do.end14

mthca_wq_overflow.exit.if.end_crit_edge:          ; preds = %mthca_wq_overflow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end14:                                         ; preds = %mthca_wq_overflow.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %qpn = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 2
  %20 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qpn, align 8
  %22 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %head.i, align 4
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tail.i, align 4
  %26 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.22, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %nreq.0357) #13
  br label %out.sink.split

if.end:                                           ; preds = %mthca_wq_overflow.exit.if.end_crit_edge, %for.body.if.end_crit_edge
  %28 = ptrtoint ptr %is_direct.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %is_direct.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  %30 = ptrtoint ptr %queue2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue2.i, align 8
  %32 = ptrtoint ptr %send_wqe_offset3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %send_wqe_offset3.i, align 4
  br i1 %tobool.not.i, label %if.else.i314, label %if.then.i312

if.then.i312:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %31, i32 %33
  %34 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wqe_shift.i, align 4
  %shl.i = shl i32 %ind.0360, %35
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %shl.i
  br label %get_send_wqe.exit

if.else.i314:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wqe_shift.i, align 4
  %shl6.i = shl i32 %ind.0360, %37
  %add.i313 = add i32 %shl6.i, %33
  %shr.i = ashr i32 %add.i313, 12
  %arrayidx.i = getelementptr %struct.mthca_buf_list, ptr %31, i32 %shr.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %and.i = and i32 %add.i313, 4095
  %add.ptr13.i = getelementptr i8, ptr %39, i32 %and.i
  br label %get_send_wqe.exit

get_send_wqe.exit:                                ; preds = %if.else.i314, %if.then.i312
  %retval.0.i315 = phi ptr [ %add.ptr1.i, %if.then.i312 ], [ %add.ptr13.i, %if.else.i314 ]
  %40 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %last, align 4
  store ptr %retval.0.i315, ptr %last, align 4
  %42 = ptrtoint ptr %retval.0.i315 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %retval.0.i315, align 4
  %ee_nds = getelementptr inbounds %struct.mthca_next_seg, ptr %retval.0.i315, i32 0, i32 1
  %43 = ptrtoint ptr %ee_nds to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %ee_nds, align 4
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0362, i32 0, i32 5
  %44 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %send_flags, align 4
  %and = shl i32 %45, 2
  %46 = and i32 %and, 8
  %and25 = lshr i32 %45, 1
  %47 = and i32 %and25, 2
  %or = or i32 %47, %46
  %or28 = or i32 %or, 1
  %flags29 = getelementptr inbounds %struct.mthca_next_seg, ptr %retval.0.i315, i32 0, i32 2
  %48 = ptrtoint ptr %flags29 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or28, ptr %flags29, align 4
  %opcode = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0362, i32 0, i32 4
  %49 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %opcode, align 8
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %50, label %get_send_wqe.exit.if.end36_crit_edge [
    i32 3, label %get_send_wqe.exit.if.then35_crit_edge
    i32 1, label %get_send_wqe.exit.if.then35_crit_edge516
  ]

get_send_wqe.exit.if.then35_crit_edge516:         ; preds = %get_send_wqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

get_send_wqe.exit.if.then35_crit_edge:            ; preds = %get_send_wqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

get_send_wqe.exit.if.end36_crit_edge:             ; preds = %get_send_wqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then35:                                        ; preds = %get_send_wqe.exit.if.then35_crit_edge, %get_send_wqe.exit.if.then35_crit_edge516
  %ex = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0362, i32 0, i32 6
  %52 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ex, align 8
  %imm = getelementptr inbounds %struct.mthca_next_seg, ptr %retval.0.i315, i32 0, i32 3
  %54 = ptrtoint ptr %imm to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %imm, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %get_send_wqe.exit.if.end36_crit_edge
  %add.ptr = getelementptr i8, ptr %retval.0.i315, i32 16
  %55 = ptrtoint ptr %transport to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %transport, align 2
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %56, label %if.end36.sw.epilog76_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb52
    i8 2, label %sw.bb63
    i8 5, label %sw.bb67
  ]

if.end36.sw.epilog76_crit_edge:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog76

sw.bb:                                            ; preds = %if.end36
  %58 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %opcode, align 8
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %59, label %sw.bb.sw.epilog76_crit_edge [
    i32 5, label %sw.bb.sw.bb39_crit_edge
    i32 6, label %sw.bb.sw.bb39_crit_edge517
    i32 0, label %sw.bb.sw.bb45_crit_edge
    i32 1, label %sw.bb.sw.bb45_crit_edge518
    i32 4, label %sw.bb.sw.bb45_crit_edge519
  ]

sw.bb.sw.bb45_crit_edge519:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45

sw.bb.sw.bb45_crit_edge518:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45

sw.bb.sw.bb45_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45

sw.bb.sw.bb39_crit_edge517:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb39

sw.bb.sw.bb39_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb39

sw.bb.sw.epilog76_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog76

sw.bb39:                                          ; preds = %sw.bb.sw.bb39_crit_edge, %sw.bb.sw.bb39_crit_edge517
  %remote_addr = getelementptr inbounds %struct.ib_atomic_wr, ptr %wr.addr.0362, i32 0, i32 1
  %61 = ptrtoint ptr %remote_addr to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %remote_addr, align 8
  %rkey = getelementptr inbounds %struct.ib_atomic_wr, ptr %wr.addr.0362, i32 0, i32 6
  %63 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rkey, align 8
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %62, ptr %add.ptr, align 8
  %rkey1.i = getelementptr i8, ptr %retval.0.i315, i32 24
  %66 = ptrtoint ptr %rkey1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %64, ptr %rkey1.i, align 8
  %reserved.i = getelementptr i8, ptr %retval.0.i315, i32 28
  %67 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %reserved.i, align 4
  %add.ptr42 = getelementptr i8, ptr %retval.0.i315, i32 32
  %68 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %opcode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %69)
  %cmp.i = icmp eq i32 %69, 5
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #12
  %swap.i = getelementptr inbounds %struct.ib_atomic_wr, ptr %wr.addr.0362, i32 0, i32 3
  %70 = ptrtoint ptr %swap.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %swap.i, align 8
  %72 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %add.ptr42, align 8
  %compare_add.i = getelementptr inbounds %struct.ib_atomic_wr, ptr %wr.addr.0362, i32 0, i32 2
  %73 = ptrtoint ptr %compare_add.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %compare_add.i, align 8
  br label %set_atomic_seg.exit

if.else.i:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #12
  %compare_add2.i = getelementptr inbounds %struct.ib_atomic_wr, ptr %wr.addr.0362, i32 0, i32 2
  %75 = ptrtoint ptr %compare_add2.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %compare_add2.i, align 8
  %77 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %add.ptr42, align 8
  br label %set_atomic_seg.exit

set_atomic_seg.exit:                              ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i64 [ %74, %if.then.i ], [ 0, %if.else.i ]
  %78 = getelementptr i8, ptr %retval.0.i315, i32 40
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %.sink.i, ptr %78, align 8
  %add.ptr44 = getelementptr i8, ptr %retval.0.i315, i32 48
  br label %sw.epilog76

sw.bb45:                                          ; preds = %sw.bb.sw.bb45_crit_edge, %sw.bb.sw.bb45_crit_edge518, %sw.bb.sw.bb45_crit_edge519
  %remote_addr47 = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0362, i32 0, i32 1
  %80 = ptrtoint ptr %remote_addr47 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %remote_addr47, align 8
  %rkey49 = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0362, i32 0, i32 2
  %82 = ptrtoint ptr %rkey49 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rkey49, align 8
  %84 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %81, ptr %add.ptr, align 8
  %rkey1.i307 = getelementptr i8, ptr %retval.0.i315, i32 24
  %85 = ptrtoint ptr %rkey1.i307 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %83, ptr %rkey1.i307, align 8
  %reserved.i308 = getelementptr i8, ptr %retval.0.i315, i32 28
  %86 = ptrtoint ptr %reserved.i308 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %reserved.i308, align 4
  %add.ptr50 = getelementptr i8, ptr %retval.0.i315, i32 32
  br label %sw.epilog76

sw.bb52:                                          ; preds = %if.end36
  %87 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %opcode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %switch = icmp ult i32 %88, 2
  br i1 %switch, label %sw.bb54, label %sw.bb52.sw.epilog76_crit_edge

sw.bb52.sw.epilog76_crit_edge:                    ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog76

sw.bb54:                                          ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #12
  %remote_addr56 = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0362, i32 0, i32 1
  %89 = ptrtoint ptr %remote_addr56 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %remote_addr56, align 8
  %rkey58 = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0362, i32 0, i32 2
  %91 = ptrtoint ptr %rkey58 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rkey58, align 8
  %93 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %90, ptr %add.ptr, align 8
  %rkey1.i309 = getelementptr i8, ptr %retval.0.i315, i32 24
  %94 = ptrtoint ptr %rkey1.i309 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %92, ptr %rkey1.i309, align 8
  %reserved.i310 = getelementptr i8, ptr %retval.0.i315, i32 28
  %95 = ptrtoint ptr %reserved.i310 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %reserved.i310, align 4
  %add.ptr59 = getelementptr i8, ptr %retval.0.i315, i32 32
  br label %sw.epilog76

sw.bb63:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %ah.i = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0362, i32 0, i32 1
  %96 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ah.i, align 8
  %key.i = getelementptr inbounds %struct.mthca_ah, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %key.i, align 4
  %lkey.i316 = getelementptr i8, ptr %retval.0.i315, i32 20
  %100 = ptrtoint ptr %lkey.i316 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %lkey.i316, align 4
  %101 = load ptr, ptr %ah.i, align 8
  %avdma.i = getelementptr inbounds %struct.mthca_ah, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %avdma.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %avdma.i, align 4
  %conv.i317 = zext i32 %103 to i64
  %av_addr.i = getelementptr i8, ptr %retval.0.i315, i32 24
  %104 = ptrtoint ptr %av_addr.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %conv.i317, ptr %av_addr.i, align 8
  %remote_qpn.i = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0362, i32 0, i32 5
  %105 = ptrtoint ptr %remote_qpn.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %remote_qpn.i, align 8
  %dqpn.i = getelementptr i8, ptr %retval.0.i315, i32 48
  %107 = ptrtoint ptr %dqpn.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %dqpn.i, align 8
  %remote_qkey.i = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0362, i32 0, i32 6
  %108 = ptrtoint ptr %remote_qkey.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %remote_qkey.i, align 4
  %qkey.i = getelementptr i8, ptr %retval.0.i315, i32 52
  %110 = ptrtoint ptr %qkey.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %qkey.i, align 4
  %add.ptr65 = getelementptr i8, ptr %retval.0.i315, i32 64
  br label %sw.epilog76

sw.bb67:                                          ; preds = %if.end36
  %call70 = tail call fastcc i32 @build_mlx_header(ptr noundef %1, ptr noundef %ibqp, i32 noundef %ind.0360, ptr noundef nonnull %wr.addr.0362, ptr noundef %retval.0.i315, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %sw.bb67.out.sink.split_crit_edge

sw.bb67.out.sink.split_crit_edge:                 ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

if.end73:                                         ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr74 = getelementptr i8, ptr %retval.0.i315, i32 32
  br label %sw.epilog76

sw.epilog76:                                      ; preds = %if.end73, %sw.bb63, %sw.bb54, %sw.bb52.sw.epilog76_crit_edge, %sw.bb45, %set_atomic_seg.exit, %sw.bb.sw.epilog76_crit_edge, %if.end36.sw.epilog76_crit_edge
  %wqe.0 = phi ptr [ %add.ptr, %if.end36.sw.epilog76_crit_edge ], [ %add.ptr74, %if.end73 ], [ %add.ptr65, %sw.bb63 ], [ %add.ptr, %sw.bb52.sw.epilog76_crit_edge ], [ %add.ptr59, %sw.bb54 ], [ %add.ptr, %sw.bb.sw.epilog76_crit_edge ], [ %add.ptr50, %sw.bb45 ], [ %add.ptr44, %set_atomic_seg.exit ]
  %size.0 = phi i32 [ 1, %if.end36.sw.epilog76_crit_edge ], [ 2, %if.end73 ], [ 4, %sw.bb63 ], [ 1, %sw.bb52.sw.epilog76_crit_edge ], [ 2, %sw.bb54 ], [ 1, %sw.bb.sw.epilog76_crit_edge ], [ 2, %sw.bb45 ], [ 3, %set_atomic_seg.exit ]
  %num_sge = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0362, i32 0, i32 3
  %111 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %num_sge, align 4
  %113 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %max_gs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %114)
  %cmp78 = icmp sgt i32 %112, %114
  br i1 %cmp78, label %do.end83, label %for.cond87.preheader

for.cond87.preheader:                             ; preds = %sw.epilog76
  %115 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %num_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp89351 = icmp sgt i32 %116, 0
  br i1 %cmp89351, label %for.body91.lr.ph, label %for.cond87.preheader.for.end_crit_edge

for.cond87.preheader.for.end_crit_edge:           ; preds = %for.cond87.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body91.lr.ph:                                 ; preds = %for.cond87.preheader
  %sg_list = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0362, i32 0, i32 2
  br label %for.body91

do.end83:                                         ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #12
  %pdev84 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %117 = ptrtoint ptr %pdev84 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pdev84, align 8
  %dev85 = getelementptr inbounds %struct.pci_dev, ptr %118, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev85, ptr noundef nonnull @.str.26) #13
  br label %out.sink.split

for.body91:                                       ; preds = %for.body91.for.body91_crit_edge, %for.body91.lr.ph
  %size.1354 = phi i32 [ %size.0, %for.body91.lr.ph ], [ %add94, %for.body91.for.body91_crit_edge ]
  %i.0353 = phi i32 [ 0, %for.body91.lr.ph ], [ %inc, %for.body91.for.body91_crit_edge ]
  %wqe.1352 = phi ptr [ %wqe.0, %for.body91.lr.ph ], [ %add.ptr93, %for.body91.for.body91_crit_edge ]
  %119 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sg_list, align 8
  %add.ptr92 = getelementptr %struct.ib_sge, ptr %120, i32 %i.0353
  %length.i = getelementptr %struct.ib_sge, ptr %120, i32 %i.0353, i32 1
  %121 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %length.i, align 8
  %123 = ptrtoint ptr %wqe.1352 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %wqe.1352, align 8
  %lkey.i = getelementptr %struct.ib_sge, ptr %120, i32 %i.0353, i32 2
  %124 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %lkey.i, align 4
  %lkey1.i = getelementptr inbounds %struct.mthca_data_seg, ptr %wqe.1352, i32 0, i32 1
  %126 = ptrtoint ptr %lkey1.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %lkey1.i, align 4
  %127 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %add.ptr92, align 8
  %addr2.i = getelementptr inbounds %struct.mthca_data_seg, ptr %wqe.1352, i32 0, i32 2
  %129 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %128, ptr %addr2.i, align 8
  %add.ptr93 = getelementptr i8, ptr %wqe.1352, i32 16
  %add94 = add nuw i32 %size.1354, 1
  %inc = add nuw nsw i32 %i.0353, 1
  %130 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %num_sge, align 4
  %cmp89 = icmp slt i32 %inc, %131
  br i1 %cmp89, label %for.body91.for.body91_crit_edge, label %for.body91.for.end_crit_edge

for.body91.for.end_crit_edge:                     ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body91.for.body91_crit_edge:                  ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body91

for.end:                                          ; preds = %for.body91.for.end_crit_edge, %for.cond87.preheader.for.end_crit_edge
  %wqe.1.lcssa = phi ptr [ %wqe.0, %for.cond87.preheader.for.end_crit_edge ], [ %add.ptr93, %for.body91.for.end_crit_edge ]
  %size.1.lcssa = phi i32 [ %size.0, %for.cond87.preheader.for.end_crit_edge ], [ %add94, %for.body91.for.end_crit_edge ]
  %132 = ptrtoint ptr %transport to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %transport, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %133)
  %cmp97 = icmp eq i8 %133, 5
  br i1 %cmp97, label %if.then99, label %for.end.if.end102_crit_edge

for.end.if.end102_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then99:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %134 = ptrtoint ptr %wqe.1.lcssa to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -2147483644, ptr %wqe.1.lcssa, align 8
  %arrayidx = getelementptr i32, ptr %wqe.1.lcssa, i32 1
  %135 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %arrayidx, align 4
  %add101 = add i32 %size.1.lcssa, 1
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %for.end.if.end102_crit_edge
  %size.2 = phi i32 [ %add101, %if.then99 ], [ %size.1.lcssa, %for.end.if.end102_crit_edge ]
  %136 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0362, i32 0, i32 1
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %136, align 8
  %139 = ptrtoint ptr %wrid to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %wrid, align 4
  %141 = ptrtoint ptr %max103 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %max103, align 4
  %add104 = add i32 %142, %ind.0360
  %arrayidx105 = getelementptr i64, ptr %140, i32 %add104
  %143 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %138, ptr %arrayidx105, align 8
  %144 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %opcode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %145)
  %cmp107 = icmp ugt i32 %145, 6
  br i1 %cmp107, label %do.end112, label %if.end115

do.end112:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  %pdev113 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %146 = ptrtoint ptr %pdev113 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pdev113, align 8
  %dev114 = getelementptr inbounds %struct.pci_dev, ptr %147, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev114, ptr noundef nonnull @.str.29) #13
  br label %out.sink.split

if.end115:                                        ; preds = %if.end102
  %148 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %wqe_shift.i, align 4
  %shl = shl i32 %ind.0360, %149
  %150 = ptrtoint ptr %send_wqe_offset3.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %send_wqe_offset3.i, align 4
  %add117 = add i32 %shl, %151
  %arrayidx119 = getelementptr [7 x i8], ptr @mthca_opcode, i32 0, i32 %145
  %152 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx119, align 1
  %conv120 = zext i8 %153 to i32
  %or121 = or i32 %add117, %conv120
  %154 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %or121, ptr %41, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  tail call void @arm_heavy_mb() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nreq.0357)
  %tobool126.not = icmp eq i32 %nreq.0357, 0
  %cond127 = select i1 %tobool126.not, i32 128, i32 0
  %or128 = or i32 %size.2, %cond127
  %155 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %send_flags, align 4
  %and130 = shl i32 %156, 6
  %157 = and i32 %and130, 64
  %or133 = or i32 %or128, %157
  %ee_nds134 = getelementptr inbounds %struct.mthca_next_seg, ptr %41, i32 0, i32 1
  %158 = ptrtoint ptr %ee_nds134 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %or133, ptr %ee_nds134, align 4
  br i1 %tobool126.not, label %if.then136, label %if.end115.if.end143_crit_edge

if.end115.if.end143_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

if.then136:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  %159 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %opcode, align 8
  %arrayidx138 = getelementptr [7 x i8], ptr @mthca_opcode, i32 0, i32 %160
  %161 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx138, align 1
  %163 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %send_flags, align 4
  %and140 = shl i32 %164, 5
  %165 = and i32 %and140, 32
  br label %if.end143

if.end143:                                        ; preds = %if.then136, %if.end115.if.end143_crit_edge
  %size0.1 = phi i32 [ %size0.0358, %if.end115.if.end143_crit_edge ], [ %size.2, %if.then136 ]
  %f0.1 = phi i32 [ %f0.0359, %if.end115.if.end143_crit_edge ], [ %165, %if.then136 ]
  %op0.1 = phi i8 [ %op0.0361, %if.end115.if.end143_crit_edge ], [ %162, %if.then136 ]
  %inc144 = add i32 %ind.0360, 1
  %166 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc144, i32 %167)
  %cmp147.not = icmp slt i32 %inc144, %167
  br i1 %cmp147.not, label %if.end143.for.inc155_crit_edge, label %if.then151, !prof !130

if.end143.for.inc155_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc155

if.then151:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %inc144, %167
  br label %for.inc155

for.inc155:                                       ; preds = %if.then151, %if.end143.for.inc155_crit_edge
  %ind.1 = phi i32 [ %sub, %if.then151 ], [ %inc144, %if.end143.for.inc155_crit_edge ]
  %inc156 = add i32 %nreq.0357, 1
  %168 = ptrtoint ptr %wr.addr.0362 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %wr.addr.0362, align 8
  %tobool.not = icmp eq ptr %169, null
  br i1 %tobool.not, label %for.inc155.out_crit_edge, label %for.inc155.for.body_crit_edge

for.inc155.for.body_crit_edge:                    ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc155.out_crit_edge:                         ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out.sink.split:                                   ; preds = %do.end112, %do.end83, %sw.bb67.out.sink.split_crit_edge, %do.end14
  %err.2.ph = phi i32 [ -22, %do.end112 ], [ -22, %do.end83 ], [ -12, %do.end14 ], [ %call70, %sw.bb67.out.sink.split_crit_edge ]
  %170 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %wr.addr.0362, ptr %bad_wr, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %for.inc155.out_crit_edge
  %nreq.0350 = phi i32 [ %nreq.0357, %out.sink.split ], [ %inc156, %for.inc155.out_crit_edge ]
  %size0.0345 = phi i32 [ %size0.0358, %out.sink.split ], [ %size0.1, %for.inc155.out_crit_edge ]
  %f0.0340 = phi i32 [ %f0.0359, %out.sink.split ], [ %f0.1, %for.inc155.out_crit_edge ]
  %ind.0335 = phi i32 [ %ind.0360, %out.sink.split ], [ %ind.1, %for.inc155.out_crit_edge ]
  %op0.0330 = phi i8 [ %op0.0361, %out.sink.split ], [ %op0.1, %for.inc155.out_crit_edge ]
  %err.2 = phi i32 [ %err.2.ph, %out.sink.split ], [ 0, %for.inc155.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nreq.0350)
  %tobool158.not = icmp eq i32 %nreq.0350, 0
  br i1 %tobool158.not, label %out.if.end183_crit_edge, label %do.body166, !prof !127

out.if.end183_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183

do.body166:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  tail call void @arm_heavy_mb() #10
  %171 = ptrtoint ptr %next_ind to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %next_ind, align 4
  %wqe_shift172 = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 8
  %173 = ptrtoint ptr %wqe_shift172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %wqe_shift172, align 4
  %shl173 = shl i32 %172, %174
  %send_wqe_offset174 = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 14
  %175 = ptrtoint ptr %send_wqe_offset174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %send_wqe_offset174, align 4
  %add175 = add i32 %shl173, %176
  %conv177 = zext i8 %op0.0330 to i32
  %or176 = or i32 %f0.0340, %conv177
  %or178 = or i32 %or176, %add175
  %qpn179 = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 2
  %177 = ptrtoint ptr %qpn179 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %qpn179, align 8
  %shl180 = shl i32 %178, 8
  %or181 = or i32 %shl180, %size0.0345
  %kar = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 14
  %179 = ptrtoint ptr %kar to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %kar, align 4
  %add.ptr182 = getelementptr i8, ptr %180, i32 16
  %doorbell_lock = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_lock) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr182, i32 %or178) #10, !srcloc !133
  %add.ptr.i318 = getelementptr i8, ptr %180, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i318, i32 %or181) #10, !srcloc !133
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_lock, i32 noundef %call2.i) #10
  br label %if.end183

if.end183:                                        ; preds = %do.body166, %out.if.end183_crit_edge, %entry.if.end183_crit_edge
  %err.2401 = phi i32 [ %err.2, %do.body166 ], [ %err.2, %out.if.end183_crit_edge ], [ 0, %entry.if.end183_crit_edge ]
  %ind.0335400 = phi i32 [ %ind.0335, %do.body166 ], [ %ind.0335, %out.if.end183_crit_edge ], [ %3, %entry.if.end183_crit_edge ]
  %nreq.0350399 = phi i32 [ %nreq.0350, %do.body166 ], [ 0, %out.if.end183_crit_edge ], [ 0, %entry.if.end183_crit_edge ]
  %181 = ptrtoint ptr %next_ind to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %ind.0335400, ptr %next_ind, align 4
  %head187 = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 4
  %182 = ptrtoint ptr %head187 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %head187, align 4
  %add188 = add i32 %183, %nreq.0350399
  store i32 %add188, ptr %head187, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sq, i32 noundef %call4) #10
  ret i32 %err.2401
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @build_mlx_header(ptr noundef %dev, ptr nocapture noundef readonly %qp, i32 noundef %ind, ptr nocapture noundef readonly %wr, ptr nocapture noundef %mlx, ptr nocapture noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  %pkey = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sqp1 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 20
  %0 = ptrtoint ptr %sqp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sqp1, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pkey) #10
  %2 = ptrtoint ptr %pkey to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %pkey, align 2, !annotation !134
  %ah = getelementptr inbounds %struct.ib_ud_wr, ptr %wr, i32 0, i32 1
  %3 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ah, align 8
  %call2 = tail call i32 @mthca_ah_grh_present(ptr noundef %4) #10
  %ud_header = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @ib_ud_header_init(i32 noundef 256, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef %call2, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %ud_header) #10
  %5 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ah, align 8
  %call7 = tail call i32 @mthca_read_ah(ptr noundef %dev, ptr noundef %6, ptr noundef %ud_header) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.mthca_mlx_seg, ptr %mlx, i32 0, i32 2
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, -4
  store i32 %and, ptr %flags, align 4
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 19
  %9 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qp_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  %cond = select i1 %tobool8.not, i32 131072, i32 0
  %lrh = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 3, i32 1
  %destination_lid = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 3, i32 1, i32 4
  %11 = ptrtoint ptr %destination_lid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %destination_lid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %12)
  %cmp = icmp eq i16 %12, -1
  %cond11 = select i1 %cmp, i32 65536, i32 0
  %or = or i32 %cond, %cond11
  %service_level = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 3, i32 1, i32 2
  %13 = ptrtoint ptr %service_level to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %service_level, align 2
  %conv14 = zext i8 %14 to i32
  %shl = shl nuw nsw i32 %conv14, 8
  %or15 = or i32 %or, %shl
  %or17 = or i32 %or15, %and
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or17, ptr %flags, align 4
  %16 = ptrtoint ptr %destination_lid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %destination_lid, align 4
  %rlid = getelementptr inbounds %struct.mthca_mlx_seg, ptr %mlx, i32 0, i32 3
  %18 = ptrtoint ptr %rlid to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %rlid, align 4
  %vcrc = getelementptr inbounds %struct.mthca_mlx_seg, ptr %mlx, i32 0, i32 4
  %19 = ptrtoint ptr %vcrc to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %vcrc, align 2
  %opcode = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 4
  %20 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %opcode, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %21, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb25
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bth = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 3, i32 12
  %23 = ptrtoint ptr %bth to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 100, ptr %bth, align 8
  %immediate_present = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 3, i32 14
  %24 = ptrtoint ptr %immediate_present to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %immediate_present, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bth27 = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 3, i32 12
  %25 = ptrtoint ptr %bth27 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 101, ptr %bth27, align 8
  %immediate_present30 = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 3, i32 14
  %26 = ptrtoint ptr %immediate_present30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %immediate_present30, align 4
  %ex = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 6
  %27 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ex, align 8
  %immediate_data = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 3, i32 15
  %29 = ptrtoint ptr %immediate_data to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %immediate_data, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb
  %30 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qp_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool35.not = icmp eq i32 %31, 0
  %conv38 = select i1 %tobool35.not, i8 15, i8 0
  %32 = ptrtoint ptr %lrh to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv38, ptr %lrh, align 4
  %33 = ptrtoint ptr %destination_lid to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %destination_lid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %34)
  %cmp45 = icmp eq i16 %34, -1
  br i1 %cmp45, label %if.then47, label %sw.epilog.if.end50_crit_edge

sw.epilog.if.end50_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then47:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %source_lid = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 3, i32 1, i32 6
  %35 = ptrtoint ptr %source_lid to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -1, ptr %source_lid, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %sw.epilog.if.end50_crit_edge
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 5
  %36 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %send_flags, align 4
  %38 = trunc i32 %37 to i8
  %39 = lshr i8 %38, 2
  %40 = and i8 %39, 1
  %solicited_event = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 3, i32 12, i32 1
  %41 = ptrtoint ptr %solicited_event to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %solicited_event, align 1
  %42 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qp_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool61.not = icmp eq i32 %43, 0
  %port = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 4
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %port, align 8
  %conv63 = zext i8 %45 to i32
  br i1 %tobool61.not, label %if.then62, label %if.else

if.then62:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %1, align 8
  br label %if.end71

if.else:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %pkey_index68 = getelementptr inbounds %struct.ib_ud_wr, ptr %wr, i32 0, i32 7
  %48 = ptrtoint ptr %pkey_index68 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %pkey_index68, align 8
  %conv69 = zext i16 %49 to i32
  br label %if.end71

if.end71:                                         ; preds = %if.else, %if.then62
  %conv69.sink = phi i32 [ %conv69, %if.else ], [ %47, %if.then62 ]
  %call70 = call i32 @ib_get_cached_pkey(ptr noundef %dev, i32 noundef %conv63, i32 noundef %conv69.sink, ptr noundef nonnull %pkey) #10
  %50 = ptrtoint ptr %pkey to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %pkey, align 2
  %pkey74 = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 3, i32 12, i32 5
  %52 = ptrtoint ptr %pkey74 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %pkey74, align 2
  %remote_qpn = getelementptr inbounds %struct.ib_ud_wr, ptr %wr, i32 0, i32 5
  %53 = ptrtoint ptr %remote_qpn to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %remote_qpn, align 8
  %destination_qpn = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 3, i32 12, i32 6
  %55 = ptrtoint ptr %destination_qpn to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %destination_qpn, align 8
  %send_psn = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %send_psn to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %send_psn, align 8
  %inc = add i32 %57, 1
  store i32 %inc, ptr %send_psn, align 8
  %and77 = and i32 %57, 16777215
  %psn = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 3, i32 12, i32 8
  %58 = ptrtoint ptr %psn to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and77, ptr %psn, align 8
  %remote_qkey = getelementptr inbounds %struct.ib_ud_wr, ptr %wr, i32 0, i32 6
  %59 = ptrtoint ptr %remote_qkey to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %remote_qkey, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %tobool81.not = icmp sgt i32 %60, -1
  br i1 %tobool81.not, label %if.end71.cond.end_crit_edge, label %cond.true

if.end71.cond.end_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %qkey = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %qkey to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %qkey, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end71.cond.end_crit_edge
  %cond83 = phi i32 [ %62, %cond.true ], [ %60, %if.end71.cond.end_crit_edge ]
  %deth = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 3, i32 13
  %63 = ptrtoint ptr %deth to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %cond83, ptr %deth, align 4
  %64 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %qp_num, align 4
  %source_qpn = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 3, i32 13, i32 1
  %66 = ptrtoint ptr %source_qpn to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %source_qpn, align 4
  %header_buf = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 5
  %67 = ptrtoint ptr %header_buf to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %header_buf, align 4
  %mul = mul i32 %ind, 72
  %add.ptr = getelementptr i8, ptr %68, i32 %mul
  %call91 = call i32 @ib_ud_header_pack(ptr noundef %ud_header, ptr noundef %add.ptr) #10
  %69 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call91, ptr %data, align 8
  %pd = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 1
  %70 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pd, align 4
  %lkey = getelementptr inbounds %struct.mthca_pd, ptr %71, i32 0, i32 3, i32 0, i32 2
  %72 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %lkey, align 8
  %lkey94 = getelementptr inbounds %struct.mthca_data_seg, ptr %data, i32 0, i32 1
  %74 = ptrtoint ptr %lkey94 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %lkey94, align 4
  %header_dma = getelementptr inbounds %struct.mthca_sqp, ptr %1, i32 0, i32 6
  %75 = ptrtoint ptr %header_dma to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %header_dma, align 8
  %add = add i32 %76, %mul
  %conv96 = zext i32 %add to i64
  %addr = getelementptr inbounds %struct.mthca_data_seg, ptr %data, i32 0, i32 2
  %77 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv96, ptr %addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ %call7, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pkey) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mthca_write64(i32 noundef %hi, i32 noundef %lo, ptr noundef %dest, ptr noundef %doorbell_lock) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_lock) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dest, i32 %hi) #10, !srcloc !133
  %add.ptr = getelementptr i8, ptr %dest, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %lo) #10, !srcloc !133
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_lock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_tavor_post_receive(ptr noundef %ibqp, ptr noundef %wr, ptr nocapture noundef writeonly %bad_wr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibqp, align 4
  %rq = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rq) #10
  %next_ind = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %next_ind to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_ind, align 8
  %tobool.not198 = icmp eq ptr %wr, null
  br i1 %tobool.not198, label %entry.if.end108_crit_edge, label %for.body.lr.ph

entry.if.end108_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

for.body.lr.ph:                                   ; preds = %entry
  %head.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 4
  %tail.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 5
  %max.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 1
  %recv_cq = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 3
  %is_direct.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 3
  %queue1.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 17
  %wqe_shift3.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 8
  %last = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 6
  %max_gs = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 7
  %wrid = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 16
  %qpn74 = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 2
  %kar = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 14
  %doorbell_lock = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc83.for.body_crit_edge, %for.body.lr.ph
  %wr.addr.0202 = phi ptr [ %wr, %for.body.lr.ph ], [ %80, %for.inc83.for.body_crit_edge ]
  %ind.0201 = phi i32 [ %3, %for.body.lr.ph ], [ %ind.1, %for.inc83.for.body_crit_edge ]
  %size0.0200 = phi i32 [ -1, %for.body.lr.ph ], [ %spec.select, %for.inc83.for.body_crit_edge ]
  %nreq.0199 = phi i32 [ 0, %for.body.lr.ph ], [ %nreq.1, %for.inc83.for.body_crit_edge ]
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head.i, align 4
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail.i, align 4
  %sub.i = add i32 %5, %nreq.0199
  %add.i = sub i32 %sub.i, %7
  %8 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %9)
  %cmp.i = icmp ult i32 %add.i, %9
  br i1 %cmp.i, label %for.body.if.end_crit_edge, label %mthca_wq_overflow.exit, !prof !130

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

mthca_wq_overflow.exit:                           ; preds = %for.body
  %10 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %recv_cq, align 4
  %lock.i = getelementptr inbounds %struct.mthca_cq, ptr %11, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %head.i, align 4
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tail.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  %sub4.i = add i32 %13, %nreq.0199
  %add6.i = sub i32 %sub4.i, %15
  %16 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %17)
  %cmp8.i.not = icmp ult i32 %add6.i, %17
  br i1 %cmp8.i.not, label %mthca_wq_overflow.exit.if.end_crit_edge, label %do.end14

mthca_wq_overflow.exit.if.end_crit_edge:          ; preds = %mthca_wq_overflow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end14:                                         ; preds = %mthca_wq_overflow.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %qpn74 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qpn74, align 8
  %22 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %head.i, align 8
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tail.i, align 4
  %26 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.31, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %nreq.0199) #13
  br label %out.sink.split

if.end:                                           ; preds = %mthca_wq_overflow.exit.if.end_crit_edge, %for.body.if.end_crit_edge
  %28 = ptrtoint ptr %is_direct.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %is_direct.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  %30 = ptrtoint ptr %queue1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue1.i, align 8
  %32 = ptrtoint ptr %wqe_shift3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wqe_shift3.i, align 8
  %shl4.i = shl i32 %ind.0201, %33
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %31, i32 %shl4.i
  br label %get_recv_wqe.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i = ashr i32 %shl4.i, 12
  %arrayidx.i = getelementptr %struct.mthca_buf_list, ptr %31, i32 %shr.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %and.i = and i32 %shl4.i, 4095
  %add.ptr9.i = getelementptr i8, ptr %35, i32 %and.i
  br label %get_recv_wqe.exit

get_recv_wqe.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i177 = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr9.i, %if.else.i ]
  %36 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %last, align 8
  store ptr %retval.0.i177, ptr %last, align 8
  %ee_nds = getelementptr inbounds %struct.mthca_next_seg, ptr %retval.0.i177, i32 0, i32 1
  %38 = ptrtoint ptr %ee_nds to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 128, ptr %ee_nds, align 4
  %flags23 = getelementptr inbounds %struct.mthca_next_seg, ptr %retval.0.i177, i32 0, i32 2
  %39 = ptrtoint ptr %flags23 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %flags23, align 4
  %num_sge = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0202, i32 0, i32 3
  %40 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_sge, align 4
  %42 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_gs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp25 = icmp sgt i32 %41, %43
  br i1 %cmp25, label %get_recv_wqe.exit.out.sink.split_crit_edge, label %for.cond31.preheader, !prof !127

get_recv_wqe.exit.out.sink.split_crit_edge:       ; preds = %get_recv_wqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

for.cond31.preheader:                             ; preds = %get_recv_wqe.exit
  %44 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp33194 = icmp sgt i32 %45, 0
  br i1 %cmp33194, label %for.body35.lr.ph, label %for.cond31.preheader.for.end_crit_edge

for.cond31.preheader.for.end_crit_edge:           ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body35.lr.ph:                                 ; preds = %for.cond31.preheader
  %sg_list = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0202, i32 0, i32 2
  br label %for.body35

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.body35.lr.ph
  %call19.pn197 = phi ptr [ %retval.0.i177, %for.body35.lr.ph ], [ %wqe.0, %for.body35.for.body35_crit_edge ]
  %size.0196 = phi i32 [ 1, %for.body35.lr.ph ], [ %add, %for.body35.for.body35_crit_edge ]
  %i.0195 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc, %for.body35.for.body35_crit_edge ]
  %wqe.0 = getelementptr i8, ptr %call19.pn197, i32 16
  %46 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sg_list, align 8
  %add.ptr36 = getelementptr %struct.ib_sge, ptr %47, i32 %i.0195
  %length.i = getelementptr %struct.ib_sge, ptr %47, i32 %i.0195, i32 1
  %48 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %length.i, align 8
  %50 = ptrtoint ptr %wqe.0 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %wqe.0, align 8
  %lkey.i = getelementptr %struct.ib_sge, ptr %47, i32 %i.0195, i32 2
  %51 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %lkey.i, align 4
  %lkey1.i = getelementptr i8, ptr %call19.pn197, i32 20
  %53 = ptrtoint ptr %lkey1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %lkey1.i, align 4
  %54 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %add.ptr36, align 8
  %addr2.i = getelementptr i8, ptr %call19.pn197, i32 24
  %56 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %addr2.i, align 8
  %add = add nuw i32 %size.0196, 1
  %inc = add nuw nsw i32 %i.0195, 1
  %57 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_sge, align 4
  %cmp33 = icmp slt i32 %inc, %58
  br i1 %cmp33, label %for.body35.for.body35_crit_edge, label %for.body35.for.end_crit_edge

for.body35.for.end_crit_edge:                     ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body35

for.end:                                          ; preds = %for.body35.for.end_crit_edge, %for.cond31.preheader.for.end_crit_edge
  %size.0.lcssa = phi i32 [ 1, %for.cond31.preheader.for.end_crit_edge ], [ %add, %for.body35.for.end_crit_edge ]
  %59 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0202, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %59, align 8
  %62 = ptrtoint ptr %wrid to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wrid, align 4
  %arrayidx = getelementptr i64, ptr %63, i32 %ind.0201
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %61, ptr %arrayidx, align 8
  %or = or i32 %size.0.lcssa, 128
  %ee_nds38 = getelementptr inbounds %struct.mthca_next_seg, ptr %37, i32 0, i32 1
  %65 = ptrtoint ptr %ee_nds38 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or, ptr %ee_nds38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nreq.0199)
  %tobool39.not = icmp eq i32 %nreq.0199, 0
  %spec.select = select i1 %tobool39.not, i32 %size.0.lcssa, i32 %size0.0200
  %inc42 = add i32 %ind.0201, 1
  %66 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc42, i32 %67)
  %cmp45.not = icmp slt i32 %inc42, %67
  br i1 %cmp45.not, label %for.end.if.end56_crit_edge, label %if.then53, !prof !130

for.end.if.end56_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then53:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %inc42, %67
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %for.end.if.end56_crit_edge
  %ind.1 = phi i32 [ %sub, %if.then53 ], [ %inc42, %for.end.if.end56_crit_edge ]
  %inc57 = add i32 %nreq.0199, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc57)
  %cmp58 = icmp eq i32 %inc57, 256
  br i1 %cmp58, label %if.then66, label %if.end56.for.inc83_crit_edge, !prof !127

if.end56.for.inc83_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc83

if.then66:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !135
  tail call void @arm_heavy_mb() #10
  %68 = ptrtoint ptr %next_ind to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %next_ind, align 8
  %70 = ptrtoint ptr %wqe_shift3.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %wqe_shift3.i, align 8
  %shl = shl i32 %69, %71
  %or73 = or i32 %shl, %spec.select
  %72 = ptrtoint ptr %qpn74 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %qpn74, align 8
  %shl75 = shl i32 %73, 8
  %74 = ptrtoint ptr %kar to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %kar, align 4
  %add.ptr76 = getelementptr i8, ptr %75, i32 24
  tail call fastcc void @mthca_write64(i32 noundef %or73, i32 noundef %shl75, ptr noundef %add.ptr76, ptr noundef %doorbell_lock)
  %76 = ptrtoint ptr %next_ind to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %ind.1, ptr %next_ind, align 8
  %77 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %head.i, align 8
  %add81 = add i32 %78, 256
  store i32 %add81, ptr %head.i, align 8
  br label %for.inc83

for.inc83:                                        ; preds = %if.then66, %if.end56.for.inc83_crit_edge
  %nreq.1 = phi i32 [ 0, %if.then66 ], [ %inc57, %if.end56.for.inc83_crit_edge ]
  %79 = ptrtoint ptr %wr.addr.0202 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %wr.addr.0202, align 8
  %tobool.not = icmp eq ptr %80, null
  br i1 %tobool.not, label %for.inc83.out_crit_edge, label %for.inc83.for.body_crit_edge

for.inc83.for.body_crit_edge:                     ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc83.out_crit_edge:                          ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out.sink.split:                                   ; preds = %get_recv_wqe.exit.out.sink.split_crit_edge, %do.end14
  %err.0.ph = phi i32 [ -12, %do.end14 ], [ -22, %get_recv_wqe.exit.out.sink.split_crit_edge ]
  %81 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %wr.addr.0202, ptr %bad_wr, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %for.inc83.out_crit_edge
  %nreq.0192 = phi i32 [ %nreq.0199, %out.sink.split ], [ %nreq.1, %for.inc83.out_crit_edge ]
  %size0.0189 = phi i32 [ %size0.0200, %out.sink.split ], [ %spec.select, %for.inc83.out_crit_edge ]
  %ind.0186 = phi i32 [ %ind.0201, %out.sink.split ], [ %ind.1, %for.inc83.out_crit_edge ]
  %err.0 = phi i32 [ %err.0.ph, %out.sink.split ], [ 0, %for.inc83.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nreq.0192)
  %tobool85.not = icmp eq i32 %nreq.0192, 0
  br i1 %tobool85.not, label %out.if.end108_crit_edge, label %do.body93, !prof !127

out.if.end108_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

do.body93:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  tail call void @arm_heavy_mb() #10
  %82 = ptrtoint ptr %next_ind to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %next_ind, align 8
  %wqe_shift99 = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 8
  %84 = ptrtoint ptr %wqe_shift99 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %wqe_shift99, align 8
  %shl100 = shl i32 %83, %85
  %or101 = or i32 %shl100, %size0.0189
  %qpn102 = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 2
  %86 = ptrtoint ptr %qpn102 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %qpn102, align 8
  %shl103 = shl i32 %87, 8
  %or104 = or i32 %shl103, %nreq.0192
  %kar105 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 14
  %88 = ptrtoint ptr %kar105 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %kar105, align 4
  %add.ptr106 = getelementptr i8, ptr %89, i32 24
  %doorbell_lock107 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_lock107) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 %or101) #10, !srcloc !133
  %add.ptr.i178 = getelementptr i8, ptr %89, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 %or104) #10, !srcloc !133
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_lock107, i32 noundef %call2.i) #10
  br label %if.end108

if.end108:                                        ; preds = %do.body93, %out.if.end108_crit_edge, %entry.if.end108_crit_edge
  %err.0222 = phi i32 [ %err.0, %do.body93 ], [ %err.0, %out.if.end108_crit_edge ], [ 0, %entry.if.end108_crit_edge ]
  %ind.0186221 = phi i32 [ %ind.0186, %do.body93 ], [ %ind.0186, %out.if.end108_crit_edge ], [ %3, %entry.if.end108_crit_edge ]
  %nreq.0192220 = phi i32 [ %nreq.0192, %do.body93 ], [ 0, %out.if.end108_crit_edge ], [ 0, %entry.if.end108_crit_edge ]
  %90 = ptrtoint ptr %next_ind to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %ind.0186221, ptr %next_ind, align 8
  %head112 = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 4
  %91 = ptrtoint ptr %head112 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %head112, align 8
  %add113 = add i32 %92, %nreq.0192220
  store i32 %add113, ptr %head112, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rq, i32 noundef %call4) #10
  ret i32 %err.0222
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_arbel_post_send(ptr noundef %ibqp, ptr noundef %wr, ptr nocapture noundef writeonly %bad_wr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibqp, align 4
  %sq = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sq) #10
  %head = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 4
  %max = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 1
  %tobool.not409 = icmp eq ptr %wr, null
  br i1 %tobool.not409, label %entry.if.end236_crit_edge, label %for.body.lr.ph

entry.if.end236_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end236

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max, align 4
  %sub = add i32 %3, -1
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head, align 4
  %and = and i32 %sub, %5
  %db = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 10
  %qpn = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 2
  %kar = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 14
  %doorbell_lock = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 11
  %tail.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 5
  %send_cq = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 2
  %is_direct.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 3
  %queue2.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 17
  %send_wqe_offset3.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 14
  %wqe_shift.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 8
  %last = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 6
  %transport = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 6
  %max_gs = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 7
  %wrid = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 16
  %max142 = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc196.for.body_crit_edge, %for.body.lr.ph
  %wr.addr.0417 = phi ptr [ %wr, %for.body.lr.ph ], [ %176, %for.inc196.for.body_crit_edge ]
  %op0.0416 = phi i8 [ 0, %for.body.lr.ph ], [ %op0.1, %for.inc196.for.body_crit_edge ]
  %ind.0413 = phi i32 [ %and, %for.body.lr.ph ], [ %ind.1, %for.inc196.for.body_crit_edge ]
  %f0.0412 = phi i32 [ -1, %for.body.lr.ph ], [ %f0.1, %for.inc196.for.body_crit_edge ]
  %size0.0411 = phi i32 [ -1, %for.body.lr.ph ], [ %size0.1, %for.inc196.for.body_crit_edge ]
  %nreq.0410 = phi i32 [ 0, %for.body.lr.ph ], [ %inc197, %for.inc196.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %nreq.0410)
  %cmp9 = icmp eq i32 %nreq.0410, 255
  br i1 %cmp9, label %if.then, label %for.body.if.end_crit_edge, !prof !127

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head, align 4
  %and15 = shl i32 %7, 8
  %conv17 = zext i8 %op0.0416 to i32
  %or = or i32 %f0.0412, %conv17
  %or16 = or i32 %or, %and15
  %or18 = or i32 %or16, -16777216
  %add = add i32 %7, 255
  store i32 %add, ptr %head, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !137
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %head, align 4
  %and26 = and i32 %9, 65535
  %10 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %db, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and26, ptr %11, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !138
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qpn, align 8
  %shl31 = shl i32 %14, 8
  %or32 = or i32 %shl31, %size0.0411
  %15 = ptrtoint ptr %kar to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %kar, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 16
  tail call fastcc void @mthca_write64(i32 noundef %or18, i32 noundef %or32, ptr noundef %add.ptr, ptr noundef %doorbell_lock)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %nreq.1 = phi i32 [ 0, %if.then ], [ %nreq.0410, %for.body.if.end_crit_edge ]
  %17 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %head, align 4
  %19 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tail.i, align 4
  %sub.i = add i32 %18, %nreq.1
  %add.i = sub i32 %sub.i, %20
  %21 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %22)
  %cmp.i369 = icmp ult i32 %add.i, %22
  br i1 %cmp.i369, label %if.end.if.end48_crit_edge, label %mthca_wq_overflow.exit, !prof !130

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

mthca_wq_overflow.exit:                           ; preds = %if.end
  %23 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %send_cq, align 8
  %lock.i = getelementptr inbounds %struct.mthca_cq, ptr %24, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %25 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %head, align 4
  %27 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tail.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  %sub4.i = add i32 %26, %nreq.1
  %add6.i = sub i32 %sub4.i, %28
  %29 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %30)
  %cmp8.i.not = icmp ult i32 %add6.i, %30
  br i1 %cmp8.i.not, label %mthca_wq_overflow.exit.if.end48_crit_edge, label %do.end40

mthca_wq_overflow.exit.if.end48_crit_edge:        ; preds = %mthca_wq_overflow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

do.end40:                                         ; preds = %mthca_wq_overflow.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 8
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qpn, align 8
  %35 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %head, align 4
  %37 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tail.i, align 4
  %39 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.22, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %nreq.1) #13
  br label %out.sink.split

if.end48:                                         ; preds = %mthca_wq_overflow.exit.if.end48_crit_edge, %if.end.if.end48_crit_edge
  %41 = ptrtoint ptr %is_direct.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %is_direct.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  %43 = ptrtoint ptr %queue2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %queue2.i, align 8
  %45 = ptrtoint ptr %send_wqe_offset3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %send_wqe_offset3.i, align 4
  br i1 %tobool.not.i, label %if.else.i372, label %if.then.i370

if.then.i370:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %44, i32 %46
  %47 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wqe_shift.i, align 4
  %shl.i = shl i32 %ind.0413, %48
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %shl.i
  br label %get_send_wqe.exit

if.else.i372:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %wqe_shift.i, align 4
  %shl6.i = shl i32 %ind.0413, %50
  %add.i371 = add i32 %shl6.i, %46
  %shr.i = ashr i32 %add.i371, 12
  %arrayidx.i = getelementptr %struct.mthca_buf_list, ptr %44, i32 %shr.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 4
  %and.i = and i32 %add.i371, 4095
  %add.ptr13.i = getelementptr i8, ptr %52, i32 %and.i
  br label %get_send_wqe.exit

get_send_wqe.exit:                                ; preds = %if.else.i372, %if.then.i370
  %retval.0.i373 = phi ptr [ %add.ptr1.i, %if.then.i370 ], [ %add.ptr13.i, %if.else.i372 ]
  %53 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %last, align 4
  store ptr %retval.0.i373, ptr %last, align 4
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0417, i32 0, i32 5
  %55 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %send_flags, align 4
  %and53 = shl i32 %56, 2
  %57 = and i32 %and53, 8
  %and56 = lshr i32 %56, 1
  %58 = and i32 %and56, 2
  %and61 = and i32 %56, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %cond63 = select i1 %tobool62.not, i32 0, i32 48
  %or59 = or i32 %58, %57
  %or64 = or i32 %or59, %cond63
  %or65 = or i32 %or64, 1
  %flags66 = getelementptr inbounds %struct.mthca_next_seg, ptr %retval.0.i373, i32 0, i32 2
  %59 = ptrtoint ptr %flags66 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or65, ptr %flags66, align 4
  %opcode = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0417, i32 0, i32 4
  %60 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %opcode, align 8
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %61, label %get_send_wqe.exit.if.end73_crit_edge [
    i32 3, label %get_send_wqe.exit.if.then72_crit_edge
    i32 1, label %get_send_wqe.exit.if.then72_crit_edge544
  ]

get_send_wqe.exit.if.then72_crit_edge544:         ; preds = %get_send_wqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then72

get_send_wqe.exit.if.then72_crit_edge:            ; preds = %get_send_wqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then72

get_send_wqe.exit.if.end73_crit_edge:             ; preds = %get_send_wqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then72:                                        ; preds = %get_send_wqe.exit.if.then72_crit_edge, %get_send_wqe.exit.if.then72_crit_edge544
  %ex = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0417, i32 0, i32 6
  %63 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ex, align 8
  %imm = getelementptr inbounds %struct.mthca_next_seg, ptr %retval.0.i373, i32 0, i32 3
  %65 = ptrtoint ptr %imm to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %imm, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %get_send_wqe.exit.if.end73_crit_edge
  %add.ptr74 = getelementptr i8, ptr %retval.0.i373, i32 16
  %66 = ptrtoint ptr %transport to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %transport, align 2
  %68 = zext i8 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %67, label %if.end73.sw.epilog115_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb91
    i8 2, label %sw.bb102
    i8 5, label %sw.bb106
  ]

if.end73.sw.epilog115_crit_edge:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog115

sw.bb:                                            ; preds = %if.end73
  %69 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %opcode, align 8
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %70, label %sw.bb.sw.epilog115_crit_edge [
    i32 5, label %sw.bb.sw.bb77_crit_edge
    i32 6, label %sw.bb.sw.bb77_crit_edge545
    i32 4, label %sw.bb.sw.bb84_crit_edge
    i32 0, label %sw.bb.sw.bb84_crit_edge546
    i32 1, label %sw.bb.sw.bb84_crit_edge547
  ]

sw.bb.sw.bb84_crit_edge547:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb84

sw.bb.sw.bb84_crit_edge546:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb84

sw.bb.sw.bb84_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb84

sw.bb.sw.bb77_crit_edge545:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb77

sw.bb.sw.bb77_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb77

sw.bb.sw.epilog115_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog115

sw.bb77:                                          ; preds = %sw.bb.sw.bb77_crit_edge, %sw.bb.sw.bb77_crit_edge545
  %remote_addr = getelementptr inbounds %struct.ib_atomic_wr, ptr %wr.addr.0417, i32 0, i32 1
  %72 = ptrtoint ptr %remote_addr to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %remote_addr, align 8
  %rkey = getelementptr inbounds %struct.ib_atomic_wr, ptr %wr.addr.0417, i32 0, i32 6
  %74 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rkey, align 8
  %76 = ptrtoint ptr %add.ptr74 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %73, ptr %add.ptr74, align 8
  %rkey1.i = getelementptr i8, ptr %retval.0.i373, i32 24
  %77 = ptrtoint ptr %rkey1.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %75, ptr %rkey1.i, align 8
  %reserved.i = getelementptr i8, ptr %retval.0.i373, i32 28
  %78 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %reserved.i, align 4
  %add.ptr80 = getelementptr i8, ptr %retval.0.i373, i32 32
  %79 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %opcode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %80)
  %cmp.i = icmp eq i32 %80, 5
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #12
  %swap.i = getelementptr inbounds %struct.ib_atomic_wr, ptr %wr.addr.0417, i32 0, i32 3
  %81 = ptrtoint ptr %swap.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %swap.i, align 8
  %83 = ptrtoint ptr %add.ptr80 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %add.ptr80, align 8
  %compare_add.i = getelementptr inbounds %struct.ib_atomic_wr, ptr %wr.addr.0417, i32 0, i32 2
  %84 = ptrtoint ptr %compare_add.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %compare_add.i, align 8
  br label %set_atomic_seg.exit

if.else.i:                                        ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #12
  %compare_add2.i = getelementptr inbounds %struct.ib_atomic_wr, ptr %wr.addr.0417, i32 0, i32 2
  %86 = ptrtoint ptr %compare_add2.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %compare_add2.i, align 8
  %88 = ptrtoint ptr %add.ptr80 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %add.ptr80, align 8
  br label %set_atomic_seg.exit

set_atomic_seg.exit:                              ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i64 [ %85, %if.then.i ], [ 0, %if.else.i ]
  %89 = getelementptr i8, ptr %retval.0.i373, i32 40
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %.sink.i, ptr %89, align 8
  %add.ptr82 = getelementptr i8, ptr %retval.0.i373, i32 48
  br label %sw.epilog115

sw.bb84:                                          ; preds = %sw.bb.sw.bb84_crit_edge, %sw.bb.sw.bb84_crit_edge546, %sw.bb.sw.bb84_crit_edge547
  %remote_addr86 = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0417, i32 0, i32 1
  %91 = ptrtoint ptr %remote_addr86 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %remote_addr86, align 8
  %rkey88 = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0417, i32 0, i32 2
  %93 = ptrtoint ptr %rkey88 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rkey88, align 8
  %95 = ptrtoint ptr %add.ptr74 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %92, ptr %add.ptr74, align 8
  %rkey1.i365 = getelementptr i8, ptr %retval.0.i373, i32 24
  %96 = ptrtoint ptr %rkey1.i365 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %94, ptr %rkey1.i365, align 8
  %reserved.i366 = getelementptr i8, ptr %retval.0.i373, i32 28
  %97 = ptrtoint ptr %reserved.i366 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %reserved.i366, align 4
  %add.ptr89 = getelementptr i8, ptr %retval.0.i373, i32 32
  br label %sw.epilog115

sw.bb91:                                          ; preds = %if.end73
  %98 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %opcode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %99)
  %switch = icmp ult i32 %99, 2
  br i1 %switch, label %sw.bb93, label %sw.bb91.sw.epilog115_crit_edge

sw.bb91.sw.epilog115_crit_edge:                   ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog115

sw.bb93:                                          ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #12
  %remote_addr95 = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0417, i32 0, i32 1
  %100 = ptrtoint ptr %remote_addr95 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %remote_addr95, align 8
  %rkey97 = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0417, i32 0, i32 2
  %102 = ptrtoint ptr %rkey97 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rkey97, align 8
  %104 = ptrtoint ptr %add.ptr74 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %101, ptr %add.ptr74, align 8
  %rkey1.i367 = getelementptr i8, ptr %retval.0.i373, i32 24
  %105 = ptrtoint ptr %rkey1.i367 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %103, ptr %rkey1.i367, align 8
  %reserved.i368 = getelementptr i8, ptr %retval.0.i373, i32 28
  %106 = ptrtoint ptr %reserved.i368 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %reserved.i368, align 4
  %add.ptr98 = getelementptr i8, ptr %retval.0.i373, i32 32
  br label %sw.epilog115

sw.bb102:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %ah.i = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0417, i32 0, i32 1
  %107 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ah.i, align 8
  %av1.i = getelementptr inbounds %struct.mthca_ah, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %av1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %av1.i, align 4
  %111 = call ptr @memcpy(ptr %add.ptr74, ptr %110, i32 32)
  %remote_qpn.i = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0417, i32 0, i32 5
  %112 = ptrtoint ptr %remote_qpn.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %remote_qpn.i, align 8
  %dqpn.i = getelementptr i8, ptr %retval.0.i373, i32 48
  %114 = ptrtoint ptr %dqpn.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %dqpn.i, align 4
  %remote_qkey.i = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0417, i32 0, i32 6
  %115 = ptrtoint ptr %remote_qkey.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %remote_qkey.i, align 4
  %qkey.i = getelementptr i8, ptr %retval.0.i373, i32 52
  %117 = ptrtoint ptr %qkey.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %qkey.i, align 4
  %add.ptr104 = getelementptr i8, ptr %retval.0.i373, i32 64
  br label %sw.epilog115

sw.bb106:                                         ; preds = %if.end73
  %call109 = tail call fastcc i32 @build_mlx_header(ptr noundef %1, ptr noundef %ibqp, i32 noundef %ind.0413, ptr noundef nonnull %wr.addr.0417, ptr noundef %retval.0.i373, ptr noundef %add.ptr74)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %sw.bb106.out.sink.split_crit_edge

sw.bb106.out.sink.split_crit_edge:                ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

if.end112:                                        ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr113 = getelementptr i8, ptr %retval.0.i373, i32 32
  br label %sw.epilog115

sw.epilog115:                                     ; preds = %if.end112, %sw.bb102, %sw.bb93, %sw.bb91.sw.epilog115_crit_edge, %sw.bb84, %set_atomic_seg.exit, %sw.bb.sw.epilog115_crit_edge, %if.end73.sw.epilog115_crit_edge
  %wqe.0 = phi ptr [ %add.ptr74, %if.end73.sw.epilog115_crit_edge ], [ %add.ptr113, %if.end112 ], [ %add.ptr104, %sw.bb102 ], [ %add.ptr74, %sw.bb91.sw.epilog115_crit_edge ], [ %add.ptr98, %sw.bb93 ], [ %add.ptr74, %sw.bb.sw.epilog115_crit_edge ], [ %add.ptr89, %sw.bb84 ], [ %add.ptr82, %set_atomic_seg.exit ]
  %size.0 = phi i32 [ 1, %if.end73.sw.epilog115_crit_edge ], [ 2, %if.end112 ], [ 4, %sw.bb102 ], [ 1, %sw.bb91.sw.epilog115_crit_edge ], [ 2, %sw.bb93 ], [ 1, %sw.bb.sw.epilog115_crit_edge ], [ 2, %sw.bb84 ], [ 3, %set_atomic_seg.exit ]
  %num_sge = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0417, i32 0, i32 3
  %118 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %num_sge, align 4
  %120 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %max_gs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %121)
  %cmp117 = icmp sgt i32 %119, %121
  br i1 %cmp117, label %do.end122, label %for.cond126.preheader

for.cond126.preheader:                            ; preds = %sw.epilog115
  %122 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp128404 = icmp sgt i32 %123, 0
  br i1 %cmp128404, label %for.body130.lr.ph, label %for.cond126.preheader.for.end_crit_edge

for.cond126.preheader.for.end_crit_edge:          ; preds = %for.cond126.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body130.lr.ph:                                ; preds = %for.cond126.preheader
  %sg_list = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0417, i32 0, i32 2
  br label %for.body130

do.end122:                                        ; preds = %sw.epilog115
  call void @__sanitizer_cov_trace_pc() #12
  %pdev123 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %124 = ptrtoint ptr %pdev123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pdev123, align 8
  %dev124 = getelementptr inbounds %struct.pci_dev, ptr %125, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev124, ptr noundef nonnull @.str.26) #13
  br label %out.sink.split

for.body130:                                      ; preds = %for.body130.for.body130_crit_edge, %for.body130.lr.ph
  %size.1407 = phi i32 [ %size.0, %for.body130.lr.ph ], [ %add133, %for.body130.for.body130_crit_edge ]
  %i.0406 = phi i32 [ 0, %for.body130.lr.ph ], [ %inc, %for.body130.for.body130_crit_edge ]
  %wqe.1405 = phi ptr [ %wqe.0, %for.body130.lr.ph ], [ %add.ptr132, %for.body130.for.body130_crit_edge ]
  %126 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %sg_list, align 8
  %add.ptr131 = getelementptr %struct.ib_sge, ptr %127, i32 %i.0406
  %length.i = getelementptr %struct.ib_sge, ptr %127, i32 %i.0406, i32 1
  %128 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %length.i, align 8
  %130 = ptrtoint ptr %wqe.1405 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %wqe.1405, align 8
  %lkey.i = getelementptr %struct.ib_sge, ptr %127, i32 %i.0406, i32 2
  %131 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %lkey.i, align 4
  %lkey1.i = getelementptr inbounds %struct.mthca_data_seg, ptr %wqe.1405, i32 0, i32 1
  %133 = ptrtoint ptr %lkey1.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %lkey1.i, align 4
  %134 = ptrtoint ptr %add.ptr131 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %add.ptr131, align 8
  %addr2.i = getelementptr inbounds %struct.mthca_data_seg, ptr %wqe.1405, i32 0, i32 2
  %136 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %135, ptr %addr2.i, align 8
  %add.ptr132 = getelementptr i8, ptr %wqe.1405, i32 16
  %add133 = add nuw i32 %size.1407, 1
  %inc = add nuw nsw i32 %i.0406, 1
  %137 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %num_sge, align 4
  %cmp128 = icmp slt i32 %inc, %138
  br i1 %cmp128, label %for.body130.for.body130_crit_edge, label %for.body130.for.end_crit_edge

for.body130.for.end_crit_edge:                    ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body130.for.body130_crit_edge:                ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body130

for.end:                                          ; preds = %for.body130.for.end_crit_edge, %for.cond126.preheader.for.end_crit_edge
  %wqe.1.lcssa = phi ptr [ %wqe.0, %for.cond126.preheader.for.end_crit_edge ], [ %add.ptr132, %for.body130.for.end_crit_edge ]
  %size.1.lcssa = phi i32 [ %size.0, %for.cond126.preheader.for.end_crit_edge ], [ %add133, %for.body130.for.end_crit_edge ]
  %139 = ptrtoint ptr %transport to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %transport, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %140)
  %cmp136 = icmp eq i8 %140, 5
  br i1 %cmp136, label %if.then138, label %for.end.if.end141_crit_edge

for.end.if.end141_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then138:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %wqe.1.lcssa to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -2147483644, ptr %wqe.1.lcssa, align 8
  %arrayidx = getelementptr i32, ptr %wqe.1.lcssa, i32 1
  %142 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %arrayidx, align 4
  %add140 = add i32 %size.1.lcssa, 1
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %for.end.if.end141_crit_edge
  %size.2 = phi i32 [ %add140, %if.then138 ], [ %size.1.lcssa, %for.end.if.end141_crit_edge ]
  %143 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0417, i32 0, i32 1
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %143, align 8
  %146 = ptrtoint ptr %wrid to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %wrid, align 4
  %148 = ptrtoint ptr %max142 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %max142, align 4
  %add143 = add i32 %149, %ind.0413
  %arrayidx144 = getelementptr i64, ptr %147, i32 %add143
  %150 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %145, ptr %arrayidx144, align 8
  %151 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %opcode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %152)
  %cmp146 = icmp ugt i32 %152, 6
  br i1 %cmp146, label %do.end151, label %if.end154

do.end151:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  %pdev152 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %153 = ptrtoint ptr %pdev152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pdev152, align 8
  %dev153 = getelementptr inbounds %struct.pci_dev, ptr %154, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev153, ptr noundef nonnull @.str.29) #13
  br label %out.sink.split

if.end154:                                        ; preds = %if.end141
  %155 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %wqe_shift.i, align 4
  %shl156 = shl i32 %ind.0413, %156
  %157 = ptrtoint ptr %send_wqe_offset3.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %send_wqe_offset3.i, align 4
  %add157 = add i32 %shl156, %158
  %arrayidx159 = getelementptr [7 x i8], ptr @mthca_opcode, i32 0, i32 %152
  %159 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx159, align 1
  %conv160 = zext i8 %160 to i32
  %or161 = or i32 %add157, %conv160
  %161 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %or161, ptr %54, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  tail call void @arm_heavy_mb() #10
  %162 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %send_flags, align 4
  %and167 = shl i32 %163, 6
  %164 = and i32 %and167, 64
  %or165 = or i32 %size.2, %164
  %or170 = or i32 %or165, 128
  %ee_nds = getelementptr inbounds %struct.mthca_next_seg, ptr %54, i32 0, i32 1
  %165 = ptrtoint ptr %ee_nds to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %or170, ptr %ee_nds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nreq.1)
  %tobool171.not = icmp eq i32 %nreq.1, 0
  br i1 %tobool171.not, label %if.then172, label %if.end154.if.end179_crit_edge

if.end154.if.end179_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179

if.then172:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  %166 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %opcode, align 8
  %arrayidx174 = getelementptr [7 x i8], ptr @mthca_opcode, i32 0, i32 %167
  %168 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx174, align 1
  %170 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %send_flags, align 4
  %and176 = shl i32 %171, 5
  %172 = and i32 %and176, 32
  br label %if.end179

if.end179:                                        ; preds = %if.then172, %if.end154.if.end179_crit_edge
  %size0.1 = phi i32 [ %size0.0411, %if.end154.if.end179_crit_edge ], [ %size.2, %if.then172 ]
  %f0.1 = phi i32 [ %f0.0412, %if.end154.if.end179_crit_edge ], [ %172, %if.then172 ]
  %op0.1 = phi i8 [ %op0.0416, %if.end154.if.end179_crit_edge ], [ %169, %if.then172 ]
  %inc180 = add i32 %ind.0413, 1
  %173 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc180, i32 %174)
  %cmp183.not = icmp slt i32 %inc180, %174
  br i1 %cmp183.not, label %if.end179.for.inc196_crit_edge, label %if.then191, !prof !130

if.end179.for.inc196_crit_edge:                   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc196

if.then191:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  %sub194 = sub i32 %inc180, %174
  br label %for.inc196

for.inc196:                                       ; preds = %if.then191, %if.end179.for.inc196_crit_edge
  %ind.1 = phi i32 [ %sub194, %if.then191 ], [ %inc180, %if.end179.for.inc196_crit_edge ]
  %inc197 = add i32 %nreq.1, 1
  %175 = ptrtoint ptr %wr.addr.0417 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %wr.addr.0417, align 8
  %tobool.not = icmp eq ptr %176, null
  br i1 %tobool.not, label %for.inc196.out_crit_edge, label %for.inc196.for.body_crit_edge

for.inc196.for.body_crit_edge:                    ; preds = %for.inc196
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc196.out_crit_edge:                         ; preds = %for.inc196
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out.sink.split:                                   ; preds = %do.end151, %do.end122, %sw.bb106.out.sink.split_crit_edge, %do.end40
  %err.2.ph = phi i32 [ -22, %do.end151 ], [ -22, %do.end122 ], [ -12, %do.end40 ], [ %call109, %sw.bb106.out.sink.split_crit_edge ]
  %177 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %wr.addr.0417, ptr %bad_wr, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %for.inc196.out_crit_edge
  %size0.0396 = phi i32 [ %size0.0411, %out.sink.split ], [ %size0.1, %for.inc196.out_crit_edge ]
  %f0.0391 = phi i32 [ %f0.0412, %out.sink.split ], [ %f0.1, %for.inc196.out_crit_edge ]
  %op0.0386 = phi i8 [ %op0.0416, %out.sink.split ], [ %op0.1, %for.inc196.out_crit_edge ]
  %err.2 = phi i32 [ %err.2.ph, %out.sink.split ], [ 0, %for.inc196.out_crit_edge ]
  %nreq.2 = phi i32 [ %nreq.1, %out.sink.split ], [ %inc197, %for.inc196.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nreq.2)
  %tobool199.not = icmp eq i32 %nreq.2, 0
  br i1 %tobool199.not, label %out.if.end236_crit_edge, label %if.then206, !prof !127

out.if.end236_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end236

if.then206:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %shl207 = shl i32 %nreq.2, 24
  %178 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %head, align 4
  %and210 = shl i32 %179, 8
  %shl211 = and i32 %and210, 16776960
  %or212 = or i32 %shl211, %shl207
  %conv214 = zext i8 %op0.0386 to i32
  %or213 = or i32 %f0.0391, %conv214
  %or215 = or i32 %or213, %or212
  %add218 = add i32 %179, %nreq.2
  store i32 %add218, ptr %head, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %180 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %head, align 4
  %and224 = and i32 %181, 65535
  %db226 = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 12, i32 10
  %182 = ptrtoint ptr %db226 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %db226, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %and224, ptr %183, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %qpn230 = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 2
  %185 = ptrtoint ptr %qpn230 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %qpn230, align 8
  %shl231 = shl i32 %186, 8
  %or232 = or i32 %shl231, %size0.0396
  %kar233 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 14
  %187 = ptrtoint ptr %kar233 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %kar233, align 4
  %add.ptr234 = getelementptr i8, ptr %188, i32 16
  %doorbell_lock235 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_lock235) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr234, i32 %or215) #10, !srcloc !133
  %add.ptr.i374 = getelementptr i8, ptr %188, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i374, i32 %or232) #10, !srcloc !133
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_lock235, i32 noundef %call2.i) #10
  br label %if.end236

if.end236:                                        ; preds = %if.then206, %out.if.end236_crit_edge, %entry.if.end236_crit_edge
  %err.2448 = phi i32 [ %err.2, %if.then206 ], [ %err.2, %out.if.end236_crit_edge ], [ 0, %entry.if.end236_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sq, i32 noundef %call4) #10
  ret i32 %err.2448
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_arbel_post_receive(ptr noundef %ibqp, ptr noundef %wr, ptr nocapture noundef writeonly %bad_wr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibqp, align 4
  %rq = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rq) #10
  %head = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 4
  %max = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 1
  %tobool.not142 = icmp eq ptr %wr, null
  br i1 %tobool.not142, label %entry.if.end80_crit_edge, label %for.body.lr.ph

entry.if.end80_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max, align 4
  %sub = add i32 %3, -1
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head, align 8
  %and = and i32 %sub, %5
  %tail.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 5
  %recv_cq = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 3
  %is_direct.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 3
  %queue1.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 17
  %wqe_shift3.i = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 8
  %max_gs = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 7
  %wrid = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc60.for.body_crit_edge, %for.body.lr.ph
  %wr.addr.0145 = phi ptr [ %wr, %for.body.lr.ph ], [ %72, %for.inc60.for.body_crit_edge ]
  %ind.0144 = phi i32 [ %and, %for.body.lr.ph ], [ %ind.1, %for.inc60.for.body_crit_edge ]
  %nreq.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %inc61, %for.inc60.for.body_crit_edge ]
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head, align 4
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail.i, align 4
  %sub.i = add i32 %7, %nreq.0143
  %add.i = sub i32 %sub.i, %9
  %10 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %11)
  %cmp.i = icmp ult i32 %add.i, %11
  br i1 %cmp.i, label %for.body.if.end_crit_edge, label %mthca_wq_overflow.exit, !prof !130

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

mthca_wq_overflow.exit:                           ; preds = %for.body
  %12 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %recv_cq, align 4
  %lock.i = getelementptr inbounds %struct.mthca_cq, ptr %13, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %14 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %head, align 4
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tail.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  %sub4.i = add i32 %15, %nreq.0143
  %add6.i = sub i32 %sub4.i, %17
  %18 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %19)
  %cmp8.i.not = icmp ult i32 %add6.i, %19
  br i1 %cmp8.i.not, label %mthca_wq_overflow.exit.if.end_crit_edge, label %do.end15

mthca_wq_overflow.exit.if.end_crit_edge:          ; preds = %mthca_wq_overflow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end15:                                         ; preds = %mthca_wq_overflow.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %qpn = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 2
  %22 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qpn, align 8
  %24 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %head, align 8
  %26 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tail.i, align 4
  %28 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.31, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %nreq.0143) #13
  br label %out.sink.split

if.end:                                           ; preds = %mthca_wq_overflow.exit.if.end_crit_edge, %for.body.if.end_crit_edge
  %30 = ptrtoint ptr %is_direct.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %is_direct.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  %32 = ptrtoint ptr %queue1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %queue1.i, align 8
  %34 = ptrtoint ptr %wqe_shift3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wqe_shift3.i, align 8
  %shl4.i = shl i32 %ind.0144, %35
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %33, i32 %shl4.i
  br label %get_recv_wqe.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i = ashr i32 %shl4.i, 12
  %arrayidx.i = getelementptr %struct.mthca_buf_list, ptr %33, i32 %shr.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %and.i = and i32 %shl4.i, 4095
  %add.ptr9.i = getelementptr i8, ptr %37, i32 %and.i
  br label %get_recv_wqe.exit

get_recv_wqe.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i126 = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr9.i, %if.else.i ]
  %flags23 = getelementptr inbounds %struct.mthca_next_seg, ptr %retval.0.i126, i32 0, i32 2
  %38 = ptrtoint ptr %flags23 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %flags23, align 4
  %num_sge = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0145, i32 0, i32 3
  %39 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_sge, align 4
  %41 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_gs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp25 = icmp sgt i32 %40, %42
  br i1 %cmp25, label %get_recv_wqe.exit.out.sink.split_crit_edge, label %for.cond31.preheader, !prof !127

get_recv_wqe.exit.out.sink.split_crit_edge:       ; preds = %get_recv_wqe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split

for.cond31.preheader:                             ; preds = %get_recv_wqe.exit
  %wqe.0135 = getelementptr i8, ptr %retval.0.i126, i32 16
  %43 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp33136 = icmp sgt i32 %44, 0
  br i1 %cmp33136, label %for.body35.lr.ph, label %for.cond31.preheader.for.end_crit_edge

for.cond31.preheader.for.end_crit_edge:           ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body35.lr.ph:                                 ; preds = %for.cond31.preheader
  %sg_list = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0145, i32 0, i32 2
  br label %for.body35

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.body35.lr.ph
  %wqe.0139 = phi ptr [ %wqe.0135, %for.body35.lr.ph ], [ %wqe.0, %for.body35.for.body35_crit_edge ]
  %call22.pn138 = phi ptr [ %retval.0.i126, %for.body35.lr.ph ], [ %wqe.0139, %for.body35.for.body35_crit_edge ]
  %i.0137 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc, %for.body35.for.body35_crit_edge ]
  %45 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sg_list, align 8
  %add.ptr36 = getelementptr %struct.ib_sge, ptr %46, i32 %i.0137
  %length.i = getelementptr %struct.ib_sge, ptr %46, i32 %i.0137, i32 1
  %47 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %length.i, align 8
  %49 = ptrtoint ptr %wqe.0139 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %wqe.0139, align 8
  %lkey.i = getelementptr %struct.ib_sge, ptr %46, i32 %i.0137, i32 2
  %50 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lkey.i, align 4
  %lkey1.i = getelementptr i8, ptr %call22.pn138, i32 20
  %52 = ptrtoint ptr %lkey1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %lkey1.i, align 4
  %53 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %add.ptr36, align 8
  %addr2.i = getelementptr i8, ptr %call22.pn138, i32 24
  %55 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %addr2.i, align 8
  %inc = add nuw nsw i32 %i.0137, 1
  %wqe.0 = getelementptr i8, ptr %wqe.0139, i32 16
  %56 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_sge, align 4
  %cmp33 = icmp slt i32 %inc, %57
  br i1 %cmp33, label %for.body35.for.body35_crit_edge, label %for.body35.for.end_crit_edge

for.body35.for.end_crit_edge:                     ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body35

for.end:                                          ; preds = %for.body35.for.end_crit_edge, %for.cond31.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond31.preheader.for.end_crit_edge ], [ %inc, %for.body35.for.end_crit_edge ]
  %call22.pn.lcssa = phi ptr [ %retval.0.i126, %for.cond31.preheader.for.end_crit_edge ], [ %wqe.0139, %for.body35.for.end_crit_edge ]
  %wqe.0.lcssa = phi ptr [ %wqe.0135, %for.cond31.preheader.for.end_crit_edge ], [ %wqe.0, %for.body35.for.end_crit_edge ]
  %58 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_gs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %59)
  %cmp40 = icmp slt i32 %i.0.lcssa, %59
  br i1 %cmp40, label %if.then42, label %for.end.if.end43_crit_edge

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %wqe.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %wqe.0.lcssa, align 8
  %lkey.i125 = getelementptr i8, ptr %call22.pn.lcssa, i32 20
  %61 = ptrtoint ptr %lkey.i125 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 256, ptr %lkey.i125, align 4
  %addr.i = getelementptr i8, ptr %call22.pn.lcssa, i32 24
  %62 = ptrtoint ptr %addr.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 0, ptr %addr.i, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %for.end.if.end43_crit_edge
  %63 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0145, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %63, align 8
  %66 = ptrtoint ptr %wrid to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wrid, align 4
  %arrayidx = getelementptr i64, ptr %67, i32 %ind.0144
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %65, ptr %arrayidx, align 8
  %inc44 = add i32 %ind.0144, 1
  %69 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc44, i32 %70)
  %cmp47.not = icmp slt i32 %inc44, %70
  br i1 %cmp47.not, label %if.end43.for.inc60_crit_edge, label %if.then55, !prof !130

if.end43.for.inc60_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc60

if.then55:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %sub58 = sub i32 %inc44, %70
  br label %for.inc60

for.inc60:                                        ; preds = %if.then55, %if.end43.for.inc60_crit_edge
  %ind.1 = phi i32 [ %sub58, %if.then55 ], [ %inc44, %if.end43.for.inc60_crit_edge ]
  %inc61 = add i32 %nreq.0143, 1
  %71 = ptrtoint ptr %wr.addr.0145 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wr.addr.0145, align 8
  %tobool.not = icmp eq ptr %72, null
  br i1 %tobool.not, label %for.inc60.out_crit_edge, label %for.inc60.for.body_crit_edge

for.inc60.for.body_crit_edge:                     ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc60.out_crit_edge:                          ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out.sink.split:                                   ; preds = %get_recv_wqe.exit.out.sink.split_crit_edge, %do.end15
  %err.0.ph = phi i32 [ -12, %do.end15 ], [ -22, %get_recv_wqe.exit.out.sink.split_crit_edge ]
  %73 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %wr.addr.0145, ptr %bad_wr, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %for.inc60.out_crit_edge
  %nreq.0134 = phi i32 [ %nreq.0143, %out.sink.split ], [ %inc61, %for.inc60.out_crit_edge ]
  %err.0 = phi i32 [ %err.0.ph, %out.sink.split ], [ 0, %for.inc60.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nreq.0134)
  %tobool63.not = icmp eq i32 %nreq.0134, 0
  br i1 %tobool63.not, label %out.if.end80_crit_edge, label %if.then70, !prof !127

out.if.end80_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then70:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %head, align 8
  %add = add i32 %75, %nreq.0134
  store i32 %add, ptr %head, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  tail call void @arm_heavy_mb() #10
  %76 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %head, align 8
  %and78 = and i32 %77, 65535
  %db = getelementptr inbounds %struct.mthca_qp, ptr %ibqp, i32 0, i32 11, i32 10
  %78 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %db, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and78, ptr %79, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then70, %out.if.end80_crit_edge, %entry.if.end80_crit_edge
  %err.0156 = phi i32 [ %err.0, %if.then70 ], [ %err.0, %out.if.end80_crit_edge ], [ 0, %entry.if.end80_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rq, i32 noundef %call4) #10
  ret i32 %err.0156
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mthca_free_err_wqe(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %qp, i32 noundef %is_send, i32 noundef %index, ptr nocapture noundef writeonly %dbd, ptr nocapture noundef writeonly %new_wqe) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %srq = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 8
  %0 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srq, align 8
  %tobool.not = icmp ne ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_send)
  %tobool1.not = icmp eq i32 %is_send, 0
  %or.cond = and i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_direct.i27 = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 3
  %2 = ptrtoint ptr %is_direct.i27 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %is_direct.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i28 = icmp eq i32 %3, 0
  %queue1.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 17
  %4 = ptrtoint ptr %queue1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue1.i, align 8
  br i1 %tobool1.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %send_wqe_offset3.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 14
  %6 = ptrtoint ptr %send_wqe_offset3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %send_wqe_offset3.i, align 4
  br i1 %tobool.not.i28, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %5, i32 %7
  %wqe_shift.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 8
  %8 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wqe_shift.i, align 4
  %shl.i = shl i32 %index, %9
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %shl.i
  br label %if.end5

if.else.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %wqe_shift5.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 12, i32 8
  %10 = ptrtoint ptr %wqe_shift5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wqe_shift5.i, align 4
  %shl6.i = shl i32 %index, %11
  %add.i = add i32 %shl6.i, %7
  %shr.i = ashr i32 %add.i, 12
  %arrayidx.i = getelementptr %struct.mthca_buf_list, ptr %5, i32 %shr.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %and.i = and i32 %add.i, 4095
  %add.ptr13.i = getelementptr i8, ptr %13, i32 %and.i
  br label %if.end5

if.else:                                          ; preds = %if.end
  %wqe_shift3.i = getelementptr inbounds %struct.mthca_qp, ptr %qp, i32 0, i32 11, i32 8
  %14 = ptrtoint ptr %wqe_shift3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wqe_shift3.i, align 8
  %shl4.i = shl i32 %index, %15
  br i1 %tobool.not.i28, label %if.else.i34, label %if.then.i30

if.then.i30:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i29 = getelementptr i8, ptr %5, i32 %shl4.i
  br label %if.end5

if.else.i34:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i31 = ashr i32 %shl4.i, 12
  %arrayidx.i32 = getelementptr %struct.mthca_buf_list, ptr %5, i32 %shr.i31
  %16 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i32, align 4
  %and.i33 = and i32 %shl4.i, 4095
  %add.ptr9.i = getelementptr i8, ptr %17, i32 %and.i33
  br label %if.end5

if.end5:                                          ; preds = %if.else.i34, %if.then.i30, %if.else.i, %if.then.i
  %next.0 = phi ptr [ %add.ptr1.i, %if.then.i ], [ %add.ptr13.i, %if.else.i ], [ %add.ptr.i29, %if.then.i30 ], [ %add.ptr9.i, %if.else.i34 ]
  %ee_nds = getelementptr inbounds %struct.mthca_next_seg, ptr %next.0, i32 0, i32 1
  %18 = ptrtoint ptr %ee_nds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ee_nds, align 4
  %and = lshr i32 %19, 7
  %and.lobit = and i32 %and, 1
  %20 = ptrtoint ptr %dbd to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and.lobit, ptr %dbd, align 4
  %21 = load i32, ptr %ee_nds, align 4
  %and9 = and i32 %21, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end5.cleanup_crit_edge, label %if.then11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %next.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %next.0, align 4
  %and12 = and i32 %23, -64
  %or = or i32 %and12, %and9
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %storemerge26 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %or, %if.then11 ], [ 0, %if.end5.cleanup_crit_edge ]
  %24 = ptrtoint ptr %new_wqe to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge26, ptr %new_wqe, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_init_qp_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qp_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25
  %lock = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.39, ptr noundef nonnull @mthca_init_qp_table.__key, i16 noundef signext 3) #10
  %reserved_qps = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 12
  %0 = ptrtoint ptr %reserved_qps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reserved_qps, align 8
  %add = add i32 %1, 1
  %and = and i32 %add, -2
  %sqp_start = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 3
  %2 = ptrtoint ptr %sqp_start to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %sqp_start, align 8
  %num_qps = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 8
  %3 = ptrtoint ptr %num_qps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_qps, align 8
  %add6 = add i32 %and, 4
  %call7 = tail call i32 @mthca_alloc_init(ptr noundef %qp_table, i32 noundef %4, i32 noundef 16777215, i32 noundef %add6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %qp = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 5
  %5 = ptrtoint ptr %num_qps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_qps, align 8
  %call11 = tail call i32 @mthca_array_init(ptr noundef %qp, i32 noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.body.preheader, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.body.preheader:                               ; preds = %if.end
  %7 = ptrtoint ptr %sqp_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sqp_start, align 8
  %call21 = tail call i32 @mthca_CONF_SPECIAL_QP(ptr noundef %dev, i32 noundef 0, i32 noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.cond, label %for.body.preheader.do.end26_crit_edge

for.body.preheader.do.end26_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

for.cond:                                         ; preds = %for.body.preheader
  %9 = ptrtoint ptr %sqp_start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sqp_start, align 8
  %add20.1 = add i32 %10, 2
  %call21.1 = tail call i32 @mthca_CONF_SPECIAL_QP(ptr noundef %dev, i32 noundef 1, i32 noundef %add20.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.1)
  %tobool22.not.1 = icmp eq i32 %call21.1, 0
  br i1 %tobool22.not.1, label %for.cond.cleanup_crit_edge, label %for.cond.do.end26_crit_edge

for.cond.do.end26_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end26:                                         ; preds = %for.cond.do.end26_crit_edge, %for.body.preheader.do.end26_crit_edge
  %call21.lcssa = phi i32 [ %call21, %for.body.preheader.do.end26_crit_edge ], [ %call21.1, %for.cond.do.end26_crit_edge ]
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev27, ptr noundef nonnull @.str.40, i32 noundef %call21.lcssa) #13
  %call32 = tail call i32 @mthca_CONF_SPECIAL_QP(ptr noundef %dev, i32 noundef 0, i32 noundef 0) #10
  %call32.1 = tail call i32 @mthca_CONF_SPECIAL_QP(ptr noundef %dev, i32 noundef 1, i32 noundef 0) #10
  %13 = ptrtoint ptr %num_qps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_qps, align 8
  tail call void @mthca_array_cleanup(ptr noundef %qp, i32 noundef %14) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end26, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call21.lcssa, %do.end26 ], [ %call11, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mthca_alloc_cleanup(ptr noundef %qp_table) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_alloc_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_array_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_alloc_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_CONF_SPECIAL_QP(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_array_cleanup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_cleanup_qp_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mthca_CONF_SPECIAL_QP(ptr noundef %dev, i32 noundef 0, i32 noundef 0) #10
  %call.1 = tail call i32 @mthca_CONF_SPECIAL_QP(ptr noundef %dev, i32 noundef 1, i32 noundef 0) #10
  %qp_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25
  %qp = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 25, i32 5
  %num_qps = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %num_qps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_qps, align 8
  tail call void @mthca_array_cleanup(ptr noundef %qp, i32 noundef %1) #10
  tail call void @mthca_alloc_cleanup(ptr noundef %qp_table) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_rate_to_ib(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mthca_path_set(ptr noundef %dev, ptr nocapture noundef readonly %ah, ptr nocapture noundef %path, i8 noundef zeroext %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %1, label %entry.rdma_ah_get_path_bits.exit_crit_edge [
    i32 1, label %if.then.i
    i32 3, label %if.then3.i
  ]

entry.rdma_ah_get_path_bits.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rdma_ah_get_path_bits.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah, i32 0, i32 6
  %src_path_bits.i = getelementptr inbounds %struct.ib_ah_attr, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %src_path_bits.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %src_path_bits.i, align 2
  br label %rdma_ah_get_path_bits.exit

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %src_path_bits4.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah, i32 0, i32 6, i32 0, i32 1
  %6 = ptrtoint ptr %src_path_bits4.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %src_path_bits4.i, align 4
  br label %rdma_ah_get_path_bits.exit

rdma_ah_get_path_bits.exit:                       ; preds = %if.then3.i, %if.then.i, %entry.rdma_ah_get_path_bits.exit_crit_edge
  %retval.0.i = phi i8 [ %5, %if.then.i ], [ %7, %if.then3.i ], [ 0, %entry.rdma_ah_get_path_bits.exit_crit_edge ]
  %8 = and i8 %retval.0.i, 127
  %g_mylmc = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 2
  %9 = ptrtoint ptr %g_mylmc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %g_mylmc, align 1
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %11, label %rdma_ah_get_path_bits.exit.rdma_ah_get_dlid.exit_crit_edge [
    i32 1, label %if.then.i66
    i32 3, label %if.then4.i
  ]

rdma_ah_get_path_bits.exit.rdma_ah_get_dlid.exit_crit_edge: ; preds = %rdma_ah_get_path_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rdma_ah_get_dlid.exit

if.then.i66:                                      ; preds = %rdma_ah_get_path_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  %13 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah, i32 0, i32 6
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 8
  %conv.i = zext i16 %15 to i32
  br label %rdma_ah_get_dlid.exit

if.then4.i:                                       ; preds = %rdma_ah_get_path_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah, i32 0, i32 6
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  br label %rdma_ah_get_dlid.exit

rdma_ah_get_dlid.exit:                            ; preds = %if.then4.i, %if.then.i66, %rdma_ah_get_path_bits.exit.rdma_ah_get_dlid.exit_crit_edge
  %retval.0.i67 = phi i32 [ %conv.i, %if.then.i66 ], [ %18, %if.then4.i ], [ 0, %rdma_ah_get_path_bits.exit.rdma_ah_get_dlid.exit_crit_edge ]
  %conv3 = trunc i32 %retval.0.i67 to i16
  %rlid = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 3
  %19 = ptrtoint ptr %rlid to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %conv3, ptr %rlid, align 1
  %static_rate.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah, i32 0, i32 2
  %20 = ptrtoint ptr %static_rate.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %static_rate.i, align 1
  %conv5 = zext i8 %21 to i32
  %conv6 = zext i8 %port to i32
  %call7 = tail call zeroext i8 @mthca_get_rate(ptr noundef %dev, i32 noundef %conv5, i32 noundef %conv6) #10
  %static_rate = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 6
  %22 = ptrtoint ptr %static_rate to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call7, ptr %static_rate, align 1
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah, i32 0, i32 4
  %23 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ah_flags.i, align 8
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %rdma_ah_get_dlid.exit
  %sgid_index = getelementptr inbounds %struct.ib_global_route, ptr %ah, i32 0, i32 3
  %26 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sgid_index, align 4
  %conv11 = zext i8 %27 to i32
  %gid_table_len = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 3
  %28 = ptrtoint ptr %gid_table_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gid_table_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv11)
  %cmp.not = icmp sgt i32 %29, %conv11
  br i1 %cmp.not, label %cleanup, label %do.body

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %30 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool14.not = icmp eq i32 %30, 0
  br i1 %tobool14.not, label %do.body.return_crit_edge, label %do.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %sub = add i32 %29, -1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev17, ptr noundef nonnull @.str.53, i32 noundef %conv11, i32 noundef %sub) #13
  br label %return

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %g_mylmc to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %g_mylmc, align 1
  %35 = or i8 %34, -128
  store i8 %35, ptr %g_mylmc, align 1
  %36 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sgid_index, align 4
  %mgid_index = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 5
  %38 = ptrtoint ptr %mgid_index to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %mgid_index, align 1
  %hop_limit = getelementptr inbounds %struct.ib_global_route, ptr %ah, i32 0, i32 4
  %39 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hop_limit, align 1
  %hop_limit29 = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 7
  %41 = ptrtoint ptr %hop_limit29 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %hop_limit29, align 1
  %sl.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah, i32 0, i32 1
  %42 = ptrtoint ptr %sl.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %sl.i, align 8
  %conv31 = zext i8 %43 to i32
  %shl = shl i32 %conv31, 28
  %traffic_class = getelementptr inbounds %struct.ib_global_route, ptr %ah, i32 0, i32 5
  %44 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %traffic_class, align 2
  %conv32 = zext i8 %45 to i32
  %shl33 = shl nuw nsw i32 %conv32, 20
  %flow_label = getelementptr inbounds %struct.ib_global_route, ptr %ah, i32 0, i32 2
  %46 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flow_label, align 8
  %or34 = or i32 %47, %shl
  %or35 = or i32 %or34, %shl33
  %sl_tclass_flowlabel = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 8
  %48 = ptrtoint ptr %sl_tclass_flowlabel to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %or35, ptr %sl_tclass_flowlabel, align 1
  %rgid = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 9
  %dgid = getelementptr inbounds %struct.ib_global_route, ptr %ah, i32 0, i32 1
  %49 = call ptr @memcpy(ptr %rgid, ptr %dgid, i32 16)
  br label %return

if.else:                                          ; preds = %rdma_ah_get_dlid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sl.i69 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah, i32 0, i32 1
  %50 = ptrtoint ptr %sl.i69 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %sl.i69, align 8
  %conv38 = zext i8 %51 to i32
  %shl39 = shl i32 %conv38, 28
  %sl_tclass_flowlabel40 = getelementptr inbounds %struct.mthca_qp_path, ptr %path, i32 0, i32 8
  %52 = ptrtoint ptr %sl_tclass_flowlabel40 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %shl39, ptr %sl_tclass_flowlabel40, align 1
  br label %return

return:                                           ; preds = %if.else, %cleanup, %do.end, %do.body.return_crit_edge
  %retval.1 = phi i32 [ 0, %cleanup ], [ 0, %if.else ], [ -1, %do.body.return_crit_edge ], [ -1, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_CLOSE_IB(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mthca_get_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_INIT_IB(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_table_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_table_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_buf_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_alloc_db(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_db(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_buf_free(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_ud_header_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_ah_grh_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_read_ah(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_get_cached_pkey(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_ud_header_pack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !66, !67, !68, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 251, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mthca_qp_event._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mthca_qp_event._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 456, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mthca_query_qp._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mthca_query_qp._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 884, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mthca_modify_qp._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @mthca_modify_qp._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 893, i32 3}
!21 = !{ptr @mthca_modify_qp._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @mthca_modify_qp._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 900, i32 3}
!25 = !{ptr @mthca_modify_qp._entry.13, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @mthca_modify_qp._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 906, i32 3}
!29 = !{ptr @mthca_modify_qp._entry.16, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mthca_modify_qp._entry_ptr.18, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 913, i32 3}
!33 = !{ptr @mthca_modify_qp._entry.19, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @mthca_modify_qp._entry_ptr.21, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 1657, i32 4}
!37 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mthca_tavor_post_send._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @mthca_tavor_post_send._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 1753, i32 4}
!43 = !{ptr @mthca_tavor_post_send._entry.25, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mthca_tavor_post_send._entry_ptr.27, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.29, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 1777, i32 4}
!47 = !{ptr @mthca_tavor_post_send._entry.28, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mthca_tavor_post_send._entry_ptr.30, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 1853, i32 4}
!51 = !{ptr @.str.32, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mthca_tavor_post_receive._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @mthca_tavor_post_receive._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 1987, i32 4}
!56 = !{ptr @mthca_arbel_post_send._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mthca_arbel_post_send._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @mthca_arbel_post_send._entry.34, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 2083, i32 4}
!60 = !{ptr @mthca_arbel_post_send._entry_ptr.35, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @mthca_arbel_post_send._entry.36, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 2107, i32 4}
!63 = !{ptr @mthca_arbel_post_send._entry_ptr.37, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 2182, i32 4}
!66 = !{ptr @mthca_arbel_post_receive._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mthca_arbel_post_receive._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @mthca_init_qp_table.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 2265, i32 2}
!70 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 2291, i32 4}
!73 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @mthca_init_qp_table._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @mthca_init_qp_table._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 607, i32 4}
!78 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @__mthca_modify_qp._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @__mthca_modify_qp._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 687, i32 4}
!83 = !{ptr @__mthca_modify_qp._entry.44, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @__mthca_modify_qp._entry_ptr.46, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 693, i32 4}
!87 = !{ptr @__mthca_modify_qp._entry.47, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @__mthca_modify_qp._entry_ptr.49, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 796, i32 3}
!91 = !{ptr @__mthca_modify_qp._entry.50, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @__mthca_modify_qp._entry_ptr.52, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 534, i32 4}
!95 = !{ptr @.str.54, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @mthca_path_set._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @mthca_path_set._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 325, i32 3}
!100 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @init_port._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @init_port._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @mthca_alloc_qp_common.__key, !104, !"__key", i1 false, i1 false}
!104 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 1175, i32 2}
!105 = !{ptr @.str.57, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @mthca_alloc_qp_common.__key.58, !107, !"__key", i1 false, i1 false}
!107 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 1176, i32 2}
!108 = !{ptr @.str.59, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @mthca_alloc_qp_common.__key.60, !110, !"__key", i1 false, i1 false}
!110 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 1184, i32 2}
!111 = !{ptr @.str.61, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mthca_alloc_qp_common.__key.62, !113, !"__key", i1 false, i1 false}
!113 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 1185, i32 2}
!114 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @mthca_opcode, !116, !"mthca_opcode", i1 false, i1 false}
!116 = !{!"../drivers/infiniband/hw/mthca/mthca_qp.c", i32 186, i32 17}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{i32 0, i32 33}
!127 = !{!"branch_weights", i32 1, i32 2000}
!128 = !{i64 2148656244, i64 2148656270, i64 2148656299, i64 2148656333, i64 2148656364, i64 2148656387}
!129 = !{i64 2148658709, i64 2148658735, i64 2148658764, i64 2148658798, i64 2148658829, i64 2148658852}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{i64 2158339161}
!132 = !{i64 2158339540}
!133 = !{i64 4613869}
!134 = !{!"auto-init"}
!135 = !{i64 2158342592}
!136 = !{i64 2158342803}
!137 = !{i64 2158343406}
!138 = !{i64 2158343618}
!139 = !{i64 2158350113}
!140 = !{i64 2158350480}
!141 = !{i64 2158350692}
!142 = !{i64 2158353585}
