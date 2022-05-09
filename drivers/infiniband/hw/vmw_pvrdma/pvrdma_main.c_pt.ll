; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c_pt.bc'
source_filename = "../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.pvrdma_dev = type { %struct.ib_device, ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, i32, %struct.spinlock, %struct.semaphore, %struct.completion, i32, ptr, ptr, %struct.pvrdma_page_dir, ptr, %struct.pvrdma_page_dir, ptr, %struct.spinlock, ptr, %struct.spinlock, ptr, %struct.spinlock, %struct.pvrdma_uar_table, %struct.pvrdma_uar_map, i64, %struct.spinlock, i32, %struct.mutex, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.notifier_block }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.172, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.172 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.163 }
%struct.anon.163 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.pvrdma_page_dir = type { i32, ptr, i32, ptr, i64, ptr }
%struct.pvrdma_uar_table = type { %struct.pvrdma_id_table, i32 }
%struct.pvrdma_id_table = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.pvrdma_uar_map = type { i32, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pvrdma_device_shared_region = type { i32, i32, %struct.pvrdma_gos_info, i64, i64, %struct.pvrdma_ring_page_info, %struct.pvrdma_ring_page_info, %union.anon.173, %struct.pvrdma_device_caps }
%struct.pvrdma_gos_info = type { i32, i32 }
%struct.pvrdma_ring_page_info = type { i32, i32, i64 }
%union.anon.173 = type { i64 }
%struct.pvrdma_device_caps = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.132, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.149, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.132 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.149 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pvrdma_netdevice_work = type { %struct.work_struct, ptr, i32 }
%struct.ib_event = type { ptr, %union.anon.152, i32 }
%union.anon.152 = type { ptr }
%struct.pvrdma_ring_state = type { %struct.pvrdma_ring, %struct.pvrdma_ring }
%struct.pvrdma_ring = type { %struct.atomic_t, %struct.atomic_t }
%struct.pvrdma_eqe = type { i32, i32 }
%struct.pvrdma_qp = type { %struct.ib_qp, i32, i32, %struct.pvrdma_wq, %struct.pvrdma_wq, ptr, ptr, %struct.pvrdma_page_dir, ptr, i32, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.refcount_struct, %struct.completion }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.pvrdma_wq = type { ptr, %struct.spinlock, i32, i32, i32, i32 }
%struct.pvrdma_cq = type { %struct.ib_cq, i32, %struct.spinlock, ptr, ptr, ptr, %struct.pvrdma_page_dir, i32, i8, %struct.refcount_struct, %struct.completion }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.158, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.158 = type { %struct.work_struct }
%struct.pvrdma_srq = type { %struct.ib_srq, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, %struct.pvrdma_page_dir, i32, i32, %struct.refcount_struct, %struct.completion }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.153, %struct.rdma_restrack_entry }
%struct.anon.153 = type { ptr, %union.anon.154 }
%union.anon.154 = type { %struct.anon.155 }
%struct.anon.155 = type { ptr, i32 }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%union.pvrdma_cmd_req = type { %struct.pvrdma_cmd_modify_qp }
%struct.pvrdma_cmd_modify_qp = type { %struct.pvrdma_cmd_hdr, i32, i32, %struct.pvrdma_qp_attr }
%struct.pvrdma_cmd_hdr = type { i64, i32, i32 }
%struct.pvrdma_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], %struct.pvrdma_qp_cap, %struct.pvrdma_ah_attr, %struct.pvrdma_ah_attr }
%struct.pvrdma_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.pvrdma_ah_attr = type { %struct.pvrdma_global_route, i16, i16, i8, i8, i8, i8, i8, [6 x i8], i8 }
%struct.pvrdma_global_route = type { %union.pvrdma_gid, i32, i8, i8, i8, i8 }
%union.pvrdma_gid = type { %struct.anon.176 }
%struct.anon.176 = type { i64, i64 }
%struct.ib_gid_attr = type { ptr, ptr, %union.ib_gid, i32, i16, i32 }
%union.ib_gid = type { %struct.anon.159 }
%struct.anon.159 = type { i64, i64 }
%struct.pvrdma_cmd_create_bind = type { %struct.pvrdma_cmd_hdr, i32, i32, i32, [16 x i8], i8, [3 x i8] }
%struct.pvrdma_cmd_destroy_bind = type { %struct.pvrdma_cmd_hdr, i32, [16 x i8], [4 x i8] }

@pvrdma_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pvrdma_pci_table, ptr @pvrdma_pci_probe, ptr @pvrdma_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@event_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_vmw_pvrdma__524_1145_pvrdma_init6 = internal global ptr @pvrdma_init, section ".initcall6.init", align 4
@__exitcall_pvrdma_cleanup = internal global ptr @pvrdma_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author525 = internal constant [30 x i8] c"vmw_pvrdma.author=VMware, Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_description526 = internal constant [54 x i8] c"vmw_pvrdma.description=VMware Paravirtual RDMA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file527 = internal constant [60 x i8] c"vmw_pvrdma.file=drivers/infiniband/hw/vmw_pvrdma/vmw_pvrdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license528 = internal constant [32 x i8] c"vmw_pvrdma.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vmw_pvrdma\00", [21 x i8] zeroinitializer }, align 32
@pvrdma_pci_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5549, i32 2080, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvrdma_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"initializing driver %s\0A\00", [40 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 766, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to allocate IB device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr = internal global ptr @pvrdma_pci_probe._entry, section ".printk_index", align 4
@pvrdma_device_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.70, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pvrdma_device_list_lock, i64 52), ptr getelementptr (i8, ptr @pvrdma_device_list_lock, i64 52) }, ptr @pvrdma_device_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.71, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@pvrdma_device_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @pvrdma_device_list, ptr @pvrdma_device_list }, [24 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 783, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot enable PCI device\0A\00", [38 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr.9 = internal global ptr @pvrdma_pci_probe._entry.7, section ".printk_index", align 4
@pvrdma_pci_probe.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 -59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PCI resource flags BAR0 %#lx\0A\00", [34 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 -59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PCI resource len %#llx\0A\00", [40 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe.__UNIQUE_ID_ddebug519 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCI resource start %#llx\0A\00", [38 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 -58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PCI resource flags BAR1 %#lx\0A\00", [34 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe.__UNIQUE_ID_ddebug521 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 -57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@pvrdma_pci_probe.__UNIQUE_ID_ddebug522 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 -57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@pvrdma_pci_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 802, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCI BAR region not MMIO\0A\00", [39 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr.16 = internal global ptr @pvrdma_pci_probe._entry.14, section ".printk_index", align 4
@pvrdma_pci_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 809, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot request PCI resources\0A\00", [34 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr.19 = internal global ptr @pvrdma_pci_probe._entry.17, section ".printk_index", align 4
@pvrdma_pci_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 817, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dma_set_mask failed\0A\00", [43 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr.22 = internal global ptr @pvrdma_pci_probe._entry.20, section ".printk_index", align 4
@pvrdma_pci_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 829, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"register mapping failed\0A\00", [39 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr.25 = internal global ptr @pvrdma_pci_probe._entry.23, section ".printk_index", align 4
@pvrdma_pci_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 842, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to remap UAR pages\0A\00", [37 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr.28 = internal global ptr @pvrdma_pci_probe._entry.26, section ".printk_index", align 4
@pvrdma_pci_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 849, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"device version %d, driver version %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr.32 = internal global ptr @pvrdma_pci_probe._entry.29, section ".printk_index", align 4
@pvrdma_pci_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 854, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate shared region\0A\00", [62 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr.35 = internal global ptr @pvrdma_pci_probe._entry.33, section ".printk_index", align 4
@pvrdma_pci_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 925, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"driver needs RoCE v1 or v2 support\0A\00", [60 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr.38 = internal global ptr @pvrdma_pci_probe._entry.36, section ".printk_index", align 4
@pvrdma_pci_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.1, ptr @.str.2, i32 933, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to find paired net device\0A\00", [62 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr.41 = internal global ptr @pvrdma_pci_probe._entry.39, section ".printk_index", align 4
@pvrdma_pci_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.1, ptr @.str.2, i32 940, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to find paired vmxnet3 device\0A\00", [58 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr.44 = internal global ptr @pvrdma_pci_probe._entry.42, section ".printk_index", align 4
@pvrdma_pci_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.1, ptr @.str.2, i32 949, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get vmxnet3 device\0A\00", [34 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr.47 = internal global ptr @pvrdma_pci_probe._entry.45, section ".printk_index", align 4
@pvrdma_pci_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.1, ptr @.str.2, i32 955, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"paired device to %s\0A\00", [43 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr.50 = internal global ptr @pvrdma_pci_probe._entry.48, section ".printk_index", align 4
@pvrdma_pci_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.1, ptr @.str.2, i32 960, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to allocate interrupts\0A\00", [33 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr.53 = internal global ptr @pvrdma_pci_probe._entry.51, section ".printk_index", align 4
@pvrdma_pci_probe._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.1, ptr @.str.2, i32 968, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to allocate UAR table\0A\00", [34 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr.56 = internal global ptr @pvrdma_pci_probe._entry.54, section ".printk_index", align 4
@pvrdma_pci_probe.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.57, i8 0, i8 -11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gid table len %d\0A\00", [46 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.1, ptr @.str.2, i32 993, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to activate device\0A\00", [37 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr.60 = internal global ptr @pvrdma_pci_probe._entry.58, section ".printk_index", align 4
@pvrdma_pci_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.1, ptr @.str.2, i32 1001, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register IB device\0A\00", [34 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr.63 = internal global ptr @pvrdma_pci_probe._entry.61, section ".printk_index", align 4
@pvrdma_pci_probe._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.1, ptr @.str.2, i32 1008, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register netdevice events\0A\00", [59 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr.66 = internal global ptr @pvrdma_pci_probe._entry.64, section ".printk_index", align 4
@pvrdma_pci_probe._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.1, ptr @.str.2, i32 1012, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"attached to device\0A\00", [44 x i8] zeroinitializer }, align 32
@pvrdma_pci_probe._entry_ptr.69 = internal global ptr @pvrdma_pci_probe._entry.67, section ".printk_index", align 4
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pvrdma_device_list_lock.wait_lock\00", [62 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pvrdma_device_list_lock\00", [40 x i8] zeroinitializer }, align 32
@pvrdma_init_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->cmd_lock\00", [17 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@pvrdma_alloc_intrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 544, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to request interrupt 0\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvrdma_alloc_intrs\00", [45 x i8] zeroinitializer }, align 32
@pvrdma_alloc_intrs._entry_ptr = internal global ptr @pvrdma_alloc_intrs._entry, section ".printk_index", align 4
@pvrdma_alloc_intrs._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.2, i32 555, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to request interrupt %d\0A\00", [32 x i8] zeroinitializer }, align 32
@pvrdma_alloc_intrs._entry_ptr.79 = internal global ptr @pvrdma_alloc_intrs._entry.77, section ".printk_index", align 4
@pvrdma_intr0_handler.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pvrdma_intr0_handler\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"interrupt 0 (response) handler\0A\00", [32 x i8] zeroinitializer }, align 32
@pvrdma_intr1_handler.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pvrdma_intr1_handler\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"interrupt 1 (async event) handler\0A\00", [61 x i8] zeroinitializer }, align 32
@pvrdma_dev_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 380, ptr @.str.86, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"event on port %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvrdma_dev_event\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pvrdma_dev_event._entry_ptr = internal global ptr @pvrdma_dev_event._entry, section ".printk_index", align 4
@pvrdma_intrx_handler.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.88, i8 0, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pvrdma_intrx_handler\00", [43 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"interrupt x (completion) handler\0A\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pvrdma_enable_intrs.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pvrdma_enable_intrs\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enable interrupts\0A\00", [45 x i8] zeroinitializer }, align 32
@pvrdma_dev_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 10, i32 3, i8 0, ptr @pvrdma_attr_group, ptr null, ptr @pvrdma_post_send, ptr @pvrdma_post_recv, ptr null, ptr null, ptr @pvrdma_poll_cq, ptr null, ptr @pvrdma_req_notify_cq, ptr null, ptr null, ptr @pvrdma_query_device, ptr null, ptr @pvrdma_get_fw_ver_str, ptr null, ptr @pvrdma_query_port, ptr @pvrdma_modify_port, ptr @pvrdma_port_immutable, ptr @pvrdma_port_link_layer, ptr null, ptr null, ptr null, ptr @pvrdma_query_gid, ptr @pvrdma_add_gid, ptr @pvrdma_del_gid, ptr @pvrdma_query_pkey, ptr @pvrdma_alloc_ucontext, ptr @pvrdma_dealloc_ucontext, ptr @pvrdma_mmap, ptr null, ptr null, ptr @pvrdma_alloc_pd, ptr @pvrdma_dealloc_pd, ptr @pvrdma_create_ah, ptr null, ptr null, ptr null, ptr @pvrdma_destroy_ah, ptr null, ptr null, ptr null, ptr null, ptr @pvrdma_create_qp, ptr @pvrdma_modify_qp, ptr @pvrdma_query_qp, ptr @pvrdma_destroy_qp, ptr @pvrdma_create_cq, ptr null, ptr @pvrdma_destroy_cq, ptr null, ptr @pvrdma_get_dma_mr, ptr @pvrdma_reg_user_mr, ptr null, ptr null, ptr @pvrdma_dereg_mr, ptr @pvrdma_alloc_mr, ptr null, ptr null, ptr @pvrdma_map_mr_sg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 60, i32 0, i32 376, i32 0, i32 124, i32 608, i32 0, i32 0, i32 176, i32 0 }, [148 x i8] zeroinitializer }, align 32
@pvrdma_register_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dev->port_mutex\00", [47 x i8] zeroinitializer }, align 32
@pvrdma_register_device.__key.92 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->desc_lock\00", [16 x i8] zeroinitializer }, align 32
@pvrdma_register_device.__key.94 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dev->cq_tbl_lock\00", [46 x i8] zeroinitializer }, align 32
@pvrdma_register_device.__key.96 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dev->qp_tbl_lock\00", [46 x i8] zeroinitializer }, align 32
@pvrdma_dev_srq_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pvrdma_create_srq, ptr @pvrdma_modify_srq, ptr @pvrdma_query_srq, ptr @pvrdma_destroy_srq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 296, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@pvrdma_register_device.__key.98 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dev->srq_tbl_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vmw_pvrdma%d\00", [19 x i8] zeroinitializer }, align 32
@pvrdma_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pvrdma_class_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@pvrdma_class_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_hw_rev, ptr @dev_attr_hca_type, ptr @dev_attr_board_id, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_hw_rev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hw_rev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hca_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hca_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_board_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @board_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hw_rev\00", [25 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hca_type\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VMW_PVRDMA-%s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"1.0.1.0-k\00", [22 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"board_id\00", [23 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d.%d.%d\0A\00", [22 x i8] zeroinitializer }, align 32
@pvrdma_add_gid_at_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.2, i32 592, ptr @.str.86, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sgid table not initialized\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pvrdma_add_gid_at_index\00", [40 x i8] zeroinitializer }, align 32
@pvrdma_add_gid_at_index._entry_ptr = internal global ptr @pvrdma_add_gid_at_index._entry, section ".printk_index", align 4
@pvrdma_add_gid_at_index._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.2, i32 607, ptr @.str.86, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not create binding, error: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@pvrdma_add_gid_at_index._entry_ptr.112 = internal global ptr @pvrdma_add_gid_at_index._entry.110, section ".printk_index", align 4
@pvrdma_del_gid.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.2, ptr @.str.114, i8 0, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pvrdma_del_gid\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"removing gid at index %u from %s\00", [63 x i8] zeroinitializer }, align 32
@pvrdma_del_gid_at_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.115, ptr @.str.2, i32 631, ptr @.str.86, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pvrdma_del_gid_at_index\00", [40 x i8] zeroinitializer }, align 32
@pvrdma_del_gid_at_index._entry_ptr = internal global ptr @pvrdma_del_gid_at_index._entry, section ".printk_index", align 4
@pvrdma_del_gid_at_index._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.2, i32 643, ptr @.str.86, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not destroy binding, error: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@pvrdma_del_gid_at_index._entry_ptr.118 = internal global ptr @pvrdma_del_gid_at_index._entry.116, section ".printk_index", align 4
@pvrdma_netdevice_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.119 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&netdev_work->work)\00", [58 x i8] zeroinitializer }, align 32
@pvrdma_netdevice_event_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 680, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to activate device during link up\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pvrdma_netdevice_event_handle\00", [34 x i8] zeroinitializer }, align 32
@pvrdma_netdevice_event_handle._entry_ptr = internal global ptr @pvrdma_netdevice_event_handle._entry, section ".printk_index", align 4
@pvrdma_netdevice_event_handle.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.121, ptr @.str.2, ptr @.str.122, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ignore netdevice event %ld on %s\0A\00", [62 x i8] zeroinitializer }, align 32
@pvrdma_disable_intrs.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.2, ptr @.str.124, i8 0, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pvrdma_disable_intrs\00", [43 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"disable interrupts\0A\00", [44 x i8] zeroinitializer }, align 32
@pvrdma_free_irq.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.2, ptr @.str.126, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pvrdma_free_irq\00", [16 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"freeing interrupts\0A\00", [44 x i8] zeroinitializer }, align 32
@pvrdma_pci_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.2, i32 1062, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"detaching from device\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pvrdma_pci_remove\00", [46 x i8] zeroinitializer }, align 32
@pvrdma_pci_remove._entry_ptr = internal global ptr @pvrdma_pci_remove._entry, section ".printk_index", align 4
@.str.129 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pvrdma_event_wq\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.130 = internal global [21 x i64] [i64 19, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.132 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6]
@___asan_gen_.133 = private unnamed_addr constant [14 x i8] c"pvrdma_driver\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1116, i32 26 }
@___asan_gen_.136 = private unnamed_addr constant [9 x i8] c"event_wq\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 63, i32 33 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1117, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"pvrdma_pci_table\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1109, i32 35 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 761, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 766, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [24 x i8] c"pvrdma_device_list_lock\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [19 x i8] c"pvrdma_device_list\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 62, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 783, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 787, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 789, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 791, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 793, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 802, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 809, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 817, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 829, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 842, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 848, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 854, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 925, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 933, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 940, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 949, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 955, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 960, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 968, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 980, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 993, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1001, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1008, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1012, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 61, i32 8 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 113, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 33, i32 31 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 34, i32 28 }
@___asan_gen_.323 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 35, i32 39 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 543, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 554, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 269, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 403, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 380, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 479, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 515, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [15 x i8] c"pvrdma_dev_ops\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 146, i32 35 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 216, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 217, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 223, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 229, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant [19 x i8] c"pvrdma_dev_srq_ops\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 192, i32 35 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 244, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 246, i32 41 }
@___asan_gen_.415 = private unnamed_addr constant [18 x i8] c"pvrdma_attr_group\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 96, i32 37 }
@___asan_gen_.418 = private unnamed_addr constant [24 x i8] c"pvrdma_class_attributes\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 89, i32 26 }
@___asan_gen_.421 = private unnamed_addr constant [16 x i8] c"dev_attr_hw_rev\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [18 x i8] c"dev_attr_hca_type\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [18 x i8] c"dev_attr_board_id\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 80, i32 8 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 78, i32 25 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 73, i32 8 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 71, i32 25 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 71, i32 44 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 87, i32 8 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 104, i32 40 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 592, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 606, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 654, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 631, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 642, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 743, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 679, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 705, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 521, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 508, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1062, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.524 = private constant [50 x i8] c"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1127, i32 13 }
@llvm.compiler.used = appending global [167 x ptr] [ptr @__UNIQUE_ID_author525, ptr @__UNIQUE_ID_description526, ptr @__UNIQUE_ID_file527, ptr @__UNIQUE_ID_license528, ptr @__exitcall_pvrdma_cleanup, ptr @__initcall__kmod_vmw_pvrdma__524_1145_pvrdma_init6, ptr @pvrdma_add_gid_at_index._entry, ptr @pvrdma_add_gid_at_index._entry.110, ptr @pvrdma_add_gid_at_index._entry_ptr, ptr @pvrdma_add_gid_at_index._entry_ptr.112, ptr @pvrdma_alloc_intrs._entry, ptr @pvrdma_alloc_intrs._entry.77, ptr @pvrdma_alloc_intrs._entry_ptr, ptr @pvrdma_alloc_intrs._entry_ptr.79, ptr @pvrdma_cleanup, ptr @pvrdma_del_gid_at_index._entry, ptr @pvrdma_del_gid_at_index._entry.116, ptr @pvrdma_del_gid_at_index._entry_ptr, ptr @pvrdma_del_gid_at_index._entry_ptr.118, ptr @pvrdma_dev_event._entry, ptr @pvrdma_dev_event._entry_ptr, ptr @pvrdma_netdevice_event_handle._entry, ptr @pvrdma_netdevice_event_handle._entry_ptr, ptr @pvrdma_pci_probe._entry, ptr @pvrdma_pci_probe._entry.14, ptr @pvrdma_pci_probe._entry.17, ptr @pvrdma_pci_probe._entry.20, ptr @pvrdma_pci_probe._entry.23, ptr @pvrdma_pci_probe._entry.26, ptr @pvrdma_pci_probe._entry.29, ptr @pvrdma_pci_probe._entry.33, ptr @pvrdma_pci_probe._entry.36, ptr @pvrdma_pci_probe._entry.39, ptr @pvrdma_pci_probe._entry.42, ptr @pvrdma_pci_probe._entry.45, ptr @pvrdma_pci_probe._entry.48, ptr @pvrdma_pci_probe._entry.51, ptr @pvrdma_pci_probe._entry.54, ptr @pvrdma_pci_probe._entry.58, ptr @pvrdma_pci_probe._entry.61, ptr @pvrdma_pci_probe._entry.64, ptr @pvrdma_pci_probe._entry.67, ptr @pvrdma_pci_probe._entry.7, ptr @pvrdma_pci_probe._entry_ptr, ptr @pvrdma_pci_probe._entry_ptr.16, ptr @pvrdma_pci_probe._entry_ptr.19, ptr @pvrdma_pci_probe._entry_ptr.22, ptr @pvrdma_pci_probe._entry_ptr.25, ptr @pvrdma_pci_probe._entry_ptr.28, ptr @pvrdma_pci_probe._entry_ptr.32, ptr @pvrdma_pci_probe._entry_ptr.35, ptr @pvrdma_pci_probe._entry_ptr.38, ptr @pvrdma_pci_probe._entry_ptr.41, ptr @pvrdma_pci_probe._entry_ptr.44, ptr @pvrdma_pci_probe._entry_ptr.47, ptr @pvrdma_pci_probe._entry_ptr.50, ptr @pvrdma_pci_probe._entry_ptr.53, ptr @pvrdma_pci_probe._entry_ptr.56, ptr @pvrdma_pci_probe._entry_ptr.60, ptr @pvrdma_pci_probe._entry_ptr.63, ptr @pvrdma_pci_probe._entry_ptr.66, ptr @pvrdma_pci_probe._entry_ptr.69, ptr @pvrdma_pci_probe._entry_ptr.9, ptr @pvrdma_pci_remove._entry, ptr @pvrdma_pci_remove._entry_ptr, ptr @pvrdma_driver, ptr @event_wq, ptr @.str, ptr @pvrdma_pci_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pvrdma_device_list_lock, ptr @pvrdma_device_list, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @pvrdma_init_device.__key, ptr @.str.72, ptr @sema_init.__key, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @pvrdma_dev_ops, ptr @pvrdma_register_device.__key, ptr @.str.91, ptr @pvrdma_register_device.__key.92, ptr @.str.93, ptr @pvrdma_register_device.__key.94, ptr @.str.95, ptr @pvrdma_register_device.__key.96, ptr @.str.97, ptr @pvrdma_dev_srq_ops, ptr @pvrdma_register_device.__key.98, ptr @.str.99, ptr @.str.100, ptr @pvrdma_attr_group, ptr @pvrdma_class_attributes, ptr @dev_attr_hw_rev, ptr @dev_attr_hca_type, ptr @dev_attr_board_id, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @pvrdma_netdevice_event.__key, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129], section "llvm.metadata"
@0 = internal global [131 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_device_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_device_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_probe._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_init_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_alloc_intrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_alloc_intrs._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_dev_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_dev_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_register_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_register_device.__key.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_register_device.__key.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_register_device.__key.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_dev_srq_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_register_device.__key.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_class_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hw_rev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hca_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_board_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_add_gid_at_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_add_gid_at_index._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_del_gid_at_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_del_gid_at_index._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_netdevice_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_netdevice_event_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvrdma_pci_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pvrdma_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @pvrdma_driver) #13
  %0 = load ptr, ptr @event_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pvrdma_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.129, i32 noundef 655370, i32 noundef 1) #13
  store ptr %call, ptr @event_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @pvrdma_driver, ptr noundef null, ptr noundef nonnull @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load ptr, ptr @event_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvrdma_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %slot_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slot_dma) #13
  %0 = ptrtoint ptr %slot_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %slot_dma, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_pci_probe.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_pci_probe, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !271

if.then:                                          ; preds = %entry
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %1 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.pci_name.exit_crit_edge

if.then.pci_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev3, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %4, %if.end.i.i ], [ %2, %if.then.pci_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_pci_probe.__UNIQUE_ID_ddebug516, ptr noundef %dev3, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i.i) #13
  br label %do.end

do.end:                                           ; preds = %pci_name.exit, %entry
  %call5 = tail call ptr @_ib_alloc_device(i32 noundef 3480) #13
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %do.end11, label %if.end13

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.4) #16
  br label %cleanup

if.end13:                                         ; preds = %do.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @pvrdma_device_list_lock, i32 noundef 0) #13
  %device_link = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 8
  %5 = load ptr, ptr @pvrdma_device_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_link, ptr noundef nonnull @pvrdma_device_list, ptr noundef %5) #13
  br i1 %call.i.i, label %if.end.i.i728, label %if.end13.list_add.exit_crit_edge

if.end13.list_add.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i728:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %device_link, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %device_link to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %device_link, align 4
  %prev3.i.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pvrdma_device_list, ptr %prev3.i.i, align 4
  store volatile ptr %device_link, ptr @pvrdma_device_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i728, %if.end13.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pvrdma_device_list_lock) #13
  %cmd_lock.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %cmd_lock.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @pvrdma_init_device.__key, i16 noundef signext 3) #13
  %cmd_sema.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 11
  %wait_list1.i.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 11, i32 2
  %9 = ptrtoint ptr %cmd_sema.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cmd_sema.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 11, i32 0, i32 1
  %10 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 11, i32 0, i32 2
  %11 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 11, i32 0, i32 3
  %12 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 11, i32 0, i32 4
  %13 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 11, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.73, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 11, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 11, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 11, i32 0, i32 4, i32 5
  %17 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 11, i32 1
  %18 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i.i, align 4
  %19 = ptrtoint ptr %wait_list1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %wait_list1.i.i, ptr %wait_list1.i.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 11, i32 2, i32 1
  %20 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %wait_list1.i.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull @.str.74, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %num_qps.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 32
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_qps.i, i32 noundef 4) #13
  %21 = ptrtoint ptr %num_qps.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %num_qps.i, align 4
  %num_srqs.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 34
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_srqs.i, i32 noundef 4) #13
  %22 = ptrtoint ptr %num_srqs.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %num_srqs.i, align 4
  %num_cqs.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 33
  %call.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_cqs.i, i32 noundef 4) #13
  %23 = ptrtoint ptr %num_cqs.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %num_cqs.i, align 4
  %num_pds.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 35
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_pds.i, i32 noundef 4) #13
  %24 = ptrtoint ptr %num_pds.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %num_pds.i, align 4
  %num_ahs.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 36
  %call.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_ahs.i, i32 noundef 4) #13
  %25 = ptrtoint ptr %num_ahs.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %num_ahs.i, align 4
  %pdev18 = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 1
  %26 = ptrtoint ptr %pdev18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %pdev, ptr %pdev18, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5, ptr %driver_data.i.i, align 4
  %call19 = tail call i32 @pci_enable_device(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body27, label %do.end24

do.end24:                                         ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.8) #16
  br label %err_free_device

do.body27:                                        ; preds = %list_add.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_pci_probe.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_pci_probe, %if.then39)) #13
          to label %do.body44 [label %if.then39], !srcloc !271

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #15
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_pci_probe.__UNIQUE_ID_ddebug517, ptr noundef %dev40, ptr noundef nonnull @.str.10, i32 noundef %29) #13
  br label %do.body44

do.body44:                                        ; preds = %if.then39, %do.body27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_pci_probe.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_pci_probe, %if.then56)) #13
          to label %do.body69 [label %if.then56], !srcloc !271

if.then56:                                        ; preds = %do.body44
  %dev57 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %30 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp = icmp eq i32 %31, 0
  br i1 %cmp, label %if.then56.cond.end_crit_edge, label %cond.false

if.then56.cond.end_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  %resource58 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %32 = ptrtoint ptr %resource58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %resource58, align 8
  %sub = add i32 %31, 1
  %add = sub i32 %sub, %33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then56.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.then56.cond.end_crit_edge ]
  %conv = zext i32 %cond to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_pci_probe.__UNIQUE_ID_ddebug518, ptr noundef %dev57, ptr noundef nonnull @.str.11, i64 noundef %conv) #13
  br label %do.body69

do.body69:                                        ; preds = %cond.end, %do.body44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_pci_probe.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_pci_probe, %if.then81)) #13
          to label %do.body90 [label %if.then81], !srcloc !271

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #15
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %resource83 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %34 = ptrtoint ptr %resource83 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %resource83, align 8
  %conv86 = zext i32 %35 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_pci_probe.__UNIQUE_ID_ddebug519, ptr noundef %dev82, ptr noundef nonnull @.str.12, i64 noundef %conv86) #13
  br label %do.body90

do.body90:                                        ; preds = %if.then81, %do.body69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_pci_probe.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_pci_probe, %if.then102)) #13
          to label %do.body110 [label %if.then102], !srcloc !271

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #15
  %dev103 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %flags106 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 3
  %36 = ptrtoint ptr %flags106 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags106, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_pci_probe.__UNIQUE_ID_ddebug520, ptr noundef %dev103, ptr noundef nonnull @.str.13, i32 noundef %37) #13
  br label %do.body110

do.body110:                                       ; preds = %if.then102, %do.body90
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_pci_probe.__UNIQUE_ID_ddebug521, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_pci_probe, %if.then122)) #13
          to label %do.body145 [label %if.then122], !srcloc !271

if.then122:                                       ; preds = %do.body110
  %dev123 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %end126 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %38 = ptrtoint ptr %end126 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %end126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp127 = icmp eq i32 %39, 0
  br i1 %cmp127, label %if.then122.cond.end139_crit_edge, label %cond.false130

if.then122.cond.end139_crit_edge:                 ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end139

cond.false130:                                    ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx125 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %40 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx125, align 8
  %sub137 = add i32 %39, 1
  %add138 = sub i32 %sub137, %41
  br label %cond.end139

cond.end139:                                      ; preds = %cond.false130, %if.then122.cond.end139_crit_edge
  %cond140 = phi i32 [ %add138, %cond.false130 ], [ 0, %if.then122.cond.end139_crit_edge ]
  %conv141 = zext i32 %cond140 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_pci_probe.__UNIQUE_ID_ddebug521, ptr noundef %dev123, ptr noundef nonnull @.str.11, i64 noundef %conv141) #13
  br label %do.body145

do.body145:                                       ; preds = %cond.end139, %do.body110
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_pci_probe.__UNIQUE_ID_ddebug522, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_pci_probe, %if.then157)) #13
          to label %do.end165 [label %if.then157], !srcloc !271

if.then157:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #15
  %dev158 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %arrayidx160 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %42 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx160, align 8
  %conv162 = zext i32 %43 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_pci_probe.__UNIQUE_ID_ddebug522, ptr noundef %dev158, ptr noundef nonnull @.str.12, i64 noundef %conv162) #13
  br label %do.end165

do.end165:                                        ; preds = %if.then157, %do.body145
  %flags168 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %44 = ptrtoint ptr %flags168 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags168, align 4
  %and = and i32 %45, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool169.not = icmp eq i32 %and, 0
  br i1 %tobool169.not, label %do.end165.do.end178_crit_edge, label %lor.lhs.false

do.end165.do.end178_crit_edge:                    ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end178

lor.lhs.false:                                    ; preds = %do.end165
  %flags172 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 3
  %46 = ptrtoint ptr %flags172 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags172, align 4
  %and173 = and i32 %47, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %lor.lhs.false.do.end178_crit_edge, label %if.end180

lor.lhs.false.do.end178_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end178

do.end178:                                        ; preds = %lor.lhs.false.do.end178_crit_edge, %do.end165.do.end178_crit_edge
  %dev179 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev179, ptr noundef nonnull @.str.15) #16
  br label %err_disable_pdev

if.end180:                                        ; preds = %lor.lhs.false
  %call181 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  %dev189 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %tobool182.not, label %if.end188, label %do.end186

do.end186:                                        ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev189, ptr noundef nonnull @.str.18) #16
  br label %err_disable_pdev

if.end188:                                        ; preds = %if.end180
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev189, i64 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %dma_set_mask_and_coherent.exit.thread, label %if.then193

dma_set_mask_and_coherent.exit.thread:            ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev189, i64 noundef -1) #13
  br label %if.end204

if.then193:                                       ; preds = %if.end188
  %call195 = tail call i32 @dma_set_mask(ptr noundef %dev189, i64 noundef 4294967295) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %cmp196.not = icmp eq i32 %call195, 0
  br i1 %cmp196.not, label %if.then193.if.end204_crit_edge, label %do.end201

if.then193.if.end204_crit_edge:                   ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end204

do.end201:                                        ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev189, ptr noundef nonnull @.str.21) #16
  br label %err_free_resource

if.end204:                                        ; preds = %if.then193.if.end204_crit_edge, %dma_set_mask_and_coherent.exit.thread
  %dma_parms.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 22
  %48 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %if.end204.dma_set_max_seg_size.exit_crit_edge, label %if.then.i729

if.end204.dma_set_max_seg_size.exit_crit_edge:    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_set_max_seg_size.exit

if.then.i729:                                     ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %49, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i729, %if.end204.dma_set_max_seg_size.exit_crit_edge
  tail call void @pci_set_master(ptr noundef %pdev) #13
  %51 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev18, align 8
  %arrayidx209 = getelementptr %struct.pci_dev, ptr %52, i32 0, i32 47, i32 1
  %53 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx209, align 8
  %end214 = getelementptr %struct.pci_dev, ptr %52, i32 0, i32 47, i32 1, i32 1
  %55 = ptrtoint ptr %end214 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %end214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp215 = icmp eq i32 %56, 0
  %sub227 = sub i32 1, %54
  %add228 = add i32 %sub227, %56
  %cond230 = select i1 %cmp215, i32 0, i32 %add228
  %call231 = tail call ptr @ioremap(i32 noundef %54, i32 noundef %cond230) #13
  %regs = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 2
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call231, ptr %regs, align 4
  %tobool233.not = icmp eq ptr %call231, null
  br i1 %tobool233.not, label %do.end237, label %if.end239

do.end237:                                        ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev189, ptr noundef nonnull @.str.24) #16
  br label %err_free_resource

if.end239:                                        ; preds = %dma_set_max_seg_size.exit
  %driver_uar = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 26
  %index = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 26, i32 2
  %58 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %index, align 4
  %59 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev18, align 8
  %arrayidx242 = getelementptr %struct.pci_dev, ptr %60, i32 0, i32 47, i32 2
  %61 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx242, align 8
  %shr = lshr i32 %62, 12
  %63 = ptrtoint ptr %driver_uar to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %shr, ptr %driver_uar, align 4
  %shl = and i32 %62, -4096
  %call247 = tail call ptr @ioremap(i32 noundef %shl, i32 noundef 4096) #13
  %map = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 26, i32 1
  %64 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call247, ptr %map, align 4
  %tobool251.not = icmp eq ptr %call247, null
  br i1 %tobool251.not, label %do.end255, label %if.end257

do.end255:                                        ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev189, ptr noundef nonnull @.str.27) #16
  br label %err_unmap_regs

if.end257:                                        ; preds = %if.end239
  %65 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs, align 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #13, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !273
  %dsr_version = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 9
  %68 = ptrtoint ptr %dsr_version to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %dsr_version, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev189, ptr noundef nonnull @.str.30, i32 noundef %67, i32 noundef 20) #16
  %dsrbase = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 4
  %call.i730 = tail call ptr @dma_alloc_attrs(ptr noundef %dev189, i32 noundef 280, ptr noundef %dsrbase, i32 noundef 3264, i32 noundef 0) #13
  %dsr = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 3
  %69 = ptrtoint ptr %dsr to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i730, ptr %dsr, align 8
  %tobool267.not = icmp eq ptr %call.i730, null
  br i1 %tobool267.not, label %do.end271, label %if.end273

do.end271:                                        ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev189, ptr noundef nonnull @.str.34) #16
  br label %err_uar_unmap

if.end273:                                        ; preds = %if.end257
  %70 = ptrtoint ptr %call.i730 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 20, ptr %call.i730, align 1
  %71 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dsr, align 8
  %gos_info = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %gos_info to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %bf.load = load i32, ptr %gos_info, align 1
  %bf.clear = and i32 %bf.load, 1073741823
  %bf.set = or i32 %bf.clear, 1073741824
  store i32 %bf.set, ptr %gos_info, align 1
  %74 = load ptr, ptr %dsr, align 8
  %gos_info277 = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %gos_info277 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %bf.load278 = load i32, ptr %gos_info277, align 1
  %bf.clear279 = and i32 %bf.load278, -1006632961
  %bf.set280 = or i32 %bf.clear279, 67108864
  store i32 %bf.set280, ptr %gos_info277, align 1
  %76 = load ptr, ptr %dsr, align 8
  %gos_info282 = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %gos_info282 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %bf.load283 = load i32, ptr %gos_info282, align 1
  %bf.clear284 = and i32 %bf.load283, -67107841
  %bf.set285 = or i32 %bf.clear284, 1024
  store i32 %bf.set285, ptr %gos_info282, align 1
  %78 = ptrtoint ptr %dsr_version to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dsr_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %79)
  %cmp287 = icmp ult i32 %79, 19
  %80 = ptrtoint ptr %driver_uar to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %driver_uar, align 4
  br i1 %cmp287, label %if.then289, label %if.else

if.then289:                                       ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dsr, align 8
  %84 = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %83, i32 0, i32 7
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %81, ptr %84, align 1
  br label %if.end297

if.else:                                          ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #15
  %conv295 = zext i32 %81 to i64
  %86 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dsr, align 8
  %88 = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %87, i32 0, i32 7
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 8)
  store i64 %conv295, ptr %88, align 1
  br label %if.end297

if.end297:                                        ; preds = %if.else, %if.then289
  %call.i731 = call ptr @dma_alloc_attrs(ptr noundef %dev189, i32 noundef 4096, ptr noundef nonnull %slot_dma, i32 noundef 3264, i32 noundef 0) #13
  %cmd_slot = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 5
  %90 = ptrtoint ptr %cmd_slot to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call.i731, ptr %cmd_slot, align 8
  %tobool301.not = icmp eq ptr %call.i731, null
  br i1 %tobool301.not, label %if.end297.err_free_dsr_crit_edge, label %if.end303

if.end297.err_free_dsr_crit_edge:                 ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_dsr

if.end303:                                        ; preds = %if.end297
  %91 = ptrtoint ptr %slot_dma to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %slot_dma, align 4
  %conv304 = zext i32 %92 to i64
  %93 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dsr, align 8
  %cmd_slot_dma = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %cmd_slot_dma to i32
  call void @__asan_storeN_noabort(i32 %95, i32 8)
  store i64 %conv304, ptr %cmd_slot_dma, align 1
  %call.i732 = call ptr @dma_alloc_attrs(ptr noundef %dev189, i32 noundef 4096, ptr noundef nonnull %slot_dma, i32 noundef 3264, i32 noundef 0) #13
  %resp_slot = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 6
  %96 = ptrtoint ptr %resp_slot to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call.i732, ptr %resp_slot, align 4
  %tobool309.not = icmp eq ptr %call.i732, null
  br i1 %tobool309.not, label %if.end303.err_free_slots_crit_edge, label %if.end311

if.end303.err_free_slots_crit_edge:               ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_slots

if.end311:                                        ; preds = %if.end303
  %97 = ptrtoint ptr %slot_dma to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %slot_dma, align 4
  %conv312 = zext i32 %98 to i64
  %99 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dsr, align 8
  %resp_slot_dma = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %resp_slot_dma to i32
  call void @__asan_storeN_noabort(i32 %101, i32 8)
  store i64 %conv312, ptr %resp_slot_dma, align 1
  %102 = load ptr, ptr %dsr, align 8
  %async_ring_pages = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %async_ring_pages to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 4, ptr %async_ring_pages, align 1
  %async_pdir = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 16
  %104 = load ptr, ptr %dsr, align 8
  %async_ring_pages316 = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %async_ring_pages316 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %async_ring_pages316, align 1
  %conv318 = zext i32 %106 to i64
  %call319 = call i32 @pvrdma_page_dir_init(ptr noundef nonnull %call5, ptr noundef %async_pdir, i64 noundef %conv318, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319)
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %if.end322, label %if.end311.err_free_slots_crit_edge

if.end311.err_free_slots_crit_edge:               ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_slots

if.end322:                                        ; preds = %if.end311
  %pages = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 16, i32 5
  %107 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pages, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %async_ring_state = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 15
  %111 = ptrtoint ptr %async_ring_state to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %async_ring_state, align 4
  %112 = ptrtoint ptr %async_pdir to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %async_pdir, align 8
  %conv326 = zext i32 %113 to i64
  %114 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dsr, align 8
  %pdir_dma = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %115, i32 0, i32 5, i32 2
  %116 = ptrtoint ptr %pdir_dma to i32
  call void @__asan_storeN_noabort(i32 %116, i32 8)
  store i64 %conv326, ptr %pdir_dma, align 1
  %117 = load ptr, ptr %dsr, align 8
  %cq_ring_pages = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %117, i32 0, i32 6
  %118 = ptrtoint ptr %cq_ring_pages to i32
  call void @__asan_storeN_noabort(i32 %118, i32 4)
  store i32 4, ptr %cq_ring_pages, align 1
  %cq_pdir = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 18
  %119 = load ptr, ptr %dsr, align 8
  %cq_ring_pages332 = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %119, i32 0, i32 6
  %120 = ptrtoint ptr %cq_ring_pages332 to i32
  call void @__asan_loadN_noabort(i32 %120, i32 4)
  %121 = load i32, ptr %cq_ring_pages332, align 1
  %conv334 = zext i32 %121 to i64
  %call335 = call i32 @pvrdma_page_dir_init(ptr noundef nonnull %call5, ptr noundef %cq_pdir, i64 noundef %conv334, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call335)
  %tobool336.not = icmp eq i32 %call335, 0
  br i1 %tobool336.not, label %if.end338, label %if.end322.err_free_async_ring_crit_edge

if.end322.err_free_async_ring_crit_edge:          ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_async_ring

if.end338:                                        ; preds = %if.end322
  %pages340 = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 18, i32 5
  %122 = ptrtoint ptr %pages340 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pages340, align 8
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %cq_ring_state = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 17
  %126 = ptrtoint ptr %cq_ring_state to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %cq_ring_state, align 8
  %127 = ptrtoint ptr %cq_pdir to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cq_pdir, align 8
  %conv344 = zext i32 %128 to i64
  %129 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dsr, align 8
  %pdir_dma347 = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %130, i32 0, i32 6, i32 2
  %131 = ptrtoint ptr %pdir_dma347 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 8)
  store i64 %conv344, ptr %pdir_dma347, align 1
  %132 = ptrtoint ptr %dsrbase to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %dsrbase, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !274
  call void @arm_heavy_mb() #13
  %134 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %135, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %133) #13, !srcloc !275
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !274
  call void @arm_heavy_mb() #13
  %136 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs, align 4
  %add.ptr.i735 = getelementptr i8, ptr %137, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i735, i32 0) #13, !srcloc !275
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !276
  call void @arm_heavy_mb() #13
  %138 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dsr, align 8
  %mode = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %139, i32 0, i32 8, i32 46
  %140 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %cmp358 = icmp eq i8 %141, 0
  br i1 %cmp358, label %land.lhs.true, label %if.end338.do.end390_crit_edge

if.end338.do.end390_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end390

land.lhs.true:                                    ; preds = %if.end338
  %142 = ptrtoint ptr %dsr_version to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dsr_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %143)
  %cmp361 = icmp eq i32 %143, 17
  br i1 %cmp361, label %land.lhs.true363, label %lor.lhs.false369

land.lhs.true363:                                 ; preds = %land.lhs.true
  %gid_types = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %139, i32 0, i32 8, i32 49
  %144 = ptrtoint ptr %gid_types to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %gid_types, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %145)
  %cmp367 = icmp eq i8 %145, 1
  br i1 %cmp367, label %land.lhs.true363.if.end392_crit_edge, label %land.lhs.true363.do.end390_crit_edge

land.lhs.true363.do.end390_crit_edge:             ; preds = %land.lhs.true363
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end390

land.lhs.true363.if.end392_crit_edge:             ; preds = %land.lhs.true363
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end392

lor.lhs.false369:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %143)
  %cmp371 = icmp ugt i32 %143, 17
  br i1 %cmp371, label %land.lhs.true373, label %lor.lhs.false369.do.end390_crit_edge

lor.lhs.false369.do.end390_crit_edge:             ; preds = %lor.lhs.false369
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end390

land.lhs.true373:                                 ; preds = %lor.lhs.false369
  %gid_types376 = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %139, i32 0, i32 8, i32 49
  %146 = ptrtoint ptr %gid_types376 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %gid_types376, align 1
  %.off = add i8 %147, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %land.lhs.true373.if.end392_crit_edge, label %land.lhs.true373.do.end390_crit_edge

land.lhs.true373.do.end390_crit_edge:             ; preds = %land.lhs.true373
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end390

land.lhs.true373.if.end392_crit_edge:             ; preds = %land.lhs.true373
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end392

do.end390:                                        ; preds = %land.lhs.true373.do.end390_crit_edge, %lor.lhs.false369.do.end390_crit_edge, %land.lhs.true363.do.end390_crit_edge, %if.end338.do.end390_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev189, ptr noundef nonnull @.str.37) #16
  br label %err_free_cq_ring

if.end392:                                        ; preds = %land.lhs.true373.if.end392_crit_edge, %land.lhs.true363.if.end392_crit_edge
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %148 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %bus, align 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %150 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %devfn, align 4
  %and394 = and i32 %151, 248
  %call397 = call ptr @pci_get_slot(ptr noundef %149, i32 noundef %and394) #13
  %tobool398.not = icmp eq ptr %call397, null
  br i1 %tobool398.not, label %do.end402, label %if.end404

do.end402:                                        ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev189, ptr noundef nonnull @.str.40) #16
  br label %err_free_cq_ring

if.end404:                                        ; preds = %if.end392
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %call397, i32 0, i32 7
  %152 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5549, i16 %153)
  %cmp406.not = icmp eq i16 %153, 5549
  br i1 %cmp406.not, label %lor.lhs.false408, label %if.end404.do.end415_crit_edge

if.end404.do.end415_crit_edge:                    ; preds = %if.end404
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end415

lor.lhs.false408:                                 ; preds = %if.end404
  %device = getelementptr inbounds %struct.pci_dev, ptr %call397, i32 0, i32 8
  %154 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1968, i16 %155)
  %cmp410.not = icmp eq i16 %155, 1968
  br i1 %cmp410.not, label %if.end417, label %lor.lhs.false408.do.end415_crit_edge

lor.lhs.false408.do.end415_crit_edge:             ; preds = %lor.lhs.false408
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end415

do.end415:                                        ; preds = %lor.lhs.false408.do.end415_crit_edge, %if.end404.do.end415_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev189, ptr noundef nonnull @.str.43) #16
  call void @pci_dev_put(ptr noundef nonnull %call397) #13
  br label %err_free_cq_ring

if.end417:                                        ; preds = %lor.lhs.false408
  %driver_data.i.i736 = getelementptr inbounds %struct.pci_dev, ptr %call397, i32 0, i32 44, i32 8
  %156 = ptrtoint ptr %driver_data.i.i736 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %driver_data.i.i736, align 4
  %netdev = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 37
  %158 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %157, ptr %netdev, align 4
  call void @pci_dev_put(ptr noundef nonnull %call397) #13
  %159 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %netdev, align 4
  %tobool420.not = icmp eq ptr %160, null
  br i1 %tobool420.not, label %do.end424, label %if.end426

do.end424:                                        ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev189, ptr noundef nonnull @.str.46) #16
  br label %err_free_cq_ring

if.end426:                                        ; preds = %if.end417
  call fastcc void @dev_hold(ptr noundef nonnull %160)
  %161 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev189, ptr noundef nonnull @.str.49, ptr noundef %162) #16
  %call433 = call fastcc i32 @pvrdma_alloc_intrs(ptr noundef nonnull %call5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call433)
  %tobool434.not = icmp eq i32 %call433, 0
  br i1 %tobool434.not, label %if.end440, label %do.end438

do.end438:                                        ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev189, ptr noundef nonnull @.str.52) #16
  br label %err_free_cq_ring

if.end440:                                        ; preds = %if.end426
  %call441 = call i32 @pvrdma_uar_table_init(ptr noundef nonnull %call5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call441)
  %tobool442.not = icmp eq i32 %call441, 0
  br i1 %tobool442.not, label %if.end448, label %do.end446

do.end446:                                        ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev189, ptr noundef nonnull @.str.55) #16
  br label %err_free_intrs

if.end448:                                        ; preds = %if.end440
  %163 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dsr, align 8
  %gid_tbl_len = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %164, i32 0, i32 8, i32 42
  %165 = ptrtoint ptr %gid_tbl_len to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %166 = load i32, ptr %gid_tbl_len, align 1
  %167 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %166, i32 16) #13
  %168 = extractvalue { i32, i1 } %167, 1
  br i1 %168, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !277

kcalloc.exit.thread:                              ; preds = %if.end448
  call void @__sanitizer_cov_trace_pc() #15
  %sgid_tbl755 = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 14
  %169 = ptrtoint ptr %sgid_tbl755 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %sgid_tbl755, align 8
  br label %err_free_uar_table

if.end7.i.i:                                      ; preds = %if.end448
  %170 = extractvalue { i32, i1 } %167, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %170, i32 noundef 3520) #17
  %sgid_tbl = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 14
  %171 = ptrtoint ptr %sgid_tbl to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call8.i.i, ptr %sgid_tbl, align 8
  %tobool453.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool453.not, label %if.end7.i.i.err_free_uar_table_crit_edge, label %do.body456

if.end7.i.i.err_free_uar_table_crit_edge:         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_uar_table

do.body456:                                       ; preds = %if.end7.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_pci_probe.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_pci_probe, %if.then468)) #13
          to label %do.end475 [label %if.then468], !srcloc !271

if.then468:                                       ; preds = %do.body456
  call void @__sanitizer_cov_trace_pc() #15
  %172 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dsr, align 8
  %gid_tbl_len472 = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %173, i32 0, i32 8, i32 42
  %174 = ptrtoint ptr %gid_tbl_len472 to i32
  call void @__asan_loadN_noabort(i32 %174, i32 4)
  %175 = load i32, ptr %gid_tbl_len472, align 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_pci_probe.__UNIQUE_ID_ddebug523, ptr noundef %dev189, ptr noundef nonnull @.str.57, i32 noundef %175) #13
  br label %do.end475

do.end475:                                        ; preds = %if.then468, %do.body456
  call fastcc void @pvrdma_enable_intrs(ptr noundef nonnull %call5)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !274
  call void @arm_heavy_mb() #13
  %176 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regs, align 4
  %add.ptr.i740 = getelementptr i8, ptr %177, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i740, i32 0) #13, !srcloc !275
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !278
  call void @arm_heavy_mb() #13
  %178 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regs, align 4
  %add.ptr.i742 = getelementptr i8, ptr %179, i32 20
  %180 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i742) #13, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp480.not = icmp eq i32 %180, 0
  br i1 %cmp480.not, label %if.end487, label %do.end485

do.end485:                                        ; preds = %do.end475
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev189, ptr noundef nonnull @.str.59) #16
  br label %err_disable_intr

if.end487:                                        ; preds = %do.end475
  %call488 = call fastcc i32 @pvrdma_register_device(ptr noundef nonnull %call5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call488)
  %tobool489.not = icmp eq i32 %call488, 0
  br i1 %tobool489.not, label %if.end495, label %do.end493

do.end493:                                        ; preds = %if.end487
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev189, ptr noundef nonnull @.str.62) #16
  br label %err_disable_intr

if.end495:                                        ; preds = %if.end487
  %nb_netdev = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 38
  %181 = ptrtoint ptr %nb_netdev to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @pvrdma_netdevice_event, ptr %nb_netdev, align 8
  %call497 = call i32 @register_netdevice_notifier(ptr noundef %nb_netdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call497)
  %tobool498.not = icmp eq i32 %call497, 0
  br i1 %tobool498.not, label %do.end507, label %do.end502

do.end502:                                        ; preds = %if.end495
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev189, ptr noundef nonnull @.str.65) #16
  call void @ib_unregister_device(ptr noundef nonnull %call5) #13
  br label %err_disable_intr

do.end507:                                        ; preds = %if.end495
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev189, ptr noundef nonnull @.str.68) #16
  br label %cleanup

err_disable_intr:                                 ; preds = %do.end502, %do.end493, %do.end485
  %ret.0 = phi i32 [ -14, %do.end485 ], [ %call488, %do.end493 ], [ %call497, %do.end502 ]
  call fastcc void @pvrdma_disable_intrs(ptr noundef nonnull %call5)
  %182 = ptrtoint ptr %sgid_tbl to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %sgid_tbl, align 8
  call void @kfree(ptr noundef %183) #13
  br label %err_free_uar_table

err_free_uar_table:                               ; preds = %err_disable_intr, %if.end7.i.i.err_free_uar_table_crit_edge, %kcalloc.exit.thread
  %ret.1 = phi i32 [ %ret.0, %err_disable_intr ], [ -12, %if.end7.i.i.err_free_uar_table_crit_edge ], [ -12, %kcalloc.exit.thread ]
  call void @pvrdma_uar_table_cleanup(ptr noundef nonnull %call5) #13
  br label %err_free_intrs

err_free_intrs:                                   ; preds = %err_free_uar_table, %do.end446
  %ret.2 = phi i32 [ -12, %do.end446 ], [ %ret.1, %err_free_uar_table ]
  call fastcc void @pvrdma_free_irq(ptr noundef nonnull %call5)
  call void @pci_free_irq_vectors(ptr noundef %pdev) #13
  br label %err_free_cq_ring

err_free_cq_ring:                                 ; preds = %err_free_intrs, %do.end438, %do.end424, %do.end415, %do.end402, %do.end390
  %ret.3 = phi i32 [ -19, %do.end415 ], [ -12, %do.end438 ], [ %ret.2, %err_free_intrs ], [ -19, %do.end424 ], [ -19, %do.end402 ], [ -14, %do.end390 ]
  %netdev510 = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 37
  %184 = ptrtoint ptr %netdev510 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %netdev510, align 4
  %tobool511.not = icmp eq ptr %185, null
  br i1 %tobool511.not, label %err_free_cq_ring.if.end515_crit_edge, label %if.then512

err_free_cq_ring.if.end515_crit_edge:             ; preds = %err_free_cq_ring
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end515

if.then512:                                       ; preds = %err_free_cq_ring
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @dev_put(ptr noundef nonnull %185)
  %186 = ptrtoint ptr %netdev510 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr null, ptr %netdev510, align 4
  br label %if.end515

if.end515:                                        ; preds = %if.then512, %err_free_cq_ring.if.end515_crit_edge
  call void @pvrdma_page_dir_cleanup(ptr noundef nonnull %call5, ptr noundef %cq_pdir) #13
  br label %err_free_async_ring

err_free_async_ring:                              ; preds = %if.end515, %if.end322.err_free_async_ring_crit_edge
  %ret.4 = phi i32 [ %call335, %if.end322.err_free_async_ring_crit_edge ], [ %ret.3, %if.end515 ]
  call void @pvrdma_page_dir_cleanup(ptr noundef nonnull %call5, ptr noundef %async_pdir) #13
  br label %err_free_slots

err_free_slots:                                   ; preds = %err_free_async_ring, %if.end311.err_free_slots_crit_edge, %if.end303.err_free_slots_crit_edge
  %ret.5 = phi i32 [ %call319, %if.end311.err_free_slots_crit_edge ], [ %ret.4, %err_free_async_ring ], [ -12, %if.end303.err_free_slots_crit_edge ]
  call fastcc void @pvrdma_free_slots(ptr noundef nonnull %call5)
  br label %err_free_dsr

err_free_dsr:                                     ; preds = %err_free_slots, %if.end297.err_free_dsr_crit_edge
  %ret.6 = phi i32 [ %ret.5, %err_free_slots ], [ -12, %if.end297.err_free_dsr_crit_edge ]
  %187 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dsr, align 8
  %189 = ptrtoint ptr %dsrbase to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %dsrbase, align 4
  call void @dma_free_attrs(ptr noundef %dev189, i32 noundef 280, ptr noundef %188, i32 noundef %190, i32 noundef 0) #13
  br label %err_uar_unmap

err_uar_unmap:                                    ; preds = %err_free_dsr, %do.end271
  %ret.7 = phi i32 [ %ret.6, %err_free_dsr ], [ -12, %do.end271 ]
  %191 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %map, align 4
  call void @iounmap(ptr noundef %192) #13
  br label %err_unmap_regs

err_unmap_regs:                                   ; preds = %err_uar_unmap, %do.end255
  %ret.8 = phi i32 [ %ret.7, %err_uar_unmap ], [ -12, %do.end255 ]
  %193 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %regs, align 4
  call void @iounmap(ptr noundef %194) #13
  br label %err_free_resource

err_free_resource:                                ; preds = %err_unmap_regs, %do.end237, %do.end201
  %ret.9 = phi i32 [ %call195, %do.end201 ], [ %ret.8, %err_unmap_regs ], [ -12, %do.end237 ]
  call void @pci_release_regions(ptr noundef %pdev) #13
  br label %err_disable_pdev

err_disable_pdev:                                 ; preds = %err_free_resource, %do.end186, %do.end178
  %ret.10 = phi i32 [ %call181, %do.end186 ], [ %ret.9, %err_free_resource ], [ -12, %do.end178 ]
  call void @pci_disable_device(ptr noundef %pdev) #13
  %195 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %err_free_device

err_free_device:                                  ; preds = %err_disable_pdev, %do.end24
  %ret.11 = phi i32 [ %call19, %do.end24 ], [ %ret.10, %err_disable_pdev ]
  call void @mutex_lock_nested(ptr noundef nonnull @pvrdma_device_list_lock, i32 noundef 0) #13
  %call.i.i744 = call zeroext i1 @__list_del_entry_valid(ptr noundef %device_link) #13
  br i1 %call.i.i744, label %if.end.i.i745, label %err_free_device.list_del.exit_crit_edge

err_free_device.list_del.exit_crit_edge:          ; preds = %err_free_device
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i745:                                    ; preds = %err_free_device
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 8, i32 1
  %196 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %prev.i.i, align 4
  %198 = ptrtoint ptr %device_link to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %device_link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %197, ptr %prev1.i.i.i, align 4
  %201 = ptrtoint ptr %197 to i32
  call void @__asan_store4_noabort(i32 %201)
  store volatile ptr %199, ptr %197, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i745, %err_free_device.list_del.exit_crit_edge
  %202 = ptrtoint ptr %device_link to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr inttoptr (i32 256 to ptr), ptr %device_link, align 4
  %prev.i = getelementptr inbounds %struct.pvrdma_dev, ptr %call5, i32 0, i32 8, i32 1
  %203 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @mutex_unlock(ptr noundef nonnull @pvrdma_device_list_lock) #13
  call void @ib_dealloc_device(ptr noundef nonnull %call5) #13
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %do.end507, %do.end11
  %retval.0 = phi i32 [ %ret.11, %list_del.exit ], [ 0, %do.end507 ], [ -12, %do.end11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slot_dma) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvrdma_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.127) #16
  %nb_netdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 38
  %call2 = tail call i32 @unregister_netdevice_notifier(ptr noundef %nb_netdev) #13
  %2 = ptrtoint ptr %nb_netdev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %nb_netdev, align 8
  %3 = load ptr, ptr @event_wq, align 4
  tail call void @flush_workqueue(ptr noundef %3) #13
  %netdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 37
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %do.end.if.end8_crit_edge, label %do.body1.i

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

do.body1.i:                                       ; preds = %do.end
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !279
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 118
  %7 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcpu_refcnt.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add13.i = add i32 %18, -1
  store i32 %add13.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !280
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !277

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #13, !srcloc !281
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %netdev, align 4
  br label %if.end8

if.end8:                                          ; preds = %dev_put.exit, %do.end.if.end8_crit_edge
  tail call void @ib_unregister_device(ptr noundef nonnull %1) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @pvrdma_device_list_lock, i32 noundef 0) #13
  %device_link = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_link) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_del.exit_crit_edge

if.end8.list_del.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %device_link to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device_link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end8.list_del.exit_crit_edge
  %27 = ptrtoint ptr %device_link to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %device_link, align 4
  %prev.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @pvrdma_device_list_lock) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_disable_intrs.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_pci_remove, %if.then.i)) #13
          to label %pvrdma_disable_intrs.exit [label %if.then.i], !srcloc !271

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %pdev.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_disable_intrs.__UNIQUE_ID_ddebug513, ptr noundef %dev3.i, ptr noundef nonnull @.str.124) #13
  br label %pvrdma_disable_intrs.exit

pvrdma_disable_intrs.exit:                        ; preds = %if.then.i, %list_del.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !274
  tail call void @arm_heavy_mb() #13
  %regs.i.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #13, !srcloc !275
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_free_irq.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_pci_remove, %if.then.i44)) #13
          to label %do.end.i [label %if.then.i44], !srcloc !271

if.then.i44:                                      ; preds = %pvrdma_disable_intrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %pdev.i42 = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %pdev.i42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev.i42, align 8
  %dev3.i43 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_free_irq.__UNIQUE_ID_ddebug511, ptr noundef %dev3.i43, ptr noundef nonnull @.str.126) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i44, %pvrdma_disable_intrs.exit
  %nr_vectors.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 13
  %35 = ptrtoint ptr %nr_vectors.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_vectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp13.not.i = icmp eq i32 %36, 0
  br i1 %cmp13.not.i, label %do.end.i.pvrdma_free_irq.exit_crit_edge, label %for.body.lr.ph.i

do.end.i.pvrdma_free_irq.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pvrdma_free_irq.exit

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %pdev4.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %37 = ptrtoint ptr %pdev4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev4.i, align 8
  %call5.i = tail call i32 @pci_irq_vector(ptr noundef %38, i32 noundef %i.014.i) #13
  %call6.i = tail call ptr @free_irq(i32 noundef %call5.i, ptr noundef nonnull %1) #13
  %inc.i = add nuw i32 %i.014.i, 1
  %39 = ptrtoint ptr %nr_vectors.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_vectors.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %40
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.pvrdma_free_irq.exit_crit_edge

for.body.i.pvrdma_free_irq.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pvrdma_free_irq.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

pvrdma_free_irq.exit:                             ; preds = %for.body.i.pvrdma_free_irq.exit_crit_edge, %do.end.i.pvrdma_free_irq.exit_crit_edge
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !274
  tail call void @arm_heavy_mb() #13
  %41 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2) #13, !srcloc !275
  %cq_pdir = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 18
  tail call void @pvrdma_page_dir_cleanup(ptr noundef nonnull %1, ptr noundef %cq_pdir) #13
  %async_pdir = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 16
  tail call void @pvrdma_page_dir_cleanup(ptr noundef nonnull %1, ptr noundef %async_pdir) #13
  %pdev1.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev1.i, align 8
  %resp_slot.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 6
  %45 = ptrtoint ptr %resp_slot.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %resp_slot.i, align 4
  %tobool.not.i45 = icmp eq ptr %46, null
  br i1 %tobool.not.i45, label %pvrdma_free_irq.exit.if.end.i_crit_edge, label %if.then.i46

pvrdma_free_irq.exit.if.end.i_crit_edge:          ; preds = %pvrdma_free_irq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i46:                                      ; preds = %pvrdma_free_irq.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %dsr.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 3
  %47 = ptrtoint ptr %dsr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dsr.i, align 8
  %resp_slot_dma.i = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %resp_slot_dma.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %resp_slot_dma.i, align 1
  %conv.i = trunc i64 %50 to i32
  tail call void @dma_free_attrs(ptr noundef %dev2.i, i32 noundef 4096, ptr noundef nonnull %46, i32 noundef %conv.i, i32 noundef 0) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i46, %pvrdma_free_irq.exit.if.end.i_crit_edge
  %cmd_slot.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 5
  %51 = ptrtoint ptr %cmd_slot.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cmd_slot.i, align 8
  %tobool4.not.i = icmp eq ptr %52, null
  br i1 %tobool4.not.i, label %if.end.i.pvrdma_free_slots.exit_crit_edge, label %if.then5.i

if.end.i.pvrdma_free_slots.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pvrdma_free_slots.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %dsr8.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %dsr8.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dsr8.i, align 8
  %cmd_slot_dma.i = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cmd_slot_dma.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %56 = load i64, ptr %cmd_slot_dma.i, align 1
  %conv9.i = trunc i64 %56 to i32
  tail call void @dma_free_attrs(ptr noundef %dev6.i, i32 noundef 4096, ptr noundef nonnull %52, i32 noundef %conv9.i, i32 noundef 0) #13
  br label %pvrdma_free_slots.exit

pvrdma_free_slots.exit:                           ; preds = %if.then5.i, %if.end.i.pvrdma_free_slots.exit_crit_edge
  %dsr = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 3
  %57 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dsr, align 8
  %dsrbase = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 4
  %59 = ptrtoint ptr %dsrbase to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dsrbase, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 280, ptr noundef %58, i32 noundef %60, i32 noundef 0) #13
  %61 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i.i, align 4
  tail call void @iounmap(ptr noundef %62) #13
  %sgid_tbl = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 14
  %63 = ptrtoint ptr %sgid_tbl to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sgid_tbl, align 8
  tail call void @kfree(ptr noundef %64) #13
  %cq_tbl = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 19
  %65 = ptrtoint ptr %cq_tbl to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cq_tbl, align 8
  tail call void @kfree(ptr noundef %66) #13
  %srq_tbl = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 21
  %67 = ptrtoint ptr %srq_tbl to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %srq_tbl, align 8
  tail call void @kfree(ptr noundef %68) #13
  %qp_tbl = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 23
  %69 = ptrtoint ptr %qp_tbl to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %qp_tbl, align 8
  tail call void @kfree(ptr noundef %70) #13
  tail call void @pvrdma_uar_table_cleanup(ptr noundef nonnull %1) #13
  %map = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 26, i32 1
  %71 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %map, align 4
  tail call void @iounmap(ptr noundef %72) #13
  tail call void @ib_dealloc_device(ptr noundef nonnull %1) #13
  tail call void @pci_release_regions(ptr noundef %pdev) #13
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  %73 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %pvrdma_free_slots.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_ib_alloc_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_page_dir_init(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_hold(ptr noundef readonly %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !279
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, 1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !280
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !277

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !281
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pvrdma_alloc_intrs(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %1, i32 noundef 1, i32 noundef 3, i32 noundef 4, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  %call.i60 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp3 = icmp slt i32 %call.i60, 0
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ %call.i60, %if.then.if.end5_crit_edge ], [ %call.i, %entry.if.end5_crit_edge ]
  %nr_vectors = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 13
  %2 = ptrtoint ptr %nr_vectors to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %ret.0, ptr %nr_vectors, align 4
  %3 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev1, align 8
  %call7 = tail call i32 @pci_irq_vector(ptr noundef %4, i32 noundef 0) #13
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 49
  %5 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %5, i32 5)
  %bf.load = load i40, ptr %msix_enabled, align 1
  %6 = trunc i40 %bf.load to i32
  %7 = lshr i32 %6, 19
  %8 = and i32 %7, 128
  %9 = xor i32 %8, 128
  %call.i61 = tail call i32 @request_threaded_irq(i32 noundef %call7, ptr noundef nonnull @pvrdma_intr0_handler, ptr noundef null, i32 noundef %9, ptr noundef nonnull @.str, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool9.not = icmp eq i32 %call.i61, 0
  br i1 %tobool9.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %if.end5
  %10 = ptrtoint ptr %nr_vectors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_vectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp1564 = icmp ugt i32 %11, 1
  br i1 %cmp1564, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev1, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.75) #16
  br label %out_free_vectors

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.065 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %14 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev1, align 8
  %call17 = tail call i32 @pci_irq_vector(ptr noundef %15, i32 noundef %i.065) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.065)
  %cmp18 = icmp eq i32 %i.065, 1
  %cond19 = select i1 %cmp18, ptr @pvrdma_intr1_handler, ptr @pvrdma_intrx_handler
  %call.i62 = tail call i32 @request_threaded_irq(i32 noundef %call17, ptr noundef nonnull %cond19, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool21.not = icmp eq i32 %call.i62, 0
  br i1 %tobool21.not, label %for.inc, label %do.end25

do.end25:                                         ; preds = %for.body
  %16 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev1, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.78, i32 noundef %i.065) #16
  %dec66 = add i32 %i.065, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec66)
  %cmp2967 = icmp sgt i32 %dec66, -1
  br i1 %cmp2967, label %do.end25.while.body_crit_edge, label %do.end25.out_free_vectors_crit_edge

do.end25.out_free_vectors_crit_edge:              ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_vectors

do.end25.while.body_crit_edge:                    ; preds = %do.end25
  br label %while.body

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.065, 1
  %18 = ptrtoint ptr %nr_vectors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_vectors, align 4
  %cmp15 = icmp ult i32 %inc, %19
  br i1 %cmp15, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end25.while.body_crit_edge
  %dec68 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec66, %do.end25.while.body_crit_edge ]
  %20 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev1, align 8
  %call31 = tail call i32 @pci_irq_vector(ptr noundef %21, i32 noundef %dec68) #13
  %call32 = tail call ptr @free_irq(i32 noundef %call31, ptr noundef %dev) #13
  %dec = add nsw i32 %dec68, -1
  %cmp29 = icmp sgt i32 %dec68, 0
  br i1 %cmp29, label %while.body.while.body_crit_edge, label %while.body.out_free_vectors_crit_edge

while.body.out_free_vectors_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_vectors

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

out_free_vectors:                                 ; preds = %while.body.out_free_vectors_crit_edge, %do.end25.out_free_vectors_crit_edge, %do.end
  %ret.1 = phi i32 [ %call.i61, %do.end ], [ %call.i62, %do.end25.out_free_vectors_crit_edge ], [ %call.i62, %while.body.out_free_vectors_crit_edge ]
  tail call void @pci_free_irq_vectors(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %out_free_vectors, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_free_vectors ], [ %call.i60, %if.then.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_uar_table_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pvrdma_enable_intrs(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_enable_intrs.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_enable_intrs, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !271

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_enable_intrs.__UNIQUE_ID_ddebug512, ptr noundef %dev3, ptr noundef nonnull @.str.90) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !274
  tail call void @arm_heavy_mb() #13
  %regs.i = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !275
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pvrdma_register_device(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dsr = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsr, align 8
  %node_guid = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %1, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %node_guid to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %node_guid, align 1
  %node_guid1 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %node_guid1 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %node_guid1, align 8
  %sys_image_guid = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %1, i32 0, i32 8, i32 2
  %5 = ptrtoint ptr %sys_image_guid to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %sys_image_guid, align 1
  %sys_image_guid4 = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 27
  %7 = ptrtoint ptr %sys_image_guid4 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %sys_image_guid4, align 8
  %flags = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 7
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %flags, align 8
  %num_comp_vectors = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 12
  %9 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %num_comp_vectors, align 4
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %parent = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev6, ptr %parent, align 8
  %node_type = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 20
  %13 = ptrtoint ptr %node_type to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %node_type, align 1
  %phys_port_cnt = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %1, i32 0, i32 8, i32 45
  %14 = ptrtoint ptr %phys_port_cnt to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %phys_port_cnt, align 1
  %conv = zext i8 %15 to i32
  %phys_port_cnt12 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 21
  %16 = ptrtoint ptr %phys_port_cnt12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %phys_port_cnt12, align 8
  tail call void @ib_set_device_ops(ptr noundef %dev, ptr noundef nonnull @pvrdma_dev_ops) #13
  %port_mutex = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 30
  tail call void @__mutex_init(ptr noundef %port_mutex, ptr noundef nonnull @.str.91, ptr noundef nonnull @pvrdma_register_device.__key) #13
  %desc_lock = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 28
  tail call void @__raw_spin_lock_init(ptr noundef %desc_lock, ptr noundef nonnull @.str.93, ptr noundef nonnull @pvrdma_register_device.__key.92, i16 noundef signext 3) #13
  %17 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dsr, align 8
  %max_cq = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %18, i32 0, i32 8, i32 18
  %19 = ptrtoint ptr %max_cq to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %max_cq, align 1
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 4) #13
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !277

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cq_tbl174 = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 19
  %23 = ptrtoint ptr %cq_tbl174 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %cq_tbl174, align 8
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %24 = extractvalue { i32, i1 } %21, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #17
  %cq_tbl = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 19
  %25 = ptrtoint ptr %cq_tbl to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i.i, ptr %cq_tbl, align 8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %do.body21

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body21:                                        ; preds = %if.end7.i.i
  %cq_tbl_lock = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 20
  tail call void @__raw_spin_lock_init(ptr noundef %cq_tbl_lock, ptr noundef nonnull @.str.95, ptr noundef nonnull @pvrdma_register_device.__key.94, i16 noundef signext 3) #13
  %26 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dsr, align 8
  %max_qp = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %27, i32 0, i32 8, i32 13
  %28 = ptrtoint ptr %max_qp to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %max_qp, align 1
  %30 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 4) #13
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %kcalloc.exit139.thread, label %if.end7.i.i137, !prof !277

kcalloc.exit139.thread:                           ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  %qp_tbl182 = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 23
  %32 = ptrtoint ptr %qp_tbl182 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %qp_tbl182, align 8
  br label %err_cq_free

if.end7.i.i137:                                   ; preds = %do.body21
  %33 = extractvalue { i32, i1 } %30, 0
  %call8.i.i136 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3520) #17
  %qp_tbl = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 23
  %34 = ptrtoint ptr %qp_tbl to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call8.i.i136, ptr %qp_tbl, align 8
  %tobool29.not = icmp eq ptr %call8.i.i136, null
  br i1 %tobool29.not, label %if.end7.i.i137.err_cq_free_crit_edge, label %do.body32

if.end7.i.i137.err_cq_free_crit_edge:             ; preds = %if.end7.i.i137
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_cq_free

do.body32:                                        ; preds = %if.end7.i.i137
  %qp_tbl_lock = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 24
  tail call void @__raw_spin_lock_init(ptr noundef %qp_tbl_lock, ptr noundef nonnull @.str.97, ptr noundef nonnull @pvrdma_register_device.__key.96, i16 noundef signext 3) #13
  %35 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dsr, align 8
  %max_srq = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %36, i32 0, i32 8, i32 38
  %37 = ptrtoint ptr %max_srq to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %max_srq, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool38.not = icmp eq i32 %38, 0
  br i1 %tobool38.not, label %do.body32.if.end49_crit_edge, label %if.then39

do.body32.if.end49_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then39:                                        ; preds = %do.body32
  tail call void @ib_set_device_ops(ptr noundef %dev, ptr noundef nonnull @pvrdma_dev_srq_ops) #13
  %39 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dsr, align 8
  %max_srq43 = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %40, i32 0, i32 8, i32 38
  %41 = ptrtoint ptr %max_srq43 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %max_srq43, align 1
  %43 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %42, i32 4) #13
  %44 = extractvalue { i32, i1 } %43, 1
  br i1 %44, label %kcalloc.exit172.thread, label %if.end7.i.i170, !prof !277

kcalloc.exit172.thread:                           ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  %srq_tbl190 = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 21
  %45 = ptrtoint ptr %srq_tbl190 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %srq_tbl190, align 8
  br label %err_qp_free

if.end7.i.i170:                                   ; preds = %if.then39
  %46 = extractvalue { i32, i1 } %43, 0
  %call8.i.i169 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %46, i32 noundef 3520) #17
  %srq_tbl = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 21
  %47 = ptrtoint ptr %srq_tbl to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call8.i.i169, ptr %srq_tbl, align 8
  %tobool46.not = icmp eq ptr %call8.i.i169, null
  br i1 %tobool46.not, label %if.end7.i.i170.err_qp_free_crit_edge, label %if.end7.i.i170.if.end49_crit_edge

if.end7.i.i170.if.end49_crit_edge:                ; preds = %if.end7.i.i170
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.end7.i.i170.err_qp_free_crit_edge:             ; preds = %if.end7.i.i170
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_qp_free

if.end49:                                         ; preds = %if.end7.i.i170.if.end49_crit_edge, %do.body32.if.end49_crit_edge
  %netdev = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 37
  %48 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %netdev, align 4
  %call51 = tail call i32 @ib_device_set_netdev(ptr noundef %dev, ptr noundef %49, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.body55, label %if.end49.err_srq_free_crit_edge

if.end49.err_srq_free_crit_edge:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_srq_free

do.body55:                                        ; preds = %if.end49
  %srq_tbl_lock = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 22
  tail call void @__raw_spin_lock_init(ptr noundef %srq_tbl_lock, ptr noundef nonnull @.str.99, ptr noundef nonnull @pvrdma_register_device.__key.98, i16 noundef signext 3) #13
  %50 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev, align 8
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %call62 = tail call i32 @ib_register_device(ptr noundef %dev, ptr noundef nonnull @.str.100, ptr noundef %dev61) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %do.body55.err_srq_free_crit_edge

do.body55.err_srq_free_crit_edge:                 ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_srq_free

if.end65:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #15
  %ib_active = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 31
  %52 = ptrtoint ptr %ib_active to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %ib_active, align 4
  br label %cleanup

err_srq_free:                                     ; preds = %do.body55.err_srq_free_crit_edge, %if.end49.err_srq_free_crit_edge
  %ret.0 = phi i32 [ %call51, %if.end49.err_srq_free_crit_edge ], [ %call62, %do.body55.err_srq_free_crit_edge ]
  %srq_tbl66 = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 21
  %53 = ptrtoint ptr %srq_tbl66 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %srq_tbl66, align 8
  tail call void @kfree(ptr noundef %54) #13
  br label %err_qp_free

err_qp_free:                                      ; preds = %err_srq_free, %if.end7.i.i170.err_qp_free_crit_edge, %kcalloc.exit172.thread
  %ret.1 = phi i32 [ %ret.0, %err_srq_free ], [ -1, %if.end7.i.i170.err_qp_free_crit_edge ], [ -1, %kcalloc.exit172.thread ]
  %55 = ptrtoint ptr %qp_tbl to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %qp_tbl, align 8
  tail call void @kfree(ptr noundef %56) #13
  br label %err_cq_free

err_cq_free:                                      ; preds = %err_qp_free, %if.end7.i.i137.err_cq_free_crit_edge, %kcalloc.exit139.thread
  %ret.2 = phi i32 [ %ret.1, %err_qp_free ], [ -1, %if.end7.i.i137.err_cq_free_crit_edge ], [ -1, %kcalloc.exit139.thread ]
  %57 = ptrtoint ptr %cq_tbl to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cq_tbl, align 8
  tail call void @kfree(ptr noundef %58) #13
  br label %cleanup

cleanup:                                          ; preds = %err_cq_free, %if.end65, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ %ret.2, %err_cq_free ], [ 0, %if.end65 ], [ -1, %if.end7.i.i.cleanup_crit_edge ], [ -1, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvrdma_netdevice_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2592, i32 noundef 52) #18
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #13
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.119, ptr noundef nonnull @pvrdma_netdevice_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry5 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry5, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @pvrdma_netdevice_event_work, ptr %func, align 4
  %event_netdev7 = getelementptr inbounds %struct.pvrdma_netdevice_work, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %event_netdev7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %event_netdev7, align 4
  %event8 = getelementptr inbounds %struct.pvrdma_netdevice_work, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %event8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %event, ptr %event8, align 8
  %9 = load ptr, ptr @event_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef nonnull %call7.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ 32770, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pvrdma_disable_intrs(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_disable_intrs.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_disable_intrs, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !271

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_disable_intrs.__UNIQUE_ID_ddebug513, ptr noundef %dev3, ptr noundef nonnull @.str.124) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !274
  tail call void @arm_heavy_mb() #13
  %regs.i = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #13, !srcloc !275
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvrdma_uar_table_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pvrdma_free_irq(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_free_irq.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_free_irq, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !271

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_free_irq.__UNIQUE_ID_ddebug511, ptr noundef %dev3, ptr noundef nonnull @.str.126) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %nr_vectors = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 13
  %2 = ptrtoint ptr %nr_vectors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_vectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not = icmp eq i32 %3, 0
  br i1 %cmp13.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %pdev4 = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev4, align 8
  %call5 = tail call i32 @pci_irq_vector(ptr noundef %5, i32 noundef %i.014) #13
  %call6 = tail call ptr @free_irq(i32 noundef %call5, ptr noundef %dev) #13
  %inc = add nuw i32 %i.014, 1
  %6 = ptrtoint ptr %nr_vectors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_vectors, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !279
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, -1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !280
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !277

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !281
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvrdma_page_dir_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pvrdma_free_slots(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %resp_slot = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %resp_slot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resp_slot, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %dsr = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsr, align 8
  %resp_slot_dma = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %resp_slot_dma to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %resp_slot_dma, align 1
  %conv = trunc i64 %7 to i32
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 4096, ptr noundef nonnull %3, i32 noundef %conv, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmd_slot = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %cmd_slot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd_slot, align 8
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %dsr8 = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 3
  %10 = ptrtoint ptr %dsr8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dsr8, align 8
  %cmd_slot_dma = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cmd_slot_dma to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %cmd_slot_dma, align 1
  %conv9 = trunc i64 %13 to i32
  tail call void @dma_free_attrs(ptr noundef %dev6, i32 noundef 4096, ptr noundef nonnull %9, i32 noundef %conv9, i32 noundef 0) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dealloc_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvrdma_intr0_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_intr0_handler.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_intr0_handler, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !271

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_intr0_handler.__UNIQUE_ID_ddebug508, ptr noundef %dev3, ptr noundef nonnull @.str.81) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pdev4 = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev4, align 8
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 49
  %4 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %4, i32 5)
  %bf.load = load i40, ptr %msix_enabled, align 1
  %5 = and i40 %bf.load, 67108864
  %tobool5.not = icmp eq i40 %5, 0
  br i1 %tobool5.not, label %if.then6, label %do.end.if.then12_crit_edge

do.end.if.then12_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

if.then6:                                         ; preds = %do.end
  %regs.i = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 2
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !273
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %cleanup.fold.split [
    i32 0, label %if.then6.cleanup_crit_edge
    i32 1, label %if.then6.if.then12_crit_edge
  ]

if.then6.if.then12_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then12:                                        ; preds = %if.then6.if.then12_crit_edge, %do.end.if.then12_crit_edge
  %cmd_done = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 12
  tail call void @complete(ptr noundef %cmd_done) #13
  br label %cleanup

cleanup.fold.split:                               ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split, %if.then12, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then6.cleanup_crit_edge ], [ 1, %if.then12 ], [ 1, %cleanup.fold.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvrdma_intr1_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %ib_event.i.i101 = alloca %struct.ib_event, align 4
  %ib_event.i.i = alloca %struct.ib_event, align 4
  %e.i75 = alloca %struct.ib_event, align 4
  %e.i47 = alloca %struct.ib_event, align 4
  %e.i = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %async_ring_state = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 15
  %0 = ptrtoint ptr %async_ring_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async_ring_state, align 4
  %rx = getelementptr inbounds %struct.pvrdma_ring_state, ptr %1, i32 0, i32 1
  %dsr = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 3
  %2 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsr, align 8
  %async_ring_pages = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %async_ring_pages to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %async_ring_pages, align 1
  %sub = shl i32 %5, 12
  %mul = add i32 %sub, -4096
  %div44 = lshr exact i32 %mul, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_intr1_handler.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_intr1_handler, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !271

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_intr1_handler.__UNIQUE_ID_ddebug509, ptr noundef %dev3, ptr noundef nonnull @.str.83) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ib_active = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 31
  %8 = ptrtoint ptr %ib_active to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ib_active, align 4, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %while.cond.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.cond.preheader:                             ; preds = %do.end
  %cons_head.i = getelementptr inbounds %struct.pvrdma_ring_state, ptr %1, i32 0, i32 1, i32 1
  %shl.neg.i.i = mul nsw i32 %div44, -2
  %sub.i = add nuw nsw i32 %div44, 536870911
  %pages.i.i = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 16, i32 5
  %10 = getelementptr inbounds %struct.ib_event, ptr %ib_event.i.i101, i32 0, i32 1
  %11 = getelementptr inbounds %struct.ib_event, ptr %ib_event.i.i101, i32 0, i32 2
  %pdev.i106 = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 1
  %12 = getelementptr inbounds %struct.ib_event, ptr %ib_event.i.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.ib_event, ptr %ib_event.i.i, i32 0, i32 2
  %srq_tbl_lock.i = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 22
  %srq_tbl.i = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 21
  %14 = getelementptr inbounds %struct.ib_event, ptr %e.i75, i32 0, i32 1
  %15 = getelementptr inbounds %struct.ib_event, ptr %e.i75, i32 0, i32 2
  %cq_tbl_lock.i = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 20
  %cq_tbl.i = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 19
  %16 = getelementptr inbounds %struct.ib_event, ptr %e.i47, i32 0, i32 1
  %17 = getelementptr inbounds %struct.ib_event, ptr %e.i47, i32 0, i32 2
  %qp_tbl_lock.i = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 24
  %qp_tbl.i = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 23
  %18 = getelementptr inbounds %struct.ib_event, ptr %e.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.ib_event, ptr %e.i, i32 0, i32 2
  %shl.i = lshr exact i32 %mul, 2
  %sub.i113 = add nsw i32 %shl.i, -1
  %call.i.i.i119 = call zeroext i1 @__kasan_check_read(ptr noundef %rx, i32 noundef 4) #13
  %20 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %rx, align 4
  %call.i.i12.i120 = call zeroext i1 @__kasan_check_read(ptr noundef %cons_head.i, i32 noundef 4) #13
  %22 = ptrtoint ptr %cons_head.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %cons_head.i, align 4
  %and.i.i121 = and i32 %21, %shl.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i121)
  %cmp.i.not.i122 = icmp ne i32 %and.i.i121, 0
  %and.i14.i123 = and i32 %23, %shl.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14.i123)
  %cmp.i15.not.i124 = icmp ne i32 %and.i14.i123, 0
  %or.cond.i125 = select i1 %cmp.i.not.i122, i1 true, i1 %cmp.i15.not.i124
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.i.not126 = icmp eq i32 %21, %23
  %or.cond127 = select i1 %or.cond.i125, i1 true, i1 %cmp.i.not126
  br i1 %or.cond127, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %24 = phi i32 [ %125, %sw.epilog.while.body_crit_edge ], [ %23, %while.cond.preheader.while.body_crit_edge ]
  %and.i = and i32 %24, %sub.i
  %mul.i = shl i32 %and.i, 3
  %add.i = add i32 %mul.i, 4096
  %25 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pages.i.i, align 8
  %27 = lshr i32 %add.i, 12
  %arrayidx.i.i = getelementptr ptr, ptr %26, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i, align 4
  %idx.ext.i.i = and i32 %mul.i, 4088
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %idx.ext.i.i
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %31, label %while.body.sw.epilog_crit_edge [
    i32 1, label %while.body.sw.bb_crit_edge
    i32 2, label %while.body.sw.bb_crit_edge128
    i32 3, label %while.body.sw.bb_crit_edge129
    i32 4, label %while.body.sw.bb_crit_edge130
    i32 5, label %while.body.sw.bb_crit_edge131
    i32 6, label %while.body.sw.bb_crit_edge132
    i32 7, label %while.body.sw.bb_crit_edge133
    i32 16, label %while.body.sw.bb_crit_edge134
    i32 0, label %sw.bb10
    i32 14, label %while.body.sw.bb13_crit_edge
    i32 15, label %while.body.sw.bb13_crit_edge135
    i32 9, label %while.body.sw.bb16_crit_edge
    i32 10, label %while.body.sw.bb16_crit_edge136
    i32 11, label %while.body.sw.bb16_crit_edge137
    i32 12, label %while.body.sw.bb16_crit_edge138
    i32 13, label %while.body.sw.bb16_crit_edge139
    i32 17, label %while.body.sw.bb16_crit_edge140
    i32 18, label %while.body.sw.bb16_crit_edge141
    i32 8, label %sw.bb19
  ]

while.body.sw.bb16_crit_edge141:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb16

while.body.sw.bb16_crit_edge140:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb16

while.body.sw.bb16_crit_edge139:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb16

while.body.sw.bb16_crit_edge138:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb16

while.body.sw.bb16_crit_edge137:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb16

while.body.sw.bb16_crit_edge136:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb16

while.body.sw.bb16_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb16

while.body.sw.bb13_crit_edge135:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb13

while.body.sw.bb13_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb13

while.body.sw.bb_crit_edge134:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

while.body.sw.bb_crit_edge133:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

while.body.sw.bb_crit_edge132:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

while.body.sw.bb_crit_edge131:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

while.body.sw.bb_crit_edge130:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

while.body.sw.bb_crit_edge129:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

while.body.sw.bb_crit_edge128:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

while.body.sw.bb_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body.sw.bb_crit_edge, %while.body.sw.bb_crit_edge128, %while.body.sw.bb_crit_edge129, %while.body.sw.bb_crit_edge130, %while.body.sw.bb_crit_edge131, %while.body.sw.bb_crit_edge132, %while.body.sw.bb_crit_edge133, %while.body.sw.bb_crit_edge134
  %info = getelementptr inbounds %struct.pvrdma_eqe, ptr %add.ptr.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %info, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %qp_tbl_lock.i) #13
  %35 = ptrtoint ptr %qp_tbl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %qp_tbl.i, align 8
  %37 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dsr, align 8
  %max_qp.i = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %38, i32 0, i32 8, i32 13
  %39 = ptrtoint ptr %max_qp.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %max_qp.i, align 1
  %rem.i = urem i32 %34, %40
  %arrayidx.i = getelementptr ptr, ptr %36, i32 %rem.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %if.end13.critedge.i, label %if.then.i46

if.then.i46:                                      ; preds = %sw.bb
  %refcnt.i = getelementptr inbounds %struct.pvrdma_qp, ptr %42, i32 0, i32 17
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %43 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !283
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i46.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !277

if.then.i46.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i46
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %44 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %.not.i.i.i.i = icmp sgt i32 %44, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !284

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i46.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i46.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #13
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %qp_tbl_lock.i, i32 noundef %call2.i) #13
  %event_handler.i = getelementptr inbounds %struct.ib_qp, ptr %42, i32 0, i32 15
  %45 = ptrtoint ptr %event_handler.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %event_handler.i, align 4
  %tobool7.not.i = icmp eq ptr %46, null
  br i1 %tobool7.not.i, label %refcount_inc.exit.i.if.then15.i_crit_edge, label %if.then8.i

refcount_inc.exit.i.if.then15.i_crit_edge:        ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15.i

if.then8.i:                                       ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %e.i) #13
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %42, align 4
  %49 = ptrtoint ptr %e.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %e.i, align 4
  %50 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %42, ptr %18, align 4
  %51 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %31, ptr %19, align 4
  %qp_context.i = getelementptr inbounds %struct.ib_qp, ptr %42, i32 0, i32 16
  %52 = ptrtoint ptr %qp_context.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %qp_context.i, align 4
  call void %46(ptr noundef nonnull %e.i, ptr noundef %53) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %e.i) #13
  br label %if.then15.i

if.end13.critedge.i:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %qp_tbl_lock.i, i32 noundef %call2.i) #13
  br label %sw.epilog

if.then15.i:                                      ; preds = %if.then8.i, %refcount_inc.exit.i.if.then15.i_crit_edge
  %call.i.i.i.i.i35.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !285
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %54 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !286
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then18.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i36.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i36.i, label %if.end5.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i, !prof !284

if.end5.i.i.i.i.sw.epilog_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #13
  br label %sw.epilog

if.then18.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !287
  %free.i = getelementptr inbounds %struct.pvrdma_qp, ptr %42, i32 0, i32 18
  call void @complete(ptr noundef %free.i) #13
  br label %sw.epilog

sw.bb10:                                          ; preds = %while.body
  %info11 = getelementptr inbounds %struct.pvrdma_eqe, ptr %add.ptr.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %info11 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %info11, align 4
  %call2.i48 = call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_tbl_lock.i) #13
  %57 = ptrtoint ptr %cq_tbl.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cq_tbl.i, align 8
  %59 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dsr, align 8
  %max_cq.i = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %60, i32 0, i32 8, i32 18
  %61 = ptrtoint ptr %max_cq.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %max_cq.i, align 1
  %rem.i50 = urem i32 %56, %62
  %arrayidx.i51 = getelementptr ptr, ptr %58, i32 %rem.i50
  %63 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i51, align 4
  %tobool.not.i52 = icmp eq ptr %64, null
  br i1 %tobool.not.i52, label %if.end13.critedge.i67, label %if.then.i57

if.then.i57:                                      ; preds = %sw.bb10
  %refcnt.i53 = getelementptr inbounds %struct.pvrdma_cq, ptr %64, i32 0, i32 9
  %call.i.i.i.i.i.i54 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i53, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %refcnt.i53, i32 1, i32 3, i32 1) #13
  %65 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i53, ptr %refcnt.i53, i32 1, ptr elementtype(i32) %refcnt.i53) #13, !srcloc !283
  %asmresult.i.i.i.i.i.i55 = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i55)
  %tobool1.not.i.i.i.i56 = icmp eq i32 %asmresult.i.i.i.i.i.i55, 0
  br i1 %tobool1.not.i.i.i.i56, label %if.then.i57.if.end15.sink.split.i.i.i.i62_crit_edge, label %if.else.i.i.i.i60, !prof !277

if.then.i57.if.end15.sink.split.i.i.i.i62_crit_edge: ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i62

if.else.i.i.i.i60:                                ; preds = %if.then.i57
  %add.i.i.i.i58 = add i32 %asmresult.i.i.i.i.i.i55, 1
  %66 = or i32 %add.i.i.i.i58, %asmresult.i.i.i.i.i.i55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %.not.i.i.i.i59 = icmp sgt i32 %66, -1
  br i1 %.not.i.i.i.i59, label %if.else.i.i.i.i60.refcount_inc.exit.i65_crit_edge, label %if.else.i.i.i.i60.if.end15.sink.split.i.i.i.i62_crit_edge, !prof !284

if.else.i.i.i.i60.if.end15.sink.split.i.i.i.i62_crit_edge: ; preds = %if.else.i.i.i.i60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i62

if.else.i.i.i.i60.refcount_inc.exit.i65_crit_edge: ; preds = %if.else.i.i.i.i60
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit.i65

if.end15.sink.split.i.i.i.i62:                    ; preds = %if.else.i.i.i.i60.if.end15.sink.split.i.i.i.i62_crit_edge, %if.then.i57.if.end15.sink.split.i.i.i.i62_crit_edge
  %.sink.i.i.i.i61 = phi i32 [ 2, %if.then.i57.if.end15.sink.split.i.i.i.i62_crit_edge ], [ 1, %if.else.i.i.i.i60.if.end15.sink.split.i.i.i.i62_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i53, i32 noundef %.sink.i.i.i.i61) #13
  br label %refcount_inc.exit.i65

refcount_inc.exit.i65:                            ; preds = %if.end15.sink.split.i.i.i.i62, %if.else.i.i.i.i60.refcount_inc.exit.i65_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_tbl_lock.i, i32 noundef %call2.i48) #13
  %event_handler.i63 = getelementptr inbounds %struct.ib_cq, ptr %64, i32 0, i32 3
  %67 = ptrtoint ptr %event_handler.i63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %event_handler.i63, align 4
  %tobool7.not.i64 = icmp eq ptr %68, null
  br i1 %tobool7.not.i64, label %refcount_inc.exit.i65.if.then15.i70_crit_edge, label %if.then8.i66

refcount_inc.exit.i65.if.then15.i70_crit_edge:    ; preds = %refcount_inc.exit.i65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15.i70

if.then8.i66:                                     ; preds = %refcount_inc.exit.i65
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %e.i47) #13
  %69 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %64, align 8
  %71 = ptrtoint ptr %e.i47 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %e.i47, align 4
  %72 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %64, ptr %16, align 4
  %73 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %17, align 4
  %cq_context.i = getelementptr inbounds %struct.ib_cq, ptr %64, i32 0, i32 4
  %74 = ptrtoint ptr %cq_context.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cq_context.i, align 8
  call void %68(ptr noundef nonnull %e.i47, ptr noundef %75) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %e.i47) #13
  br label %if.then15.i70

if.end13.critedge.i67:                            ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_tbl_lock.i, i32 noundef %call2.i48) #13
  br label %sw.epilog

if.then15.i70:                                    ; preds = %if.then8.i66, %refcount_inc.exit.i65.if.then15.i70_crit_edge
  %call.i.i.i.i.i2.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i53, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !285
  call void @llvm.prefetch.p0(ptr %refcnt.i53, i32 1, i32 3, i32 1) #13
  %76 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i53, ptr %refcnt.i53, i32 1, ptr elementtype(i32) %refcnt.i53) #13, !srcloc !286
  %asmresult.i.i.i.i.i.i.i68 = extractvalue { i32, i32, i32 } %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i68)
  %cmp.i.i.i.i69 = icmp eq i32 %asmresult.i.i.i.i.i.i.i68, 1
  br i1 %cmp.i.i.i.i69, label %if.then18.i74, label %if.end5.i.i.i.i71

if.end5.i.i.i.i71:                                ; preds = %if.then15.i70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i68)
  %.not.i.i.i3.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i68, 0
  br i1 %.not.i.i.i3.i, label %if.end5.i.i.i.i71.sw.epilog_crit_edge, label %if.then10.i.i.i.i72, !prof !284

if.end5.i.i.i.i71.sw.epilog_crit_edge:            ; preds = %if.end5.i.i.i.i71
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then10.i.i.i.i72:                              ; preds = %if.end5.i.i.i.i71
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i53, i32 noundef 3) #13
  br label %sw.epilog

if.then18.i74:                                    ; preds = %if.then15.i70
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !287
  %free.i73 = getelementptr inbounds %struct.pvrdma_cq, ptr %64, i32 0, i32 10
  call void @complete(ptr noundef %free.i73) #13
  br label %sw.epilog

sw.bb13:                                          ; preds = %while.body.sw.bb13_crit_edge, %while.body.sw.bb13_crit_edge135
  %info14 = getelementptr inbounds %struct.pvrdma_eqe, ptr %add.ptr.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %info14 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %info14, align 4
  %call2.i76 = call i32 @_raw_spin_lock_irqsave(ptr noundef %srq_tbl_lock.i) #13
  %79 = ptrtoint ptr %srq_tbl.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %srq_tbl.i, align 8
  %tobool.not.i77 = icmp eq ptr %80, null
  br i1 %tobool.not.i77, label %sw.bb13.if.end17.critedge.i_crit_edge, label %if.end.i

sw.bb13.if.end17.critedge.i_crit_edge:            ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.critedge.i

if.end.i:                                         ; preds = %sw.bb13
  %81 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dsr, align 8
  %max_srq.i = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %82, i32 0, i32 8, i32 38
  %83 = ptrtoint ptr %max_srq.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %max_srq.i, align 1
  %rem.i79 = urem i32 %78, %84
  %arrayidx.i80 = getelementptr ptr, ptr %80, i32 %rem.i79
  %85 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i80, align 4
  %tobool6.not.i = icmp eq ptr %86, null
  br i1 %tobool6.not.i, label %if.end.i.if.end17.critedge.i_crit_edge, label %if.then7.i

if.end.i.if.end17.critedge.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.critedge.i

if.then7.i:                                       ; preds = %if.end.i
  %refcnt.i81 = getelementptr inbounds %struct.pvrdma_srq, ptr %86, i32 0, i32 11
  %call.i.i.i.i.i.i82 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i81, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %refcnt.i81, i32 1, i32 3, i32 1) #13
  %87 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i81, ptr %refcnt.i81, i32 1, ptr elementtype(i32) %refcnt.i81) #13, !srcloc !283
  %asmresult.i.i.i.i.i.i83 = extractvalue { i32, i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i83)
  %tobool1.not.i.i.i.i84 = icmp eq i32 %asmresult.i.i.i.i.i.i83, 0
  br i1 %tobool1.not.i.i.i.i84, label %if.then7.i.if.end15.sink.split.i.i.i.i89_crit_edge, label %if.else.i.i.i.i87, !prof !277

if.then7.i.if.end15.sink.split.i.i.i.i89_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i89

if.else.i.i.i.i87:                                ; preds = %if.then7.i
  %add.i.i.i.i85 = add i32 %asmresult.i.i.i.i.i.i83, 1
  %88 = or i32 %add.i.i.i.i85, %asmresult.i.i.i.i.i.i83
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %.not.i.i.i.i86 = icmp sgt i32 %88, -1
  br i1 %.not.i.i.i.i86, label %if.else.i.i.i.i87.refcount_inc.exit.i91_crit_edge, label %if.else.i.i.i.i87.if.end15.sink.split.i.i.i.i89_crit_edge, !prof !284

if.else.i.i.i.i87.if.end15.sink.split.i.i.i.i89_crit_edge: ; preds = %if.else.i.i.i.i87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i89

if.else.i.i.i.i87.refcount_inc.exit.i91_crit_edge: ; preds = %if.else.i.i.i.i87
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit.i91

if.end15.sink.split.i.i.i.i89:                    ; preds = %if.else.i.i.i.i87.if.end15.sink.split.i.i.i.i89_crit_edge, %if.then7.i.if.end15.sink.split.i.i.i.i89_crit_edge
  %.sink.i.i.i.i88 = phi i32 [ 2, %if.then7.i.if.end15.sink.split.i.i.i.i89_crit_edge ], [ 1, %if.else.i.i.i.i87.if.end15.sink.split.i.i.i.i89_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i81, i32 noundef %.sink.i.i.i.i88) #13
  br label %refcount_inc.exit.i91

refcount_inc.exit.i91:                            ; preds = %if.end15.sink.split.i.i.i.i89, %if.else.i.i.i.i87.refcount_inc.exit.i91_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %srq_tbl_lock.i, i32 noundef %call2.i76) #13
  %event_handler.i90 = getelementptr inbounds %struct.ib_srq, ptr %86, i32 0, i32 3
  %89 = ptrtoint ptr %event_handler.i90 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %event_handler.i90, align 4
  %tobool11.not.i = icmp eq ptr %90, null
  br i1 %tobool11.not.i, label %refcount_inc.exit.i91.if.then19.i_crit_edge, label %if.then12.i

refcount_inc.exit.i91.if.then19.i_crit_edge:      ; preds = %refcount_inc.exit.i91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19.i

if.then12.i:                                      ; preds = %refcount_inc.exit.i91
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %e.i75) #13
  %91 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %86, align 4
  %93 = ptrtoint ptr %e.i75 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %e.i75, align 4
  %94 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %86, ptr %14, align 4
  %95 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %31, ptr %15, align 4
  %srq_context.i = getelementptr inbounds %struct.ib_srq, ptr %86, i32 0, i32 4
  %96 = ptrtoint ptr %srq_context.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %srq_context.i, align 4
  call void %90(ptr noundef nonnull %e.i75, ptr noundef %97) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %e.i75) #13
  br label %if.then19.i

if.end17.critedge.i:                              ; preds = %if.end.i.if.end17.critedge.i_crit_edge, %sw.bb13.if.end17.critedge.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %srq_tbl_lock.i, i32 noundef %call2.i76) #13
  br label %sw.epilog

if.then19.i:                                      ; preds = %if.then12.i, %refcount_inc.exit.i91.if.then19.i_crit_edge
  %call.i.i.i.i.i40.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i81, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !285
  call void @llvm.prefetch.p0(ptr %refcnt.i81, i32 1, i32 3, i32 1) #13
  %98 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i81, ptr %refcnt.i81, i32 1, ptr elementtype(i32) %refcnt.i81) #13, !srcloc !286
  %asmresult.i.i.i.i.i.i.i92 = extractvalue { i32, i32, i32 } %98, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i92)
  %cmp.i.i.i.i93 = icmp eq i32 %asmresult.i.i.i.i.i.i.i92, 1
  br i1 %cmp.i.i.i.i93, label %if.then22.i, label %if.end5.i.i.i.i94

if.end5.i.i.i.i94:                                ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i92)
  %.not.i.i.i41.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i92, 0
  br i1 %.not.i.i.i41.i, label %if.end5.i.i.i.i94.sw.epilog_crit_edge, label %if.then10.i.i.i.i95, !prof !284

if.end5.i.i.i.i94.sw.epilog_crit_edge:            ; preds = %if.end5.i.i.i.i94
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then10.i.i.i.i95:                              ; preds = %if.end5.i.i.i.i94
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i81, i32 noundef 3) #13
  br label %sw.epilog

if.then22.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !287
  %free.i96 = getelementptr inbounds %struct.pvrdma_srq, ptr %86, i32 0, i32 12
  call void @complete(ptr noundef %free.i96) #13
  br label %sw.epilog

sw.bb16:                                          ; preds = %while.body.sw.bb16_crit_edge, %while.body.sw.bb16_crit_edge136, %while.body.sw.bb16_crit_edge137, %while.body.sw.bb16_crit_edge138, %while.body.sw.bb16_crit_edge139, %while.body.sw.bb16_crit_edge140, %while.body.sw.bb16_crit_edge141
  %info17 = getelementptr inbounds %struct.pvrdma_eqe, ptr %add.ptr.i.i, i32 0, i32 1
  %99 = ptrtoint ptr %info17 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %info17, align 4
  %conv = trunc i32 %100 to i8
  %conv.i97 = and i32 %100, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp.i98 = icmp eq i8 %conv, 0
  br i1 %cmp.i98, label %sw.bb16.do.end.i_crit_edge, label %lor.lhs.false.i

sw.bb16.do.end.i_crit_edge:                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %sw.bb16
  %101 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dsr, align 8
  %phys_port_cnt.i = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %102, i32 0, i32 8, i32 45
  %103 = ptrtoint ptr %phys_port_cnt.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %phys_port_cnt.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %104, i8 %conv)
  %cmp4.i = icmp ult i8 %104, %conv
  br i1 %cmp4.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i100

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %sw.bb16.do.end.i_crit_edge
  %105 = ptrtoint ptr %pdev.i106 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pdev.i106, align 8
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6.i, ptr noundef nonnull @.str.84, i32 noundef %conv.i97) #16
  br label %sw.epilog

if.end.i100:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ib_event.i.i) #13
  %107 = ptrtoint ptr %ib_event.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %dev_id, ptr %ib_event.i.i, align 4
  %108 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %conv.i97, ptr %12, align 4
  %109 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %31, ptr %13, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %ib_event.i.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ib_event.i.i) #13
  br label %sw.epilog

sw.bb19:                                          ; preds = %while.body
  %110 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dsr, align 8
  %phys_port_cnt.i103 = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %111, i32 0, i32 8, i32 45
  %112 = ptrtoint ptr %phys_port_cnt.i103 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %phys_port_cnt.i103, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %cmp4.i104 = icmp eq i8 %113, 0
  br i1 %cmp4.i104, label %do.end.i108, label %if.end.i109

do.end.i108:                                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #15
  %114 = ptrtoint ptr %pdev.i106 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pdev.i106, align 8
  %dev6.i107 = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6.i107, ptr noundef nonnull @.str.84, i32 noundef 1) #16
  br label %sw.epilog

if.end.i109:                                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ib_event.i.i101) #13
  %116 = ptrtoint ptr %ib_event.i.i101 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %dev_id, ptr %ib_event.i.i101, align 4
  %117 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %10, align 4
  %118 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 8, ptr %11, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %ib_event.i.i101) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ib_event.i.i101) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i109, %do.end.i108, %if.end.i100, %do.end.i, %if.then22.i, %if.then10.i.i.i.i95, %if.end5.i.i.i.i94.sw.epilog_crit_edge, %if.end17.critedge.i, %if.then18.i74, %if.then10.i.i.i.i72, %if.end5.i.i.i.i71.sw.epilog_crit_edge, %if.end13.critedge.i67, %if.then18.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sw.epilog_crit_edge, %if.end13.critedge.i, %while.body.sw.epilog_crit_edge
  %call.i.i.i111 = call zeroext i1 @__kasan_check_read(ptr noundef %cons_head.i, i32 noundef 4) #13
  %119 = ptrtoint ptr %cons_head.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %cons_head.i, align 4
  %add.i112 = add i32 %120, 1
  %and.i114 = and i32 %add.i112, %sub.i113
  %call.i.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef %cons_head.i, i32 noundef 4) #13
  %121 = ptrtoint ptr %cons_head.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile i32 %and.i114, ptr %cons_head.i, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %rx, i32 noundef 4) #13
  %122 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %rx, align 4
  %call.i.i12.i = call zeroext i1 @__kasan_check_read(ptr noundef %cons_head.i, i32 noundef 4) #13
  %124 = ptrtoint ptr %cons_head.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %cons_head.i, align 4
  %and.i.i = and i32 %123, %shl.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp ne i32 %and.i.i, 0
  %and.i14.i = and i32 %125, %shl.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14.i)
  %cmp.i15.not.i = icmp ne i32 %and.i14.i, 0
  %or.cond.i = select i1 %cmp.i.not.i, i1 true, i1 %cmp.i15.not.i
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %125)
  %cmp.i.not = icmp eq i32 %123, %125
  %or.cond = select i1 %or.cond.i, i1 true, i1 %cmp.i.not
  br i1 %or.cond, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvrdma_intrx_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cq_ring_state = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 17
  %0 = ptrtoint ptr %cq_ring_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq_ring_state, align 8
  %rx = getelementptr inbounds %struct.pvrdma_ring_state, ptr %1, i32 0, i32 1
  %dsr = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 3
  %2 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsr, align 8
  %cq_ring_pages = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %cq_ring_pages to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %cq_ring_pages, align 1
  %sub = shl i32 %5, 12
  %mul = add i32 %sub, -4096
  %div45 = lshr exact i32 %mul, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_intrx_handler.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_intrx_handler, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !271

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_intrx_handler.__UNIQUE_ID_ddebug510, ptr noundef %dev3, ptr noundef nonnull @.str.88) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cons_head.i = getelementptr inbounds %struct.pvrdma_ring_state, ptr %1, i32 0, i32 1, i32 1
  %shl.neg.i.i = mul nsw i32 %div45, -2
  %sub.i = add nuw nsw i32 %div45, 1073741823
  %pages.i.i = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 18, i32 5
  %cq_tbl_lock = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 20
  %cq_tbl = getelementptr inbounds %struct.pvrdma_dev, ptr %dev_id, i32 0, i32 19
  %shl.i = lshr exact i32 %mul, 1
  %sub.i52 = add nsw i32 %shl.i, -1
  %call.i.i.i58 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx, i32 noundef 4) #13
  %8 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %rx, align 4
  %call.i.i12.i59 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cons_head.i, i32 noundef 4) #13
  %10 = ptrtoint ptr %cons_head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %cons_head.i, align 4
  %and.i.i60 = and i32 %9, %shl.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i60)
  %cmp.i.not.i61 = icmp ne i32 %and.i.i60, 0
  %and.i14.i62 = and i32 %11, %shl.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14.i62)
  %cmp.i15.not.i63 = icmp ne i32 %and.i14.i62, 0
  %or.cond.i64 = select i1 %cmp.i.not.i61, i1 true, i1 %cmp.i15.not.i63
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i.not65 = icmp eq i32 %9, %11
  %or.cond66 = select i1 %or.cond.i64, i1 true, i1 %cmp.i.not65
  br i1 %or.cond66, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %if.end25.while.body_crit_edge, %do.end.while.body_crit_edge
  %12 = phi i32 [ %41, %if.end25.while.body_crit_edge ], [ %11, %do.end.while.body_crit_edge ]
  %and.i = and i32 %12, %sub.i
  %mul.i = shl i32 %and.i, 2
  %add.i = add i32 %mul.i, 4096
  %13 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pages.i.i, align 8
  %15 = lshr i32 %add.i, 12
  %arrayidx.i.i = getelementptr ptr, ptr %14, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %idx.ext.i.i = and i32 %mul.i, 4092
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %idx.ext.i.i
  tail call void @_raw_spin_lock(ptr noundef %cq_tbl_lock) #13
  %18 = ptrtoint ptr %cq_tbl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cq_tbl, align 8
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i, align 4
  %22 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dsr, align 8
  %max_cq = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %23, i32 0, i32 8, i32 18
  %24 = ptrtoint ptr %max_cq to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %max_cq, align 1
  %rem = urem i32 %21, %25
  %arrayidx = getelementptr ptr, ptr %19, i32 %rem
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %27, null
  br i1 %tobool7.not, label %if.end18.critedge, label %if.then8

if.then8:                                         ; preds = %while.body
  %refcnt = getelementptr inbounds %struct.pvrdma_cq, ptr %27, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !283
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then8.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !277

if.then8.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then8
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %29 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !284

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then8.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then8.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #13
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cq_tbl_lock) #13
  %comp_handler = getelementptr inbounds %struct.ib_cq, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %comp_handler to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %comp_handler, align 8
  %tobool12.not = icmp eq ptr %31, null
  br i1 %tobool12.not, label %refcount_inc.exit.if.then20_crit_edge, label %if.then13

refcount_inc.exit.if.then20_crit_edge:            ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

if.then13:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %27, i32 0, i32 4
  %32 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cq_context, align 8
  tail call void %31(ptr noundef nonnull %27, ptr noundef %33) #13
  br label %if.then20

if.end18.critedge:                                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %cq_tbl_lock) #13
  br label %if.end25

if.then20:                                        ; preds = %if.then13, %refcount_inc.exit.if.then20_crit_edge
  %call.i.i.i.i.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !285
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !286
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then23, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i49 = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i49, label %if.end5.i.i.i.if.end25_crit_edge, label %if.then10.i.i.i, !prof !284

if.end5.i.i.i.if.end25_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #13
  br label %if.end25

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !287
  %free = getelementptr inbounds %struct.pvrdma_cq, ptr %27, i32 0, i32 10
  tail call void @complete(ptr noundef %free) #13
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then10.i.i.i, %if.end5.i.i.i.if.end25_crit_edge, %if.end18.critedge
  %call.i.i.i50 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cons_head.i, i32 noundef 4) #13
  %35 = ptrtoint ptr %cons_head.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %cons_head.i, align 4
  %add.i51 = add i32 %36, 1
  %and.i53 = and i32 %add.i51, %sub.i52
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cons_head.i, i32 noundef 4) #13
  %37 = ptrtoint ptr %cons_head.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 %and.i53, ptr %cons_head.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx, i32 noundef 4) #13
  %38 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %rx, align 4
  %call.i.i12.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cons_head.i, i32 noundef 4) #13
  %40 = ptrtoint ptr %cons_head.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %cons_head.i, align 4
  %and.i.i = and i32 %39, %shl.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp ne i32 %and.i.i, 0
  %and.i14.i = and i32 %41, %shl.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14.i)
  %cmp.i15.not.i = icmp ne i32 %and.i14.i, 0
  %or.cond.i = select i1 %cmp.i.not.i, i1 true, i1 %cmp.i15.not.i
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp.i.not = icmp eq i32 %39, %41
  %or.cond = select i1 %or.cond.i, i1 true, i1 %cmp.i.not
  br i1 %or.cond, label %if.end25.while.end_crit_edge, label %if.end25.while.body_crit_edge

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end25.while.end_crit_edge, %do.end.while.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dispatch_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_set_device_ops(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_device_set_netdev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_post_send(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_post_recv(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_poll_cq(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_req_notify_cq(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_query_device(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvrdma_get_fw_ver_str(ptr nocapture noundef readonly %device, ptr nocapture noundef writeonly %str) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dsr = getelementptr inbounds %struct.pvrdma_dev, ptr %device, i32 0, i32 3
  %0 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsr, align 8
  %caps = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %caps, align 1
  %shr = lshr i64 %3, 32
  %conv = trunc i64 %shr to i32
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 16
  %and10 = and i32 %4, 65535
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef 32, ptr noundef nonnull @.str.107, i32 noundef %conv, i32 noundef %5, i32 noundef %and10)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_query_port(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_modify_port(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvrdma_port_immutable(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef %immutable) #2 align 64 {
entry:
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #13
  %0 = call ptr @memset(ptr %attr, i32 255, i32 72)
  %dsr = getelementptr inbounds %struct.pvrdma_dev, ptr %ibdev, i32 0, i32 3
  %1 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dsr, align 8
  %gid_types = getelementptr inbounds %struct.pvrdma_device_shared_region, ptr %2, i32 0, i32 8, i32 49
  %3 = ptrtoint ptr %gid_types to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %gid_types, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %4, label %entry.if.end11_crit_edge [
    i8 1, label %entry.if.end11.sink.split_crit_edge
    i8 2, label %if.then8
  ]

entry.if.end11.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.sink.split

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %if.then8, %entry.if.end11.sink.split_crit_edge
  %.sink27 = phi i32 [ 8400901, %if.then8 ], [ 2109445, %entry.if.end11.sink.split_crit_edge ]
  %core_cap_flags = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 2
  %6 = ptrtoint ptr %core_cap_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %core_cap_flags, align 4
  %or10 = or i32 %7, %.sink27
  store i32 %or10, ptr %core_cap_flags, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %entry.if.end11_crit_edge
  %call12 = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef nonnull %attr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %pkey_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 11
  %8 = ptrtoint ptr %pkey_tbl_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pkey_tbl_len, align 8
  %conv15 = zext i16 %9 to i32
  %10 = ptrtoint ptr %immutable to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv15, ptr %immutable, align 4
  %gid_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 5
  %11 = ptrtoint ptr %gid_tbl_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gid_tbl_len, align 8
  %gid_tbl_len17 = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 1
  %13 = ptrtoint ptr %gid_tbl_len17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %gid_tbl_len17, align 4
  %max_mad_size = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 3
  %14 = ptrtoint ptr %max_mad_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 256, ptr %max_mad_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end11.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #13
  ret i32 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_port_link_layer(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_query_gid(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvrdma_add_gid(ptr nocapture noundef readonly %attr, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  %req.i = alloca %union.pvrdma_cmd_req, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_gid_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %gid = getelementptr inbounds %struct.ib_gid_attr, ptr %attr, i32 0, i32 2
  %gid_type = getelementptr inbounds %struct.ib_gid_attr, ptr %attr, i32 0, i32 3
  %2 = ptrtoint ptr %gid_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gid_type, align 8
  %call1 = tail call zeroext i8 @ib_gid_type_to_pvrdma(i32 noundef %3) #13
  %index = getelementptr inbounds %struct.ib_gid_attr, ptr %attr, i32 0, i32 4
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 4
  %conv = zext i16 %5 to i32
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req.i) #13
  %6 = getelementptr inbounds i8, ptr %req.i, i32 48
  %7 = call ptr @memset(ptr %6, i32 255, i32 136)
  %sgid_tbl.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %sgid_tbl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sgid_tbl.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pdev.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.108) #16
  br label %pvrdma_add_gid_at_index.exit

if.end.i:                                         ; preds = %entry
  %12 = call ptr @memset(ptr %req.i, i32 0, i32 48)
  %cmd.i = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req.i, i32 0, i32 1
  %13 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 15, ptr %cmd.i, align 8
  %new_gid.i = getelementptr inbounds %struct.pvrdma_cmd_create_bind, ptr %req.i, i32 0, i32 4
  %14 = call ptr @memcpy(ptr %new_gid.i, ptr %gid, i32 16)
  %mtu.i = getelementptr inbounds %struct.pvrdma_cmd_create_bind, ptr %req.i, i32 0, i32 1
  %15 = ptrtoint ptr %mtu.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1024, ptr %mtu.i, align 8
  %vlan.i = getelementptr inbounds %struct.pvrdma_cmd_create_bind, ptr %req.i, i32 0, i32 2
  %16 = ptrtoint ptr %vlan.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4095, ptr %vlan.i, align 4
  %index3.i = getelementptr inbounds %struct.pvrdma_cmd_create_bind, ptr %req.i, i32 0, i32 3
  %17 = ptrtoint ptr %index3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %index3.i, align 8
  %gid_type4.i = getelementptr inbounds %struct.pvrdma_cmd_create_bind, ptr %req.i, i32 0, i32 5
  %18 = ptrtoint ptr %gid_type4.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call1, ptr %gid_type4.i, align 4
  %call5.i = call i32 @pvrdma_cmd_post(ptr noundef %1, ptr noundef nonnull %req.i, ptr noundef null, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end9.i, label %if.end12.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %pdev10.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %pdev10.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev10.i, align 8
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11.i, ptr noundef nonnull @.str.111, i32 noundef %call5.i) #16
  br label %pvrdma_add_gid_at_index.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %sgid_tbl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sgid_tbl.i, align 8
  %arrayidx.i = getelementptr %union.ib_gid, ptr %22, i32 %conv
  %23 = call ptr @memcpy(ptr %arrayidx.i, ptr %gid, i32 16)
  br label %pvrdma_add_gid_at_index.exit

pvrdma_add_gid_at_index.exit:                     ; preds = %if.end12.i, %do.end9.i, %do.end.i
  %retval.0.i = phi i32 [ -14, %do.end9.i ], [ 0, %if.end12.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req.i) #13
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvrdma_del_gid(ptr nocapture noundef readonly %attr, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  %req.i = alloca %union.pvrdma_cmd_req, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_gid_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_del_gid.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_del_gid, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !271

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %index = getelementptr inbounds %struct.ib_gid_attr, ptr %attr, i32 0, i32 4
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 4
  %conv = zext i16 %5 to i32
  %netdev = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 37
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_del_gid.__UNIQUE_ID_ddebug514, ptr noundef %dev4, ptr noundef nonnull @.str.114, i32 noundef %conv, ptr noundef %7) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %index5 = getelementptr inbounds %struct.ib_gid_attr, ptr %attr, i32 0, i32 4
  %8 = ptrtoint ptr %index5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %index5, align 4
  %conv6 = zext i16 %9 to i32
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %req.i) #13
  %10 = getelementptr inbounds i8, ptr %req.i, i32 40
  %11 = call ptr @memset(ptr %10, i32 255, i32 144)
  %sgid_tbl.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %sgid_tbl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sgid_tbl.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %pdev.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.108) #16
  br label %pvrdma_del_gid_at_index.exit

if.end.i:                                         ; preds = %do.end
  %16 = call ptr @memset(ptr %req.i, i32 0, i32 40)
  %cmd.i = getelementptr inbounds %struct.pvrdma_cmd_hdr, ptr %req.i, i32 0, i32 1
  %17 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %cmd.i, align 8
  %dest_gid.i = getelementptr inbounds %struct.pvrdma_cmd_destroy_bind, ptr %req.i, i32 0, i32 2
  %arrayidx.i = getelementptr %union.ib_gid, ptr %13, i32 %conv6
  %18 = call ptr @memcpy(ptr %dest_gid.i, ptr %arrayidx.i, i32 16)
  %index3.i = getelementptr inbounds %struct.pvrdma_cmd_destroy_bind, ptr %req.i, i32 0, i32 1
  %19 = ptrtoint ptr %index3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv6, ptr %index3.i, align 8
  %call.i = call i32 @pvrdma_cmd_post(ptr noundef %1, ptr noundef nonnull %req.i, ptr noundef null, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end7.i, label %if.end10.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %pdev8.i = getelementptr inbounds %struct.pvrdma_dev, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %pdev8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev8.i, align 8
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9.i, ptr noundef nonnull @.str.117, i32 noundef %call.i) #16
  br label %pvrdma_del_gid_at_index.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %sgid_tbl.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sgid_tbl.i, align 8
  %arrayidx12.i = getelementptr %union.ib_gid, ptr %23, i32 %conv6
  %24 = call ptr @memset(ptr %arrayidx12.i, i32 0, i32 16)
  br label %pvrdma_del_gid_at_index.exit

pvrdma_del_gid_at_index.exit:                     ; preds = %if.end10.i, %do.end7.i, %do.end.i
  %retval.0.i12 = phi i32 [ %call.i, %do.end7.i ], [ 0, %if.end10.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %req.i) #13
  ret i32 %retval.0.i12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_query_pkey(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_alloc_ucontext(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvrdma_dealloc_ucontext(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_alloc_pd(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_dealloc_pd(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_create_ah(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_destroy_ah(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_create_qp(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_modify_qp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_query_qp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_destroy_qp(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_create_cq(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_destroy_cq(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvrdma_get_dma_mr(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvrdma_reg_user_mr(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_dereg_mr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvrdma_alloc_mr(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_map_mr_sg(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rev_show(ptr nocapture noundef readnone %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef 1) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hca_type_show(ptr nocapture noundef readnone %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @board_id_show(ptr nocapture noundef readnone %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef 1) #13
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ib_gid_type_to_pvrdma(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_cmd_post(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_create_srq(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_modify_srq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_query_srq(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvrdma_destroy_srq(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvrdma_netdevice_event_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @pvrdma_device_list_lock, i32 noundef 0) #13
  %event = getelementptr inbounds %struct.pvrdma_netdevice_work, ptr %work, i32 0, i32 2
  %event_netdev = getelementptr inbounds %struct.pvrdma_netdevice_work, ptr %work, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %lor.lhs.false.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @pvrdma_device_list, %entry ], [ %.pn, %lor.lhs.false.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @pvrdma_device_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %1 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cmp4 = icmp eq i32 %2, 5
  br i1 %cmp4, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %netdev = getelementptr i8, ptr %.pn, i32 648
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 4
  %5 = ptrtoint ptr %event_netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %event_netdev, align 4
  %cmp5 = icmp eq ptr %4, %6
  br i1 %cmp5, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.cond_crit_edge

lor.lhs.false.for.cond_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %dev.0.le = getelementptr i8, ptr %.pn, i32 -2812
  %7 = ptrtoint ptr %event_netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %event_netdev, align 4
  tail call fastcc void @pvrdma_netdevice_event_handle(ptr noundef %dev.0.le, ptr noundef %8, i32 noundef %2)
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pvrdma_device_list_lock) #13
  tail call void @kfree(ptr noundef %work) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pvrdma_netdevice_event_handle(ptr noundef %dev, ptr noundef %ndev, i32 noundef %event) unnamed_addr #2 align 64 {
entry:
  %ib_event.i56 = alloca %struct.ib_event, align 4
  %ib_event.i = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %event, label %do.body22 [
    i32 3, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge72
    i32 1, label %sw.bb1
    i32 6, label %sw.bb6
    i32 5, label %sw.bb9
  ]

entry.sw.bb_crit_edge72:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge72
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ib_event.i) #13
  %1 = getelementptr inbounds %struct.ib_event, ptr %ib_event.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.ib_event, ptr %ib_event.i, i32 0, i32 2
  %3 = ptrtoint ptr %ib_event.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %ib_event.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %1, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %2, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %ib_event.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ib_event.i) #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !274
  tail call void @arm_heavy_mb() #13
  %regs.i = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1) #13, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !288
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %9, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #13, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.else, label %do.end4

do.end4:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  %pdev = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.120) #16
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ib_event.i56) #13
  %13 = getelementptr inbounds %struct.ib_event, ptr %ib_event.i56, i32 0, i32 1
  %14 = getelementptr inbounds %struct.ib_event, ptr %ib_event.i56, i32 0, i32 2
  %15 = ptrtoint ptr %ib_event.i56 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %ib_event.i56, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %13, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 9, ptr %14, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %ib_event.i56) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ib_event.i56) #13
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %call7 = tail call i32 @ib_device_set_netdev(ptr noundef %dev, ptr noundef null, i32 noundef 1) #13
  %netdev = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 37
  %18 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %sw.bb6.dev_put.exit_crit_edge, label %do.body1.i

sw.bb6.dev_put.exit_crit_edge:                    ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_put.exit

do.body1.i:                                       ; preds = %sw.bb6
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !279
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 118
  %21 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcpu_refcnt.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %29, %23
  %30 = inttoptr i32 %add.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add13.i = add i32 %32, -1
  store i32 %add13.i, ptr %30, align 4
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !280
  %and.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !277

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #13, !srcloc !281
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %sw.bb6.dev_put.exit_crit_edge
  %34 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %netdev, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %pdev10 = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 1
  %35 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev10, align 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %devfn, align 4
  %and = and i32 %38, 248
  %bus = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus, align 8
  %call13 = tail call ptr @pci_get_slot(ptr noundef %40, i32 noundef %and) #13
  %netdev14 = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 37
  %41 = ptrtoint ptr %netdev14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %netdev14, align 4
  %cmp = icmp eq ptr %42, null
  br i1 %cmp, label %land.lhs.true, label %sw.bb9.if.end21_crit_edge

sw.bb9.if.end21_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

land.lhs.true:                                    ; preds = %sw.bb9
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %call13, i32 0, i32 44, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i, align 4
  %cmp16 = icmp eq ptr %44, %ndev
  br i1 %cmp16, label %if.then17, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then17:                                        ; preds = %land.lhs.true
  %call19 = tail call i32 @ib_device_set_netdev(ptr noundef %dev, ptr noundef %ndev, i32 noundef 1) #13
  %45 = ptrtoint ptr %netdev14 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %ndev, ptr %netdev14, align 4
  %tobool.not.i57 = icmp eq ptr %ndev, null
  br i1 %tobool.not.i57, label %if.then17.if.end21_crit_edge, label %do.body1.i66

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

do.body1.i66:                                     ; preds = %if.then17
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !279
  %pcpu_refcnt.i58 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 118
  %47 = ptrtoint ptr %pcpu_refcnt.i58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pcpu_refcnt.i58, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = tail call i32 @llvm.read_register.i32(metadata !261) #13
  %and.i.i59 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i59 to ptr
  %cpu.i60 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %cpu.i60 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cpu.i60, align 4
  %arrayidx.i61 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i61, align 4
  %add.i62 = add i32 %55, %49
  %56 = inttoptr i32 %add.i62 to ptr
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add13.i63 = add i32 %58, 1
  store i32 %add13.i63, ptr %56, align 4
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !280
  %and.i.i.i64 = and i32 %59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i64)
  %tobool24.not.i65 = icmp eq i32 %and.i.i.i64, 0
  br i1 %tobool24.not.i65, label %if.then28.i67, label %do.body1.i66.do.end30.i68_crit_edge, !prof !277

do.body1.i66.do.end30.i68_crit_edge:              ; preds = %do.body1.i66
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i68

if.then28.i67:                                    ; preds = %do.body1.i66
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30.i68

do.end30.i68:                                     ; preds = %if.then28.i67, %do.body1.i66.do.end30.i68_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #13, !srcloc !281
  br label %if.end21

if.end21:                                         ; preds = %do.end30.i68, %if.then17.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %sw.bb9.if.end21_crit_edge
  tail call void @pci_dev_put(ptr noundef %call13) #13
  br label %sw.epilog

do.body22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvrdma_netdevice_event_handle.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvrdma_netdevice_event_handle, %if.then27)) #13
          to label %sw.epilog [label %if.then27], !srcloc !271

if.then27:                                        ; preds = %do.body22
  %pdev28 = getelementptr inbounds %struct.pvrdma_dev, ptr %dev, i32 0, i32 1
  %60 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev28, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %init_name.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13, i32 0, i32 0, i32 3
  %62 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i69 = icmp eq ptr %63, null
  br i1 %tobool.not.i69, label %if.end.i, label %if.then27.dev_name.exit_crit_edge

if.then27.dev_name.exit_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  %64 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then27.dev_name.exit_crit_edge
  %retval.0.i70 = phi ptr [ %66, %if.end.i ], [ %63, %if.then27.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pvrdma_netdevice_event_handle.__UNIQUE_ID_ddebug515, ptr noundef %dev29, ptr noundef nonnull @.str.122, i32 noundef %event, ptr noundef %retval.0.i70) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %dev_name.exit, %do.body22, %if.end21, %dev_put.exit, %if.else, %do.end4, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !134, !135, !137, !139, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !189, !191, !193, !195, !197, !198, !200, !202, !203, !205, !207, !209, !210, !212, !214, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !237, !238, !240, !241, !242, !243, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !258, !259}
!llvm.named.register.sp = !{!261}
!llvm.module.flags = !{!262, !263, !264, !265, !266, !267, !268, !269}
!llvm.ident = !{!270}

!0 = !{ptr @__initcall__kmod_vmw_pvrdma__524_1145_pvrdma_init6, !1, !"__initcall__kmod_vmw_pvrdma__524_1145_pvrdma_init6", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 1145, i32 1}
!2 = !{ptr @__exitcall_pvrdma_cleanup, !3, !"__exitcall_pvrdma_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 1146, i32 1}
!4 = !{ptr @__UNIQUE_ID_author525, !5, !"__UNIQUE_ID_author525", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 1148, i32 1}
!6 = !{ptr @__UNIQUE_ID_description526, !7, !"__UNIQUE_ID_description526", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 1149, i32 1}
!8 = !{ptr @__UNIQUE_ID_file527, !9, !"__UNIQUE_ID_file527", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 1150, i32 1}
!10 = !{ptr @__UNIQUE_ID_license528, !9, !"__UNIQUE_ID_license528", i1 false, i1 false}
!11 = !{ptr @event_wq, !12, !"event_wq", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 63, i32 33}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 1117, i32 11}
!15 = !{ptr @pvrdma_driver, !16, !"pvrdma_driver", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 1116, i32 26}
!17 = !{ptr @pvrdma_pci_table, !18, !"pvrdma_pci_table", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 1109, i32 35}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 761, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pvrdma_pci_probe.__UNIQUE_ID_ddebug516, !20, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 766, i32 3}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pvrdma_pci_probe._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @pvrdma_pci_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 783, i32 3}
!32 = !{ptr @pvrdma_pci_probe._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pvrdma_pci_probe._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 787, i32 2}
!36 = !{ptr @pvrdma_pci_probe.__UNIQUE_ID_ddebug517, !35, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 789, i32 2}
!39 = !{ptr @pvrdma_pci_probe.__UNIQUE_ID_ddebug518, !38, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 791, i32 2}
!42 = !{ptr @pvrdma_pci_probe.__UNIQUE_ID_ddebug519, !41, !"__UNIQUE_ID_ddebug519", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 793, i32 2}
!45 = !{ptr @pvrdma_pci_probe.__UNIQUE_ID_ddebug520, !44, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!46 = !{ptr @pvrdma_pci_probe.__UNIQUE_ID_ddebug521, !47, !"__UNIQUE_ID_ddebug521", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 795, i32 2}
!48 = !{ptr @pvrdma_pci_probe.__UNIQUE_ID_ddebug522, !49, !"__UNIQUE_ID_ddebug522", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 797, i32 2}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 802, i32 3}
!52 = !{ptr @pvrdma_pci_probe._entry.14, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @pvrdma_pci_probe._entry_ptr.16, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 809, i32 3}
!56 = !{ptr @pvrdma_pci_probe._entry.17, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @pvrdma_pci_probe._entry_ptr.19, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 817, i32 4}
!60 = !{ptr @pvrdma_pci_probe._entry.20, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @pvrdma_pci_probe._entry_ptr.22, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 829, i32 3}
!64 = !{ptr @pvrdma_pci_probe._entry.23, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @pvrdma_pci_probe._entry_ptr.25, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 842, i32 3}
!68 = !{ptr @pvrdma_pci_probe._entry.26, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @pvrdma_pci_probe._entry_ptr.28, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 848, i32 2}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @pvrdma_pci_probe._entry.29, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @pvrdma_pci_probe._entry_ptr.32, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 854, i32 3}
!77 = !{ptr @pvrdma_pci_probe._entry.33, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @pvrdma_pci_probe._entry_ptr.35, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 925, i32 3}
!81 = !{ptr @pvrdma_pci_probe._entry.36, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @pvrdma_pci_probe._entry_ptr.38, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 933, i32 3}
!85 = !{ptr @pvrdma_pci_probe._entry.39, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @pvrdma_pci_probe._entry_ptr.41, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 940, i32 3}
!89 = !{ptr @pvrdma_pci_probe._entry.42, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @pvrdma_pci_probe._entry_ptr.44, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 949, i32 3}
!93 = !{ptr @pvrdma_pci_probe._entry.45, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @pvrdma_pci_probe._entry_ptr.47, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 955, i32 2}
!97 = !{ptr @pvrdma_pci_probe._entry.48, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @pvrdma_pci_probe._entry_ptr.50, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 960, i32 3}
!101 = !{ptr @pvrdma_pci_probe._entry.51, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @pvrdma_pci_probe._entry_ptr.53, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 968, i32 3}
!105 = !{ptr @pvrdma_pci_probe._entry.54, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @pvrdma_pci_probe._entry_ptr.56, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 980, i32 2}
!109 = !{ptr @pvrdma_pci_probe.__UNIQUE_ID_ddebug523, !108, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!110 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 993, i32 3}
!112 = !{ptr @pvrdma_pci_probe._entry.58, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @pvrdma_pci_probe._entry_ptr.60, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.62, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 1001, i32 3}
!116 = !{ptr @pvrdma_pci_probe._entry.61, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @pvrdma_pci_probe._entry_ptr.63, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.65, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 1008, i32 3}
!120 = !{ptr @pvrdma_pci_probe._entry.64, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @pvrdma_pci_probe._entry_ptr.66, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.68, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 1012, i32 2}
!124 = !{ptr @pvrdma_pci_probe._entry.67, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @pvrdma_pci_probe._entry_ptr.69, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.70, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 61, i32 8}
!128 = !{ptr @.str.71, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @pvrdma_device_list_lock, !127, !"pvrdma_device_list_lock", i1 false, i1 false}
!130 = !{ptr @pvrdma_device_list, !131, !"pvrdma_device_list", i1 false, i1 false}
!131 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 62, i32 8}
!132 = !{ptr @pvrdma_init_device.__key, !133, !"__key", i1 false, i1 false}
!133 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 113, i32 2}
!134 = !{ptr @.str.72, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @sema_init.__key, !136, !"__key", i1 false, i1 false}
!136 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!137 = !{ptr @.str.73, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!139 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!141 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 543, i32 3}
!143 = !{ptr @.str.76, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @pvrdma_alloc_intrs._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @pvrdma_alloc_intrs._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.78, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 554, i32 4}
!148 = !{ptr @pvrdma_alloc_intrs._entry.77, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @pvrdma_alloc_intrs._entry_ptr.79, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.80, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 269, i32 2}
!152 = !{ptr @.str.81, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @pvrdma_intr0_handler.__UNIQUE_ID_ddebug508, !151, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!154 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 403, i32 2}
!156 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @pvrdma_intr1_handler.__UNIQUE_ID_ddebug509, !155, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!158 = !{ptr @.str.84, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 380, i32 3}
!160 = !{ptr @.str.85, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.86, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @pvrdma_dev_event._entry, !159, !"_entry", i1 false, i1 false}
!163 = !{ptr @pvrdma_dev_event._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.87, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 479, i32 2}
!166 = !{ptr @.str.88, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @pvrdma_intrx_handler.__UNIQUE_ID_ddebug510, !165, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!168 = !{ptr @.str.89, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 515, i32 2}
!170 = !{ptr @.str.90, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @pvrdma_enable_intrs.__UNIQUE_ID_ddebug512, !169, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!172 = !{ptr @pvrdma_register_device.__key, !173, !"__key", i1 false, i1 false}
!173 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 216, i32 2}
!174 = !{ptr @.str.91, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @pvrdma_register_device.__key.92, !176, !"__key", i1 false, i1 false}
!176 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 217, i32 2}
!177 = !{ptr @.str.93, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @pvrdma_register_device.__key.94, !179, !"__key", i1 false, i1 false}
!179 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 223, i32 2}
!180 = !{ptr @.str.95, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @pvrdma_register_device.__key.96, !182, !"__key", i1 false, i1 false}
!182 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 229, i32 2}
!183 = !{ptr @.str.97, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @pvrdma_register_device.__key.98, !185, !"__key", i1 false, i1 false}
!185 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 244, i32 2}
!186 = !{ptr @.str.99, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.100, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 246, i32 41}
!189 = !{ptr @pvrdma_dev_ops, !190, !"pvrdma_dev_ops", i1 false, i1 false}
!190 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 146, i32 35}
!191 = !{ptr @pvrdma_attr_group, !192, !"pvrdma_attr_group", i1 false, i1 false}
!192 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 96, i32 37}
!193 = !{ptr @pvrdma_class_attributes, !194, !"pvrdma_class_attributes", i1 false, i1 false}
!194 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 89, i32 26}
!195 = !{ptr @.str.101, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 80, i32 8}
!197 = !{ptr @dev_attr_hw_rev, !196, !"dev_attr_hw_rev", i1 false, i1 false}
!198 = !{ptr @.str.102, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 78, i32 25}
!200 = !{ptr @.str.103, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 73, i32 8}
!202 = !{ptr @dev_attr_hca_type, !201, !"dev_attr_hca_type", i1 false, i1 false}
!203 = !{ptr @.str.104, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 71, i32 25}
!205 = !{ptr @.str.105, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 71, i32 44}
!207 = !{ptr @.str.106, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 87, i32 8}
!209 = !{ptr @dev_attr_board_id, !208, !"dev_attr_board_id", i1 false, i1 false}
!210 = !{ptr @.str.107, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 104, i32 40}
!212 = !{ptr @.str.108, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 592, i32 3}
!214 = !{ptr @.str.109, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @pvrdma_add_gid_at_index._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @pvrdma_add_gid_at_index._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.111, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 606, i32 3}
!219 = !{ptr @pvrdma_add_gid_at_index._entry.110, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @pvrdma_add_gid_at_index._entry_ptr.112, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.113, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 654, i32 2}
!223 = !{ptr @.str.114, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @pvrdma_del_gid.__UNIQUE_ID_ddebug514, !222, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!225 = !{ptr @.str.115, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 631, i32 3}
!227 = !{ptr @pvrdma_del_gid_at_index._entry, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @pvrdma_del_gid_at_index._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.117, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 642, i32 3}
!231 = !{ptr @pvrdma_del_gid_at_index._entry.116, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @pvrdma_del_gid_at_index._entry_ptr.118, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @pvrdma_dev_srq_ops, !234, !"pvrdma_dev_srq_ops", i1 false, i1 false}
!234 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 192, i32 35}
!235 = !{ptr @pvrdma_netdevice_event.__key, !236, !"__key", i1 false, i1 false}
!236 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 743, i32 2}
!237 = !{ptr @.str.119, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.120, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 679, i32 4}
!240 = !{ptr @.str.121, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @pvrdma_netdevice_event_handle._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @pvrdma_netdevice_event_handle._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.122, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 705, i32 3}
!245 = !{ptr @pvrdma_netdevice_event_handle.__UNIQUE_ID_ddebug515, !244, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!246 = !{ptr @.str.123, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 521, i32 2}
!248 = !{ptr @.str.124, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @pvrdma_disable_intrs.__UNIQUE_ID_ddebug513, !247, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!250 = !{ptr @.str.125, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 508, i32 2}
!252 = !{ptr @.str.126, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @pvrdma_free_irq.__UNIQUE_ID_ddebug511, !251, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!254 = !{ptr @.str.127, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 1062, i32 2}
!256 = !{ptr @.str.128, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @pvrdma_pci_remove._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @pvrdma_pci_remove._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.129, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/infiniband/hw/vmw_pvrdma/pvrdma_main.c", i32 1127, i32 13}
!261 = !{!"sp"}
!262 = !{i32 1, !"wchar_size", i32 2}
!263 = !{i32 1, !"min_enum_size", i32 4}
!264 = !{i32 8, !"branch-target-enforcement", i32 0}
!265 = !{i32 8, !"sign-return-address", i32 0}
!266 = !{i32 8, !"sign-return-address-all", i32 0}
!267 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!268 = !{i32 7, !"uwtable", i32 1}
!269 = !{i32 7, !"frame-pointer", i32 2}
!270 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!271 = !{i64 2148843597, i64 2148843602, i64 2148843615, i64 2148843659, i64 2148843693, i64 2148843714}
!272 = !{i64 6130188}
!273 = !{i64 2158382313}
!274 = !{i64 2158380715}
!275 = !{i64 6129770}
!276 = !{i64 2158482000}
!277 = !{!"branch_weights", i32 1, i32 2000}
!278 = !{i64 2158497310}
!279 = !{i64 623677, i64 623738}
!280 = !{i64 626409}
!281 = !{i64 626694}
!282 = !{i8 0, i8 2}
!283 = !{i64 2148232726, i64 2148232758, i64 2148232787, i64 2148232821, i64 2148232852, i64 2148232875}
!284 = !{!"branch_weights", i32 2000, i32 1}
!285 = !{i64 2148320727}
!286 = !{i64 2148235191, i64 2148235223, i64 2148235252, i64 2148235286, i64 2148235317, i64 2148235340}
!287 = !{i64 2149330400}
!288 = !{i64 2158429949}
