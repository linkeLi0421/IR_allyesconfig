; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/vmw_pvrdma/pvrdma_cq.c_pt.bc'
source_filename = "../drivers/infiniband/hw/vmw_pvrdma/pvrdma_cq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pvrdma_cq = type { %struct.ib_cq, i32, %struct.spinlock, ptr, ptr, ptr, %struct.pvrdma_page_dir, i32, i8, %struct.refcount_struct, %struct.completion }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.184, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.184 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pvrdma_page_dir = type { i32, ptr, i32, ptr, i64, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pvrdma_dev = type { %struct.ib_device, ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, i32, %struct.spinlock, %struct.semaphore, %struct.completion, i32, ptr, ptr, %struct.pvrdma_page_dir, ptr, %struct.pvrdma_page_dir, ptr, %struct.spinlock, ptr, %struct.spinlock, ptr, %struct.spinlock, %struct.pvrdma_uar_table, %struct.pvrdma_uar_map, i64, %struct.spinlock, i32, %struct.mutex, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.notifier_block }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.172, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
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
%struct.ib_odp_caps = type { i64, %struct.anon.161 }
%struct.anon.161 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.pvrdma_uar_table = type { %struct.pvrdma_id_table, i32 }
%struct.pvrdma_id_table = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.pvrdma_uar_map = type { i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pvrdma_ring_state = type { %struct.pvrdma_ring, %struct.pvrdma_ring }
%struct.pvrdma_ring = type { %struct.atomic_t, %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.185, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.185 = type { ptr }
%union.pvrdma_cmd_req = type { %struct.pvrdma_cmd_modify_qp }
%struct.pvrdma_cmd_modify_qp = type { %struct.pvrdma_cmd_hdr, i32, i32, %struct.pvrdma_qp_attr }
%struct.pvrdma_cmd_hdr = type { i64, i32, i32 }
%struct.pvrdma_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], %struct.pvrdma_qp_cap, %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr }
%struct.pvrdma_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.pvrdma_ah_attr = type { %struct.pvrdma_global_route, i16, i16, i8, i8, i8, i8, i8, [6 x i8], i8 }
%struct.pvrdma_global_route = type { %union.pvrdma_gid, i32, i8, i8, i8, i8 }
%union.pvrdma_gid = type { %struct.anon.188 }
%struct.anon.188 = type { i64, i64 }
%union.pvrdma_cmd_resp = type { %struct.pvrdma_cmd_query_qp_resp }
%struct.pvrdma_cmd_query_qp_resp = type { %struct.pvrdma_cmd_resp_hdr, %struct.pvrdma_qp_attr }
%struct.pvrdma_cmd_resp_hdr = type { i64, i32, i8, [3 x i8] }
%struct.pvrdma_create_cq_resp = type { i32, i32 }
%struct.pvrdma_create_cq = type { i64, i32, i32 }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.167 }
%union.anon.167 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.168, i16, i16, i8 }
%union.anon.168 = type { i64 }
%struct.ib_cq_init_attr = type { i32, i32, i32 }
%struct.pvrdma_device_shared_region = type { i32, i32, %struct.pvrdma_gos_info, i64, i64, %struct.pvrdma_ring_page_info, %struct.pvrdma_ring_page_info, %union.anon.186, %struct.pvrdma_device_caps }
%struct.pvrdma_gos_info = type { i32, i32 }
%struct.pvrdma_ring_page_info = type { i32, i32, i64 }
%union.anon.186 = type { i64 }
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
%struct.pvrdma_cmd_create_cq = type { %struct.pvrdma_cmd_hdr, i64, i32, i32, i32, [4 x i8] }
%struct.pvrdma_ucontext = type { %struct.ib_ucontext, ptr, %struct.pvrdma_uar_map, i64 }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.pvrdma_cmd_create_cq_resp = type { %struct.pvrdma_cmd_resp_hdr, i32, i32 }
%struct.pvrdma_cmd_destroy_cq = type { %struct.pvrdma_cmd_hdr, i32, [4 x i8] }
%struct.pvrdma_qp = type { %struct.ib_qp, i32, i32, %struct.pvrdma_wq, %struct.pvrdma_wq, ptr, ptr, %struct.pvrdma_page_dir, ptr, i32, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.refcount_struct, %struct.completion }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.pvrdma_wq = type { ptr, %struct.spinlock, i32, i32, i32, i32 }
%struct.pvrdma_cqe = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, [6 x i8], i8, [6 x i8] }
%struct.ib_wc = type { %union.anon.157, i32, i32, i32, i32, ptr, %union.anon.158, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.157 = type { i64 }
%union.anon.158 = type { i32 }

@pvrdma_req_notify_cq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 85, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CQ ring state invalid\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pvrdma_req_notify_cq\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/infiniband/hw/vmw_pvrdma/pvrdma_cq.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pvrdma_req_notify_cq._entry_ptr = internal global ptr @pvrdma_req_notify_cq._entry, section ".printk_index", align 4
@pvrdma_create_cq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 160, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"overflow pages in completion queue\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvrdma_create_cq\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pvrdma_create_cq._entry_ptr = internal global ptr @pvrdma_create_cq._entry, section ".printk_index", align 4
@pvrdma_create_cq._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 168, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not allocate page directory\0A\00", [61 x i8] zeroinitializer }, align 32
@pvrdma_create_cq._entry_ptr.10 = internal global ptr @pvrdma_create_cq._entry.8, section ".printk_index", align 4
@pvrdma_create_cq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cq->cq_lock\00", [19 x i8] zeroinitializer }, align 32
@pvrdma_create_cq._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.2, i32 191, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"could not create completion queue, error: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@pvrdma_create_cq._entry_ptr.14 = internal global ptr @pvrdma_create_cq._entry.12, section ".printk_index", align 4
@pvrdma_create_cq._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.2, i32 208, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to copy back udata\0A\00", [37 x i8] zeroinitializer }, align 32
@pvrdma_create_cq._entry_ptr.17 = internal global ptr @pvrdma_create_cq._entry.15, section ".printk_index", align 4
@pvrdma_destroy_cq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 258, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"could not destroy completion queue, error: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pvrdma_destroy_cq\00", [46 x i8] zeroinitializer }, align 32
@pvrdma_destroy_cq._entry_ptr = internal global ptr @pvrdma_destroy_cq._entry, section ".printk_index", align 4
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@pvrdma_poll_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.24, ptr @.str.2, i32 343, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pvrdma_poll_one\00", [16 x i8] zeroinitializer }, align 32
@pvrdma_poll_one._entry_ptr = internal global ptr @pvrdma_poll_one._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 7, i64 8, i64 9, i64 10, i64 128, i64 129]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 85, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 159, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 167, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 180, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 190, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 207, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 256, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 156, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 87, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [48 x i8] c"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_cq.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 343, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @pvrdma_create_cq._entry, ptr @pvrdma_create_cq._entry.12, ptr @pvrdma_create_cq._entry.15, ptr @pvrdma_create_cq._entry.8, ptr @pvrdma_create_cq._entry_ptr, ptr @pvrdma_create_cq._entry_ptr.10, ptr @pvrdma_create_cq._entry_ptr.14, ptr @pvrdma_create_cq._entry_ptr.17, ptr @pvrdma_destroy_cq._entry, ptr @pvrdma_destroy_cq._entry_ptr, ptr @pvrdma_poll_one._entry, ptr @pvrdma_poll_one._entry_ptr, ptr @pvrdma_req_notify_cq._entry, ptr @pvrdma_req_notify_cq._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @pvrdma_create_cq.__key, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @init_completion.__key, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_req_notify_cq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_cq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_cq._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_cq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_cq._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_create_cq._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_destroy_cq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_poll_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_req_notify_cq(ptr noundef %ibcq, i32 noundef %notify_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcq, align 8
  %cq_handle = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 7
  %2 = ptrtoint ptr %cq_handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cq_handle, align 8
  %and = and i32 %notify_flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  %cond = select i1 %cmp, i32 536870912, i32 1073741824
  %or = or i32 %3, %cond
  %cq_lock = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 2
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  %map.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 26, i32 1
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #8, !srcloc !59
  %and8 = and i32 %notify_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then:                                          ; preds = %entry
  %ring_state = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 5
  %6 = ptrtoint ptr %ring_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring_state, align 8
  %rx = getelementptr inbounds %struct.pvrdma_ring_state, ptr %7, i32 0, i32 1
  %cqe = getelementptr inbounds %struct.ib_cq, ptr %ibcq, i32 0, i32 5
  %8 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cqe, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx, i32 noundef 4) #8
  %10 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %rx, align 4
  %cons_head.i = getelementptr inbounds %struct.pvrdma_ring_state, ptr %7, i32 0, i32 1, i32 1
  %call.i.i12.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cons_head.i, i32 noundef 4) #8
  %12 = ptrtoint ptr %cons_head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %cons_head.i, align 4
  %shl.neg.i.i = mul i32 %9, -2
  %and.i.i = and i32 %11, %shl.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  %and.i14.i = and i32 %13, %shl.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14.i)
  %cmp.i15.not.i = icmp eq i32 %and.i14.i, 0
  %or.cond.i = select i1 %cmp.i.not.i, i1 %cmp.i15.not.i, i1 false
  br i1 %or.cond.i, label %pvrdma_idx_ring_has_data.exit, label %do.end18

pvrdma_idx_ring_has_data.exit:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.i = icmp ne i32 %11, %13
  %conv.i = zext i1 %cmp.i to i32
  br label %if.end20

do.end18:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str) #11
  br label %if.end20

if.end20:                                         ; preds = %do.end18, %pvrdma_idx_ring_has_data.exit, %entry.if.end20_crit_edge
  %has_data.0 = phi i32 [ 0, %entry.if.end20_crit_edge ], [ -1, %do.end18 ], [ %conv.i, %pvrdma_idx_ring_has_data.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_lock, i32 noundef %call5) #8
  ret i32 %has_data.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_create_cq(ptr noundef %ibcq, ptr nocapture noundef readonly %attr, ptr noundef readonly %udata) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %union.pvrdma_cmd_req, align 8
  %rsp = alloca %union.pvrdma_cmd_resp, align 8
  %cq_resp = alloca %struct.pvrdma_create_cq_resp, align 8
  %ucmd = alloca %struct.pvrdma_create_cq, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcq, align 8
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 4
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req) #8
  %4 = call ptr @memset(ptr %req, i32 255, i32 184)
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %rsp) #8
  %5 = call ptr @memset(ptr %rsp, i32 255, i32 176)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cq_resp) #8
  %6 = ptrtoint ptr %cq_resp to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %cq_resp, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ucmd) #8
  %7 = getelementptr inbounds %struct.pvrdma_create_cq, ptr %ucmd, i32 0, i32 1
  %tobool.not = icmp eq ptr %udata, null
  %8 = call ptr @memset(ptr %ucmd, i32 255, i32 16)
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %context3 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %9 = ptrtoint ptr %context3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %context3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %10, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %flags4 = getelementptr inbounds %struct.ib_cq_init_attr, ptr %attr, i32 0, i32 2
  %11 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %cond.false25, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false25:                                     ; preds = %cond.end
  %sub.i252 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i252)
  %tobool.not.i.i.i = icmp eq i32 %sub.i252, 0
  br i1 %tobool.not.i.i.i, label %cond.false25.lor.lhs.false_crit_edge, label %cond.end27

cond.false25.lor.lhs.false_crit_edge:             ; preds = %cond.false25
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

cond.end27:                                       ; preds = %cond.false25
  %13 = tail call i32 @llvm.ctlz.i32(i32 %sub.i252, i1 true) #8, !range !60
  %sub.i.i.i = sub nuw nsw i32 32, %13
  %cond28 = shl nuw i32 1, %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond28)
  %cmp29 = icmp slt i32 %cond28, 1
  br i1 %cmp29, label %cond.end27.cleanup_crit_edge, label %cond.end27.lor.lhs.false_crit_edge

cond.end27.lor.lhs.false_crit_edge:               ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

cond.end27.cleanup_crit_edge:                     ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end27.lor.lhs.false_crit_edge, %cond.false25.lor.lhs.false_crit_edge
  %cond28258 = phi i32 [ %cond28, %cond.end27.lor.lhs.false_crit_edge ], [ 1, %cond.false25.lor.lhs.false_crit_edge ]
  %dsr = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dsr, align 8
  %max_cqe = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %15, i32 0, i32 8, i32 19
  %16 = ptrtoint ptr %max_cqe to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %max_cqe, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond28258, i32 %17)
  %cmp31 = icmp ugt i32 %cond28258, %17
  br i1 %cmp31, label %lor.lhs.false.cleanup_crit_edge, label %if.end34

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %lor.lhs.false
  %num_cqs = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 33
  %max_cq = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %15, i32 0, i32 8, i32 18
  %18 = ptrtoint ptr %max_cq to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %max_cq, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_cqs, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %num_cqs, i32 1, i32 3, i32 1) #8
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %num_cqs, ptr %num_cqs, i32 %19, i32 1, ptr elementtype(i32) %num_cqs) #8, !srcloc !62
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i, i32 %19)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, %19
  br i1 %cmp.not.i.i.i, label %if.end34.cleanup_crit_edge, label %if.end39

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  %cqe41 = getelementptr inbounds %struct.ib_cq, ptr %ibcq, i32 0, i32 5
  %21 = ptrtoint ptr %cqe41 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond28258, ptr %cqe41, align 4
  %is_kernel = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 8
  %frombool = zext i1 %tobool.not to i8
  %22 = ptrtoint ptr %is_kernel to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool, ptr %is_kernel, align 4
  br i1 %tobool.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end39
  %23 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udata, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.then45.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then45.if.then11.i.i.i_crit_edge:              ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then45
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %24, i32 16, i32 -1226833920) #12, !srcloc !64
  %asmresult.i.i.i253 = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i253)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i.i253, 0
  br i1 %cmp.i1.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !65

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ucmd, i32 noundef 16) #8
  %26 = call i32 @llvm.read_register.i32(metadata !48) #8
  %and.i.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !66
  %and.i.i.i.i.i = and i32 %28, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ucmd, ptr noundef %24, i32 noundef 16) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #8, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end49, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !65

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then45.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %if.then45.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i254 = sub i32 16, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %ucmd, i32 %sub.i.i.i254
  %29 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %err_cq

if.end49:                                         ; preds = %if.end.i.i.i
  %30 = ptrtoint ptr %ucmd to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ucmd, align 8
  %conv50 = trunc i64 %31 to i32
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %7, align 8
  %call51 = call ptr @ib_umem_get(ptr noundef %1, i32 noundef %conv50, i32 noundef %33, i32 noundef 1) #8
  %umem = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 4
  %34 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call51, ptr %umem, align 4
  %cmp.i = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %call51 to i32
  br label %err_cq

if.end57:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %iova.i = getelementptr inbounds %struct.ib_umem, ptr %call51, i32 0, i32 2
  %36 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %iova.i, align 8
  %length.i = getelementptr inbounds %struct.ib_umem, ptr %call51, i32 0, i32 3
  %38 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length.i, align 8
  %conv.i = zext i32 %39 to i64
  %add.i = add i64 %37, 4095
  %add2.i = add i64 %add.i, %conv.i
  %and.i = and i64 %add2.i, 4294963200
  %and15.i = and i64 %37, 4294963200
  %sub16.i = sub nsw i64 %and.i, %and15.i
  %conv17.i = trunc i64 %sub16.i to i32
  %div1.i = lshr exact i32 %conv17.i, 12
  br label %lor.lhs.false66

if.else:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %mul = shl i32 %cond28258, 6
  %sub61 = add i32 %mul, 4095
  %div250 = lshr i32 %sub61, 12
  %add62 = add nuw nsw i32 %div250, 1
  %offset = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 1
  %40 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4096, ptr %offset, align 8
  br label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %if.else, %if.end57
  %npages.0 = phi i32 [ %add62, %if.else ], [ %div1.i, %if.end57 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %npages.0)
  %cmp67 = icmp ugt i32 %npages.0, 262144
  br i1 %cmp67, label %do.end72, label %if.end74

do.end72:                                         ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 8
  %dev73 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev73, ptr noundef nonnull @.str.5) #11
  br label %err_umem

if.end74:                                         ; preds = %lor.lhs.false66
  %pdir = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 6
  %conv75260 = zext i32 %npages.0 to i64
  %43 = ptrtoint ptr %is_kernel to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %is_kernel, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool77 = icmp ne i8 %44, 0
  %call78 = call i32 @pvrdma_page_dir_init(ptr noundef %1, ptr noundef %pdir, i64 noundef %conv75260, i1 noundef zeroext %tobool77) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end86, label %do.end83

do.end83:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %pdev84 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %pdev84 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev84, align 8
  %dev85 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev85, ptr noundef nonnull @.str.9) #11
  br label %err_umem

if.end86:                                         ; preds = %if.end74
  %47 = ptrtoint ptr %is_kernel to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %is_kernel, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool88.not = icmp eq i8 %48, 0
  br i1 %tobool88.not, label %if.else91, label %if.then89

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %pages = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 6, i32 5
  %49 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pages, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %ring_state = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 5
  %53 = ptrtoint ptr %ring_state to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %ring_state, align 8
  br label %if.end95

if.else91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %umem93 = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 4
  %54 = ptrtoint ptr %umem93 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %umem93, align 4
  %call94 = call i32 @pvrdma_page_dir_insert_umem(ptr noundef %pdir, ptr noundef %55, i64 noundef 0) #8
  br label %if.end95

if.end95:                                         ; preds = %if.else91, %if.then89
  %refcnt = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 9
  %call.i.i.i255 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  %56 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 1, ptr %refcnt, align 4
  %free = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 10
  %57 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %free, align 4
  %wait.i = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 10, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #8
  %cq_lock = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %cq_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @pvrdma_create_cq.__key, i16 noundef signext 3) #8
  %58 = call ptr @memset(ptr %req, i32 0, i32 40)
  %cmd100 = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req, i32 0, i32 1
  %59 = ptrtoint ptr %cmd100 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 6, ptr %cmd100, align 8
  %nchunks = getelementptr inbounds %struct.pvrdma_cmd_create_cq, ptr %req, i32 0, i32 4
  %60 = ptrtoint ptr %nchunks to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %npages.0, ptr %nchunks, align 8
  %tobool101.not = icmp eq ptr %cond, null
  br i1 %tobool101.not, label %if.end95.cond.end104_crit_edge, label %cond.true102

if.end95.cond.end104_crit_edge:                   ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end104

cond.true102:                                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %ctx_handle = getelementptr inbounds %struct.pvrdma_ucontext, ptr %cond, i32 0, i32 3
  %61 = ptrtoint ptr %ctx_handle to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %ctx_handle, align 8
  %extract.t = trunc i64 %62 to i32
  br label %cond.end104

cond.end104:                                      ; preds = %cond.true102, %if.end95.cond.end104_crit_edge
  %cond105.off0 = phi i32 [ %extract.t, %cond.true102 ], [ 0, %if.end95.cond.end104_crit_edge ]
  %ctx_handle107 = getelementptr inbounds %struct.pvrdma_cmd_create_cq, ptr %req, i32 0, i32 2
  %63 = ptrtoint ptr %ctx_handle107 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %cond105.off0, ptr %ctx_handle107, align 8
  %cqe108 = getelementptr inbounds %struct.pvrdma_cmd_create_cq, ptr %req, i32 0, i32 3
  %64 = ptrtoint ptr %cqe108 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %cond28258, ptr %cqe108, align 4
  %65 = ptrtoint ptr %pdir to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pdir, align 8
  %conv110 = zext i32 %66 to i64
  %pdir_dma = getelementptr inbounds %struct.pvrdma_cmd_create_cq, ptr %req, i32 0, i32 1
  %67 = ptrtoint ptr %pdir_dma to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv110, ptr %pdir_dma, align 8
  %call111 = call i32 @pvrdma_cmd_post(ptr noundef %1, ptr noundef nonnull %req, ptr noundef nonnull %rsp, i32 noundef -2147483642) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %do.end117, label %if.end120

do.end117:                                        ; preds = %cond.end104
  call void @__sanitizer_cov_trace_pc() #10
  %pdev118 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %68 = ptrtoint ptr %pdev118 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev118, align 8
  %dev119 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev119, ptr noundef nonnull @.str.13, i32 noundef %call111) #11
  call void @pvrdma_page_dir_cleanup(ptr noundef %1, ptr noundef %pdir) #8
  br label %err_umem

if.end120:                                        ; preds = %cond.end104
  %cqe121 = getelementptr inbounds %struct.pvrdma_cmd_create_cq_resp, ptr %rsp, i32 0, i32 2
  %70 = ptrtoint ptr %cqe121 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cqe121, align 4
  %72 = ptrtoint ptr %cqe41 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %cqe41, align 4
  %cq_handle = getelementptr inbounds %struct.pvrdma_cmd_create_cq_resp, ptr %rsp, i32 0, i32 1
  %73 = ptrtoint ptr %cq_handle to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cq_handle, align 8
  %cq_handle124 = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 7
  %75 = ptrtoint ptr %cq_handle124 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %cq_handle124, align 8
  %76 = ptrtoint ptr %cq_resp to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %74, ptr %cq_resp, align 8
  %cq_tbl_lock = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 20
  %call132 = call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_tbl_lock) #8
  %cq_tbl = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 19
  %77 = ptrtoint ptr %cq_tbl to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cq_tbl, align 8
  %79 = ptrtoint ptr %cq_handle124 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cq_handle124, align 8
  %81 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dsr, align 8
  %max_cq140 = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %82, i32 0, i32 8, i32 18
  %83 = ptrtoint ptr %max_cq140 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %max_cq140, align 1
  %rem = urem i32 %80, %84
  %arrayidx141 = getelementptr ptr, ptr %78, i32 %rem
  %85 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %ibcq, ptr %arrayidx141, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_tbl_lock, i32 noundef %call132) #8
  %86 = ptrtoint ptr %is_kernel to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %is_kernel, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool144.not = icmp eq i8 %87, 0
  br i1 %tobool144.not, label %if.then145, label %if.end120.cleanup_crit_edge

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then145:                                       ; preds = %if.end120
  %uar = getelementptr inbounds %struct.pvrdma_ucontext, ptr %cond, i32 0, i32 2
  %uar146 = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 3
  %88 = ptrtoint ptr %uar146 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %uar, ptr %uar146, align 8
  %call147 = call fastcc i32 @ib_copy_to_udata(ptr noundef %udata, ptr noundef nonnull %cq_resp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.then145.cleanup_crit_edge, label %do.end152

if.then145.cleanup_crit_edge:                     ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end152:                                        ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #10
  %pdev153 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %89 = ptrtoint ptr %pdev153 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pdev153, align 8
  %dev154 = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev154, ptr noundef nonnull @.str.16) #11
  %call156 = call i32 @pvrdma_destroy_cq(ptr noundef %ibcq, ptr undef)
  br label %cleanup

err_umem:                                         ; preds = %do.end117, %do.end83, %do.end72
  %ret.0 = phi i32 [ -22, %do.end72 ], [ %call78, %do.end83 ], [ %call111, %do.end117 ]
  %umem160 = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 4
  %91 = ptrtoint ptr %umem160 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %umem160, align 4
  call void @ib_umem_release(ptr noundef %92) #8
  br label %err_cq

err_cq:                                           ; preds = %err_umem, %if.then54, %if.then11.i.i.i
  %ret.1 = phi i32 [ %ret.0, %err_umem ], [ %35, %if.then54 ], [ -14, %if.then11.i.i.i ]
  %call.i.i251 = call zeroext i1 @__kasan_check_write(ptr noundef %num_cqs, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %num_cqs, i32 1, i32 3, i32 1) #8
  %93 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_cqs, ptr %num_cqs, i32 1, ptr elementtype(i32) %num_cqs) #8, !srcloc !70
  br label %cleanup

cleanup:                                          ; preds = %err_cq, %do.end152, %if.then145.cleanup_crit_edge, %if.end120.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cond.end27.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_cq ], [ -22, %do.end152 ], [ -95, %cond.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %cond.end27.cleanup_crit_edge ], [ 0, %if.then145.cleanup_crit_edge ], [ 0, %if.end120.cleanup_crit_edge ], [ -12, %if.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucmd) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cq_resp) #8
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %rsp) #8
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_page_dir_init(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_page_dir_insert_umem(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_cmd_post(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ib_copy_to_udata(ptr nocapture noundef readonly %udata, ptr noundef %src) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %outbuf = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %outbuf, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1226833920) #12, !srcloc !71
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %src, i32 noundef 8) #8
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %src, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %3 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_destroy_cq(ptr noundef %cq, ptr nocapture readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %union.pvrdma_cmd_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req) #8
  %0 = getelementptr inbounds i8, ptr %req, i32 24
  %1 = call ptr @memset(ptr %0, i32 255, i32 160)
  %2 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq, align 8
  %4 = call ptr @memset(ptr %req, i32 0, i32 24)
  %cmd2 = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req, i32 0, i32 1
  %5 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %cmd2, align 8
  %cq_handle = getelementptr inbounds %struct.pvrdma_cq, ptr %cq, i32 0, i32 7
  %6 = ptrtoint ptr %cq_handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cq_handle, align 8
  %cq_handle3 = getelementptr inbounds %struct.pvrdma_cmd_destroy_cq, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %cq_handle3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cq_handle3, align 8
  %call4 = call i32 @pvrdma_cmd_post(ptr noundef %3, ptr noundef nonnull %req, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %entry.do.body7_crit_edge

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.18, i32 noundef %call4) #11
  br label %do.body7

do.body7:                                         ; preds = %do.end, %entry.do.body7_crit_edge
  %cq_tbl_lock = getelementptr inbounds %struct.pvrdma_dev, ptr %3, i32 0, i32 20
  %call10 = call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_tbl_lock) #8
  %cq_tbl = getelementptr inbounds %struct.pvrdma_dev, ptr %3, i32 0, i32 19
  %11 = ptrtoint ptr %cq_tbl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cq_tbl, align 8
  %13 = ptrtoint ptr %cq_handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cq_handle, align 8
  %arrayidx = getelementptr ptr, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_tbl_lock, i32 noundef %call10) #8
  %refcnt.i = getelementptr inbounds %struct.pvrdma_cq, ptr %cq, i32 0, i32 9
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !72
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #8
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #8, !srcloc !73
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.body7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.pvrdma_free_cq.exit_crit_edge, label %if.then10.i.i.i.i, !prof !65

if.end5.i.i.i.i.pvrdma_free_cq.exit_crit_edge:    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvrdma_free_cq.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #8
  br label %pvrdma_free_cq.exit

if.then.i:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !74
  %free.i = getelementptr inbounds %struct.pvrdma_cq, ptr %cq, i32 0, i32 10
  call void @complete(ptr noundef %free.i) #8
  br label %pvrdma_free_cq.exit

pvrdma_free_cq.exit:                              ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.pvrdma_free_cq.exit_crit_edge
  %free1.i = getelementptr inbounds %struct.pvrdma_cq, ptr %cq, i32 0, i32 10
  call void @wait_for_completion(ptr noundef %free1.i) #8
  %umem.i = getelementptr inbounds %struct.pvrdma_cq, ptr %cq, i32 0, i32 4
  %17 = ptrtoint ptr %umem.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %umem.i, align 4
  call void @ib_umem_release(ptr noundef %18) #8
  %pdir.i = getelementptr inbounds %struct.pvrdma_cq, ptr %cq, i32 0, i32 6
  call void @pvrdma_page_dir_cleanup(ptr noundef %3, ptr noundef %pdir.i) #8
  %num_cqs = getelementptr inbounds %struct.pvrdma_dev, ptr %3, i32 0, i32 33
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %num_cqs, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %num_cqs, i32 1, i32 3, i32 1) #8
  %19 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_cqs, ptr %num_cqs, i32 1, ptr elementtype(i32) %num_cqs) #8, !srcloc !70
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvrdma_page_dir_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_pvrdma_flush_cqe(ptr nocapture noundef readonly %qp, ptr nocapture noundef readonly %cq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_kernel = getelementptr inbounds %struct.pvrdma_cq, ptr %cq, i32 0, i32 8
  %0 = ptrtoint ptr %is_kernel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_kernel, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ring_state = getelementptr inbounds %struct.pvrdma_cq, ptr %cq, i32 0, i32 5
  %2 = ptrtoint ptr %ring_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring_state, align 8
  %rx = getelementptr inbounds %struct.pvrdma_ring_state, ptr %3, i32 0, i32 1
  %cqe = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 5
  %4 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cqe, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx, i32 noundef 4) #8
  %6 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %rx, align 4
  %cons_head.i = getelementptr inbounds %struct.pvrdma_ring_state, ptr %3, i32 0, i32 1, i32 1
  %call.i.i12.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cons_head.i, i32 noundef 4) #8
  %8 = ptrtoint ptr %cons_head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %cons_head.i, align 4
  %shl.neg.i.i = mul i32 %5, -2
  %and.i.i = and i32 %7, %shl.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  %and.i14.i = and i32 %9, %shl.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14.i)
  %cmp.i15.not.i = icmp eq i32 %and.i14.i, 0
  %or.cond.i = select i1 %cmp.i.not.i, i1 %cmp.i15.not.i, i1 false
  br i1 %or.cond.i, label %pvrdma_idx_ring_has_data.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pvrdma_idx_ring_has_data.exit:                    ; preds = %if.end
  %sub.i = add i32 %5, -1
  %and.i = and i32 %9, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i.not = icmp eq i32 %7, %9
  br i1 %cmp.i.not, label %pvrdma_idx_ring_has_data.exit.cleanup_crit_edge, label %if.then3, !prof !65

pvrdma_idx_ring_has_data.exit.cleanup_crit_edge:  ; preds = %pvrdma_idx_ring_has_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %pvrdma_idx_ring_has_data.exit
  %10 = ptrtoint ptr %ring_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring_state, align 8
  %rx5 = getelementptr inbounds %struct.pvrdma_ring_state, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cqe, align 4
  %call.i.i.i69 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx5, i32 noundef 4) #8
  %14 = ptrtoint ptr %rx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %rx5, align 4
  %shl.neg.i.i70 = mul i32 %13, -2
  %and.i.i71 = and i32 %15, %shl.neg.i.i70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i71)
  %cmp.i.not.i72 = icmp eq i32 %and.i.i71, 0
  %sub.i73 = add i32 %13, -1
  %and.i74 = and i32 %15, %sub.i73
  %retval.0.i75 = select i1 %cmp.i.not.i72, i32 %and.i74, i32 -1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i75, i32 %and.i)
  %cmp10 = icmp ugt i32 %retval.0.i75, %and.i
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %retval.0.i75, %and.i
  br label %cond.end

cond.false:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cqe, align 4
  %sub13 = sub i32 %retval.0.i75, %and.i
  %add = add i32 %sub13, %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %add, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp1587 = icmp sgt i32 %cond, 0
  br i1 %cmp1587, label %while.body.lr.ph, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %cond.end
  %dec = add i32 %retval.0.i75, -1
  %offset.i = getelementptr inbounds %struct.pvrdma_cq, ptr %cq, i32 0, i32 1
  %pages.i.i = getelementptr inbounds %struct.pvrdma_cq, ptr %cq, i32 0, i32 6, i32 5
  %qp_handle = getelementptr inbounds %struct.pvrdma_qp, ptr %qp, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end43.while.body_crit_edge, %while.body.lr.ph
  %dec1490.in = phi i32 [ %cond, %while.body.lr.ph ], [ %dec1490, %if.end43.while.body_crit_edge ]
  %tail.089 = phi i32 [ %dec, %while.body.lr.ph ], [ %tail.2, %if.end43.while.body_crit_edge ]
  %curr.088 = phi i32 [ %dec, %while.body.lr.ph ], [ %dec44, %if.end43.while.body_crit_edge ]
  %dec1490 = add nsw i32 %dec1490.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %curr.088)
  %cmp16 = icmp slt i32 %curr.088, 0
  br i1 %cmp16, label %if.then17, label %while.body.if.end21_crit_edge

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then17:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cqe, align 4
  %sub20 = add i32 %19, -1
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %while.body.if.end21_crit_edge
  %curr.1 = phi i32 [ %sub20, %if.then17 ], [ %curr.088, %while.body.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tail.089)
  %cmp22 = icmp slt i32 %tail.089, 0
  br i1 %cmp22, label %if.then23, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cqe, align 4
  %sub26 = add i32 %21, -1
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end21.if.end27_crit_edge
  %tail.1 = phi i32 [ %sub26, %if.then23 ], [ %tail.089, %if.end21.if.end27_crit_edge ]
  %22 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset.i, align 8
  %mul.i = shl i32 %curr.1, 6
  %add.i = add i32 %23, %mul.i
  %24 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pages.i.i, align 8
  %26 = lshr i32 %add.i, 12
  %arrayidx.i.i = getelementptr ptr, ptr %25, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  %idx.ext.i.i = and i32 %add.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 %idx.ext.i.i
  %qp29 = getelementptr inbounds %struct.pvrdma_cqe, ptr %add.ptr.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %qp29 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %qp29, align 8
  %and = and i64 %30, 65535
  %31 = ptrtoint ptr %qp_handle to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qp_handle, align 4
  %conv = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %conv)
  %cmp30.not = icmp eq i64 %and, %conv
  br i1 %cmp30.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_cmp4(i32 %curr.1, i32 %tail.1)
  %cmp33.not = icmp eq i32 %curr.1, %tail.1
  br i1 %cmp33.not, label %if.then32.if.end37_crit_edge, label %if.then35

if.then32.if.end37_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i77 = shl i32 %tail.1, 6
  %add.i78 = add i32 %23, %mul.i77
  %33 = lshr i32 %add.i78, 12
  %arrayidx.i.i80 = getelementptr ptr, ptr %25, i32 %33
  %34 = ptrtoint ptr %arrayidx.i.i80 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i80, align 4
  %idx.ext.i.i81 = and i32 %add.i78, 4095
  %add.ptr.i.i82 = getelementptr i8, ptr %35, i32 %idx.ext.i.i81
  %36 = call ptr @memcpy(ptr %add.ptr.i.i82, ptr %add.ptr.i.i, i32 64)
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.then32.if.end37_crit_edge
  %dec38 = add i32 %tail.1, -1
  br label %if.end43

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %ring_state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ring_state, align 8
  %cons_head = getelementptr inbounds %struct.pvrdma_ring_state, ptr %38, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cqe, align 4
  tail call fastcc void @pvrdma_idx_ring_inc(ptr noundef %cons_head, i32 noundef %40)
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.end37
  %tail.2 = phi i32 [ %dec38, %if.end37 ], [ %tail.1, %if.else ]
  %dec44 = add i32 %curr.1, -1
  %cmp15 = icmp ugt i32 %dec1490.in, 1
  br i1 %cmp15, label %if.end43.while.body_crit_edge, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43.while.body_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup:                                          ; preds = %if.end43.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %pvrdma_idx_ring_has_data.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pvrdma_idx_ring_inc(ptr noundef %var, i32 noundef %max_elems) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %var, i32 noundef 4) #8
  %0 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %var, align 4
  %add = add i32 %1, 1
  %shl = shl i32 %max_elems, 1
  %sub = add i32 %shl, -1
  %and = and i32 %add, %sub
  %call.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %var, i32 noundef 4) #8
  %2 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %and, ptr %var, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_poll_cq(ptr noundef %ibcq, i32 noundef %num_entries, ptr noundef writeonly %wc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_entries)
  %cmp = icmp slt i32 %num_entries, 1
  %cmp1 = icmp eq ptr %wc, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %cq_lock = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 2
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_lock) #8
  %ring_state.i = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 5
  %cqe2.i = getelementptr inbounds %struct.ib_cq, ptr %ibcq, i32 0, i32 5
  %cq_handle.i = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 7
  %offset.i.i = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 1
  %pages.i.i.i = getelementptr inbounds %struct.pvrdma_cq, ptr %ibcq, i32 0, i32 6, i32 5
  br label %for.body

for.body:                                         ; preds = %pvrdma_wc_opcode_to_ib.exit.i.for.body_crit_edge, %for.body.lr.ph
  %npolled.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %pvrdma_wc_opcode_to_ib.exit.i.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.ib_wc, ptr %wc, i32 %npolled.029
  %0 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcq, align 8
  %map.i.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 26, i32 1
  %2 = ptrtoint ptr %ring_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring_state.i, align 8
  %rx.i = getelementptr inbounds %struct.pvrdma_ring_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cqe2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cqe2.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx.i, i32 noundef 4) #8
  %6 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %rx.i, align 4
  %cons_head.i.i = getelementptr inbounds %struct.pvrdma_ring_state, ptr %3, i32 0, i32 1, i32 1
  %call.i.i12.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cons_head.i.i, i32 noundef 4) #8
  %8 = ptrtoint ptr %cons_head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %cons_head.i.i, align 4
  %shl.neg.i.i.i = mul i32 %5, -2
  %and.i.i.i = and i32 %7, %shl.neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  %and.i14.i.i = and i32 %9, %shl.neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14.i.i)
  %cmp.i15.not.i.i = icmp eq i32 %and.i14.i.i, 0
  %or.cond.i.i = select i1 %cmp.i.not.i.i, i1 %cmp.i15.not.i.i, i1 false
  br i1 %or.cond.i.i, label %pvrdma_idx_ring_has_data.exit.i, label %for.body.do.end.i_crit_edge

for.body.do.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

pvrdma_idx_ring_has_data.exit.i:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i.not.i = icmp eq i32 %7, %9
  br i1 %cmp.i.not.i, label %if.then.i, label %pvrdma_idx_ring_has_data.exit.i.if.end9.i_crit_edge

pvrdma_idx_ring_has_data.exit.i.if.end9.i_crit_edge: ; preds = %pvrdma_idx_ring_has_data.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then.i:                                        ; preds = %pvrdma_idx_ring_has_data.exit.i
  %10 = ptrtoint ptr %cq_handle.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cq_handle.i, align 8
  %or.i = or i32 %11, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #8, !srcloc !59
  %14 = ptrtoint ptr %ring_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring_state.i, align 8
  %rx.1.i = getelementptr inbounds %struct.pvrdma_ring_state, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %cqe2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cqe2.i, align 4
  %call.i.i.i.1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx.1.i, i32 noundef 4) #8
  %18 = ptrtoint ptr %rx.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %rx.1.i, align 4
  %cons_head.i.1.i = getelementptr inbounds %struct.pvrdma_ring_state, ptr %15, i32 0, i32 1, i32 1
  %call.i.i12.i.1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cons_head.i.1.i, i32 noundef 4) #8
  %20 = ptrtoint ptr %cons_head.i.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %cons_head.i.1.i, align 4
  %shl.neg.i.i.1.i = mul i32 %17, -2
  %and.i.i.1.i = and i32 %19, %shl.neg.i.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.1.i)
  %cmp.i.not.i.1.i = icmp eq i32 %and.i.i.1.i, 0
  %and.i14.i.1.i = and i32 %21, %shl.neg.i.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14.i.1.i)
  %cmp.i15.not.i.1.i = icmp eq i32 %and.i14.i.1.i, 0
  %or.cond.i.1.i = select i1 %cmp.i.not.i.1.i, i1 %cmp.i15.not.i.1.i, i1 false
  br i1 %or.cond.i.1.i, label %pvrdma_idx_ring_has_data.exit.1.i, label %if.then.i.do.end.i_crit_edge

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

pvrdma_idx_ring_has_data.exit.1.i:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.i.not.1.i = icmp eq i32 %19, %21
  br i1 %cmp.i.not.1.i, label %pvrdma_idx_ring_has_data.exit.1.i.for.end_crit_edge, label %pvrdma_idx_ring_has_data.exit.1.i.if.end9.i_crit_edge

pvrdma_idx_ring_has_data.exit.1.i.if.end9.i_crit_edge: ; preds = %pvrdma_idx_ring_has_data.exit.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

pvrdma_idx_ring_has_data.exit.1.i.for.end_crit_edge: ; preds = %pvrdma_idx_ring_has_data.exit.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.end.i:                                         ; preds = %if.then.i.do.end.i_crit_edge, %for.body.do.end.i_crit_edge
  %pdev.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str) #11
  br label %for.end

if.end9.i:                                        ; preds = %pvrdma_idx_ring_has_data.exit.1.i.if.end9.i_crit_edge, %pvrdma_idx_ring_has_data.exit.i.if.end9.i_crit_edge
  %.lcssa110.i = phi i32 [ %5, %pvrdma_idx_ring_has_data.exit.i.if.end9.i_crit_edge ], [ %17, %pvrdma_idx_ring_has_data.exit.1.i.if.end9.i_crit_edge ]
  %.lcssa107.i = phi i32 [ %9, %pvrdma_idx_ring_has_data.exit.i.if.end9.i_crit_edge ], [ %21, %pvrdma_idx_ring_has_data.exit.1.i.if.end9.i_crit_edge ]
  %sub.i.i = add i32 %.lcssa110.i, 67108863
  %and.i.i = and i32 %.lcssa107.i, %sub.i.i
  %24 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset.i.i, align 8
  %mul.i.i = shl i32 %and.i.i, 6
  %add.i.i = add i32 %mul.i.i, %25
  %26 = ptrtoint ptr %pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pages.i.i.i, align 8
  %28 = lshr i32 %add.i.i, 12
  %arrayidx.i.i.i = getelementptr ptr, ptr %27, i32 %28
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i.i, align 4
  %idx.ext.i.i.i = and i32 %add.i.i, 4095
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 %idx.ext.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %qp_tbl.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 23
  %31 = ptrtoint ptr %qp_tbl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %qp_tbl.i, align 8
  %qp.i = getelementptr inbounds %struct.pvrdma_cqe, ptr %add.ptr.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %qp.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %qp.i, align 8
  %35 = trunc i64 %34 to i32
  %idxprom.i = and i32 %35, 65535
  %arrayidx.i = getelementptr ptr, ptr %32, i32 %idxprom.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %tobool11.not.i = icmp eq ptr %37, null
  br i1 %tobool11.not.i, label %if.end9.i.for.end_crit_edge, label %if.then12.i

if.end9.i.for.end_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then12.i:                                      ; preds = %if.end9.i
  %opcode.i = getelementptr inbounds %struct.pvrdma_cqe, ptr %add.ptr.i.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %opcode.i, align 8
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %39, label %if.then12.i.pvrdma_wc_opcode_to_ib.exit.i_crit_edge [
    i32 129, label %sw.bb10.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 4, label %sw.bb4.i.i
    i32 7, label %sw.bb5.i.i
    i32 8, label %sw.bb6.i.i
    i32 9, label %sw.bb7.i.i
    i32 10, label %sw.bb8.i.i
    i32 128, label %sw.bb9.i.i
  ]

if.then12.i.pvrdma_wc_opcode_to_ib.exit.i_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvrdma_wc_opcode_to_ib.exit.i

sw.bb1.i.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvrdma_wc_opcode_to_ib.exit.i

sw.bb2.i.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvrdma_wc_opcode_to_ib.exit.i

sw.bb3.i.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvrdma_wc_opcode_to_ib.exit.i

sw.bb4.i.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvrdma_wc_opcode_to_ib.exit.i

sw.bb5.i.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvrdma_wc_opcode_to_ib.exit.i

sw.bb6.i.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvrdma_wc_opcode_to_ib.exit.i

sw.bb7.i.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvrdma_wc_opcode_to_ib.exit.i

sw.bb8.i.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvrdma_wc_opcode_to_ib.exit.i

sw.bb9.i.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvrdma_wc_opcode_to_ib.exit.i

sw.bb10.i.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvrdma_wc_opcode_to_ib.exit.i

pvrdma_wc_opcode_to_ib.exit.i:                    ; preds = %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then12.i.pvrdma_wc_opcode_to_ib.exit.i_crit_edge
  %retval.0.i88.i = phi i32 [ %39, %sw.bb10.i.i ], [ %39, %sw.bb9.i.i ], [ %39, %sw.bb8.i.i ], [ %39, %sw.bb7.i.i ], [ %39, %sw.bb6.i.i ], [ 6, %sw.bb5.i.i ], [ %39, %sw.bb4.i.i ], [ %39, %sw.bb3.i.i ], [ %39, %sw.bb2.i.i ], [ %39, %sw.bb1.i.i ], [ 0, %if.then12.i.pvrdma_wc_opcode_to_ib.exit.i_crit_edge ]
  %opcode21.i = getelementptr %struct.ib_wc, ptr %wc, i32 %npolled.029, i32 2
  %41 = ptrtoint ptr %opcode21.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.0.i88.i, ptr %opcode21.i, align 4
  %status.i = getelementptr inbounds %struct.pvrdma_cqe, ptr %add.ptr.i.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status.i, align 4
  %status23.i = getelementptr %struct.ib_wc, ptr %wc, i32 %npolled.029, i32 1
  %44 = ptrtoint ptr %status23.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %status23.i, align 8
  %45 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %add.ptr.i.i.i, align 8
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %add.ptr, align 8
  %qp24.i = getelementptr %struct.ib_wc, ptr %wc, i32 %npolled.029, i32 5
  %48 = ptrtoint ptr %qp24.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %37, ptr %qp24.i, align 8
  %byte_len.i = getelementptr inbounds %struct.pvrdma_cqe, ptr %add.ptr.i.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %byte_len.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %byte_len.i, align 8
  %byte_len25.i = getelementptr %struct.ib_wc, ptr %wc, i32 %npolled.029, i32 4
  %51 = ptrtoint ptr %byte_len25.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %byte_len25.i, align 4
  %imm_data.i = getelementptr inbounds %struct.pvrdma_cqe, ptr %add.ptr.i.i.i, i32 0, i32 5
  %52 = ptrtoint ptr %imm_data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %imm_data.i, align 4
  %ex.i = getelementptr %struct.ib_wc, ptr %wc, i32 %npolled.029, i32 6
  %54 = ptrtoint ptr %ex.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %ex.i, align 4
  %src_qp.i = getelementptr inbounds %struct.pvrdma_cqe, ptr %add.ptr.i.i.i, i32 0, i32 6
  %55 = ptrtoint ptr %src_qp.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %src_qp.i, align 8
  %src_qp26.i = getelementptr %struct.ib_wc, ptr %wc, i32 %npolled.029, i32 7
  %57 = ptrtoint ptr %src_qp26.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %src_qp26.i, align 8
  %wc_flags.i = getelementptr inbounds %struct.pvrdma_cqe, ptr %add.ptr.i.i.i, i32 0, i32 7
  %58 = ptrtoint ptr %wc_flags.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %wc_flags.i, align 4
  %wc_flags28.i = getelementptr %struct.ib_wc, ptr %wc, i32 %npolled.029, i32 9
  %60 = ptrtoint ptr %wc_flags28.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %wc_flags28.i, align 8
  %pkey_index.i = getelementptr inbounds %struct.pvrdma_cqe, ptr %add.ptr.i.i.i, i32 0, i32 9
  %61 = ptrtoint ptr %pkey_index.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %pkey_index.i, align 4
  %pkey_index29.i = getelementptr %struct.ib_wc, ptr %wc, i32 %npolled.029, i32 10
  %63 = ptrtoint ptr %pkey_index29.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %pkey_index29.i, align 4
  %slid.i = getelementptr inbounds %struct.pvrdma_cqe, ptr %add.ptr.i.i.i, i32 0, i32 10
  %64 = ptrtoint ptr %slid.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %slid.i, align 2
  %conv.i = zext i16 %65 to i32
  %slid30.i = getelementptr %struct.ib_wc, ptr %wc, i32 %npolled.029, i32 8
  %66 = ptrtoint ptr %slid30.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv.i, ptr %slid30.i, align 4
  %sl.i = getelementptr inbounds %struct.pvrdma_cqe, ptr %add.ptr.i.i.i, i32 0, i32 11
  %67 = ptrtoint ptr %sl.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %sl.i, align 8
  %sl31.i = getelementptr %struct.ib_wc, ptr %wc, i32 %npolled.029, i32 11
  %69 = ptrtoint ptr %sl31.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %sl31.i, align 2
  %dlid_path_bits.i = getelementptr inbounds %struct.pvrdma_cqe, ptr %add.ptr.i.i.i, i32 0, i32 12
  %70 = ptrtoint ptr %dlid_path_bits.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %dlid_path_bits.i, align 1
  %dlid_path_bits32.i = getelementptr %struct.ib_wc, ptr %wc, i32 %npolled.029, i32 12
  %72 = ptrtoint ptr %dlid_path_bits32.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %dlid_path_bits32.i, align 1
  %port_num.i = getelementptr inbounds %struct.pvrdma_cqe, ptr %add.ptr.i.i.i, i32 0, i32 13
  %73 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %port_num.i, align 2
  %conv33.i = zext i8 %74 to i32
  %port_num34.i = getelementptr %struct.ib_wc, ptr %wc, i32 %npolled.029, i32 13
  %75 = ptrtoint ptr %port_num34.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv33.i, ptr %port_num34.i, align 8
  %vendor_err.i = getelementptr inbounds %struct.pvrdma_cqe, ptr %add.ptr.i.i.i, i32 0, i32 8
  %76 = ptrtoint ptr %vendor_err.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %vendor_err.i, align 8
  %vendor_err35.i = getelementptr %struct.ib_wc, ptr %wc, i32 %npolled.029, i32 3
  %78 = ptrtoint ptr %vendor_err35.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %vendor_err35.i, align 8
  %network_hdr_type.i = getelementptr inbounds %struct.pvrdma_cqe, ptr %add.ptr.i.i.i, i32 0, i32 15
  %79 = ptrtoint ptr %network_hdr_type.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %network_hdr_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %80)
  %81 = icmp ult i8 %80, 3
  %switch.offset = add i8 %80, 1
  %retval.0.i91.i = select i1 %81, i8 %switch.offset, i8 3
  %network_hdr_type39.i = getelementptr %struct.ib_wc, ptr %wc, i32 %npolled.029, i32 16
  %82 = ptrtoint ptr %network_hdr_type39.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %retval.0.i91.i, ptr %network_hdr_type39.i, align 4
  %83 = ptrtoint ptr %ring_state.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ring_state.i, align 8
  %cons_head.i = getelementptr inbounds %struct.pvrdma_ring_state, ptr %84, i32 0, i32 1, i32 1
  %85 = ptrtoint ptr %cqe2.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cqe2.i, align 4
  %call.i.i.i92.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cons_head.i, i32 noundef 4) #8
  %87 = ptrtoint ptr %cons_head.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %cons_head.i, align 4
  %add.i93.i = add i32 %88, 1
  %shl.i.i = shl i32 %86, 1
  %sub.i94.i = add i32 %shl.i.i, -1
  %and.i95.i = and i32 %add.i93.i, %sub.i94.i
  %call.i.i3.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cons_head.i, i32 noundef 4) #8
  %89 = ptrtoint ptr %cons_head.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 %and.i95.i, ptr %cons_head.i, align 4
  %inc = add nuw nsw i32 %npolled.029, 1
  %exitcond.not = icmp eq i32 %inc, %num_entries
  br i1 %exitcond.not, label %pvrdma_wc_opcode_to_ib.exit.i.for.end_crit_edge, label %pvrdma_wc_opcode_to_ib.exit.i.for.body_crit_edge

pvrdma_wc_opcode_to_ib.exit.i.for.body_crit_edge: ; preds = %pvrdma_wc_opcode_to_ib.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

pvrdma_wc_opcode_to_ib.exit.i.for.end_crit_edge:  ; preds = %pvrdma_wc_opcode_to_ib.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %pvrdma_wc_opcode_to_ib.exit.i.for.end_crit_edge, %if.end9.i.for.end_crit_edge, %do.end.i, %pvrdma_idx_ring_has_data.exit.1.i.for.end_crit_edge
  %npolled.027 = phi i32 [ %npolled.029, %do.end.i ], [ %num_entries, %pvrdma_wc_opcode_to_ib.exit.i.for.end_crit_edge ], [ %npolled.029, %if.end9.i.for.end_crit_edge ], [ %npolled.029, %pvrdma_idx_ring_has_data.exit.1.i.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_lock, i32 noundef %call5) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %npolled.027, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !39, !41, !43, !44, !46, !47}
!llvm.named.register.sp = !{!48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_cq.c", i32 85, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pvrdma_req_notify_cq._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pvrdma_req_notify_cq._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_cq.c", i32 159, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @pvrdma_create_cq._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @pvrdma_create_cq._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_cq.c", i32 167, i32 3}
!16 = !{ptr @pvrdma_create_cq._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @pvrdma_create_cq._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @pvrdma_create_cq.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_cq.c", i32 180, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_cq.c", i32 190, i32 3}
!23 = !{ptr @pvrdma_create_cq._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @pvrdma_create_cq._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_cq.c", i32 207, i32 4}
!27 = !{ptr @pvrdma_create_cq._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @pvrdma_create_cq._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_cq.c", i32 256, i32 3}
!31 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @pvrdma_destroy_cq._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @pvrdma_destroy_cq._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!36 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!41 = !{ptr @init_completion.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/completion.h", i32 87, i32 2}
!43 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_cq.c", i32 343, i32 3}
!46 = !{ptr @pvrdma_poll_one._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @pvrdma_poll_one._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{!"sp"}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2158393963}
!59 = !{i64 1226876}
!60 = !{i32 0, i32 33}
!61 = !{i64 2148205888}
!62 = !{i64 690711, i64 690736, i64 690758, i64 690774, i64 690786, i64 690806, i64 690830, i64 690846, i64 690858}
!63 = !{i64 2148206076}
!64 = !{i64 2152406210, i64 2152406235}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 4901765}
!67 = !{i64 4901962}
!68 = !{i64 2152387195}
!69 = !{i8 0, i8 2}
!70 = !{i64 2148208934, i64 2148208960, i64 2148208989, i64 2148209023, i64 2148209054, i64 2148209077}
!71 = !{i64 2152406891, i64 2152406916}
!72 = !{i64 2148296000}
!73 = !{i64 2148210464, i64 2148210496, i64 2148210525, i64 2148210559, i64 2148210590, i64 2148210613}
!74 = !{i64 2149650957}
!75 = !{i64 2158417181}
