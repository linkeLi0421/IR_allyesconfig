; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/vmw_pvrdma/pvrdma_srq.c_pt.bc'
source_filename = "../drivers/infiniband/hw/vmw_pvrdma/pvrdma_srq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.pvrdma_srq = type { %struct.ib_srq, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, %struct.pvrdma_page_dir, i32, i32, %struct.refcount_struct, %struct.completion }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.169, %struct.rdma_restrack_entry }
%struct.anon.169 = type { ptr, %union.anon.170 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { ptr, i32 }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pvrdma_page_dir = type { i32, ptr, i32, ptr, i64, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.pvrdma_cmd_query_srq = type { %struct.pvrdma_cmd_hdr, i32, [4 x i8] }
%struct.pvrdma_dev = type { %struct.ib_device, ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, i32, %struct.spinlock, %struct.semaphore, %struct.completion, i32, ptr, ptr, %struct.pvrdma_page_dir, ptr, %struct.pvrdma_page_dir, ptr, %struct.spinlock, ptr, %struct.spinlock, ptr, %struct.spinlock, %struct.pvrdma_uar_table, %struct.pvrdma_uar_map, i64, %struct.spinlock, i32, %struct.mutex, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.notifier_block }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.168, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.168 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.ib_odp_caps = type { i64, %struct.anon.159 }
%struct.anon.159 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.pvrdma_uar_table = type { %struct.pvrdma_id_table, i32 }
%struct.pvrdma_id_table = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.pvrdma_uar_map = type { i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.172, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.172 = type { ptr }
%struct.pvrdma_cmd_query_srq_resp = type { %struct.pvrdma_cmd_resp_hdr, %struct.pvrdma_srq_attr }
%struct.pvrdma_srq_attr = type { i32, i32, i32, i32 }
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.pvrdma_create_srq_resp = type { i32, i32 }
%struct.pvrdma_create_srq = type { i64, i32, i32 }
%struct.ib_srq_init_attr = type { ptr, ptr, %struct.ib_srq_attr, i32, %struct.anon.161 }
%struct.anon.161 = type { ptr, %union.anon.162 }
%union.anon.162 = type { %struct.anon.163 }
%struct.anon.163 = type { ptr }
%struct.pvrdma_device_shared_region = type { i32, i32, %struct.pvrdma_gos_info, i64, i64, %struct.pvrdma_ring_page_info, %struct.pvrdma_ring_page_info, %union.anon.173, %struct.pvrdma_device_caps }
%struct.pvrdma_gos_info = type { i32, i32 }
%struct.pvrdma_ring_page_info = type { i32, i32, i64 }
%union.anon.173 = type { i64 }
%struct.pvrdma_device_caps = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.pvrdma_cmd_create_srq = type { %struct.pvrdma_cmd_hdr, i64, i32, i32, %struct.pvrdma_srq_attr, i8, [7 x i8] }
%struct.pvrdma_pd = type { %struct.ib_pd, i32, i32, i32 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.pvrdma_cmd_create_srq_resp = type { %struct.pvrdma_cmd_resp_hdr, i32, [4 x i8] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.pvrdma_cmd_destroy_srq = type { %struct.pvrdma_cmd_hdr, i32, [4 x i8] }
%struct.pvrdma_cmd_modify_srq = type { %struct.pvrdma_cmd_hdr, i32, i32, %struct.pvrdma_srq_attr }

@pvrdma_query_srq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 80, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"could not query shared receive queue, error: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvrdma_query_srq\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/infiniband/hw/vmw_pvrdma/pvrdma_srq.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pvrdma_query_srq._entry_ptr = internal global ptr @pvrdma_query_srq._entry, section ".printk_index", align 4
@pvrdma_create_srq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 116, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"no shared receive queue support for kernel client\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pvrdma_create_srq\00", [46 x i8] zeroinitializer }, align 32
@pvrdma_create_srq._entry_ptr = internal global ptr @pvrdma_create_srq._entry, section ".printk_index", align 4
@pvrdma_create_srq._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 123, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"shared receive queue type %d not supported\0A\00", [52 x i8] zeroinitializer }, align 32
@pvrdma_create_srq._entry_ptr.9 = internal global ptr @pvrdma_create_srq._entry.7, section ".printk_index", align 4
@pvrdma_create_srq._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 130, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"shared receive queue size invalid\0A\00", [61 x i8] zeroinitializer }, align 32
@pvrdma_create_srq._entry_ptr.12 = internal global ptr @pvrdma_create_srq._entry.10, section ".printk_index", align 4
@pvrdma_create_srq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&srq->lock\00", [21 x i8] zeroinitializer }, align 32
@pvrdma_create_srq.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.6, ptr @.str.2, ptr @.str.15, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vmw_pvrdma\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"create shared receive queue from user space\0A\00", [51 x i8] zeroinitializer }, align 32
@pvrdma_create_srq._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 159, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"overflow pages in shared receive queue\0A\00", [56 x i8] zeroinitializer }, align 32
@pvrdma_create_srq._entry_ptr.18 = internal global ptr @pvrdma_create_srq._entry.16, section ".printk_index", align 4
@pvrdma_create_srq._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.2, i32 167, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not allocate page directory\0A\00", [61 x i8] zeroinitializer }, align 32
@pvrdma_create_srq._entry_ptr.21 = internal global ptr @pvrdma_create_srq._entry.19, section ".printk_index", align 4
@pvrdma_create_srq._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.2, i32 187, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"could not create shared receive queue, error: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@pvrdma_create_srq._entry_ptr.24 = internal global ptr @pvrdma_create_srq._entry.22, section ".printk_index", align 4
@pvrdma_create_srq._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.6, ptr @.str.2, i32 199, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to copy back udata\0A\00", [37 x i8] zeroinitializer }, align 32
@pvrdma_create_srq._entry_ptr.27 = internal global ptr @pvrdma_create_srq._entry.25, section ".printk_index", align 4
@pvrdma_destroy_srq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 259, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"destroy shared receive queue failed, error: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvrdma_destroy_srq\00", [45 x i8] zeroinitializer }, align 32
@pvrdma_destroy_srq._entry_ptr = internal global ptr @pvrdma_destroy_srq._entry, section ".printk_index", align 4
@pvrdma_modify_srq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"could not modify shared receive queue, error: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pvrdma_modify_srq\00", [46 x i8] zeroinitializer }, align 32
@pvrdma_modify_srq._entry_ptr = internal global ptr @pvrdma_modify_srq._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 78, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 115, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 121, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 129, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 137, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 141, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 158, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 166, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 185, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 199, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 257, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private constant [49 x i8] c"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_srq.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 295, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 87, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 156, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @pvrdma_create_srq._entry, ptr @pvrdma_create_srq._entry.10, ptr @pvrdma_create_srq._entry.16, ptr @pvrdma_create_srq._entry.19, ptr @pvrdma_create_srq._entry.22, ptr @pvrdma_create_srq._entry.25, ptr @pvrdma_create_srq._entry.7, ptr @pvrdma_create_srq._entry_ptr, ptr @pvrdma_create_srq._entry_ptr.12, ptr @pvrdma_create_srq._entry_ptr.18, ptr @pvrdma_create_srq._entry_ptr.21, ptr @pvrdma_create_srq._entry_ptr.24, ptr @pvrdma_create_srq._entry_ptr.27, ptr @pvrdma_create_srq._entry_ptr.9, ptr @pvrdma_destroy_srq._entry, ptr @pvrdma_destroy_srq._entry_ptr, ptr @pvrdma_modify_srq._entry, ptr @pvrdma_modify_srq._entry_ptr, ptr @pvrdma_query_srq._entry, ptr @pvrdma_query_srq._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @pvrdma_create_srq.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @init_completion.__key, ptr @.str.32, ptr @.str.35], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_query_srq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_srq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_srq._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_srq._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_srq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_srq._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_srq._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_srq._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_srq._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_destroy_srq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_modify_srq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_query_srq(ptr nocapture noundef readonly %ibsrq, ptr nocapture noundef writeonly %srq_attr) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %union.pvrdma_cmd_req, align 8
  %rsp = alloca %union.pvrdma_cmd_resp, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibsrq, align 4
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req) #6
  %2 = getelementptr inbounds i8, ptr %req, i32 24
  %3 = call ptr @memset(ptr %2, i32 255, i32 160)
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %rsp) #6
  %4 = call ptr @memset(ptr %rsp, i32 255, i32 176)
  %5 = call ptr @memset(ptr %req, i32 0, i32 24)
  %cmd2 = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 19, ptr %cmd2, align 8
  %srq_handle = getelementptr inbounds %struct.pvrdma_srq, ptr %ibsrq, i32 0, i32 9
  %7 = ptrtoint ptr %srq_handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %srq_handle, align 8
  %srq_handle3 = getelementptr inbounds %struct.pvrdma_cmd_query_srq, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %srq_handle3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %srq_handle3, align 8
  %call4 = call i32 @pvrdma_cmd_post(ptr noundef %1, ptr noundef nonnull %req, ptr noundef nonnull %rsp, i32 noundef -2147483629) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str, i32 noundef %call4) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %attrs = getelementptr inbounds %struct.pvrdma_cmd_query_srq_resp, ptr %rsp, i32 0, i32 1
  %srq_limit = getelementptr inbounds %struct.pvrdma_cmd_query_srq_resp, ptr %rsp, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %srq_limit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %srq_limit, align 8
  %srq_limit6 = getelementptr inbounds %struct.ib_srq_attr, ptr %srq_attr, i32 0, i32 2
  %14 = ptrtoint ptr %srq_limit6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %srq_limit6, align 4
  %15 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %attrs, align 8
  %17 = ptrtoint ptr %srq_attr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %srq_attr, align 4
  %max_sge = getelementptr inbounds %struct.pvrdma_cmd_query_srq_resp, ptr %rsp, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %max_sge to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_sge, align 4
  %max_sge10 = getelementptr inbounds %struct.ib_srq_attr, ptr %srq_attr, i32 0, i32 1
  %20 = ptrtoint ptr %max_sge10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %max_sge10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %rsp) #6
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_cmd_post(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_create_srq(ptr noundef %ibsrq, ptr nocapture noundef readonly %init_attr, ptr noundef readonly %udata) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %union.pvrdma_cmd_req, align 8
  %rsp = alloca %union.pvrdma_cmd_resp, align 8
  %srq_resp = alloca %struct.pvrdma_create_srq_resp, align 8
  %ucmd = alloca %struct.pvrdma_create_srq, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibsrq, align 4
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req) #6
  %2 = call ptr @memset(ptr %req, i32 255, i32 184)
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %rsp) #6
  %3 = call ptr @memset(ptr %rsp, i32 255, i32 176)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %srq_resp) #6
  %4 = ptrtoint ptr %srq_resp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %srq_resp, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ucmd) #6
  %5 = getelementptr inbounds %struct.pvrdma_create_srq, ptr %ucmd, i32 0, i32 1
  %tobool.not = icmp eq ptr %udata, null
  %6 = call ptr @memset(ptr %ucmd, i32 255, i32 16)
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %srq_type = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 3
  %9 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %srq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %if.end10, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pdev7 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev7, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8, ptr noundef nonnull @.str.8, i32 noundef %10) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %attr = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 2
  %13 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %attr, align 4
  %dsr = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dsr, align 8
  %max_srq_wr = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %16, i32 0, i32 8, i32 39
  %17 = ptrtoint ptr %max_srq_wr to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %max_srq_wr, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %18)
  %cmp11 = icmp ugt i32 %14, %18
  br i1 %cmp11, label %if.end10.do.end19_crit_edge, label %lor.lhs.false

if.end10.do.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

lor.lhs.false:                                    ; preds = %if.end10
  %max_sge = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %max_sge to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_sge, align 4
  %max_srq_sge = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %16, i32 0, i32 8, i32 40
  %21 = ptrtoint ptr %max_srq_sge to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %max_srq_sge, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp15 = icmp ugt i32 %20, %22
  br i1 %cmp15, label %lor.lhs.false.do.end19_crit_edge, label %if.end22

lor.lhs.false.do.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

do.end19:                                         ; preds = %lor.lhs.false.do.end19_crit_edge, %if.end10.do.end19_crit_edge
  %pdev20 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %pdev20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev20, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev21, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  %num_srqs = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 34
  %max_srq = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %16, i32 0, i32 8, i32 38
  %25 = ptrtoint ptr %max_srq to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %max_srq, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_srqs, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %num_srqs, i32 1, i32 3, i32 1) #6
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %num_srqs, ptr %num_srqs, i32 %26, i32 1, ptr elementtype(i32) %num_srqs) #6, !srcloc !75
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i, i32 %26)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, %26
  br i1 %cmp.not.i.i.i, label %if.end22.cleanup_crit_edge, label %do.body28

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body28:                                        ; preds = %if.end22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !76
  %lock = getelementptr inbounds %struct.pvrdma_srq, ptr %ibsrq, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @pvrdma_create_srq.__key, i16 noundef signext 3) #6
  %refcnt = getelementptr inbounds %struct.pvrdma_srq, ptr %ibsrq, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #6
  %28 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1, ptr %refcnt, align 4
  %free = getelementptr inbounds %struct.pvrdma_srq, ptr %ibsrq, i32 0, i32 12
  %29 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %free, align 4
  %wait.i = getelementptr inbounds %struct.pvrdma_srq, ptr %ibsrq, i32 0, i32 12, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @init_completion.__key) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_create_srq.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_create_srq, %if.then37)) #6
          to label %do.end42 [label %if.then37], !srcloc !77

if.then37:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  %pdev38 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %pdev38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev38, align 8
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_create_srq.__UNIQUE_ID_ddebug502, ptr noundef %dev39, ptr noundef nonnull @.str.15) #6
  br label %do.end42

do.end42:                                         ; preds = %if.then37, %do.body28
  %32 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %udata, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #6
  %call.i.i.i221 = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i.i221, label %do.end42.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

do.end42.if.then11.i.i.i_crit_edge:               ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %do.end42
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %33, i32 16, i32 -1226833920) #10, !srcloc !78
  %asmresult.i.i.i222 = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i222)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i.i222, 0
  br i1 %cmp.i1.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !79

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ucmd, i32 noundef 16) #6
  %35 = call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !80
  %and.i.i.i.i.i = and i32 %37, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #6, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ucmd, ptr noundef %33, i32 noundef 16) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #6, !srcloc !81
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end46, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !79

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %do.end42.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %do.end42.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 16, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %ucmd, i32 %sub.i.i.i
  %38 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %err_srq

if.end46:                                         ; preds = %if.end.i.i.i
  %39 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ibsrq, align 4
  %41 = ptrtoint ptr %ucmd to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %ucmd, align 8
  %conv = trunc i64 %42 to i32
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 8
  %call48 = call ptr @ib_umem_get(ptr noundef %40, i32 noundef %conv, i32 noundef %44, i32 noundef 0) #6
  %umem = getelementptr inbounds %struct.pvrdma_srq, ptr %ibsrq, i32 0, i32 6
  %45 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call48, ptr %umem, align 8
  %cmp.i = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %call48 to i32
  br label %err_srq

if.end54:                                         ; preds = %if.end46
  %iova.i = getelementptr inbounds %struct.ib_umem, ptr %call48, i32 0, i32 2
  %47 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %iova.i, align 8
  %length.i = getelementptr inbounds %struct.ib_umem, ptr %call48, i32 0, i32 3
  %49 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %length.i, align 8
  %conv.i = zext i32 %50 to i64
  %add.i = add i64 %48, 4095
  %add2.i = add i64 %add.i, %conv.i
  %and.i = and i64 %add2.i, 4294963200
  %and15.i = and i64 %48, 4294963200
  %sub16.i = sub nsw i64 %and.i, %and15.i
  %conv17.i = trunc i64 %sub16.i to i32
  %div1.i = lshr exact i32 %conv17.i, 12
  %npages = getelementptr inbounds %struct.pvrdma_srq, ptr %ibsrq, i32 0, i32 10
  %51 = ptrtoint ptr %npages to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div1.i, ptr %npages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %conv17.i)
  %cmp62 = icmp ugt i32 %conv17.i, 1073741824
  br i1 %cmp62, label %do.end67, label %if.end70

do.end67:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %pdev68 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %52 = ptrtoint ptr %pdev68 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev68, align 8
  %dev69 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev69, ptr noundef nonnull @.str.17) #9
  br label %err_umem

if.end70:                                         ; preds = %if.end54
  %pdir = getelementptr inbounds %struct.pvrdma_srq, ptr %ibsrq, i32 0, i32 8
  %conv72234 = zext i32 %div1.i to i64
  %call73 = call i32 @pvrdma_page_dir_init(ptr noundef %1, ptr noundef %pdir, i64 noundef %conv72234, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end81, label %do.end78

do.end78:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %pdev79 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %pdev79 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev79, align 8
  %dev80 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev80, ptr noundef nonnull @.str.20) #9
  br label %err_umem

if.end81:                                         ; preds = %if.end70
  %56 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %umem, align 8
  %call84 = call i32 @pvrdma_page_dir_insert_umem(ptr noundef %pdir, ptr noundef %57, i64 noundef 0) #6
  %58 = call ptr @memset(ptr %req, i32 0, i32 56)
  %cmd85 = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req, i32 0, i32 1
  %59 = ptrtoint ptr %cmd85 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 17, ptr %cmd85, align 8
  %60 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %srq_type, align 4
  %conv87 = trunc i32 %61 to i8
  %srq_type88 = getelementptr inbounds %struct.pvrdma_cmd_create_srq, ptr %req, i32 0, i32 5
  %62 = ptrtoint ptr %srq_type88 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv87, ptr %srq_type88, align 8
  %63 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %npages, align 4
  %nchunks = getelementptr inbounds %struct.pvrdma_cmd_create_srq, ptr %req, i32 0, i32 3
  %65 = ptrtoint ptr %nchunks to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %nchunks, align 4
  %pd = getelementptr inbounds %struct.ib_srq, ptr %ibsrq, i32 0, i32 1
  %66 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pd, align 4
  %pd_handle = getelementptr inbounds %struct.pvrdma_pd, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %pd_handle to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pd_handle, align 4
  %pd_handle91 = getelementptr inbounds %struct.pvrdma_cmd_create_srq, ptr %req, i32 0, i32 2
  %70 = ptrtoint ptr %pd_handle91 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %pd_handle91, align 8
  %71 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %attr, align 4
  %attrs = getelementptr inbounds %struct.pvrdma_cmd_create_srq, ptr %req, i32 0, i32 4
  %73 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %attrs, align 8
  %74 = ptrtoint ptr %max_sge to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_sge, align 4
  %max_sge98 = getelementptr inbounds %struct.pvrdma_cmd_create_srq, ptr %req, i32 0, i32 4, i32 1
  %76 = ptrtoint ptr %max_sge98 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %max_sge98, align 4
  %srq_limit = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 2, i32 2
  %77 = ptrtoint ptr %srq_limit to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %srq_limit, align 4
  %srq_limit101 = getelementptr inbounds %struct.pvrdma_cmd_create_srq, ptr %req, i32 0, i32 4, i32 2
  %79 = ptrtoint ptr %srq_limit101 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %srq_limit101, align 8
  %80 = ptrtoint ptr %pdir to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pdir, align 8
  %conv103 = zext i32 %81 to i64
  %pdir_dma = getelementptr inbounds %struct.pvrdma_cmd_create_srq, ptr %req, i32 0, i32 1
  %82 = ptrtoint ptr %pdir_dma to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %conv103, ptr %pdir_dma, align 8
  %call104 = call i32 @pvrdma_cmd_post(ptr noundef %1, ptr noundef nonnull %req, ptr noundef nonnull %rsp, i32 noundef -2147483631) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %do.end110, label %if.end113

do.end110:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %pdev111 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %83 = ptrtoint ptr %pdev111 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdev111, align 8
  %dev112 = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev112, ptr noundef nonnull @.str.23, i32 noundef %call104) #9
  call void @pvrdma_page_dir_cleanup(ptr noundef %1, ptr noundef %pdir) #6
  br label %err_umem

if.end113:                                        ; preds = %if.end81
  %srqn = getelementptr inbounds %struct.pvrdma_cmd_create_srq_resp, ptr %rsp, i32 0, i32 1
  %85 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %srqn, align 8
  %srq_handle = getelementptr inbounds %struct.pvrdma_srq, ptr %ibsrq, i32 0, i32 9
  %87 = ptrtoint ptr %srq_handle to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %srq_handle, align 8
  %88 = ptrtoint ptr %srq_resp to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %86, ptr %srq_resp, align 8
  %srq_tbl_lock = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 22
  %call122 = call i32 @_raw_spin_lock_irqsave(ptr noundef %srq_tbl_lock) #6
  %srq_tbl = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 21
  %89 = ptrtoint ptr %srq_tbl to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %srq_tbl, align 8
  %91 = ptrtoint ptr %srq_handle to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %srq_handle, align 8
  %93 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dsr, align 8
  %max_srq130 = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %94, i32 0, i32 8, i32 38
  %95 = ptrtoint ptr %max_srq130 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %max_srq130, align 1
  %rem = urem i32 %92, %96
  %arrayidx = getelementptr ptr, ptr %90, i32 %rem
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %ibsrq, ptr %arrayidx, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %srq_tbl_lock, i32 noundef %call122) #6
  %outbuf.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %98 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %outbuf.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #6
  %call.i.i.i225 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i.i225, label %if.end113.do.end137_crit_edge, label %if.end.i.i.i229

if.end113.do.end137_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end137

if.end.i.i.i229:                                  ; preds = %if.end113
  %100 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %99, i32 8, i32 -1226833920) #10, !srcloc !83
  %asmresult.i.i.i227 = extractvalue { i32, i32 } %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i227)
  %cmp.i1.i.i228 = icmp eq i32 %asmresult.i.i.i227, 0
  br i1 %cmp.i1.i.i228, label %copy_to_user.exit.i, label %if.end.i.i.i229.do.end137_crit_edge

if.end.i.i.i229.do.end137_crit_edge:              ; preds = %if.end.i.i.i229
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end137

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i229
  %call.i.i.i.i230 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %srq_resp, i32 noundef 8) #6
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %99, ptr noundef nonnull %srq_resp, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i1.i.i.i, 0
  br i1 %tobool.not.i, label %copy_to_user.exit.i.cleanup_crit_edge, label %copy_to_user.exit.i.do.end137_crit_edge

copy_to_user.exit.i.do.end137_crit_edge:          ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end137

copy_to_user.exit.i.cleanup_crit_edge:            ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end137:                                        ; preds = %copy_to_user.exit.i.do.end137_crit_edge, %if.end.i.i.i229.do.end137_crit_edge, %if.end113.do.end137_crit_edge
  %pdev138 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %101 = ptrtoint ptr %pdev138 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev138, align 8
  %dev139 = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev139, ptr noundef nonnull @.str.26) #9
  %call141 = call i32 @pvrdma_destroy_srq(ptr noundef %ibsrq, ptr undef)
  br label %cleanup

err_umem:                                         ; preds = %do.end110, %do.end78, %do.end67
  %ret.0 = phi i32 [ -22, %do.end67 ], [ %call73, %do.end78 ], [ %call104, %do.end110 ]
  %103 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %umem, align 8
  call void @ib_umem_release(ptr noundef %104) #6
  br label %err_srq

err_srq:                                          ; preds = %err_umem, %if.then51, %if.then11.i.i.i
  %ret.1 = phi i32 [ %46, %if.then51 ], [ %ret.0, %err_umem ], [ -14, %if.then11.i.i.i ]
  %call.i.i220 = call zeroext i1 @__kasan_check_write(ptr noundef %num_srqs, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %num_srqs, i32 1, i32 3, i32 1) #6
  %105 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_srqs, ptr %num_srqs, i32 1, ptr elementtype(i32) %num_srqs) #6, !srcloc !84
  br label %cleanup

cleanup:                                          ; preds = %err_srq, %do.end137, %copy_to_user.exit.i.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end19, %do.end6, %do.end
  %retval.0 = phi i32 [ -95, %do.end6 ], [ -22, %do.end19 ], [ %ret.1, %err_srq ], [ -22, %do.end137 ], [ -95, %do.end ], [ 0, %copy_to_user.exit.i.cleanup_crit_edge ], [ -12, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucmd) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %srq_resp) #6
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %rsp) #6
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_page_dir_init(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_page_dir_insert_umem(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_destroy_srq(ptr noundef %srq, ptr nocapture readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %union.pvrdma_cmd_req, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req) #6
  %0 = getelementptr inbounds i8, ptr %req, i32 24
  %1 = call ptr @memset(ptr %0, i32 255, i32 160)
  %2 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %srq, align 4
  %4 = call ptr @memset(ptr %req, i32 0, i32 24)
  %cmd2 = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req, i32 0, i32 1
  %5 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20, ptr %cmd2, align 8
  %srq_handle = getelementptr inbounds %struct.pvrdma_srq, ptr %srq, i32 0, i32 9
  %6 = ptrtoint ptr %srq_handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %srq_handle, align 8
  %srq_handle3 = getelementptr inbounds %struct.pvrdma_cmd_destroy_srq, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %srq_handle3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %srq_handle3, align 8
  %call4 = call i32 @pvrdma_cmd_post(ptr noundef %3, ptr noundef nonnull %req, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.28, i32 noundef %call4) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %srq_tbl_lock.i = getelementptr inbounds %struct.pvrdma_dev, ptr %3, i32 0, i32 22
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %srq_tbl_lock.i) #6
  %srq_tbl.i = getelementptr inbounds %struct.pvrdma_dev, ptr %3, i32 0, i32 21
  %11 = ptrtoint ptr %srq_tbl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %srq_tbl.i, align 8
  %13 = ptrtoint ptr %srq_handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %srq_handle, align 8
  %arrayidx.i = getelementptr ptr, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %srq_tbl_lock.i, i32 noundef %call2.i) #6
  %refcnt.i = getelementptr inbounds %struct.pvrdma_srq, ptr %srq, i32 0, i32 11
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !85
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #6
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #6, !srcloc !86
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.pvrdma_free_srq.exit_crit_edge, label %if.then10.i.i.i.i, !prof !79

if.end5.i.i.i.i.pvrdma_free_srq.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pvrdma_free_srq.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #6
  br label %pvrdma_free_srq.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !87
  %free.i = getelementptr inbounds %struct.pvrdma_srq, ptr %srq, i32 0, i32 12
  call void @complete(ptr noundef %free.i) #6
  br label %pvrdma_free_srq.exit

pvrdma_free_srq.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.pvrdma_free_srq.exit_crit_edge
  %free7.i = getelementptr inbounds %struct.pvrdma_srq, ptr %srq, i32 0, i32 12
  call void @wait_for_completion(ptr noundef %free7.i) #6
  %umem.i = getelementptr inbounds %struct.pvrdma_srq, ptr %srq, i32 0, i32 6
  %17 = ptrtoint ptr %umem.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %umem.i, align 8
  call void @ib_umem_release(ptr noundef %18) #6
  %pdir.i = getelementptr inbounds %struct.pvrdma_srq, ptr %srq, i32 0, i32 8
  call void @pvrdma_page_dir_cleanup(ptr noundef %3, ptr noundef %pdir.i) #6
  %num_srqs.i = getelementptr inbounds %struct.pvrdma_dev, ptr %3, i32 0, i32 34
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %num_srqs.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %num_srqs.i, i32 1, i32 3, i32 1) #6
  %19 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_srqs.i, ptr %num_srqs.i, i32 1, ptr elementtype(i32) %num_srqs.i) #6, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvrdma_page_dir_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_modify_srq(ptr nocapture noundef readonly %ibsrq, ptr nocapture noundef readonly %attr, i32 noundef %attr_mask, ptr nocapture noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %union.pvrdma_cmd_req, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req) #6
  %0 = getelementptr inbounds i8, ptr %req, i32 40
  %1 = call ptr @memset(ptr %0, i32 255, i32 144)
  %2 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibsrq, align 4
  %and = and i32 %attr_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = call ptr @memset(ptr %req, i32 0, i32 40)
  %cmd2 = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req, i32 0, i32 1
  %5 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 18, ptr %cmd2, align 8
  %srq_handle = getelementptr inbounds %struct.pvrdma_srq, ptr %ibsrq, i32 0, i32 9
  %6 = ptrtoint ptr %srq_handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %srq_handle, align 8
  %srq_handle3 = getelementptr inbounds %struct.pvrdma_cmd_modify_srq, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %srq_handle3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %srq_handle3, align 8
  %srq_limit = getelementptr inbounds %struct.ib_srq_attr, ptr %attr, i32 0, i32 2
  %9 = ptrtoint ptr %srq_limit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %srq_limit, align 4
  %srq_limit4 = getelementptr inbounds %struct.pvrdma_cmd_modify_srq, ptr %req, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %srq_limit4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %srq_limit4, align 8
  %attr_mask5 = getelementptr inbounds %struct.pvrdma_cmd_modify_srq, ptr %req, i32 0, i32 2
  %12 = ptrtoint ptr %attr_mask5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %attr_mask, ptr %attr_mask5, align 4
  %call6 = call i32 @pvrdma_cmd_post(ptr noundef %3, ptr noundef nonnull %req, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8, ptr noundef nonnull @.str.30, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !59, !60, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_srq.c", i32 78, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pvrdma_query_srq._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pvrdma_query_srq._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_srq.c", i32 115, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @pvrdma_create_srq._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @pvrdma_create_srq._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_srq.c", i32 121, i32 3}
!15 = !{ptr @pvrdma_create_srq._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @pvrdma_create_srq._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_srq.c", i32 129, i32 3}
!19 = !{ptr @pvrdma_create_srq._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @pvrdma_create_srq._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @pvrdma_create_srq.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_srq.c", i32 137, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_srq.c", i32 141, i32 2}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @pvrdma_create_srq.__UNIQUE_ID_ddebug502, !25, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_srq.c", i32 158, i32 3}
!30 = !{ptr @pvrdma_create_srq._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @pvrdma_create_srq._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_srq.c", i32 166, i32 3}
!34 = !{ptr @pvrdma_create_srq._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @pvrdma_create_srq._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_srq.c", i32 185, i32 3}
!38 = !{ptr @pvrdma_create_srq._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @pvrdma_create_srq._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_srq.c", i32 199, i32 3}
!42 = !{ptr @pvrdma_create_srq._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @pvrdma_create_srq._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_srq.c", i32 257, i32 3}
!46 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @pvrdma_destroy_srq._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @pvrdma_destroy_srq._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_srq.c", i32 295, i32 3}
!51 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @pvrdma_modify_srq._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @pvrdma_modify_srq._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @init_completion.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../include/linux/completion.h", i32 87, i32 2}
!56 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!59 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2148203733}
!75 = !{i64 688556, i64 688581, i64 688603, i64 688619, i64 688631, i64 688651, i64 688675, i64 688691, i64 688703}
!76 = !{i64 2148203921}
!77 = !{i64 2148691878, i64 2148691883, i64 2148691896, i64 2148691940, i64 2148691974, i64 2148691995}
!78 = !{i64 2152404055, i64 2152404080}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{i64 4899610}
!81 = !{i64 4899807}
!82 = !{i64 2152385040}
!83 = !{i64 2152404736, i64 2152404761}
!84 = !{i64 2148206779, i64 2148206805, i64 2148206834, i64 2148206868, i64 2148206899, i64 2148206922}
!85 = !{i64 2148293845}
!86 = !{i64 2148208309, i64 2148208341, i64 2148208370, i64 2148208404, i64 2148208435, i64 2148208458}
!87 = !{i64 2149648802}
