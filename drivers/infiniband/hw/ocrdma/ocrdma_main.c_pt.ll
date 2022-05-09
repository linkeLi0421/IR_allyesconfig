; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/ocrdma/ocrdma_main.c_pt.bc'
source_filename = "../drivers/infiniband/hw/ocrdma/ocrdma_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ocrdma_driver = type { [32 x i8], i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ib_event = type { ptr, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.ocrdma_dev = type { %struct.ib_device, %struct.ocrdma_dev_attr, %struct.mutex, [60 x i8], %struct.spinlock, ptr, ptr, ptr, i32, %struct.delayed_work, i16, i16, %struct.spinlock, i32, ptr, ptr, %struct.anon.179, ptr, %struct.ocrdma_mq, %struct.mqe_ctx, %struct.be_dev_info, %struct.phy_info, [32 x i8], i32, %struct.list_head, i32, ptr, i8, i8, %struct.atomic_t, i16, i32, i32, i32, %struct.mutex, %struct.stats_mem, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, %struct.ocrdma_stats, ptr, [17 x %struct.atomic_t], [22 x %struct.atomic_t], ptr }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.171 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.ocrdma_dev_attr = type { [32 x i8], i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.179 = type { ptr, i32, i32, i32, %struct.spinlock, i32, %struct.ocrdma_pbl }
%struct.ocrdma_pbl = type { ptr, i32 }
%struct.ocrdma_mq = type { %struct.ocrdma_queue_info, %struct.ocrdma_queue_info, i8 }
%struct.ocrdma_queue_info = type { ptr, i32, i32, i16, i16, i16, i16, i16, i8 }
%struct.mqe_ctx = type { %struct.mutex, %struct.wait_queue_head, i32, i16, i16, i8, i8 }
%struct.be_dev_info = type { ptr, i64, i32, i32, i64, i32, ptr, ptr, [6 x i8], i32, i32, %struct.anon.181 }
%struct.anon.181 = type { i32, i32, [32 x i32] }
%struct.phy_info = type { i16, i16, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.stats_mem = type { %struct.ocrdma_mqe, ptr, i32, i32, ptr }
%struct.ocrdma_mqe = type { %struct.ocrdma_mqe_hdr, %union.anon.182 }
%struct.ocrdma_mqe_hdr = type { i32, i32, i32, i32, i32 }
%union.anon.182 = type { %struct.ocrdma_mqe_emb_cmd }
%struct.ocrdma_mqe_emb_cmd = type { %struct.ocrdma_mbx_hdr, [220 x i8] }
%struct.ocrdma_mbx_hdr = type { i32, i32, i32, i32 }
%struct.ocrdma_stats = type { i8, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.180, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.180 = type { ptr }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }

@__UNIQUE_ID_description508 = internal constant [58 x i8] c"ocrdma.description=Emulex OneConnect RoCE Driver 11.0.0.0\00", section ".modinfo", align 1
@__UNIQUE_ID_author509 = internal constant [33 x i8] c"ocrdma.author=Emulex Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file510 = internal constant [48 x i8] c"ocrdma.file=drivers/infiniband/hw/ocrdma/ocrdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license511 = internal constant [28 x i8] c"ocrdma.license=Dual BSD/GPL\00", section ".modinfo", align 1
@ocrdma_drv = internal global { %struct.ocrdma_driver, [48 x i8] } { %struct.ocrdma_driver { [32 x i8] c"ocrdma_driver\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, ptr @ocrdma_add, ptr @ocrdma_remove, ptr @ocrdma_event_handler }, [48 x i8] zeroinitializer }, align 32
@__initcall__kmod_ocrdma__513_431_ocrdma_init_module6 = internal global ptr @ocrdma_init_module, section ".initcall6.init", align 4
@__exitcall_ocrdma_exit_module = internal global ptr @ocrdma_exit_module, section ".exitcall.exit", align 4
@ocrdma_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Unable to allocate ib device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ocrdma_add\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/infiniband/hw/ocrdma/ocrdma_main.c\00", [53 x i8] zeroinitializer }, align 32
@ocrdma_add._entry_ptr = internal global ptr @ocrdma_add._entry, section ".printk_index", align 4
@ocrdma_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&dev->eqd_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@ocrdma_add.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&dev->eqd_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@ocrdma_add._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s %s: %s \22%s\22 port %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ocrdma_add._entry_ptr.8 = internal global ptr @ocrdma_add._entry.6, section ".printk_index", align 4
@ocrdma_add._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s ocrdma%d driver loaded successfully\0A\00", [54 x i8] zeroinitializer }, align 32
@ocrdma_add._entry_ptr.11 = internal global ptr @ocrdma_add._entry.9, section ".printk_index", align 4
@ocrdma_add._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s() leaving. ret=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@ocrdma_add._entry_ptr.14 = internal global ptr @ocrdma_add._entry.12, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ocrdma_alloc_resources.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->dev_lock\00", [17 x i8] zeroinitializer }, align 32
@ocrdma_alloc_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: stats resource allocation failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ocrdma_alloc_resources\00", [41 x i8] zeroinitializer }, align 32
@ocrdma_alloc_resources._entry_ptr = internal global ptr @ocrdma_alloc_resources._entry, section ".printk_index", align 4
@ocrdma_alloc_resources.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dev->av_tbl.lock\00", [46 x i8] zeroinitializer }, align 32
@ocrdma_alloc_resources.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dev->flush_q_lock\00", [45 x i8] zeroinitializer }, align 32
@ocrdma_alloc_resources._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s(%d) error.\0A\00", [47 x i8] zeroinitializer }, align 32
@ocrdma_alloc_resources._entry_ptr.24 = internal global ptr @ocrdma_alloc_resources._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Emulex OneConnect RoCE HCA\00", [37 x i8] zeroinitializer }, align 32
@ocrdma_dev_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 7, i32 2, i8 0, ptr @ocrdma_attr_group, ptr null, ptr @ocrdma_post_send, ptr @ocrdma_post_recv, ptr null, ptr null, ptr @ocrdma_poll_cq, ptr null, ptr @ocrdma_arm_cq, ptr null, ptr @ocrdma_process_mad, ptr @ocrdma_query_device, ptr null, ptr @get_dev_fw_str, ptr null, ptr @ocrdma_query_port, ptr null, ptr @ocrdma_port_immutable, ptr @ocrdma_link_layer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ocrdma_query_pkey, ptr @ocrdma_alloc_ucontext, ptr @ocrdma_dealloc_ucontext, ptr @ocrdma_mmap, ptr null, ptr null, ptr @ocrdma_alloc_pd, ptr @ocrdma_dealloc_pd, ptr @ocrdma_create_ah, ptr @ocrdma_create_ah, ptr null, ptr @ocrdma_query_ah, ptr @ocrdma_destroy_ah, ptr null, ptr null, ptr null, ptr null, ptr @ocrdma_create_qp, ptr @ocrdma_modify_qp, ptr @ocrdma_query_qp, ptr @ocrdma_destroy_qp, ptr @ocrdma_create_cq, ptr null, ptr @ocrdma_destroy_cq, ptr @ocrdma_resize_cq, ptr @ocrdma_get_dma_mr, ptr @ocrdma_reg_user_mr, ptr null, ptr null, ptr @ocrdma_dereg_mr, ptr @ocrdma_alloc_mr, ptr null, ptr null, ptr @ocrdma_map_mr_sg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 36, i32 0, i32 512, i32 0, i32 132, i32 640, i32 0, i32 0, i32 268, i32 0 }, [148 x i8] zeroinitializer }, align 32
@ocrdma_dev_srq_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ocrdma_post_srq_recv, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ocrdma_create_srq, ptr @ocrdma_modify_srq, ptr @ocrdma_query_srq, ptr @ocrdma_destroy_srq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 384, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ocrdma%d\00", [23 x i8] zeroinitializer }, align 32
@ocrdma_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ocrdma_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ocrdma_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_hw_rev, ptr @dev_attr_hca_type, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_hw_rev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hw_rev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hca_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hca_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hw_rev\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hca_type\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Emulex OneConnect RoCE HCA(Skyhawk)\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Emulex OneConnect RoCE HCA(Unknown)\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"ocrdma_drv\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 400, i32 29 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 270, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 301, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 304, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 308, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 318, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 221, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 242, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 246, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 247, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 250, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 195, i32 31 }
@___asan_gen_.115 = private unnamed_addr constant [15 x i8] c"ocrdma_dev_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 132, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant [19 x i8] c"ocrdma_dev_srq_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 178, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 215, i32 41 }
@___asan_gen_.124 = private unnamed_addr constant [18 x i8] c"ocrdma_attr_group\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 128, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant [18 x i8] c"ocrdma_attributes\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 122, i32 26 }
@___asan_gen_.130 = private unnamed_addr constant [16 x i8] c"dev_attr_hw_rev\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [18 x i8] c"dev_attr_hca_type\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 110, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 108, i32 25 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 120, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 118, i32 25 }
@___asan_gen_.149 = private constant [46 x i8] c"../drivers/infiniband/hw/ocrdma/ocrdma_main.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 98, i32 40 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 547, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [41 x i8] c"../drivers/infiniband/hw/ocrdma/ocrdma.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 549, i32 10 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author509, ptr @__UNIQUE_ID_description508, ptr @__UNIQUE_ID_file510, ptr @__UNIQUE_ID_license511, ptr @__exitcall_ocrdma_exit_module, ptr @__initcall__kmod_ocrdma__513_431_ocrdma_init_module6, ptr @ocrdma_add._entry, ptr @ocrdma_add._entry.12, ptr @ocrdma_add._entry.6, ptr @ocrdma_add._entry.9, ptr @ocrdma_add._entry_ptr, ptr @ocrdma_add._entry_ptr.11, ptr @ocrdma_add._entry_ptr.14, ptr @ocrdma_add._entry_ptr.8, ptr @ocrdma_alloc_resources._entry, ptr @ocrdma_alloc_resources._entry.22, ptr @ocrdma_alloc_resources._entry_ptr, ptr @ocrdma_alloc_resources._entry_ptr.24, ptr @ocrdma_exit_module, ptr @ocrdma_drv, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ocrdma_add.__key, ptr @.str.3, ptr @ocrdma_add.__key.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @ocrdma_alloc_resources.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @ocrdma_alloc_resources.__key.18, ptr @.str.19, ptr @ocrdma_alloc_resources.__key.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @ocrdma_dev_ops, ptr @ocrdma_dev_srq_ops, ptr @.str.26, ptr @ocrdma_attr_group, ptr @ocrdma_attributes, ptr @dev_attr_hw_rev, ptr @dev_attr_hca_type, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_drv to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_add.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_add._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_add._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_add._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_alloc_resources.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_alloc_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_alloc_resources.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_alloc_resources.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_alloc_resources._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_dev_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_dev_srq_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hw_rev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hca_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocrdma_update_link_state(ptr noundef %dev, i8 noundef zeroext %lstate) local_unnamed_addr #0 align 64 {
entry:
  %port_event.i = alloca %struct.ib_event, align 4
  %err_event.i = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %or = or i32 %1, 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %lstate)
  %cond = icmp eq i8 %lstate, 0
  br i1 %cond, label %if.then.if.end8_crit_edge, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %lstate)
  %tobool5.not = icmp eq i8 %lstate, 0
  br i1 %tobool5.not, label %if.then6, label %if.end4.if.else_crit_edge

if.end4.if.else_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %err_event.i) #10
  %3 = getelementptr inbounds %struct.ib_event, ptr %err_event.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ib_event, ptr %err_event.i, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %4, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %3, align 4
  %7 = ptrtoint ptr %err_event.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %err_event.i, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %err_event.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %err_event.i) #10
  br label %if.end8

if.else:                                          ; preds = %if.end4.if.else_crit_edge, %if.then.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %port_event.i) #10
  %8 = getelementptr inbounds %struct.ib_event, ptr %port_event.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.ib_event, ptr %port_event.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 9, ptr %9, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %8, align 4
  %12 = ptrtoint ptr %port_event.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %port_event.i, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %port_event.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %port_event.i) #10
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6, %if.then.if.end8_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ocrdma_exit_module() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @be_roce_unregister_driver(ptr noundef nonnull @ocrdma_drv) #10
  tail call void @ocrdma_rem_debugfs() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @be_roce_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocrdma_rem_debugfs() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ocrdma_init_module() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ocrdma_init_debugfs() #10
  %call = tail call i32 @be_roce_register_driver(ptr noundef nonnull @ocrdma_drv) #10
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dispatch_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ocrdma_add(ptr nocapture noundef readonly %dev_info) #0 align 64 {
entry:
  %lstate = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lstate) #10
  %0 = ptrtoint ptr %lstate to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %lstate, align 1
  %call = tail call ptr @_ib_alloc_device(i32 noundef 4480) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 236) #14
  %mbx_cmd = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 17
  %2 = ptrtoint ptr %mbx_cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %mbx_cmd, align 4
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.init_err_crit_edge, label %if.end7

if.end.init_err_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_err

if.end7:                                          ; preds = %if.end
  %nic_info = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 20
  %3 = call ptr @memcpy(ptr %nic_info, ptr %dev_info, i32 200)
  %pdev = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 20, i32 6
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devfn, align 4
  %and = and i32 %7, 7
  %id = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 25
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %id, align 4
  %call9 = tail call i32 @ocrdma_init_hw(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.init_err_crit_edge

if.end7.init_err_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_err

if.end12:                                         ; preds = %if.end7
  %dev_lock.i = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %dev_lock.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @ocrdma_alloc_resources.__key) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 8192) #14
  %cq_tbl.i = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 5
  %10 = ptrtoint ptr %cq_tbl.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i.i.i, ptr %cq_tbl.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end12.ocrdma_alloc_resources.exit_crit_edge, label %if.end.i

if.end12.ocrdma_alloc_resources.exit_crit_edge:   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocrdma_alloc_resources.exit

if.end.i:                                         ; preds = %if.end12
  %max_qp.i = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 1, i32 7
  %11 = ptrtoint ptr %max_qp.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max_qp.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool2.not.i = icmp eq i16 %12, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then3.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i42.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 8192) #14
  %qp_tbl.i = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 6
  %14 = ptrtoint ptr %qp_tbl.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i42.i, ptr %qp_tbl.i, align 16
  %tobool6.not.i = icmp eq ptr %call7.i.i.i42.i, null
  br i1 %tobool6.not.i, label %if.then3.i.ocrdma_alloc_resources.exit_crit_edge, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then3.i.ocrdma_alloc_resources.exit_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocrdma_alloc_resources.exit

if.end9.i:                                        ; preds = %if.then3.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %call1.i.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 131072, i32 noundef 3520, i32 noundef 5) #15
  %stag_arr.i = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 26
  %15 = ptrtoint ptr %stag_arr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1.i.i.i.i.i, ptr %stag_arr.i, align 8
  %cmp.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %cmp.i, label %if.end9.i.ocrdma_alloc_resources.exit_crit_edge, label %if.end13.i

if.end9.i.ocrdma_alloc_resources.exit_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocrdma_alloc_resources.exit

if.end13.i:                                       ; preds = %if.end9.i
  tail call void @ocrdma_alloc_pd_pool(ptr noundef nonnull %call) #10
  %call14.i = tail call zeroext i1 @ocrdma_alloc_stats_resources(ptr noundef nonnull %call) #10
  br i1 %call14.i, label %if.end16, label %do.end17.i

do.end17.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #13
  br label %ocrdma_alloc_resources.exit

ocrdma_alloc_resources.exit:                      ; preds = %do.end17.i, %if.end9.i.ocrdma_alloc_resources.exit_crit_edge, %if.then3.i.ocrdma_alloc_resources.exit_crit_edge, %if.end12.ocrdma_alloc_resources.exit_crit_edge
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.17, i32 noundef %17) #13
  br label %alloc_err

if.end16:                                         ; preds = %if.end13.i
  %lock.i = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 16, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @ocrdma_alloc_resources.__key.18, i16 noundef signext 3) #10
  %flush_q_lock.i = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %flush_q_lock.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @ocrdma_alloc_resources.__key.20, i16 noundef signext 3) #10
  tail call void @ocrdma_init_service_level(ptr noundef nonnull %call) #10
  %node_guid.i = getelementptr inbounds %struct.ib_device, ptr %call, i32 0, i32 17
  %mac_addr.i = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 20, i32 8
  %18 = call ptr @memcpy(ptr %node_guid.i, ptr %mac_addr.i, i32 3)
  %arrayidx.i.i.i = getelementptr i8, ptr %node_guid.i, i32 3
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %arrayidx.i.i.i, align 1
  %arrayidx1.i.i.i = getelementptr i8, ptr %node_guid.i, i32 4
  %20 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -2, ptr %arrayidx1.i.i.i, align 1
  %add.ptr.i.i.i = getelementptr i8, ptr %node_guid.i, i32 5
  %add.ptr2.i.i.i = getelementptr %struct.ocrdma_dev, ptr %call, i32 0, i32 20, i32 8, i32 3
  %21 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %add.ptr2.i.i.i, i32 3)
  %22 = ptrtoint ptr %node_guid.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %node_guid.i, align 1
  %24 = xor i8 %23, 2
  store i8 %24, ptr %node_guid.i, align 1
  %node_desc.i = getelementptr inbounds %struct.ib_device, ptr %call, i32 0, i32 16
  %25 = call ptr @memcpy(ptr %node_desc.i, ptr @.str.25, i32 27)
  %node_type.i = getelementptr inbounds %struct.ib_device, ptr %call, i32 0, i32 20
  %26 = ptrtoint ptr %node_type.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %node_type.i, align 1
  %phys_port_cnt.i = getelementptr inbounds %struct.ib_device, ptr %call, i32 0, i32 21
  %27 = ptrtoint ptr %phys_port_cnt.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %phys_port_cnt.i, align 16
  %eq_cnt.i = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 8
  %28 = ptrtoint ptr %eq_cnt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %eq_cnt.i, align 8
  %num_comp_vectors.i = getelementptr inbounds %struct.ib_device, ptr %call, i32 0, i32 12
  %30 = ptrtoint ptr %num_comp_vectors.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %num_comp_vectors.i, align 4
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 4
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %parent.i = getelementptr inbounds %struct.ib_device, ptr %call, i32 0, i32 13, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev7.i, ptr %parent.i, align 8
  tail call void @ib_set_device_ops(ptr noundef nonnull %call, ptr noundef nonnull @ocrdma_dev_ops) #10
  %dev_family.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 20, i32 9
  %34 = ptrtoint ptr %dev_family.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dev_family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %35)
  %cmp.i.i = icmp eq i32 %35, 15
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end16.ocrdma_get_asic_type.exit.i_crit_edge

if.end16.ocrdma_get_asic_type.exit.i_crit_edge:   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocrdma_get_asic_type.exit.i

land.lhs.true.i.i:                                ; preds = %if.end16
  %asic_id.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 31
  %36 = ptrtoint ptr %asic_id.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %asic_id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i.ocrdma_get_asic_type.exit.i_crit_edge

land.lhs.true.i.i.ocrdma_get_asic_type.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocrdma_get_asic_type.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 4
  %call.i.i = tail call i32 @pci_read_config_dword(ptr noundef %39, i32 noundef 156, ptr noundef %asic_id.i.i) #10
  br label %ocrdma_get_asic_type.exit.i

ocrdma_get_asic_type.exit.i:                      ; preds = %if.then.i.i, %land.lhs.true.i.i.ocrdma_get_asic_type.exit.i_crit_edge, %if.end16.ocrdma_get_asic_type.exit.i_crit_edge
  %asic_id3.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 31
  %40 = ptrtoint ptr %asic_id3.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %asic_id3.i.i, align 8
  %and.i.i = lshr i32 %41, 8
  %conv.i.i = trunc i32 %and.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i.i)
  %cmp.i111 = icmp eq i8 %conv.i.i, 4
  br i1 %cmp.i111, label %if.then.i, label %ocrdma_get_asic_type.exit.i.if.end.i114_crit_edge

ocrdma_get_asic_type.exit.i.if.end.i114_crit_edge: ; preds = %ocrdma_get_asic_type.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i114

if.then.i:                                        ; preds = %ocrdma_get_asic_type.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ib_set_device_ops(ptr noundef nonnull %call, ptr noundef nonnull @ocrdma_dev_srq_ops) #10
  br label %if.end.i114

if.end.i114:                                      ; preds = %if.then.i, %ocrdma_get_asic_type.exit.i.if.end.i114_crit_edge
  %netdev.i = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 20, i32 7
  %42 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev.i, align 8
  %call14.i112 = tail call i32 @ib_device_set_netdev(ptr noundef nonnull %call, ptr noundef %43, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i112)
  %tobool.not.i113 = icmp eq i32 %call14.i112, 0
  br i1 %tobool.not.i113, label %if.end16.i, label %if.end.i114.alloc_err_crit_edge

if.end.i114.alloc_err_crit_edge:                  ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_err

if.end16.i:                                       ; preds = %if.end.i114
  %44 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev, align 4
  %dma_parms.i.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44, i32 22
  %46 = ptrtoint ptr %dma_parms.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_parms.i.i, align 4
  %tobool.not.i43.i = icmp eq ptr %47, null
  br i1 %tobool.not.i43.i, label %if.end16.i.ocrdma_register_device.exit_crit_edge, label %if.then.i44.i

if.end16.i.ocrdma_register_device.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ocrdma_register_device.exit

if.then.i44.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %47, align 4
  br label %ocrdma_register_device.exit

ocrdma_register_device.exit:                      ; preds = %if.then.i44.i, %if.end16.i.ocrdma_register_device.exit_crit_edge
  %49 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev, align 4
  %dev24.i = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %call25.i = tail call i32 @ib_register_device(ptr noundef nonnull %call, ptr noundef nonnull @.str.26, ptr noundef %dev24.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool18.not = icmp eq i32 %call25.i, 0
  br i1 %tobool18.not, label %if.end20, label %ocrdma_register_device.exit.alloc_err_crit_edge

ocrdma_register_device.exit.alloc_err_crit_edge:  ; preds = %ocrdma_register_device.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_err

if.end20:                                         ; preds = %ocrdma_register_device.exit
  %call21 = call i32 @ocrdma_mbx_get_link_speed(ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull %lstate) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end20.if.end24_crit_edge

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %lstate to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %lstate, align 1
  call void @ocrdma_update_link_state(ptr noundef nonnull %call, i8 noundef zeroext %52)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  call void @ocrdma_add_port_stats(ptr noundef nonnull %call) #10
  %eqd_work = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 9
  call void @__init_work(ptr noundef %eqd_work, i32 noundef 0) #10
  %53 = ptrtoint ptr %eqd_work to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -64, ptr %eqd_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 9, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @ocrdma_add.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry33 = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 9, i32 0, i32 1
  %54 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %entry33, ptr %entry33, align 4
  %prev.i = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 9, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %entry33, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 9, i32 0, i32 2
  %56 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @ocrdma_eqd_set_task, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 9, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.5, ptr noundef nonnull @ocrdma_add.__key.4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %57 = load ptr, ptr @system_wq, align 4
  %call.i.i116 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %57, ptr noundef %eqd_work, i32 noundef 100) #10
  %58 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44, i32 3
  %60 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i117 = icmp eq ptr %61, null
  br i1 %tobool.not.i117, label %if.end.i118, label %if.end24.dev_name.exit_crit_edge

if.end24.dev_name.exit_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i118:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %62 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev53, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i118, %if.end24.dev_name.exit_crit_edge
  %retval.0.i119 = phi ptr [ %63, %if.end.i118 ], [ %61, %if.end24.dev_name.exit_crit_edge ]
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 8
  %64 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %device.i, align 2
  %66 = add i16 %65, -1824
  %switch.and.i = and i16 %66, -9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and.i)
  %switch.selectcmp.i = icmp eq i16 %switch.and.i, 0
  %67 = select i1 %switch.selectcmp.i, ptr @.str.32, ptr @.str.33
  %call56 = call ptr @port_speed_string(ptr noundef nonnull %call) #10
  %model_number = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 22
  %hba_port_num = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 23
  %68 = ptrtoint ptr %hba_port_num to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hba_port_num, align 8
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %retval.0.i119, ptr noundef nonnull %67, ptr noundef %call56, ptr noundef %model_number, i32 noundef %69) #13
  %70 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev, align 4
  %init_name.i121 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44, i32 3
  %72 = ptrtoint ptr %init_name.i121 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i121, align 8
  %tobool.not.i122 = icmp eq ptr %73, null
  br i1 %tobool.not.i122, label %if.end.i123, label %dev_name.exit.dev_name.exit125_crit_edge

dev_name.exit.dev_name.exit125_crit_edge:         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit125

if.end.i123:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev64 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %74 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev64, align 4
  br label %dev_name.exit125

dev_name.exit125:                                 ; preds = %if.end.i123, %dev_name.exit.dev_name.exit125_crit_edge
  %retval.0.i124 = phi ptr [ %75, %if.end.i123 ], [ %73, %dev_name.exit.dev_name.exit125_crit_edge ]
  %76 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %id, align 4
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %retval.0.i124, i32 noundef %77) #13
  br label %cleanup

alloc_err:                                        ; preds = %ocrdma_register_device.exit.alloc_err_crit_edge, %if.end.i114.alloc_err_crit_edge, %ocrdma_alloc_resources.exit
  %status.0 = phi i32 [ -12, %ocrdma_alloc_resources.exit ], [ %call25.i, %ocrdma_register_device.exit.alloc_err_crit_edge ], [ %call14.i112, %if.end.i114.alloc_err_crit_edge ]
  tail call void @ocrdma_release_stats_resources(ptr noundef nonnull %call) #10
  %stag_arr.i126 = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 26
  %78 = ptrtoint ptr %stag_arr.i126 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %stag_arr.i126, align 8
  tail call void @kfree(ptr noundef %79) #10
  %qp_tbl.i127 = getelementptr inbounds %struct.ocrdma_dev, ptr %call, i32 0, i32 6
  %80 = ptrtoint ptr %qp_tbl.i127 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %qp_tbl.i127, align 16
  tail call void @kfree(ptr noundef %81) #10
  %82 = ptrtoint ptr %cq_tbl.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cq_tbl.i, align 4
  tail call void @kfree(ptr noundef %83) #10
  tail call void @ocrdma_cleanup_hw(ptr noundef nonnull %call) #10
  br label %init_err

init_err:                                         ; preds = %alloc_err, %if.end7.init_err_crit_edge, %if.end.init_err_crit_edge
  %status.1 = phi i32 [ %call9, %if.end7.init_err_crit_edge ], [ %status.0, %alloc_err ], [ 0, %if.end.init_err_crit_edge ]
  %84 = ptrtoint ptr %mbx_cmd to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mbx_cmd, align 4
  tail call void @kfree(ptr noundef %85) #10
  tail call void @ib_dealloc_device(ptr noundef nonnull %call) #10
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef %status.1) #13
  br label %cleanup

cleanup:                                          ; preds = %init_err, %dev_name.exit125, %do.end
  %retval.0 = phi ptr [ null, %init_err ], [ %call, %dev_name.exit125 ], [ null, %do.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lstate) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocrdma_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %eqd_work = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 9
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %eqd_work) #10
  tail call void @ib_unregister_device(ptr noundef %dev) #10
  tail call void @ocrdma_rem_port_stats(ptr noundef %dev) #10
  tail call void @ocrdma_release_stats_resources(ptr noundef %dev) #10
  %stag_arr.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %stag_arr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stag_arr.i, align 8
  tail call void @kfree(ptr noundef %1) #10
  %qp_tbl.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %qp_tbl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_tbl.i, align 16
  tail call void @kfree(ptr noundef %3) #10
  %cq_tbl.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %cq_tbl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cq_tbl.i, align 4
  tail call void @kfree(ptr noundef %5) #10
  tail call void @ocrdma_cleanup_hw(ptr noundef %dev) #10
  %mbx_cmd.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 17
  %6 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mbx_cmd.i, align 4
  tail call void @kfree(ptr noundef %7) #10
  tail call void @ib_dealloc_device(ptr noundef %dev) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocrdma_event_handler(ptr noundef %dev, i32 noundef %event) #0 align 64 {
entry:
  %err_event.i.i = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cond = icmp eq i32 %event, 2
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %err_event.i.i) #10
  %0 = getelementptr inbounds %struct.ib_event, ptr %err_event.i.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_event, ptr %err_event.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %1, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %0, align 4
  %4 = ptrtoint ptr %err_event.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %err_event.i.i, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %err_event.i.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %err_event.i.i) #10
  %eqd_work.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 9
  %call.i.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %eqd_work.i.i) #10
  call void @ib_unregister_device(ptr noundef %dev) #10
  call void @ocrdma_rem_port_stats(ptr noundef %dev) #10
  call void @ocrdma_release_stats_resources(ptr noundef %dev) #10
  %stag_arr.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 26
  %5 = ptrtoint ptr %stag_arr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stag_arr.i.i.i, align 8
  call void @kfree(ptr noundef %6) #10
  %qp_tbl.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 6
  %7 = ptrtoint ptr %qp_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qp_tbl.i.i.i, align 16
  call void @kfree(ptr noundef %8) #10
  %cq_tbl.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 5
  %9 = ptrtoint ptr %cq_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cq_tbl.i.i.i, align 4
  call void @kfree(ptr noundef %10) #10
  call void @ocrdma_cleanup_hw(ptr noundef %dev) #10
  %mbx_cmd.i.i.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 17
  %11 = ptrtoint ptr %mbx_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mbx_cmd.i.i.i, align 4
  call void @kfree(ptr noundef %12) #10
  call void @ib_dealloc_device(ptr noundef %dev) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_ib_alloc_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_init_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocrdma_init_service_level(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_mbx_get_link_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocrdma_add_port_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocrdma_eqd_set_task(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @port_speed_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocrdma_cleanup_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dealloc_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocrdma_alloc_pd_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ocrdma_alloc_stats_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_set_device_ops(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_device_set_netdev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_post_send(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_post_recv(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_poll_cq(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_arm_cq(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_process_mad(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_query_device(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_dev_fw_str(ptr noundef %device, ptr nocapture noundef writeonly %str) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %attr = getelementptr inbounds %struct.ocrdma_dev, ptr %device, i32 0, i32 1
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef 32, ptr noundef nonnull @.str.31, ptr noundef %attr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_query_port(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocrdma_port_immutable(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef %immutable) #0 align 64 {
entry:
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #10
  %0 = call ptr @memset(ptr %attr, i32 255, i32 72)
  %core_cap_flags = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 2
  %1 = ptrtoint ptr %core_cap_flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2109445, ptr %core_cap_flags, align 4
  %udp_encap.i = getelementptr inbounds %struct.ocrdma_dev, ptr %ibdev, i32 0, i32 1, i32 33
  %2 = ptrtoint ptr %udp_encap.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %udp_encap.i, align 1
  %4 = and i8 %3, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %.not = icmp eq i8 %4, 0
  %spec.store.select = select i1 %.not, i32 2109445, i32 10498053
  %5 = ptrtoint ptr %core_cap_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.store.select, ptr %core_cap_flags, align 4
  %call3 = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef nonnull %attr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pkey_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 11
  %6 = ptrtoint ptr %pkey_tbl_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pkey_tbl_len, align 8
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %immutable to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %immutable, align 4
  %gid_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 5
  %9 = ptrtoint ptr %gid_tbl_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gid_tbl_len, align 8
  %gid_tbl_len7 = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 1
  %11 = ptrtoint ptr %gid_tbl_len7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %gid_tbl_len7, align 4
  %max_mad_size = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 3
  %12 = ptrtoint ptr %max_mad_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 256, ptr %max_mad_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #10
  ret i32 %call3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ocrdma_link_layer(ptr nocapture noundef readnone %device, i32 noundef %port_num) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_query_pkey(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_alloc_ucontext(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocrdma_dealloc_ucontext(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_alloc_pd(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_dealloc_pd(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_create_ah(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_query_ah(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_destroy_ah(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_create_qp(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_modify_qp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_query_qp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_destroy_qp(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_create_cq(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_destroy_cq(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_resize_cq(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocrdma_get_dma_mr(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocrdma_reg_user_mr(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_dereg_mr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocrdma_alloc_mr(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_map_mr_sg(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rev_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.ib_core_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 8
  %pdev = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 20, i32 6
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor, align 8
  %conv = zext i16 %5 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %conv) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hca_type_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.ib_core_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 8
  %model_number = getelementptr inbounds %struct.ocrdma_dev, ptr %1, i32 0, i32 22
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.30, ptr noundef %model_number) #10
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_post_srq_recv(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_create_srq(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_modify_srq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_query_srq(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_destroy_srq(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocrdma_release_stats_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocrdma_rem_port_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocrdma_init_debugfs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @be_roce_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !49, !50, !52, !53, !54, !56, !58, !60, !62, !64, !66, !67, !69, !71, !72, !74, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__UNIQUE_ID_description508, !1, !"__UNIQUE_ID_description508", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 61, i32 1}
!2 = !{ptr @__UNIQUE_ID_author509, !3, !"__UNIQUE_ID_author509", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 62, i32 1}
!4 = !{ptr @__UNIQUE_ID_file510, !5, !"__UNIQUE_ID_file510", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 63, i32 1}
!6 = !{ptr @__UNIQUE_ID_license511, !5, !"__UNIQUE_ID_license511", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_ocrdma__513_431_ocrdma_init_module6, !8, !"__initcall__kmod_ocrdma__513_431_ocrdma_init_module6", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 431, i32 1}
!9 = !{ptr @__exitcall_ocrdma_exit_module, !10, !"__exitcall_ocrdma_exit_module", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 432, i32 1}
!11 = !{ptr @ocrdma_drv, !12, !"ocrdma_drv", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 400, i32 29}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 270, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ocrdma_add._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @ocrdma_add._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @ocrdma_add.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 301, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ocrdma_add.__key.4, !20, !"__key", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 304, i32 2}
!26 = !{ptr @ocrdma_add._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ocrdma_add._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 308, i32 2}
!30 = !{ptr @ocrdma_add._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ocrdma_add._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 318, i32 2}
!34 = !{ptr @ocrdma_add._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ocrdma_add._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @ocrdma_alloc_resources.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 221, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 242, i32 3}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ocrdma_alloc_resources._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @ocrdma_alloc_resources._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @ocrdma_alloc_resources.__key.18, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 246, i32 2}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ocrdma_alloc_resources.__key.20, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 247, i32 2}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 250, i32 2}
!52 = !{ptr @ocrdma_alloc_resources._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ocrdma_alloc_resources._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 195, i32 31}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 215, i32 41}
!58 = !{ptr @ocrdma_dev_ops, !59, !"ocrdma_dev_ops", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 132, i32 35}
!60 = !{ptr @ocrdma_attr_group, !61, !"ocrdma_attr_group", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 128, i32 37}
!62 = !{ptr @ocrdma_attributes, !63, !"ocrdma_attributes", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 122, i32 26}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 110, i32 8}
!66 = !{ptr @dev_attr_hw_rev, !65, !"dev_attr_hw_rev", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 108, i32 25}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 120, i32 8}
!71 = !{ptr @dev_attr_hca_type, !70, !"dev_attr_hca_type", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 118, i32 25}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 98, i32 40}
!76 = !{ptr @ocrdma_dev_srq_ops, !77, !"ocrdma_dev_srq_ops", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_main.c", i32 178, i32 35}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma.h", i32 547, i32 10}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma.h", i32 549, i32 10}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
