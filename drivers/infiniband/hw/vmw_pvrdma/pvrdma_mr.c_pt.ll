; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/vmw_pvrdma/pvrdma_mr.c_pt.bc'
source_filename = "../drivers/infiniband/hw/vmw_pvrdma/pvrdma_mr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.atomic_t = type { i32 }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pvrdma_dev = type { %struct.ib_device, ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, i32, %struct.spinlock, %struct.semaphore, %struct.completion, i32, ptr, ptr, %struct.pvrdma_page_dir, ptr, %struct.pvrdma_page_dir, ptr, %struct.spinlock, ptr, %struct.spinlock, ptr, %struct.spinlock, %struct.pvrdma_uar_table, %struct.pvrdma_uar_map, i64, %struct.spinlock, i32, %struct.mutex, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.notifier_block }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.169, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.169 = type { %struct.ib_core_device }
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
%struct.ib_odp_caps = type { i64, %struct.anon.160 }
%struct.anon.160 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
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
%struct.pvrdma_pd = type { %struct.ib_pd, i32, i32, i32 }
%struct.pvrdma_cmd_create_mr = type { %struct.pvrdma_cmd_hdr, i64, i64, i64, i32, i32, i32, i32 }
%struct.pvrdma_cmd_create_mr_resp = type { %struct.pvrdma_cmd_resp_hdr, i32, i32, i32, [4 x i8] }
%struct.pvrdma_user_mr = type { %struct.ib_mr, ptr, %struct.pvrdma_mr, %struct.pvrdma_page_dir, ptr, i32, i32, i32 }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.170, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.170 = type { %struct.list_head }
%struct.pvrdma_mr = type { i32, i64, i64 }
%struct.pvrdma_device_shared_region = type { i32, i32, %struct.pvrdma_gos_info, i64, i64, %struct.pvrdma_ring_page_info, %struct.pvrdma_ring_page_info, %union.anon.173, %struct.pvrdma_device_caps }
%struct.pvrdma_gos_info = type { i32, i32 }
%struct.pvrdma_ring_page_info = type { i32, i32, i64 }
%union.anon.173 = type { i64 }
%struct.pvrdma_device_caps = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32 }
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.pvrdma_cmd_destroy_mr = type { %struct.pvrdma_cmd_hdr, i32, [4 x i8] }

@pvrdma_get_dma_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 71, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unsupported dma mr access flags %#x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pvrdma_get_dma_mr\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/infiniband/hw/vmw_pvrdma/pvrdma_mr.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pvrdma_get_dma_mr._entry_ptr = internal global ptr @pvrdma_get_dma_mr._entry, section ".printk_index", align 4
@pvrdma_get_dma_mr._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 88, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"could not get DMA mem region, error: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@pvrdma_get_dma_mr._entry_ptr.7 = internal global ptr @pvrdma_get_dma_mr._entry.5, section ".printk_index", align 4
@pvrdma_reg_user_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 125, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid mem region length\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvrdma_reg_user_mr\00", [45 x i8] zeroinitializer }, align 32
@pvrdma_reg_user_mr._entry_ptr = internal global ptr @pvrdma_reg_user_mr._entry, section ".printk_index", align 4
@pvrdma_reg_user_mr._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 132, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not get umem for mem region\0A\00", [61 x i8] zeroinitializer }, align 32
@pvrdma_reg_user_mr._entry_ptr.12 = internal global ptr @pvrdma_reg_user_mr._entry.10, section ".printk_index", align 4
@pvrdma_reg_user_mr._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 139, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"overflow %d pages in mem region\0A\00", [63 x i8] zeroinitializer }, align 32
@pvrdma_reg_user_mr._entry_ptr.15 = internal global ptr @pvrdma_reg_user_mr._entry.13, section ".printk_index", align 4
@pvrdma_reg_user_mr._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 157, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not allocate page directory\0A\00", [61 x i8] zeroinitializer }, align 32
@pvrdma_reg_user_mr._entry_ptr.18 = internal global ptr @pvrdma_reg_user_mr._entry.16, section ".printk_index", align 4
@pvrdma_reg_user_mr._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.2, i32 177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"could not register mem region, error: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@pvrdma_reg_user_mr._entry_ptr.21 = internal global ptr @pvrdma_reg_user_mr._entry.19, section ".printk_index", align 4
@pvrdma_alloc_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 233, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to allocate page dir for mr\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pvrdma_alloc_mr\00", [16 x i8] zeroinitializer }, align 32
@pvrdma_alloc_mr._entry_ptr = internal global ptr @pvrdma_alloc_mr._entry, section ".printk_index", align 4
@pvrdma_alloc_mr._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 248, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"could not create FR mem region, error: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@pvrdma_alloc_mr._entry_ptr.26 = internal global ptr @pvrdma_alloc_mr._entry.24, section ".printk_index", align 4
@pvrdma_dereg_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 291, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"could not deregister mem region, error: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pvrdma_dereg_mr\00", [16 x i8] zeroinitializer }, align 32
@pvrdma_dereg_mr._entry_ptr = internal global ptr @pvrdma_dereg_mr._entry, section ".printk_index", align 4
@pvrdma_map_mr_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 324, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not map sg to pages\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvrdma_map_mr_sg\00", [47 x i8] zeroinitializer }, align 32
@pvrdma_map_mr_sg._entry_ptr = internal global ptr @pvrdma_map_mr_sg._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 70, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 87, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 125, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 131, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 138, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 156, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 176, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 232, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 247, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 290, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [48 x i8] c"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_mr.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 324, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @pvrdma_alloc_mr._entry, ptr @pvrdma_alloc_mr._entry.24, ptr @pvrdma_alloc_mr._entry_ptr, ptr @pvrdma_alloc_mr._entry_ptr.26, ptr @pvrdma_dereg_mr._entry, ptr @pvrdma_dereg_mr._entry_ptr, ptr @pvrdma_get_dma_mr._entry, ptr @pvrdma_get_dma_mr._entry.5, ptr @pvrdma_get_dma_mr._entry_ptr, ptr @pvrdma_get_dma_mr._entry_ptr.7, ptr @pvrdma_map_mr_sg._entry, ptr @pvrdma_map_mr_sg._entry_ptr, ptr @pvrdma_reg_user_mr._entry, ptr @pvrdma_reg_user_mr._entry.10, ptr @pvrdma_reg_user_mr._entry.13, ptr @pvrdma_reg_user_mr._entry.16, ptr @pvrdma_reg_user_mr._entry.19, ptr @pvrdma_reg_user_mr._entry_ptr, ptr @pvrdma_reg_user_mr._entry_ptr.12, ptr @pvrdma_reg_user_mr._entry_ptr.15, ptr @pvrdma_reg_user_mr._entry_ptr.18, ptr @pvrdma_reg_user_mr._entry_ptr.21, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_get_dma_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_get_dma_mr._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_reg_user_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_reg_user_mr._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_reg_user_mr._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_reg_user_mr._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_reg_user_mr._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_alloc_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_alloc_mr._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_dereg_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_map_mr_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pvrdma_get_dma_mr(ptr nocapture noundef readonly %pd, i32 noundef %acc) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %union.pvrdma_cmd_req, align 8
  %rsp = alloca %union.pvrdma_cmd_resp, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req) #7
  %2 = getelementptr inbounds i8, ptr %req, i32 56
  %3 = call ptr @memset(ptr %2, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %rsp) #7
  %4 = call ptr @memset(ptr %rsp, i32 255, i32 176)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %acc)
  %tobool.not = icmp ult i32 %acc, 2
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef %acc) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 224) #11
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %8 = call ptr @memset(ptr %req, i32 0, i32 56)
  %cmd8 = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %cmd8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %cmd8, align 8
  %pd_handle = getelementptr inbounds %struct.pvrdma_pd, ptr %pd, i32 0, i32 2
  %10 = ptrtoint ptr %pd_handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pd_handle, align 4
  %pd_handle10 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, ptr %req, i32 0, i32 4
  %12 = ptrtoint ptr %pd_handle10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pd_handle10, align 8
  %access_flags = getelementptr inbounds %struct.pvrdma_cmd_create_mr, ptr %req, i32 0, i32 5
  %13 = ptrtoint ptr %access_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %acc, ptr %access_flags, align 4
  %flags = getelementptr inbounds %struct.pvrdma_cmd_create_mr, ptr %req, i32 0, i32 6
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %flags, align 8
  %call11 = call i32 @pvrdma_cmd_post(ptr noundef %1, ptr noundef nonnull %req, ptr noundef nonnull %rsp, i32 noundef -2147483644) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end15, label %if.end19

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %pdev16 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %pdev16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev16, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev17, ptr noundef nonnull @.str.6, i32 noundef %call11) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %17 = inttoptr i32 %call11 to ptr
  br label %cleanup

if.end19:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %mr_handle = getelementptr inbounds %struct.pvrdma_cmd_create_mr_resp, ptr %rsp, i32 0, i32 1
  %18 = ptrtoint ptr %mr_handle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mr_handle, align 8
  %mmr = getelementptr inbounds %struct.pvrdma_user_mr, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %mmr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %mmr, align 8
  %lkey = getelementptr inbounds %struct.pvrdma_cmd_create_mr_resp, ptr %rsp, i32 0, i32 2
  %21 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lkey, align 4
  %lkey21 = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %lkey21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %lkey21, align 8
  %rkey = getelementptr inbounds %struct.pvrdma_cmd_create_mr_resp, ptr %rsp, i32 0, i32 3
  %24 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rkey, align 8
  %rkey23 = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %rkey23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rkey23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end15, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -95 to ptr), %do.end ], [ %17, %do.end15 ], [ %call7.i.i, %if.end19 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %rsp) #7
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_cmd_post(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pvrdma_reg_user_mr(ptr nocapture noundef readonly %pd, i64 noundef %start, i64 noundef %length, i64 noundef %virt_addr, i32 noundef %access_flags, ptr nocapture noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %union.pvrdma_cmd_req, align 8
  %rsp = alloca %union.pvrdma_cmd_resp, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req) #7
  %2 = call ptr @memset(ptr %req, i32 255, i32 184)
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %rsp) #7
  %3 = call ptr @memset(ptr %rsp, i32 255, i32 176)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length)
  %cmp = icmp eq i64 %length, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %dsr = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsr, align 8
  %max_mr_size = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %5, i32 0, i32 8, i32 3
  %6 = ptrtoint ptr %max_mr_size to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %max_mr_size, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %length)
  %cmp1 = icmp ult i64 %7, %length
  br i1 %cmp1, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv = trunc i64 %start to i32
  %conv5 = trunc i64 %length to i32
  %call6 = tail call ptr @ib_umem_get(ptr noundef %1, i32 noundef %conv, i32 noundef %conv5, i32 noundef %access_flags) #7
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end11, label %if.end15

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev12 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pdev12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev12, align 8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %iova.i = getelementptr inbounds %struct.ib_umem, ptr %call6, i32 0, i32 2
  %12 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %iova.i, align 8
  %length.i = getelementptr inbounds %struct.ib_umem, ptr %call6, i32 0, i32 3
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 8
  %conv.i = zext i32 %15 to i64
  %add.i = add i64 %13, 4095
  %add2.i = add i64 %add.i, %conv.i
  %and.i = and i64 %add2.i, 4294963200
  %and15.i = and i64 %13, 4294963200
  %sub16.i = sub nsw i64 %and.i, %and15.i
  %conv17.i = trunc i64 %sub16.i to i32
  %div1.i = lshr exact i32 %conv17.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %conv17.i)
  %cmp20 = icmp ugt i32 %conv17.i, 1073741824
  br i1 %cmp20, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %pdev26 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %pdev26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev26, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev27, ptr noundef nonnull @.str.14, i32 noundef %div1.i) #10
  br label %err_umem

if.end28:                                         ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 224) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end28.err_umem_crit_edge, label %if.end31

if.end28.err_umem_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_umem

if.end31:                                         ; preds = %if.end28
  %mmr = getelementptr inbounds %struct.pvrdma_user_mr, ptr %call7.i.i, i32 0, i32 2
  %iova = getelementptr inbounds %struct.pvrdma_user_mr, ptr %call7.i.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %virt_addr, ptr %iova, align 8
  %size = getelementptr inbounds %struct.pvrdma_user_mr, ptr %call7.i.i, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %length, ptr %size, align 8
  %umem33 = getelementptr inbounds %struct.pvrdma_user_mr, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %umem33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call6, ptr %umem33, align 8
  %pdir = getelementptr inbounds %struct.pvrdma_user_mr, ptr %call7.i.i, i32 0, i32 3
  %conv34134 = zext i32 %div1.i to i64
  %call35 = tail call i32 @pvrdma_page_dir_init(ptr noundef %1, ptr noundef %pdir, i64 noundef %conv34134, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %pdev41 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %pdev41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev41, align 8
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev42, ptr noundef nonnull @.str.17) #10
  br label %err_umem

if.end43:                                         ; preds = %if.end31
  %24 = ptrtoint ptr %umem33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %umem33, align 8
  %call46 = tail call i32 @pvrdma_page_dir_insert_umem(ptr noundef %pdir, ptr noundef %25, i64 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end43.err_pdir_crit_edge

if.end43.err_pdir_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pdir

if.end49:                                         ; preds = %if.end43
  %26 = call ptr @memset(ptr %req, i32 0, i32 56)
  %cmd50 = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req, i32 0, i32 1
  %27 = ptrtoint ptr %cmd50 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %cmd50, align 8
  %start51 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, ptr %req, i32 0, i32 1
  %28 = ptrtoint ptr %start51 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %start, ptr %start51, align 8
  %length52 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, ptr %req, i32 0, i32 2
  %29 = ptrtoint ptr %length52 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %length, ptr %length52, align 8
  %pd_handle = getelementptr inbounds %struct.pvrdma_pd, ptr %pd, i32 0, i32 2
  %30 = ptrtoint ptr %pd_handle to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pd_handle, align 4
  %pd_handle54 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, ptr %req, i32 0, i32 4
  %32 = ptrtoint ptr %pd_handle54 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %pd_handle54, align 8
  %access_flags55 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, ptr %req, i32 0, i32 5
  %33 = ptrtoint ptr %access_flags55 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %access_flags, ptr %access_flags55, align 4
  %nchunks = getelementptr inbounds %struct.pvrdma_cmd_create_mr, ptr %req, i32 0, i32 7
  %34 = ptrtoint ptr %nchunks to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div1.i, ptr %nchunks, align 4
  %35 = ptrtoint ptr %pdir to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pdir, align 8
  %conv57 = zext i32 %36 to i64
  %pdir_dma = getelementptr inbounds %struct.pvrdma_cmd_create_mr, ptr %req, i32 0, i32 3
  %37 = ptrtoint ptr %pdir_dma to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv57, ptr %pdir_dma, align 8
  %call58 = call i32 @pvrdma_cmd_post(ptr noundef %1, ptr noundef nonnull %req, ptr noundef nonnull %rsp, i32 noundef -2147483644) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %do.end64, label %if.end67

do.end64:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %pdev65 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %pdev65 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev65, align 8
  %dev66 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev66, ptr noundef nonnull @.str.20, i32 noundef %call58) #10
  br label %err_pdir

if.end67:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %mr_handle = getelementptr inbounds %struct.pvrdma_cmd_create_mr_resp, ptr %rsp, i32 0, i32 1
  %40 = ptrtoint ptr %mr_handle to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mr_handle, align 8
  %42 = ptrtoint ptr %mmr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %mmr, align 8
  %lkey = getelementptr inbounds %struct.pvrdma_cmd_create_mr_resp, ptr %rsp, i32 0, i32 2
  %43 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lkey, align 4
  %lkey70 = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %lkey70 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %lkey70, align 8
  %rkey = getelementptr inbounds %struct.pvrdma_cmd_create_mr_resp, ptr %rsp, i32 0, i32 3
  %46 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rkey, align 8
  %rkey72 = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %rkey72 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %rkey72, align 4
  br label %cleanup

err_pdir:                                         ; preds = %do.end64, %if.end43.err_pdir_crit_edge
  %ret.0 = phi i32 [ %call46, %if.end43.err_pdir_crit_edge ], [ %call58, %do.end64 ]
  call void @pvrdma_page_dir_cleanup(ptr noundef %1, ptr noundef %pdir) #7
  br label %err_umem

err_umem:                                         ; preds = %err_pdir, %do.end40, %if.end28.err_umem_crit_edge, %do.end25
  %mr.0 = phi ptr [ null, %do.end25 ], [ %call7.i.i, %do.end40 ], [ %call7.i.i, %err_pdir ], [ null, %if.end28.err_umem_crit_edge ]
  %ret.1 = phi i32 [ -22, %do.end25 ], [ %call35, %do.end40 ], [ %ret.0, %err_pdir ], [ -12, %if.end28.err_umem_crit_edge ]
  call void @ib_umem_release(ptr noundef %call6) #7
  call void @kfree(ptr noundef %mr.0) #7
  %49 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_umem, %if.end67, %do.end11, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %call6, %do.end11 ], [ %49, %err_umem ], [ %call7.i.i, %if.end67 ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %rsp) #7
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_page_dir_init(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_page_dir_insert_umem(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvrdma_page_dir_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pvrdma_alloc_mr(ptr nocapture noundef readonly %pd, i32 noundef %mr_type, i32 noundef %max_num_sg) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %union.pvrdma_cmd_req, align 8
  %rsp = alloca %union.pvrdma_cmd_resp, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req) #7
  %2 = call ptr @memset(ptr %req, i32 255, i32 184)
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %rsp) #7
  %3 = call ptr @memset(ptr %rsp, i32 255, i32 176)
  %mul = shl i32 %max_num_sg, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mr_type)
  %cmp.not = icmp ne i32 %mr_type, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %max_num_sg)
  %cmp1 = icmp ugt i32 %max_num_sg, 128
  %or.cond = or i1 %cmp.not, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 224) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #12
  %pages = getelementptr inbounds %struct.pvrdma_user_mr, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i.i, ptr %pages, align 8
  %tobool9.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool9.not, label %if.end8.i.i.freemr_crit_edge, label %if.end11

if.end8.i.i.freemr_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %freemr

if.end11:                                         ; preds = %if.end8.i.i
  %pdir = getelementptr inbounds %struct.pvrdma_user_mr, ptr %call7.i.i, i32 0, i32 3
  %conv = zext i32 %max_num_sg to i64
  %call12 = tail call i32 @pvrdma_page_dir_init(ptr noundef %1, ptr noundef %pdir, i64 noundef %conv, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15, ptr noundef nonnull @.str.22) #10
  br label %freepages

if.end16:                                         ; preds = %if.end11
  %8 = call ptr @memset(ptr %req, i32 0, i32 40)
  %cmd17 = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %cmd17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %cmd17, align 8
  %pd_handle = getelementptr inbounds %struct.pvrdma_pd, ptr %pd, i32 0, i32 2
  %10 = ptrtoint ptr %pd_handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pd_handle, align 4
  %pd_handle19 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, ptr %req, i32 0, i32 4
  %12 = ptrtoint ptr %pd_handle19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pd_handle19, align 8
  %access_flags = getelementptr inbounds %struct.pvrdma_cmd_create_mr, ptr %req, i32 0, i32 5
  %13 = ptrtoint ptr %access_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %access_flags, align 4
  %flags = getelementptr inbounds %struct.pvrdma_cmd_create_mr, ptr %req, i32 0, i32 6
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %flags, align 8
  %nchunks = getelementptr inbounds %struct.pvrdma_cmd_create_mr, ptr %req, i32 0, i32 7
  %15 = ptrtoint ptr %nchunks to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %max_num_sg, ptr %nchunks, align 4
  %call20 = call i32 @pvrdma_cmd_post(ptr noundef %1, ptr noundef nonnull %req, ptr noundef nonnull %rsp, i32 noundef -2147483644) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %pdev27 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %pdev27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev27, align 8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev28, ptr noundef nonnull @.str.25, i32 noundef %call20) #10
  call void @pvrdma_page_dir_cleanup(ptr noundef %1, ptr noundef %pdir) #7
  br label %freepages

if.end29:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %max_pages = getelementptr inbounds %struct.pvrdma_user_mr, ptr %call7.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %max_pages to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %max_num_sg, ptr %max_pages, align 8
  %mr_handle = getelementptr inbounds %struct.pvrdma_cmd_create_mr_resp, ptr %rsp, i32 0, i32 1
  %19 = ptrtoint ptr %mr_handle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mr_handle, align 8
  %mmr = getelementptr inbounds %struct.pvrdma_user_mr, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %mmr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %mmr, align 8
  %lkey = getelementptr inbounds %struct.pvrdma_cmd_create_mr_resp, ptr %rsp, i32 0, i32 2
  %22 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lkey, align 4
  %lkey31 = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %lkey31 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %lkey31, align 8
  %rkey = getelementptr inbounds %struct.pvrdma_cmd_create_mr_resp, ptr %rsp, i32 0, i32 3
  %25 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rkey, align 8
  %rkey33 = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %rkey33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %rkey33, align 4
  %page_shift = getelementptr inbounds %struct.pvrdma_user_mr, ptr %call7.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %page_shift to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 12, ptr %page_shift, align 4
  %umem = getelementptr inbounds %struct.pvrdma_user_mr, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %umem, align 8
  br label %cleanup

freepages:                                        ; preds = %do.end26, %do.end
  %ret.0 = phi i32 [ -12, %do.end ], [ %call20, %do.end26 ]
  %30 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pages, align 8
  call void @kfree(ptr noundef %31) #7
  br label %freemr

freemr:                                           ; preds = %freepages, %if.end8.i.i.freemr_crit_edge
  %ret.1 = phi i32 [ %ret.0, %freepages ], [ -12, %if.end8.i.i.freemr_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %32 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %freemr, %if.end29, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %32, %freemr ], [ %call7.i.i, %if.end29 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %rsp) #7
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req) #7
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_dereg_mr(ptr noundef %ibmr, ptr nocapture noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %union.pvrdma_cmd_req, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibmr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibmr, align 8
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req) #7
  %2 = getelementptr inbounds i8, ptr %req, i32 24
  %3 = call ptr @memset(ptr %2, i32 255, i32 160)
  %4 = call ptr @memset(ptr %req, i32 0, i32 24)
  %cmd2 = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req, i32 0, i32 1
  %5 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5, ptr %cmd2, align 8
  %mmr = getelementptr inbounds %struct.pvrdma_user_mr, ptr %ibmr, i32 0, i32 2
  %6 = ptrtoint ptr %mmr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mmr, align 8
  %mr_handle3 = getelementptr inbounds %struct.pvrdma_cmd_destroy_mr, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %mr_handle3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mr_handle3, align 8
  %call4 = call i32 @pvrdma_cmd_post(ptr noundef %1, ptr noundef nonnull %req, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.27, i32 noundef %call4) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %pdir = getelementptr inbounds %struct.pvrdma_user_mr, ptr %ibmr, i32 0, i32 3
  call void @pvrdma_page_dir_cleanup(ptr noundef %1, ptr noundef %pdir) #7
  %umem = getelementptr inbounds %struct.pvrdma_user_mr, ptr %ibmr, i32 0, i32 1
  %11 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %umem, align 8
  call void @ib_umem_release(ptr noundef %12) #7
  %pages = getelementptr inbounds %struct.pvrdma_user_mr, ptr %ibmr, i32 0, i32 4
  %13 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pages, align 8
  call void @kfree(ptr noundef %14) #7
  call void @kfree(ptr noundef %ibmr) #7
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_map_mr_sg(ptr noundef %ibmr, ptr noundef %sg, i32 noundef %sg_nents, ptr noundef %sg_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibmr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibmr, align 8
  %npages = getelementptr inbounds %struct.pvrdma_user_mr, ptr %ibmr, i32 0, i32 5
  %2 = ptrtoint ptr %npages to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %npages, align 4
  %call2 = tail call i32 @ib_sg_to_pages(ptr noundef %ibmr, ptr noundef %sg, i32 noundef %sg_nents, ptr noundef %sg_offset, ptr noundef nonnull @pvrdma_set_page) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.29) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_sg_to_pages(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pvrdma_set_page(ptr nocapture noundef %ibmr, i64 noundef %addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %npages = getelementptr inbounds %struct.pvrdma_user_mr, ptr %ibmr, i32 0, i32 5
  %0 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npages, align 4
  %max_pages = getelementptr inbounds %struct.pvrdma_user_mr, ptr %ibmr, i32 0, i32 6
  %2 = ptrtoint ptr %max_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_pages, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pages = getelementptr inbounds %struct.pvrdma_user_mr, ptr %ibmr, i32 0, i32 4
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages, align 8
  %inc = add i32 %1, 1
  %6 = ptrtoint ptr %npages to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc, ptr %npages, align 4
  %arrayidx = getelementptr i64, ptr %5, i32 %1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %addr, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_mr.c", i32 70, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pvrdma_get_dma_mr._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pvrdma_get_dma_mr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_mr.c", i32 87, i32 3}
!10 = !{ptr @pvrdma_get_dma_mr._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @pvrdma_get_dma_mr._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_mr.c", i32 125, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @pvrdma_reg_user_mr._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @pvrdma_reg_user_mr._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_mr.c", i32 131, i32 3}
!19 = !{ptr @pvrdma_reg_user_mr._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @pvrdma_reg_user_mr._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_mr.c", i32 138, i32 3}
!23 = !{ptr @pvrdma_reg_user_mr._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @pvrdma_reg_user_mr._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_mr.c", i32 156, i32 3}
!27 = !{ptr @pvrdma_reg_user_mr._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @pvrdma_reg_user_mr._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_mr.c", i32 176, i32 3}
!31 = !{ptr @pvrdma_reg_user_mr._entry.19, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @pvrdma_reg_user_mr._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_mr.c", i32 232, i32 3}
!35 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @pvrdma_alloc_mr._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @pvrdma_alloc_mr._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_mr.c", i32 247, i32 3}
!40 = !{ptr @pvrdma_alloc_mr._entry.24, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @pvrdma_alloc_mr._entry_ptr.26, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.27, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_mr.c", i32 290, i32 3}
!44 = !{ptr @.str.28, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pvrdma_dereg_mr._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @pvrdma_dereg_mr._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_mr.c", i32 324, i32 3}
!49 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @pvrdma_map_mr_sg._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @pvrdma_map_mr_sg._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
