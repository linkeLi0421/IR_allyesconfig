; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/vmw_pvrdma/pvrdma_verbs.c_pt.bc'
source_filename = "../drivers/infiniband/hw/vmw_pvrdma/pvrdma_verbs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pvrdma_cmd_resp_hdr = type { i64, i32, i8, [3 x i8] }
%struct.pvrdma_cmd_hdr = type { i64, i32, i32 }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.pvrdma_dev = type { %struct.ib_device, ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, i32, %struct.spinlock, %struct.semaphore, %struct.completion, i32, ptr, ptr, %struct.pvrdma_page_dir, ptr, %struct.pvrdma_page_dir, ptr, %struct.spinlock, ptr, %struct.spinlock, ptr, %struct.spinlock, %struct.pvrdma_uar_table, %struct.pvrdma_uar_map, i64, %struct.spinlock, i32, %struct.mutex, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.notifier_block }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.172, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.172 = type { %struct.ib_core_device }
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
%struct.ib_odp_caps = type { i64, %struct.anon.173 }
%struct.anon.173 = type { i32, i32, i32, i32 }
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
%struct.pvrdma_device_shared_region = type { i32, i32, %struct.pvrdma_gos_info, i64, i64, %struct.pvrdma_ring_page_info, %struct.pvrdma_ring_page_info, %union.anon.186, %struct.pvrdma_device_caps }
%struct.pvrdma_gos_info = type { i32, i32 }
%struct.pvrdma_ring_page_info = type { i32, i32, i64 }
%union.anon.186 = type { i64 }
%struct.pvrdma_device_caps = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.185, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.185 = type { ptr }
%union.pvrdma_cmd_req = type { %struct.pvrdma_cmd_modify_qp }
%struct.pvrdma_cmd_modify_qp = type { %struct.pvrdma_cmd_hdr, i32, i32, %struct.pvrdma_qp_attr }
%struct.pvrdma_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], %struct.pvrdma_qp_cap, %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr }
%struct.pvrdma_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.pvrdma_ah_attr = type { %struct.pvrdma_global_route, i16, i16, i8, i8, i8, i8, i8, [6 x i8], i8 }
%struct.pvrdma_global_route = type { %union.pvrdma_gid, i32, i8, i8, i8, i8 }
%union.pvrdma_gid = type { %struct.anon.188 }
%struct.anon.188 = type { i64, i64 }
%union.pvrdma_cmd_resp = type { %struct.pvrdma_cmd_query_qp_resp }
%struct.pvrdma_cmd_query_qp_resp = type { %struct.pvrdma_cmd_resp_hdr, %struct.pvrdma_qp_attr }
%struct.pvrdma_cmd_query_port = type { %struct.pvrdma_cmd_hdr, i8, [7 x i8] }
%struct.pvrdma_cmd_query_port_resp = type { %struct.pvrdma_cmd_resp_hdr, %struct.pvrdma_port_attr }
%struct.pvrdma_port_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%union.ib_gid = type { %struct.anon.158 }
%struct.anon.158 = type { i64, i64 }
%struct.pvrdma_cmd_query_pkey = type { %struct.pvrdma_cmd_hdr, i8, i8, [6 x i8] }
%struct.pvrdma_cmd_query_pkey_resp = type { %struct.pvrdma_cmd_resp_hdr, i16, [6 x i8] }
%struct.ib_device_modify = type { i64, [64 x i8] }
%struct.ib_port_modify = type { i32, i32, i8 }
%struct.pvrdma_alloc_ucontext_resp = type { i32, i32 }
%struct.pvrdma_ucontext = type { %struct.ib_ucontext, ptr, %struct.pvrdma_uar_map, i64 }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.pvrdma_cmd_create_uc = type { %struct.pvrdma_cmd_hdr, %union.anon.187 }
%union.anon.187 = type { i64 }
%struct.pvrdma_cmd_create_uc_resp = type { %struct.pvrdma_cmd_resp_hdr, i32, [4 x i8] }
%struct.pvrdma_cmd_destroy_uc = type { %struct.pvrdma_cmd_hdr, i32, [4 x i8] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.pvrdma_alloc_pd_resp = type { i32, i32 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.uverbs_attr = type { %union.anon.167 }
%union.anon.167 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.168, i16, i16, i8 }
%union.anon.168 = type { i64 }
%struct.pvrdma_cmd_create_pd = type { %struct.pvrdma_cmd_hdr, i32, [4 x i8] }
%struct.pvrdma_pd = type { %struct.ib_pd, i32, i32, i32 }
%struct.pvrdma_cmd_create_pd_resp = type { %struct.pvrdma_cmd_resp_hdr, i32, [4 x i8] }
%struct.pvrdma_cmd_destroy_pd = type { %struct.pvrdma_cmd_hdr, i32, [4 x i8] }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.162 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.anon.162 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_ah = type { ptr, ptr, ptr, ptr, i32 }
%struct.pvrdma_ah = type { %struct.ib_ah, %struct.pvrdma_av }
%struct.pvrdma_av = type { i32, i32, [16 x i8], i8, i8, i8, i8, [6 x i8], [6 x i8] }
%struct.ib_ah_attr = type { i16, i8 }

@pvrdma_query_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not query port, error: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pvrdma_query_port\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/infiniband/hw/vmw_pvrdma/pvrdma_verbs.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pvrdma_query_port._entry_ptr = internal global ptr @pvrdma_query_port._entry, section ".printk_index", align 4
@pvrdma_query_pkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 225, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not query pkey, error: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pvrdma_query_pkey\00", [46 x i8] zeroinitializer }, align 32
@pvrdma_query_pkey._entry_ptr = internal global ptr @pvrdma_query_pkey._entry, section ".printk_index", align 4
@pvrdma_modify_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 248, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unsupported device modify mask %#x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pvrdma_modify_device\00", [43 x i8] zeroinitializer }, align 32
@pvrdma_modify_device._entry_ptr = internal global ptr @pvrdma_modify_device._entry, section ".printk_index", align 4
@pvrdma_modify_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 286, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unsupported port modify mask %#x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvrdma_modify_port\00", [45 x i8] zeroinitializer }, align 32
@pvrdma_modify_port._entry_ptr = internal global ptr @pvrdma_modify_port._entry, section ".printk_index", align 4
@pvrdma_alloc_ucontext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 343, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not create ucontext, error: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pvrdma_alloc_ucontext\00", [42 x i8] zeroinitializer }, align 32
@pvrdma_alloc_ucontext._entry_ptr = internal global ptr @pvrdma_alloc_ucontext._entry, section ".printk_index", align 4
@pvrdma_dealloc_ucontext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 382, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"destroy ucontext failed, error: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pvrdma_dealloc_ucontext\00", [40 x i8] zeroinitializer }, align 32
@pvrdma_dealloc_ucontext._entry_ptr = internal global ptr @pvrdma_dealloc_ucontext._entry, section ".printk_index", align 4
@pvrdma_mmap.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vmw_pvrdma\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pvrdma_mmap\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"create mmap region\0A\00", [44 x i8] zeroinitializer }, align 32
@pvrdma_mmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 406, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid params for mmap region\0A\00", [32 x i8] zeroinitializer }, align 32
@pvrdma_mmap._entry_ptr = internal global ptr @pvrdma_mmap._entry, section ".printk_index", align 4
@__const.pvrdma_alloc_pd.rsp = private unnamed_addr constant { %struct.pvrdma_cmd_resp_hdr, [160 x i8] } { %struct.pvrdma_cmd_resp_hdr zeroinitializer, [160 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 8
@pvrdma_alloc_pd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 451, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to allocate protection domain, error: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pvrdma_alloc_pd\00", [16 x i8] zeroinitializer }, align 32
@pvrdma_alloc_pd._entry_ptr = internal global ptr @pvrdma_alloc_pd._entry, section ".printk_index", align 4
@pvrdma_alloc_pd._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 463, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to copy back protection domain\0A\00", [57 x i8] zeroinitializer }, align 32
@pvrdma_alloc_pd._entry_ptr.23 = internal global ptr @pvrdma_alloc_pd._entry.21, section ".printk_index", align 4
@__const.pvrdma_dealloc_pd.req = private unnamed_addr constant { %struct.pvrdma_cmd_hdr, [168 x i8] } { %struct.pvrdma_cmd_hdr zeroinitializer, [168 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 8
@pvrdma_dealloc_pd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 498, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"could not dealloc protection domain, error: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pvrdma_dealloc_pd\00", [46 x i8] zeroinitializer }, align 32
@pvrdma_dealloc_pd._entry_ptr = internal global ptr @pvrdma_dealloc_pd._entry, section ".printk_index", align 4
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 144, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 224, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 247, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 285, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 342, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 381, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 402, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 405, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 449, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 462, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private constant [51 x i8] c"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_verbs.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 496, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 174, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @pvrdma_alloc_pd._entry, ptr @pvrdma_alloc_pd._entry.21, ptr @pvrdma_alloc_pd._entry_ptr, ptr @pvrdma_alloc_pd._entry_ptr.23, ptr @pvrdma_alloc_ucontext._entry, ptr @pvrdma_alloc_ucontext._entry_ptr, ptr @pvrdma_dealloc_pd._entry, ptr @pvrdma_dealloc_pd._entry_ptr, ptr @pvrdma_dealloc_ucontext._entry, ptr @pvrdma_dealloc_ucontext._entry_ptr, ptr @pvrdma_mmap._entry, ptr @pvrdma_mmap._entry_ptr, ptr @pvrdma_modify_device._entry, ptr @pvrdma_modify_device._entry_ptr, ptr @pvrdma_modify_port._entry, ptr @pvrdma_modify_port._entry_ptr, ptr @pvrdma_query_pkey._entry, ptr @pvrdma_query_pkey._entry_ptr, ptr @pvrdma_query_port._entry, ptr @pvrdma_query_port._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.28], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_query_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_query_pkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_modify_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_modify_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_alloc_ucontext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_dealloc_ucontext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_mmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_alloc_pd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_alloc_pd._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_dealloc_pd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pvrdma_query_device(ptr noundef readonly %ibdev, ptr noundef %props, ptr nocapture noundef readonly %uhw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %inlen = getelementptr inbounds %struct.ib_udata, ptr %uhw, i32 0, i32 2
  %0 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %outlen = getelementptr inbounds %struct.ib_udata, ptr %uhw, i32 0, i32 3
  %2 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dsr = getelementptr inbounds %struct.pvrdma_dev, ptr %ibdev, i32 0, i32 3
  %4 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsr, align 8
  %caps = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %caps, align 1
  %8 = ptrtoint ptr %props to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %props, align 8
  %9 = load ptr, ptr %dsr, align 8
  %sys_image_guid = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %9, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %sys_image_guid to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %sys_image_guid, align 1
  %sys_image_guid5 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 1
  %12 = ptrtoint ptr %sys_image_guid5 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %sys_image_guid5, align 8
  %13 = load ptr, ptr %dsr, align 8
  %max_mr_size = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %13, i32 0, i32 8, i32 3
  %14 = ptrtoint ptr %max_mr_size to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %max_mr_size, align 1
  %max_mr_size8 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 2
  %16 = ptrtoint ptr %max_mr_size8 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %max_mr_size8, align 8
  %17 = load ptr, ptr %dsr, align 8
  %page_size_cap = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %17, i32 0, i32 8, i32 4
  %18 = ptrtoint ptr %page_size_cap to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %page_size_cap, align 1
  %page_size_cap11 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 3
  %20 = ptrtoint ptr %page_size_cap11 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %page_size_cap11, align 8
  %21 = load ptr, ptr %dsr, align 8
  %vendor_id = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %21, i32 0, i32 8, i32 10
  %22 = ptrtoint ptr %vendor_id to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %vendor_id, align 1
  %vendor_id14 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 4
  %24 = ptrtoint ptr %vendor_id14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %vendor_id14, align 8
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %ibdev, i32 0, i32 1
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %device, align 2
  %conv = zext i16 %28 to i32
  %vendor_part_id = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 5
  %29 = ptrtoint ptr %vendor_part_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv, ptr %vendor_part_id, align 4
  %30 = load ptr, ptr %dsr, align 8
  %hw_ver = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %30, i32 0, i32 8, i32 12
  %31 = ptrtoint ptr %hw_ver to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %hw_ver, align 1
  %hw_ver17 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 6
  %33 = ptrtoint ptr %hw_ver17 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %hw_ver17, align 8
  %34 = load ptr, ptr %dsr, align 8
  %max_qp = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %34, i32 0, i32 8, i32 13
  %35 = ptrtoint ptr %max_qp to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %max_qp, align 1
  %max_qp20 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 7
  %37 = ptrtoint ptr %max_qp20 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %max_qp20, align 4
  %38 = load ptr, ptr %dsr, align 8
  %max_qp_wr = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %38, i32 0, i32 8, i32 14
  %39 = ptrtoint ptr %max_qp_wr to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %max_qp_wr, align 1
  %max_qp_wr23 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 8
  %41 = ptrtoint ptr %max_qp_wr23 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %max_qp_wr23, align 8
  %42 = load ptr, ptr %dsr, align 8
  %device_cap_flags = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %42, i32 0, i32 8, i32 15
  %43 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %device_cap_flags, align 1
  %conv26 = zext i32 %44 to i64
  %device_cap_flags27 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 9
  %45 = ptrtoint ptr %device_cap_flags27 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv26, ptr %device_cap_flags27, align 8
  %46 = load ptr, ptr %dsr, align 8
  %max_sge = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %46, i32 0, i32 8, i32 16
  %47 = ptrtoint ptr %max_sge to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %max_sge, align 1
  %max_send_sge = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 10
  %49 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %max_send_sge, align 8
  %50 = load ptr, ptr %dsr, align 8
  %max_sge32 = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %50, i32 0, i32 8, i32 16
  %51 = ptrtoint ptr %max_sge32 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %max_sge32, align 1
  %max_recv_sge = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 11
  %53 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %max_recv_sge, align 4
  %dsr_version = getelementptr inbounds %struct.pvrdma_dev, ptr %ibdev, i32 0, i32 9
  %54 = ptrtoint ptr %dsr_version to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dsr_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %55)
  %cmp = icmp ugt i32 %55, 17
  br i1 %cmp, label %land.lhs.true, label %if.end.cond.false_crit_edge

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %56 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dsr, align 8
  %gid_types = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %57, i32 0, i32 8, i32 49
  %58 = ptrtoint ptr %gid_types to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %gid_types, align 1
  %.off = add i8 %59, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %cond.true, label %land.lhs.true.cond.false_crit_edge

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %max_sge_rd = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %57, i32 0, i32 8, i32 17
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.cond.false_crit_edge, %if.end.cond.false_crit_edge
  %60 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dsr, align 8
  %max_sge50 = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %61, i32 0, i32 8, i32 16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %max_sge_rd, %cond.true ], [ %max_sge50, %cond.false ]
  %62 = ptrtoint ptr %cond.in to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %cond = load i32, ptr %cond.in, align 1
  %max_sge_rd51 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 12
  %63 = ptrtoint ptr %max_sge_rd51 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %cond, ptr %max_sge_rd51, align 8
  %64 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dsr, align 8
  %max_srq = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %65, i32 0, i32 8, i32 38
  %66 = ptrtoint ptr %max_srq to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %max_srq, align 1
  %max_srq54 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 33
  %68 = ptrtoint ptr %max_srq54 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %max_srq54, align 4
  %69 = load ptr, ptr %dsr, align 8
  %max_srq_wr = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %69, i32 0, i32 8, i32 39
  %70 = ptrtoint ptr %max_srq_wr to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %max_srq_wr, align 1
  %max_srq_wr57 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 34
  %72 = ptrtoint ptr %max_srq_wr57 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %max_srq_wr57, align 8
  %73 = load ptr, ptr %dsr, align 8
  %max_srq_sge = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %73, i32 0, i32 8, i32 40
  %74 = ptrtoint ptr %max_srq_sge to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %max_srq_sge, align 1
  %max_srq_sge60 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 35
  %76 = ptrtoint ptr %max_srq_sge60 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %max_srq_sge60, align 4
  %77 = load ptr, ptr %dsr, align 8
  %max_cq = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %77, i32 0, i32 8, i32 18
  %78 = ptrtoint ptr %max_cq to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %max_cq, align 1
  %max_cq63 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 13
  %80 = ptrtoint ptr %max_cq63 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %max_cq63, align 4
  %81 = load ptr, ptr %dsr, align 8
  %max_cqe = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %81, i32 0, i32 8, i32 19
  %82 = ptrtoint ptr %max_cqe to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %max_cqe, align 1
  %max_cqe66 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 14
  %84 = ptrtoint ptr %max_cqe66 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %max_cqe66, align 8
  %85 = load ptr, ptr %dsr, align 8
  %max_mr = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %85, i32 0, i32 8, i32 20
  %86 = ptrtoint ptr %max_mr to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %max_mr, align 1
  %max_mr69 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 15
  %88 = ptrtoint ptr %max_mr69 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %max_mr69, align 4
  %89 = load ptr, ptr %dsr, align 8
  %max_pd = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %89, i32 0, i32 8, i32 21
  %90 = ptrtoint ptr %max_pd to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %max_pd, align 1
  %max_pd72 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 16
  %92 = ptrtoint ptr %max_pd72 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %max_pd72, align 8
  %93 = load ptr, ptr %dsr, align 8
  %max_qp_rd_atom = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %93, i32 0, i32 8, i32 22
  %94 = ptrtoint ptr %max_qp_rd_atom to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %max_qp_rd_atom, align 1
  %max_qp_rd_atom75 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 17
  %96 = ptrtoint ptr %max_qp_rd_atom75 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %max_qp_rd_atom75, align 4
  %97 = load ptr, ptr %dsr, align 8
  %max_qp_init_rd_atom = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %97, i32 0, i32 8, i32 25
  %98 = ptrtoint ptr %max_qp_init_rd_atom to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %max_qp_init_rd_atom, align 1
  %max_qp_init_rd_atom78 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 20
  %100 = ptrtoint ptr %max_qp_init_rd_atom78 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %max_qp_init_rd_atom78, align 8
  %101 = load ptr, ptr %dsr, align 8
  %atomic_ops = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %101, i32 0, i32 8, i32 47
  %102 = ptrtoint ptr %atomic_ops to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %atomic_ops, align 1
  %104 = and i8 %103, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool82.not = icmp ne i8 %104, 0
  %cond83 = zext i1 %tobool82.not to i32
  %atomic_cap = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 22
  %105 = ptrtoint ptr %atomic_cap to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %cond83, ptr %atomic_cap, align 8
  %masked_atomic_cap = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 23
  %106 = ptrtoint ptr %masked_atomic_cap to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %cond83, ptr %masked_atomic_cap, align 4
  %107 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dsr, align 8
  %max_ah = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %108, i32 0, i32 8, i32 35
  %109 = ptrtoint ptr %max_ah to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %max_ah, align 1
  %max_ah87 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 32
  %111 = ptrtoint ptr %max_ah87 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %max_ah87, align 8
  %112 = load ptr, ptr %dsr, align 8
  %max_pkeys = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %112, i32 0, i32 8, i32 43
  %113 = ptrtoint ptr %max_pkeys to i32
  call void @__asan_loadN_noabort(i32 %113, i32 2)
  %114 = load i16, ptr %max_pkeys, align 1
  %max_pkeys90 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 38
  %115 = ptrtoint ptr %max_pkeys90 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %max_pkeys90, align 8
  %116 = load ptr, ptr %dsr, align 8
  %local_ca_ack_delay = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %116, i32 0, i32 8, i32 44
  %117 = ptrtoint ptr %local_ca_ack_delay to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %local_ca_ack_delay, align 1
  %local_ca_ack_delay93 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 39
  %119 = ptrtoint ptr %local_ca_ack_delay93 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %local_ca_ack_delay93, align 2
  %120 = load ptr, ptr %dsr, align 8
  %bmme_flags = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %120, i32 0, i32 8, i32 48
  %121 = ptrtoint ptr %bmme_flags to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %bmme_flags, align 1
  %123 = and i8 %122, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %123)
  %.not = icmp eq i8 %123, 7
  br i1 %.not, label %if.then113, label %cond.end.if.end139_crit_edge

cond.end.if.end139_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

if.then113:                                       ; preds = %cond.end
  %or = or i64 %conv26, 2097152
  %124 = ptrtoint ptr %device_cap_flags27 to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %or, ptr %device_cap_flags27, align 8
  %125 = ptrtoint ptr %dsr_version to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dsr_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %126)
  %cmp116 = icmp ugt i32 %126, 17
  br i1 %cmp116, label %land.lhs.true118, label %if.then113.cond.end136_crit_edge

if.then113.cond.end136_crit_edge:                 ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end136

land.lhs.true118:                                 ; preds = %if.then113
  %127 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dsr, align 8
  %gid_types121 = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %128, i32 0, i32 8, i32 49
  %129 = ptrtoint ptr %gid_types121 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %gid_types121, align 1
  %.off210 = add i8 %130, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off210)
  %switch211 = icmp ult i8 %.off210, 2
  br i1 %switch211, label %cond.true132, label %land.lhs.true118.cond.end136_crit_edge

land.lhs.true118.cond.end136_crit_edge:           ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end136

cond.true132:                                     ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #10
  %max_fast_reg_page_list_len = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %128, i32 0, i32 8, i32 50
  %131 = ptrtoint ptr %max_fast_reg_page_list_len to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %max_fast_reg_page_list_len, align 1
  br label %cond.end136

cond.end136:                                      ; preds = %cond.true132, %land.lhs.true118.cond.end136_crit_edge, %if.then113.cond.end136_crit_edge
  %cond137 = phi i32 [ %132, %cond.true132 ], [ 128, %if.then113.cond.end136_crit_edge ], [ 128, %land.lhs.true118.cond.end136_crit_edge ]
  %max_fast_reg_page_list_len138 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 36
  %133 = ptrtoint ptr %max_fast_reg_page_list_len138 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %cond137, ptr %max_fast_reg_page_list_len138, align 8
  br label %if.end139

if.end139:                                        ; preds = %cond.end136, %cond.end.if.end139_crit_edge
  %134 = ptrtoint ptr %device_cap_flags27 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %device_cap_flags27, align 8
  %or141 = or i64 %135, 5120
  store i64 %or141, ptr %device_cap_flags27, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end139, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end139 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_query_port(ptr noundef %ibdev, i32 noundef %port, ptr nocapture noundef %props) local_unnamed_addr #2 align 64 {
entry:
  %req = alloca %union.pvrdma_cmd_req, align 8
  %rsp = alloca %union.pvrdma_cmd_resp, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req) #8
  %0 = getelementptr inbounds i8, ptr %req, i32 24
  %1 = call ptr @memset(ptr %0, i32 255, i32 160)
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %rsp) #8
  %2 = call ptr @memset(ptr %rsp, i32 255, i32 176)
  %conv = trunc i32 %port to i8
  %port_num = getelementptr inbounds %struct.pvrdma_cmd_query_port, ptr %req, i32 0, i32 1
  %3 = call ptr @memset(ptr %req, i32 0, i32 24)
  %4 = ptrtoint ptr %port_num to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %port_num, align 8
  %call2 = call i32 @pvrdma_cmd_post(ptr noundef %ibdev, ptr noundef nonnull %req, ptr noundef nonnull %rsp, i32 noundef -2147483648) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %ibdev, i32 0, i32 1
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str, i32 noundef %call2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %attrs = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, ptr %rsp, i32 0, i32 1
  %7 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %attrs, align 8
  %state6 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 1
  %9 = ptrtoint ptr %state6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %state6, align 8
  %max_mtu = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, ptr %rsp, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_mtu, align 4
  %max_mtu9 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 2
  %12 = ptrtoint ptr %max_mtu9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %max_mtu9, align 4
  %active_mtu = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, ptr %rsp, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %active_mtu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %active_mtu, align 8
  %active_mtu12 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 3
  %15 = ptrtoint ptr %active_mtu12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %active_mtu12, align 8
  %gid_tbl_len = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, ptr %rsp, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %gid_tbl_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gid_tbl_len, align 4
  %gid_tbl_len14 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 5
  %18 = ptrtoint ptr %gid_tbl_len14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %gid_tbl_len14, align 8
  %port_cap_flags = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, ptr %rsp, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %port_cap_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_cap_flags, align 8
  %port_cap_flags17 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 7
  %or = or i32 %20, 65536
  %21 = ptrtoint ptr %port_cap_flags17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or, ptr %port_cap_flags17, align 8
  %ip_gids = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 6
  %22 = ptrtoint ptr %ip_gids to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %ip_gids, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %ip_gids, align 4
  %max_msg_sz = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, ptr %rsp, i32 0, i32 1, i32 5
  %23 = ptrtoint ptr %max_msg_sz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_msg_sz, align 4
  %max_msg_sz20 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 8
  %25 = ptrtoint ptr %max_msg_sz20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %max_msg_sz20, align 4
  %bad_pkey_cntr = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, ptr %rsp, i32 0, i32 1, i32 6
  %26 = ptrtoint ptr %bad_pkey_cntr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bad_pkey_cntr, align 8
  %bad_pkey_cntr22 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 9
  %28 = ptrtoint ptr %bad_pkey_cntr22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %bad_pkey_cntr22, align 8
  %qkey_viol_cntr = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, ptr %rsp, i32 0, i32 1, i32 7
  %29 = ptrtoint ptr %qkey_viol_cntr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qkey_viol_cntr, align 4
  %qkey_viol_cntr24 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 10
  %31 = ptrtoint ptr %qkey_viol_cntr24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %qkey_viol_cntr24, align 4
  %pkey_tbl_len = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, ptr %rsp, i32 0, i32 1, i32 8
  %32 = ptrtoint ptr %pkey_tbl_len to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pkey_tbl_len, align 8
  %pkey_tbl_len26 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 11
  %34 = ptrtoint ptr %pkey_tbl_len26 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %pkey_tbl_len26, align 8
  %lid = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, ptr %rsp, i32 0, i32 1, i32 9
  %35 = ptrtoint ptr %lid to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %lid, align 2
  %conv28 = zext i16 %36 to i32
  %lid29 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 13
  %37 = ptrtoint ptr %lid29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv28, ptr %lid29, align 8
  %sm_lid = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, ptr %rsp, i32 0, i32 1, i32 10
  %38 = ptrtoint ptr %sm_lid to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %sm_lid, align 4
  %conv31 = zext i16 %39 to i32
  %sm_lid32 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 12
  %40 = ptrtoint ptr %sm_lid32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv31, ptr %sm_lid32, align 4
  %lmc = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, ptr %rsp, i32 0, i32 1, i32 11
  %41 = ptrtoint ptr %lmc to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %lmc, align 2
  %lmc34 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 14
  %43 = ptrtoint ptr %lmc34 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %lmc34, align 4
  %max_vl_num = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, ptr %rsp, i32 0, i32 1, i32 12
  %44 = ptrtoint ptr %max_vl_num to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %max_vl_num, align 1
  %max_vl_num36 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 15
  %46 = ptrtoint ptr %max_vl_num36 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %max_vl_num36, align 1
  %sm_sl = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, ptr %rsp, i32 0, i32 1, i32 13
  %47 = ptrtoint ptr %sm_sl to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %sm_sl, align 8
  %sm_sl38 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 16
  %49 = ptrtoint ptr %sm_sl38 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %sm_sl38, align 2
  %subnet_timeout = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, ptr %rsp, i32 0, i32 1, i32 14
  %50 = ptrtoint ptr %subnet_timeout to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %subnet_timeout, align 1
  %subnet_timeout40 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 17
  %52 = ptrtoint ptr %subnet_timeout40 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %subnet_timeout40, align 1
  %init_type_reply = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, ptr %rsp, i32 0, i32 1, i32 15
  %53 = ptrtoint ptr %init_type_reply to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %init_type_reply, align 2
  %init_type_reply42 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 18
  %55 = ptrtoint ptr %init_type_reply42 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %init_type_reply42, align 8
  %active_width = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, ptr %rsp, i32 0, i32 1, i32 16
  %56 = ptrtoint ptr %active_width to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %active_width, align 1
  %active_width47 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 19
  %58 = ptrtoint ptr %active_width47 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %active_width47, align 1
  %active_speed = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, ptr %rsp, i32 0, i32 1, i32 17
  %59 = ptrtoint ptr %active_speed to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %active_speed, align 4
  %conv51 = zext i8 %60 to i16
  %active_speed52 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 20
  %61 = ptrtoint ptr %active_speed52 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv51, ptr %active_speed52, align 2
  %phys_state = getelementptr inbounds %struct.pvrdma_cmd_query_port_resp, ptr %rsp, i32 0, i32 1, i32 18
  %62 = ptrtoint ptr %phys_state to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %phys_state, align 1
  %phys_state54 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 21
  %64 = ptrtoint ptr %phys_state54 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %phys_state54, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %rsp) #8
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_cmd_post(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pvrdma_query_gid(ptr nocapture noundef readonly %ibdev, i32 noundef %port, i32 noundef %index, ptr nocapture noundef writeonly %gid) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dsr = getelementptr inbounds %struct.pvrdma_dev, ptr %ibdev, i32 0, i32 3
  %0 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsr, align 8
  %gid_tbl_len = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %1, i32 0, i32 8, i32 42
  %2 = ptrtoint ptr %gid_tbl_len to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %gid_tbl_len, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %index)
  %cmp.not = icmp ugt i32 %3, %index
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sgid_tbl = getelementptr inbounds %struct.pvrdma_dev, ptr %ibdev, i32 0, i32 14
  %4 = ptrtoint ptr %sgid_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sgid_tbl, align 8
  %arrayidx = getelementptr %union.ib_gid, ptr %5, i32 %index
  %6 = call ptr @memcpy(ptr %gid, ptr %arrayidx, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_query_pkey(ptr noundef %ibdev, i32 noundef %port, i16 noundef zeroext %index, ptr nocapture noundef writeonly %pkey) local_unnamed_addr #2 align 64 {
entry:
  %req = alloca %union.pvrdma_cmd_req, align 8
  %rsp = alloca %union.pvrdma_cmd_resp, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req) #8
  %0 = getelementptr inbounds i8, ptr %req, i32 24
  %1 = call ptr @memset(ptr %0, i32 255, i32 160)
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %rsp) #8
  %2 = call ptr @memset(ptr %rsp, i32 255, i32 176)
  %3 = call ptr @memset(ptr %req, i32 0, i32 24)
  %cmd1 = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %cmd1, align 8
  %conv = trunc i32 %port to i8
  %port_num = getelementptr inbounds %struct.pvrdma_cmd_query_pkey, ptr %req, i32 0, i32 1
  %5 = ptrtoint ptr %port_num to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %port_num, align 8
  %conv2 = trunc i16 %index to i8
  %index3 = getelementptr inbounds %struct.pvrdma_cmd_query_pkey, ptr %req, i32 0, i32 2
  %6 = ptrtoint ptr %index3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv2, ptr %index3, align 1
  %call4 = call i32 @pvrdma_cmd_post(ptr noundef %ibdev, ptr noundef nonnull %req, ptr noundef nonnull %rsp, i32 noundef -2147483647) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %ibdev, i32 0, i32 1
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %call4) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pkey7 = getelementptr inbounds %struct.pvrdma_cmd_query_pkey_resp, ptr %rsp, i32 0, i32 1
  %9 = ptrtoint ptr %pkey7 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pkey7, align 8
  %11 = ptrtoint ptr %pkey to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %pkey, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %rsp) #8
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pvrdma_port_link_layer(ptr nocapture noundef readnone %ibdev, i32 noundef %port) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_modify_device(ptr noundef %ibdev, i32 noundef %mask, ptr nocapture noundef readonly %props) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mask)
  %tobool.not = icmp ult i32 %mask, 4
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %ibdev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %mask) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end17_crit_edge, label %do.body5

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %desc_lock = getelementptr inbounds %struct.pvrdma_dev, ptr %ibdev, i32 0, i32 28
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %desc_lock) #8
  %node_desc = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 16
  %node_desc13 = getelementptr inbounds %struct.ib_device_modify, ptr %props, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %node_desc, ptr %node_desc13, i32 64)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %desc_lock, i32 noundef %call8) #8
  br label %if.end17

if.end17:                                         ; preds = %do.body5, %if.end.if.end17_crit_edge
  %and18 = and i32 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.then20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %port_mutex = getelementptr inbounds %struct.pvrdma_dev, ptr %ibdev, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %port_mutex, i32 noundef 0) #8
  %3 = ptrtoint ptr %props to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %props, align 8
  %sys_image_guid23 = getelementptr inbounds %struct.pvrdma_dev, ptr %ibdev, i32 0, i32 27
  %5 = ptrtoint ptr %sys_image_guid23 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %sys_image_guid23, align 8
  tail call void @mutex_unlock(ptr noundef %port_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end17.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %if.then20 ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_modify_port(ptr noundef %ibdev, i32 noundef %port, i32 noundef %mask, ptr nocapture noundef readonly %props) local_unnamed_addr #2 align 64 {
entry:
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #8
  %0 = call ptr @memset(ptr %attr, i32 255, i32 72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %tobool.not = icmp ult i32 %mask, 2
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %ibdev, i32 0, i32 1
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %mask) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_mutex = getelementptr inbounds %struct.pvrdma_dev, ptr %ibdev, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %port_mutex, i32 noundef 0) #8
  %call1 = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port, ptr noundef nonnull %attr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %props, align 4
  %port_cap_mask = getelementptr inbounds %struct.pvrdma_dev, ptr %ibdev, i32 0, i32 29
  %5 = ptrtoint ptr %port_cap_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_cap_mask, align 4
  %or = or i32 %6, %4
  store i32 %or, ptr %port_cap_mask, align 4
  %clr_port_cap_mask = getelementptr inbounds %struct.ib_port_modify, ptr %props, i32 0, i32 1
  %7 = ptrtoint ptr %clr_port_cap_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clr_port_cap_mask, align 4
  %neg = xor i32 %8, -1
  %and6 = and i32 %or, %neg
  store i32 %and6, ptr %port_cap_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool8.not = icmp eq i32 %mask, 0
  br i1 %tobool8.not, label %if.end4.out_crit_edge, label %if.then9

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %ib_active = getelementptr inbounds %struct.pvrdma_dev, ptr %ibdev, i32 0, i32 31
  %9 = ptrtoint ptr %ib_active to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ib_active, align 4
  br label %out

out:                                              ; preds = %if.then9, %if.end4.out_crit_edge, %if.end.out_crit_edge
  call void @mutex_unlock(ptr noundef %port_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ %call1, %out ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_alloc_ucontext(ptr noundef %uctx, ptr nocapture noundef readonly %udata) local_unnamed_addr #2 align 64 {
entry:
  %req.i = alloca %union.pvrdma_cmd_req, align 8
  %req = alloca %union.pvrdma_cmd_req, align 8
  %rsp = alloca %union.pvrdma_cmd_resp, align 8
  %uresp = alloca %struct.pvrdma_alloc_ucontext_resp, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %uctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uctx, align 4
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req) #8
  %2 = call ptr @memcpy(ptr %req, ptr @__const.pvrdma_dealloc_pd.req, i32 184)
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %rsp) #8
  %3 = call ptr @memcpy(ptr %rsp, ptr @__const.pvrdma_alloc_pd.rsp, i32 176)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uresp) #8
  %4 = ptrtoint ptr %uresp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %uresp, align 8
  %ib_active = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 31
  %5 = ptrtoint ptr %ib_active to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ib_active, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pvrdma_ucontext, ptr %uctx, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %dev, align 4
  %uar = getelementptr inbounds %struct.pvrdma_ucontext, ptr %uctx, i32 0, i32 2
  %call2 = tail call i32 @pvrdma_uar_alloc(ptr noundef %1, ptr noundef %uar) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dsr_version = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %dsr_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dsr_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %9)
  %cmp = icmp ult i32 %9, 19
  %10 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uar, align 8
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %12 = getelementptr inbounds %struct.pvrdma_cmd_create_uc, ptr %req, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %12, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %11 to i64
  %14 = getelementptr inbounds %struct.pvrdma_cmd_create_uc, ptr %req, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv, ptr %14, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  %cmd11 = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req, i32 0, i32 1
  %16 = ptrtoint ptr %cmd11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 13, ptr %cmd11, align 8
  %call12 = call i32 @pvrdma_cmd_post(ptr noundef %1, ptr noundef nonnull %req, ptr noundef nonnull %rsp, i32 noundef -2147483635) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev16, ptr noundef nonnull @.str.11, i32 noundef %call12) #11
  call void @pvrdma_uar_free(ptr noundef %1, ptr noundef %uar) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %ctx_handle = getelementptr inbounds %struct.pvrdma_cmd_create_uc_resp, ptr %rsp, i32 0, i32 1
  %19 = ptrtoint ptr %ctx_handle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctx_handle, align 8
  %conv18 = zext i32 %20 to i64
  %ctx_handle19 = getelementptr inbounds %struct.pvrdma_ucontext, ptr %uctx, i32 0, i32 3
  %21 = ptrtoint ptr %ctx_handle19 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv18, ptr %ctx_handle19, align 8
  %dsr = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dsr, align 8
  %max_qp = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %23, i32 0, i32 8, i32 13
  %24 = ptrtoint ptr %max_qp to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %max_qp, align 1
  %26 = ptrtoint ptr %uresp to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %uresp, align 8
  %outbuf.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %27 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %outbuf.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 174) #8
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.end17.if.then22_crit_edge, label %if.end.i.i.i

if.end17.if.then22_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

if.end.i.i.i:                                     ; preds = %if.end17
  %29 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %28, i32 8, i32 -1226833920) #12, !srcloc !73
  %asmresult.i.i.i = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.if.then22_crit_edge

if.end.i.i.i.if.then22_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %uresp, i32 noundef 8) #8
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %28, ptr noundef nonnull %uresp, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i1.i.i.i, 0
  br i1 %tobool.not.i, label %copy_to_user.exit.i.cleanup_crit_edge, label %copy_to_user.exit.i.if.then22_crit_edge

copy_to_user.exit.i.if.then22_crit_edge:          ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

copy_to_user.exit.i.cleanup_crit_edge:            ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %copy_to_user.exit.i.if.then22_crit_edge, %if.end.i.i.i.if.then22_crit_edge, %if.end17.if.then22_crit_edge
  call void @pvrdma_uar_free(ptr noundef %1, ptr noundef %uar) #8
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req.i) #8
  %30 = call ptr @memcpy(ptr %req.i, ptr @__const.pvrdma_dealloc_pd.req, i32 184)
  %cmd1.i = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req.i, i32 0, i32 1
  %31 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 14, ptr %cmd1.i, align 8
  %32 = ptrtoint ptr %ctx_handle19 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %ctx_handle19, align 8
  %conv.i = trunc i64 %33 to i32
  %ctx_handle2.i = getelementptr inbounds %struct.pvrdma_cmd_destroy_uc, ptr %req.i, i32 0, i32 1
  %34 = ptrtoint ptr %ctx_handle2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv.i, ptr %ctx_handle2.i, align 8
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %call3.i = call i32 @pvrdma_cmd_post(ptr noundef %36, ptr noundef nonnull %req.i, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then22.pvrdma_dealloc_ucontext.exit_crit_edge

if.then22.pvrdma_dealloc_ucontext.exit_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvrdma_dealloc_ucontext.exit

do.end.i:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %pdev.i = getelementptr inbounds %struct.pvrdma_dev, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i, align 8
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6.i, ptr noundef nonnull @.str.13, i32 noundef %call3.i) #11
  br label %pvrdma_dealloc_ucontext.exit

pvrdma_dealloc_ucontext.exit:                     ; preds = %do.end.i, %if.then22.pvrdma_dealloc_ucontext.exit_crit_edge
  %41 = ptrtoint ptr %uctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %uctx, align 4
  call void @pvrdma_uar_free(ptr noundef %42, ptr noundef %uar) #8
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req.i) #8
  br label %cleanup

cleanup:                                          ; preds = %pvrdma_dealloc_ucontext.exit, %copy_to_user.exit.i.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %do.end ], [ -14, %pvrdma_dealloc_ucontext.exit ], [ -11, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %copy_to_user.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uresp) #8
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %rsp) #8
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_uar_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvrdma_uar_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pvrdma_dealloc_ucontext(ptr noundef %ibcontext) local_unnamed_addr #2 align 64 {
entry:
  %req = alloca %union.pvrdma_cmd_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req) #8
  %0 = call ptr @memcpy(ptr %req, ptr @__const.pvrdma_dealloc_pd.req, i32 184)
  %cmd1 = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req, i32 0, i32 1
  %1 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 14, ptr %cmd1, align 8
  %ctx_handle = getelementptr inbounds %struct.pvrdma_ucontext, ptr %ibcontext, i32 0, i32 3
  %2 = ptrtoint ptr %ctx_handle to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ctx_handle, align 8
  %conv = trunc i64 %3 to i32
  %ctx_handle2 = getelementptr inbounds %struct.pvrdma_cmd_destroy_uc, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %ctx_handle2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %ctx_handle2, align 8
  %dev = getelementptr inbounds %struct.pvrdma_ucontext, ptr %ibcontext, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %call3 = call i32 @pvrdma_cmd_post(ptr noundef %6, ptr noundef nonnull %req, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6, ptr noundef nonnull @.str.13, i32 noundef %call3) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %ibcontext to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ibcontext, align 4
  %uar = getelementptr inbounds %struct.pvrdma_ucontext, ptr %ibcontext, i32 0, i32 2
  call void @pvrdma_uar_free(ptr noundef %12, ptr noundef %uar) #8
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_mmap(ptr nocapture noundef readonly %ibcontext, ptr noundef %vma) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %2 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_end, align 4
  %sub = sub i32 %3, %1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_mmap.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_mmap, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pvrdma_ucontext, ptr %ibcontext, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_mmap.__UNIQUE_ID_ddebug504, ptr noundef %dev5, ptr noundef nonnull @.str.17) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp.not = icmp eq i32 %sub, 4096
  br i1 %cmp.not, label %if.end14, label %do.end10

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev11 = getelementptr inbounds %struct.pvrdma_ucontext, ptr %ibcontext, i32 0, i32 1
  %8 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev11, align 4
  %pdev12 = getelementptr inbounds %struct.pvrdma_dev, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pdev12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev12, align 8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %12 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vm_flags, align 4
  %or = or i32 %13, 393216
  store i32 %or, ptr %vm_flags, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %14 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_page_prot, align 4
  %and15 = and i32 %15, -61
  store i32 %and15, ptr %vm_page_prot, align 4
  %uar = getelementptr inbounds %struct.pvrdma_ucontext, ptr %ibcontext, i32 0, i32 2
  %16 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %uar, align 8
  %call.i = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %1, i32 noundef %17, i32 noundef 4096, i32 noundef %and15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  %. = select i1 %tobool20.not, i32 0, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end10
  %retval.0 = phi i32 [ -22, %do.end10 ], [ %., %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_alloc_pd(ptr nocapture noundef %ibpd, ptr noundef readonly %udata) local_unnamed_addr #2 align 64 {
entry:
  %req = alloca %union.pvrdma_cmd_req, align 8
  %rsp = alloca %union.pvrdma_cmd_resp, align 8
  %pd_resp = alloca %struct.pvrdma_alloc_pd_resp, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %ibpd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req) #8
  %2 = call ptr @memcpy(ptr %req, ptr @__const.pvrdma_dealloc_pd.req, i32 184)
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %rsp) #8
  %3 = call ptr @memcpy(ptr %rsp, ptr @__const.pvrdma_alloc_pd.rsp, i32 176)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pd_resp) #8
  %4 = ptrtoint ptr %pd_resp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %pd_resp, align 8
  %tobool.not = icmp eq ptr %udata, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %context3 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %5 = ptrtoint ptr %context3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %6, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %num_pds = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 35
  %dsr = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dsr, align 8
  %max_pd = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %8, i32 0, i32 8, i32 21
  %9 = ptrtoint ptr %max_pd to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %max_pd, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_pds, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @llvm.prefetch.p0(ptr %num_pds, i32 1, i32 3, i32 1) #8
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %num_pds, ptr %num_pds, i32 %10, i32 1, ptr elementtype(i32) %num_pds) #8, !srcloc !76
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i, i32 %10)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, %10
  br i1 %cmp.not.i.i.i, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cond.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !77
  %cmd5 = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req, i32 0, i32 1
  %12 = ptrtoint ptr %cmd5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %cmd5, align 8
  %tobool6.not = icmp eq ptr %cond, null
  br i1 %tobool6.not, label %if.end.cond.end9_crit_edge, label %cond.true7

if.end.cond.end9_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end9

cond.true7:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ctx_handle = getelementptr inbounds %struct.pvrdma_ucontext, ptr %cond, i32 0, i32 3
  %13 = ptrtoint ptr %ctx_handle to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ctx_handle, align 8
  %extract.t = trunc i64 %14 to i32
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true7, %if.end.cond.end9_crit_edge
  %cond10.off0 = phi i32 [ %extract.t, %cond.true7 ], [ 0, %if.end.cond.end9_crit_edge ]
  %ctx_handle11 = getelementptr inbounds %struct.pvrdma_cmd_create_pd, ptr %req, i32 0, i32 1
  %15 = ptrtoint ptr %ctx_handle11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond10.off0, ptr %ctx_handle11, align 8
  %call12 = call i32 @pvrdma_cmd_post(ptr noundef %1, ptr noundef nonnull %req, ptr noundef nonnull %rsp, i32 noundef -2147483646) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.end, label %if.end16

do.end:                                           ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15, ptr noundef nonnull @.str.19, i32 noundef %call12) #11
  %call.i.i66 = call zeroext i1 @__kasan_check_write(ptr noundef %num_pds, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %num_pds, i32 1, i32 3, i32 1) #8
  %18 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_pds, ptr %num_pds, i32 1, ptr elementtype(i32) %num_pds) #8, !srcloc !78
  br label %cleanup

if.end16:                                         ; preds = %cond.end9
  %lnot.ext = zext i1 %tobool.not to i32
  %privileged = getelementptr inbounds %struct.pvrdma_pd, ptr %ibpd, i32 0, i32 3
  %19 = ptrtoint ptr %privileged to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %lnot.ext, ptr %privileged, align 4
  %pd_handle = getelementptr inbounds %struct.pvrdma_cmd_create_pd_resp, ptr %rsp, i32 0, i32 1
  %20 = ptrtoint ptr %pd_handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pd_handle, align 8
  %pd_handle18 = getelementptr inbounds %struct.pvrdma_pd, ptr %ibpd, i32 0, i32 2
  %22 = ptrtoint ptr %pd_handle18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %pd_handle18, align 4
  %pdn = getelementptr inbounds %struct.pvrdma_pd, ptr %ibpd, i32 0, i32 1
  %23 = ptrtoint ptr %pdn to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %pdn, align 4
  %24 = ptrtoint ptr %pd_resp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %pd_resp, align 8
  br i1 %tobool.not, label %if.end16.cleanup_crit_edge, label %if.then23

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %if.end16
  %outbuf.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %25 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %outbuf.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 174) #8
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.then23.do.end29_crit_edge, label %if.end.i.i.i

if.then23.do.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

if.end.i.i.i:                                     ; preds = %if.then23
  %27 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %26, i32 8, i32 -1226833920) #12, !srcloc !73
  %asmresult.i.i.i67 = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i67)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i67, 0
  br i1 %cmp.i.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.do.end29_crit_edge

if.end.i.i.i.do.end29_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %pd_resp, i32 noundef 8) #8
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %26, ptr noundef nonnull %pd_resp, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i1.i.i.i, 0
  br i1 %tobool.not.i, label %copy_to_user.exit.i.cleanup_crit_edge, label %copy_to_user.exit.i.do.end29_crit_edge

copy_to_user.exit.i.do.end29_crit_edge:           ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

copy_to_user.exit.i.cleanup_crit_edge:            ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end29:                                         ; preds = %copy_to_user.exit.i.do.end29_crit_edge, %if.end.i.i.i.do.end29_crit_edge, %if.then23.do.end29_crit_edge
  %pdev30 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %pdev30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev30, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev31, ptr noundef nonnull @.str.22) #11
  %call33 = call i32 @pvrdma_dealloc_pd(ptr noundef %ibpd, ptr undef)
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %copy_to_user.exit.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %do.end ], [ -14, %do.end29 ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %copy_to_user.exit.i.cleanup_crit_edge ], [ -12, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pd_resp) #8
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %rsp) #8
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_dealloc_pd(ptr nocapture noundef readonly %pd, ptr nocapture readnone %udata) local_unnamed_addr #2 align 64 {
entry:
  %req = alloca %union.pvrdma_cmd_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req) #8
  %2 = call ptr @memcpy(ptr %req, ptr @__const.pvrdma_dealloc_pd.req, i32 184)
  %cmd1 = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %cmd1, align 8
  %pd_handle = getelementptr inbounds %struct.pvrdma_pd, ptr %pd, i32 0, i32 2
  %4 = ptrtoint ptr %pd_handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pd_handle, align 4
  %pd_handle3 = getelementptr inbounds %struct.pvrdma_cmd_destroy_pd, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %pd_handle3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pd_handle3, align 8
  %call4 = call i32 @pvrdma_cmd_post(ptr noundef %1, ptr noundef nonnull %req, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.24, i32 noundef %call4) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %num_pds = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 35
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %num_pds, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %num_pds, i32 1, i32 3, i32 1) #8
  %9 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_pds, ptr %num_pds, i32 1, ptr elementtype(i32) %num_pds) #8, !srcloc !78
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_create_ah(ptr nocapture noundef %ibah, ptr nocapture noundef readonly %init_attr, ptr nocapture noundef readnone %udata) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %init_attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_attr, align 4
  %2 = ptrtoint ptr %ibah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibah, align 4
  %port_num.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_num.i, align 4
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ah_flags.i, align 8
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.not = icmp eq i32 %10, 2
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %dgid = getelementptr inbounds %struct.ib_global_route, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dgid to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dgid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp.i = icmp eq i8 %12, -1
  br i1 %cmp.i, label %lor.lhs.false.cleanup_crit_edge, label %if.end.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %dgid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dgid, align 4
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %dgid, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %16, %14
  %arrayidx4.i.i = getelementptr %struct.ib_global_route, ptr %1, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %18, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i60 = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i60, label %rdma_is_multicast_addr.exit, label %if.end.i.if.end9_crit_edge

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

rdma_is_multicast_addr.exit:                      ; preds = %if.end.i
  %arrayidx3.i = getelementptr [4 x i32], ptr %dgid, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx3.i, align 4
  %and.i.i = and i32 %20, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i9.i.not = icmp eq i32 %and.i.i, -536870912
  br i1 %cmp.i9.i.not, label %rdma_is_multicast_addr.exit.cleanup_crit_edge, label %rdma_is_multicast_addr.exit.if.end9_crit_edge

rdma_is_multicast_addr.exit.if.end9_crit_edge:    ; preds = %rdma_is_multicast_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

rdma_is_multicast_addr.exit.cleanup_crit_edge:    ; preds = %rdma_is_multicast_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %rdma_is_multicast_addr.exit.if.end9_crit_edge, %if.end.i.if.end9_crit_edge
  %num_ahs = getelementptr inbounds %struct.pvrdma_dev, ptr %3, i32 0, i32 36
  %dsr = getelementptr inbounds %struct.pvrdma_dev, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dsr, align 8
  %max_ah = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %22, i32 0, i32 8, i32 35
  %23 = ptrtoint ptr %max_ah to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %max_ah, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_ahs, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @llvm.prefetch.p0(ptr %num_ahs, i32 1, i32 3, i32 1) #8
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %num_ahs, ptr %num_ahs, i32 %24, i32 1, ptr elementtype(i32) %num_ahs) #8, !srcloc !76
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i, i32 %24)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, %24
  br i1 %cmp.not.i.i.i, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !77
  %pd = getelementptr inbounds %struct.ib_ah, ptr %ibah, i32 0, i32 1
  %26 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pd, align 4
  %pd_handle = getelementptr inbounds %struct.pvrdma_pd, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %pd_handle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pd_handle, align 4
  %shl = shl i32 %5, 24
  %or = or i32 %29, %shl
  %av = getelementptr inbounds %struct.pvrdma_ah, ptr %ibah, i32 0, i32 1
  %30 = ptrtoint ptr %av to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or, ptr %av, align 4
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %32, label %if.end12.rdma_ah_get_path_bits.exit_crit_edge [
    i32 1, label %if.then.i
    i32 3, label %if.then3.i
  ]

if.end12.rdma_ah_get_path_bits.exit_crit_edge:    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %rdma_ah_get_path_bits.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %34 = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 6
  %src_path_bits.i = getelementptr inbounds %struct.ib_ah_attr, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %src_path_bits.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %src_path_bits.i, align 2
  br label %rdma_ah_get_path_bits.exit

if.then3.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %src_path_bits4.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 6, i32 0, i32 1
  %37 = ptrtoint ptr %src_path_bits4.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %src_path_bits4.i, align 4
  br label %rdma_ah_get_path_bits.exit

rdma_ah_get_path_bits.exit:                       ; preds = %if.then3.i, %if.then.i, %if.end12.rdma_ah_get_path_bits.exit_crit_edge
  %retval.0.i61 = phi i8 [ %36, %if.then.i ], [ %38, %if.then3.i ], [ 0, %if.end12.rdma_ah_get_path_bits.exit_crit_edge ]
  %src_path_bits = getelementptr inbounds %struct.pvrdma_ah, ptr %ibah, i32 0, i32 1, i32 3
  %39 = or i8 %retval.0.i61, -128
  %40 = ptrtoint ptr %src_path_bits to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %src_path_bits, align 4
  %sgid_index = getelementptr inbounds %struct.ib_global_route, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sgid_index, align 4
  %gid_index = getelementptr inbounds %struct.pvrdma_ah, ptr %ibah, i32 0, i32 1, i32 4
  %43 = ptrtoint ptr %gid_index to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %gid_index, align 1
  %hop_limit = getelementptr inbounds %struct.ib_global_route, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %hop_limit, align 1
  %hop_limit22 = getelementptr inbounds %struct.pvrdma_ah, ptr %ibah, i32 0, i32 1, i32 6
  %46 = ptrtoint ptr %hop_limit22 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %hop_limit22, align 1
  %traffic_class = getelementptr inbounds %struct.ib_global_route, ptr %1, i32 0, i32 5
  %47 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %traffic_class, align 2
  %conv23 = zext i8 %48 to i32
  %shl24 = shl nuw nsw i32 %conv23, 20
  %flow_label = getelementptr inbounds %struct.ib_global_route, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flow_label, align 8
  %or25 = or i32 %shl24, %50
  %sl_tclass_flowlabel = getelementptr inbounds %struct.pvrdma_ah, ptr %ibah, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %sl_tclass_flowlabel to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or25, ptr %sl_tclass_flowlabel, align 4
  %dgid28 = getelementptr inbounds %struct.pvrdma_ah, ptr %ibah, i32 0, i32 1, i32 2
  %52 = call ptr @memcpy(ptr %dgid28, ptr %dgid, i32 16)
  %dmac = getelementptr inbounds %struct.pvrdma_ah, ptr %ibah, i32 0, i32 1, i32 7
  %53 = getelementptr inbounds %struct.rdma_ah_attr, ptr %1, i32 0, i32 6
  %54 = call ptr @memcpy(ptr %dmac, ptr %53, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %rdma_ah_get_path_bits.exit, %if.end9.cleanup_crit_edge, %rdma_is_multicast_addr.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rdma_ah_get_path_bits.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %rdma_is_multicast_addr.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvrdma_destroy_ah(ptr nocapture noundef readonly %ah, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %num_ahs = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 36
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_ahs, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %num_ahs, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_ahs, ptr %num_ahs, i32 1, ptr elementtype(i32) %num_ahs) #8, !srcloc !78
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_verbs.c", i32 144, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pvrdma_query_port._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pvrdma_query_port._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_verbs.c", i32 224, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @pvrdma_query_pkey._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @pvrdma_query_pkey._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_verbs.c", i32 247, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @pvrdma_modify_device._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @pvrdma_modify_device._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_verbs.c", i32 285, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @pvrdma_modify_port._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @pvrdma_modify_port._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_verbs.c", i32 342, i32 3}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pvrdma_alloc_ucontext._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @pvrdma_alloc_ucontext._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_verbs.c", i32 381, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @pvrdma_dealloc_ucontext._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @pvrdma_dealloc_ucontext._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_verbs.c", i32 402, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @pvrdma_mmap.__UNIQUE_ID_ddebug504, !34, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_verbs.c", i32 405, i32 3}
!40 = !{ptr @pvrdma_mmap._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @pvrdma_mmap._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_verbs.c", i32 449, i32 3}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pvrdma_alloc_pd._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @pvrdma_alloc_pd._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_verbs.c", i32 462, i32 4}
!49 = !{ptr @pvrdma_alloc_pd._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @pvrdma_alloc_pd._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_verbs.c", i32 496, i32 3}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @pvrdma_dealloc_pd._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @pvrdma_dealloc_pd._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!58 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i8 0, i8 2}
!73 = !{i64 2152702717, i64 2152702742}
!74 = !{i64 2148722042, i64 2148722047, i64 2148722060, i64 2148722104, i64 2148722138, i64 2148722159}
!75 = !{i64 2148211219}
!76 = !{i64 696042, i64 696067, i64 696089, i64 696105, i64 696117, i64 696137, i64 696161, i64 696177, i64 696189}
!77 = !{i64 2148211407}
!78 = !{i64 2148214265, i64 2148214291, i64 2148214320, i64 2148214354, i64 2148214385, i64 2148214408}
