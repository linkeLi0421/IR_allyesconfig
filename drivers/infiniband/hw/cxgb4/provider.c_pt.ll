; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/cxgb4/provider.c_pt.bc'
source_filename = "../drivers/infiniband/hw/cxgb4/provider.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.164 }
%union.anon.164 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rdma_stat_desc = type { ptr, i32, ptr }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.220, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.220 = type { %struct.ib_core_device }
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
%struct.ib_odp_caps = type { i64, %struct.anon.207 }
%struct.anon.207 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.c4iw_dev = type { %struct.ib_device, %struct.c4iw_rdev, i32, %struct.xarray, %struct.xarray, %struct.xarray, %struct.mutex, ptr, i32, %struct.xarray, %struct.xarray, %struct.xarray, %struct.list_head, i32, %struct.wait_queue_head }
%struct.c4iw_rdev = type { %struct.c4iw_resource, i32, i32, %struct.c4iw_dev_ucontext, ptr, ptr, ptr, i32, %struct.cxgb4_lld_info, i32, ptr, i32, ptr, %struct.c4iw_stats, %struct.c4iw_hw_queue, ptr, %struct.atomic_t, ptr, i32, ptr, %struct.completion, %struct.completion, %struct.kref, %struct.kref }
%struct.c4iw_resource = type { %struct.c4iw_id_table, %struct.c4iw_id_table, %struct.c4iw_id_table, %struct.c4iw_id_table }
%struct.c4iw_id_table = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.c4iw_dev_ucontext = type { %struct.list_head, %struct.list_head, %struct.mutex, %struct.kref }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.c4iw_stats = type { %struct.mutex, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.c4iw_stat = type { i64, i64, i64, i64 }
%struct.c4iw_hw_queue = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.170, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.192, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.170 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.192 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.193, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.193 = type { ptr }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.c4iw_alloc_ucontext_resp = type { i64, i32, i32 }
%struct.c4iw_ucontext = type { %struct.ib_ucontext, %struct.c4iw_dev_ucontext, i32, %struct.spinlock, %struct.list_head, i8 }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.c4iw_mm_entry = type { %struct.list_head, i64, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.c4iw_alloc_pd_resp = type { i32 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.c4iw_pd = type { %struct.ib_pd, i32, ptr }
%struct.tp_tcp_stats = type { i32, i64, i64, i64 }
%struct.rdma_hw_stats = type { %struct.mutex, i32, i32, ptr, ptr, i32, [0 x i64] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_fastreg_support = internal constant [25 x i8] c"iw_cxgb4.fastreg_support\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@fastreg_support = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_fastreg_support = internal constant %struct.kernel_param { ptr @__param_str_fastreg_support, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @fastreg_support } }, section "__param", align 4
@__UNIQUE_ID_fastreg_supporttype680 = internal constant [38 x i8] c"iw_cxgb4.parmtype=fastreg_support:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fastreg_support681 = internal constant [68 x i8] c"iw_cxgb4.parm=fastreg_support:Advertise fastreg support (default=1)\00", section ".modinfo", align 1
@c4iw_register_device.__UNIQUE_ID_ddebug700 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iw_cxgb4\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"c4iw_register_device\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/infiniband/hw/cxgb4/provider.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"c4iw_dev %p\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iw_cxgb4: c4iw_dev %p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cxgb4 Chelsio Communications\00", [35 x i8] zeroinitializer }, align 32
@c4iw_dev_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 4, i32 3, i8 0, ptr @c4iw_attr_group, ptr null, ptr @c4iw_post_send, ptr @c4iw_post_receive, ptr null, ptr null, ptr @c4iw_poll_cq, ptr null, ptr @c4iw_arm_cq, ptr @c4iw_post_srq_recv, ptr null, ptr @c4iw_query_device, ptr null, ptr @get_dev_fw_str, ptr null, ptr @c4iw_query_port, ptr null, ptr @c4iw_port_immutable, ptr null, ptr null, ptr null, ptr null, ptr @c4iw_query_gid, ptr null, ptr null, ptr null, ptr @c4iw_alloc_ucontext, ptr @c4iw_dealloc_ucontext, ptr @c4iw_mmap, ptr null, ptr null, ptr @c4iw_allocate_pd, ptr @c4iw_deallocate_pd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @c4iw_create_srq, ptr @c4iw_modify_srq, ptr null, ptr @c4iw_destroy_srq, ptr @c4iw_create_qp, ptr @c4iw_ib_modify_qp, ptr @c4iw_ib_query_qp, ptr @c4iw_destroy_qp, ptr @c4iw_create_cq, ptr null, ptr @c4iw_destroy_cq, ptr null, ptr @c4iw_get_dma_mr, ptr @c4iw_reg_user_mr, ptr null, ptr null, ptr @c4iw_dereg_mr, ptr @c4iw_alloc_mr, ptr null, ptr null, ptr @c4iw_map_mr_sg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @c4iw_alloc_device_stats, ptr null, ptr @c4iw_get_mib, ptr null, ptr @c4iw_fill_res_mr_entry, ptr null, ptr @c4iw_fill_res_cq_entry, ptr null, ptr null, ptr null, ptr @c4iw_fill_res_cm_id_entry, ptr null, ptr null, ptr @c4iw_qp_add_ref, ptr @c4iw_qp_rem_ref, ptr @c4iw_get_qp, ptr @c4iw_connect, ptr @c4iw_accept_cr, ptr @c4iw_reject_cr, ptr @c4iw_create_listen, ptr @c4iw_destroy_listen, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 464, i32 96, i32 120, i32 832, i32 0, i32 296, i32 320, i32 0 }, [148 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cxgb4_%d\00", [23 x i8] zeroinitializer }, align 32
@c4iw_register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013iw_cxgb4: %s - Failed registering iwarp device: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@c4iw_register_device._entry_ptr = internal global ptr @c4iw_register_device._entry, section ".printk_index", align 4
@c4iw_unregister_device.__UNIQUE_ID_ddebug702 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.3, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"c4iw_unregister_device\00", [41 x i8] zeroinitializer }, align 32
@c4iw_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @c4iw_class_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@c4iw_class_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_hw_rev, ptr @dev_attr_hca_type, ptr @dev_attr_board_id, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_hw_rev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hw_rev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hca_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hca_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_board_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @board_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hw_rev\00", [25 x i8] zeroinitializer }, align 32
@hw_rev_show.__UNIQUE_ID_ddebug695 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hw_rev_show\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dev 0x%p\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iw_cxgb4: dev 0x%p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hca_type\00", [23 x i8] zeroinitializer }, align 32
@hca_type_show.__UNIQUE_ID_ddebug696 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.11, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hca_type_show\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"board_id\00", [23 x i8] zeroinitializer }, align 32
@board_id_show.__UNIQUE_ID_ddebug697 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.11, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"board_id_show\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%x.%x\0A\00", [25 x i8] zeroinitializer }, align 32
@c4iw_query_device.__UNIQUE_ID_ddebug689 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"c4iw_query_device\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ibdev %p\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iw_cxgb4: ibdev %p\0A\00", [44 x i8] zeroinitializer }, align 32
@c4iw_max_read_depth = external dso_local local_unnamed_addr global i32, align 4
@use_dsgl = external dso_local local_unnamed_addr global i32, align 4
@get_dev_fw_str.__UNIQUE_ID_ddebug699 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.11, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get_dev_fw_str\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%u.%u.%u.%u\00", [20 x i8] zeroinitializer }, align 32
@c4iw_query_port.__UNIQUE_ID_ddebug694 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.21, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"c4iw_query_port\00", [16 x i8] zeroinitializer }, align 32
@c4iw_query_gid.__UNIQUE_ID_ddebug688 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"c4iw_query_gid\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ibdev %p, port %u, index %d, gid %p\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"iw_cxgb4: ibdev %p, port %u, index %d, gid %p\0A\00", [49 x i8] zeroinitializer }, align 32
@c4iw_alloc_ucontext.__UNIQUE_ID_ddebug683 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.21, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"c4iw_alloc_ucontext\00", [44 x i8] zeroinitializer }, align 32
@c4iw_alloc_ucontext.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&context->mmap_lock\00", [44 x i8] zeroinitializer }, align 32
@c4iw_alloc_ucontext.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@c4iw_alloc_ucontext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013iw_cxgb4: Warning - downlevel libcxgb4 (non-fatal), device status page disabled\0A\00", [45 x i8] zeroinitializer }, align 32
@c4iw_alloc_ucontext._entry_ptr = internal global ptr @c4iw_alloc_ucontext._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@insert_mmap.__UNIQUE_ID_ddebug679 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.36, ptr @.str.37, i8 0, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"insert_mmap\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/infiniband/hw/cxgb4/iw_cxgb4.h\00", [57 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"key 0x%x addr 0x%llx len %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"iw_cxgb4: key 0x%x addr 0x%llx len %d\0A\00", [57 x i8] zeroinitializer }, align 32
@c4iw_dealloc_ucontext.__UNIQUE_ID_ddebug682 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"c4iw_dealloc_ucontext\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"context %p\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iw_cxgb4: context %p\0A\00", [42 x i8] zeroinitializer }, align 32
@c4iw_mmap.__UNIQUE_ID_ddebug684 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"c4iw_mmap\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pgoff 0x%lx key 0x%x len %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"iw_cxgb4: pgoff 0x%lx key 0x%x len %d\0A\00", [57 x i8] zeroinitializer }, align 32
@remove_mmap.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.36, ptr @.str.37, i8 0, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"remove_mmap\00", [20 x i8] zeroinitializer }, align 32
@c4iw_allocate_pd.__UNIQUE_ID_ddebug686 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.21, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c4iw_allocate_pd\00", [47 x i8] zeroinitializer }, align 32
@c4iw_allocate_pd.__UNIQUE_ID_ddebug687 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pdid 0x%0x ptr 0x%p\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"iw_cxgb4: pdid 0x%0x ptr 0x%p\0A\00", [33 x i8] zeroinitializer }, align 32
@c4iw_deallocate_pd.__UNIQUE_ID_ddebug685 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"c4iw_deallocate_pd\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ibpd %p pdid 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iw_cxgb4: ibpd %p pdid 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@cxgb4_descs = internal constant { [8 x %struct.rdma_stat_desc], [32 x i8] } { [8 x %struct.rdma_stat_desc] [%struct.rdma_stat_desc { ptr @.str.52, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.53, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.54, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.55, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.56, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.57, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.58, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.59, i32 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip4InSegs\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ip4OutSegs\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip4RetransSegs\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ip4OutRsts\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip6InSegs\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ip6OutSegs\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip6RetransSegs\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ip6OutRsts\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"fastreg_support\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 58, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 529, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 538, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"c4iw_dev_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 452, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 551, i32 40 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 558, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 566, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"c4iw_attr_group\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 418, i32 37 }
@___asan_gen_.99 = private unnamed_addr constant [22 x i8] c"c4iw_class_attributes\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 411, i32 26 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"dev_attr_hw_rev\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"dev_attr_hca_type\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"dev_attr_board_id\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 331, i32 8 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 326, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 328, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 345, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 341, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 343, i32 25 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 357, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 353, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 354, i32 25 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 262, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 443, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 445, i32 40 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 304, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 246, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 86, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 89, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 92, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 174, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 569, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 68, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 135, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [42 x i8] c"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 556, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 216, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 237, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 201, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [12 x i8] c"cxgb4_descs\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 371, i32 36 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 372, i32 21 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 373, i32 22 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 374, i32 26 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 375, i32 22 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 376, i32 21 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 377, i32 22 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 378, i32 26 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.265 = private constant [42 x i8] c"../drivers/infiniband/hw/cxgb4/provider.c\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 379, i32 22 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_fastreg_support681, ptr @__UNIQUE_ID_fastreg_supporttype680, ptr @__param_fastreg_support, ptr @c4iw_alloc_ucontext._entry, ptr @c4iw_alloc_ucontext._entry_ptr, ptr @c4iw_register_device._entry, ptr @c4iw_register_device._entry_ptr, ptr @fastreg_support, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @c4iw_dev_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @c4iw_attr_group, ptr @c4iw_class_attributes, ptr @dev_attr_hw_rev, ptr @dev_attr_hca_type, ptr @dev_attr_board_id, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @c4iw_alloc_ucontext.__key, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @cxgb4_descs, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fastreg_support to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_dev_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_class_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hw_rev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hca_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_board_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_alloc_ucontext.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_alloc_ucontext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_descs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_register_device(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -160
  %dev1 = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_register_device.__UNIQUE_ID_ddebug700, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_register_device, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_register_device.__UNIQUE_ID_ddebug700, ptr noundef nonnull @.str.4, ptr noundef %1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %node_guid = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 17
  %lldi = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8
  %ports = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8, i32 3
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  %8 = call ptr @memcpy(ptr %node_guid, ptr %7, i32 3)
  %arrayidx.i.i = getelementptr i8, ptr %node_guid, i32 3
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %arrayidx.i.i, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %node_guid, i32 4
  %10 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -2, ptr %arrayidx1.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %node_guid, i32 5
  %add.ptr2.i.i = getelementptr i8, ptr %7, i32 3
  %11 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr2.i.i, i32 3)
  %12 = ptrtoint ptr %node_guid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %node_guid, align 1
  %14 = xor i8 %13, 2
  store i8 %14, ptr %node_guid, align 1
  %device_cap_flags = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 2
  %15 = load i32, ptr @fastreg_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  %spec.store.select = select i1 %tobool5.not, i32 163840, i32 2260992
  %16 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.store.select, ptr %device_cap_flags, align 8
  %local_dma_lkey = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 18
  %17 = ptrtoint ptr %local_dma_lkey to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %local_dma_lkey, align 8
  %node_type = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 20
  %18 = ptrtoint ptr %node_type to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %node_type, align 1
  %node_desc = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 16
  %19 = call ptr @memcpy(ptr %node_desc, ptr @.str.5, i32 29)
  %nports = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8, i32 11
  %20 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %nports, align 2
  %bf.clear = and i8 %bf.load, 15
  %conv = zext i8 %bf.clear to i32
  %phys_port_cnt = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 21
  %21 = ptrtoint ptr %phys_port_cnt to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %phys_port_cnt, align 8
  %nciq = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8, i32 10
  %22 = ptrtoint ptr %nciq to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %nciq, align 4
  %conv20 = zext i16 %23 to i32
  %num_comp_vectors = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv20, ptr %num_comp_vectors, align 4
  %25 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lldi, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %parent = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev24, ptr %parent, align 8
  %iw_ifname = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 36
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %30 = call ptr @memcpy(ptr %iw_ifname, ptr %29, i32 16)
  tail call void @ib_set_device_ops(ptr noundef %1, ptr noundef nonnull @c4iw_dev_ops) #7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end
  %i.0.i = phi i32 [ 0, %do.end ], [ %add.i, %for.body.i.for.cond.i_crit_edge ]
  %31 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i = load i8, ptr %nports, align 2
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv.i = zext i8 %bf.clear.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %conv.i)
  %cmp.i = icmp ult i32 %i.0.i, %conv.i
  br i1 %cmp.i, label %for.body.i, label %if.end39

for.body.i:                                       ; preds = %for.cond.i
  %32 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ports, align 4
  %arrayidx.i = getelementptr ptr, ptr %33, i32 %i.0.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %add.i = add nuw nsw i32 %i.0.i, 1
  %call.i = tail call i32 @ib_device_set_netdev(ptr noundef %1, ptr noundef %35, i32 noundef %add.i) #7
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.do.end56_crit_edge

for.body.i.do.end56_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.end39:                                         ; preds = %for.cond.i
  %36 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lldi, align 8
  %dma_parms.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44, i32 22
  %38 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i90 = icmp eq ptr %39, null
  br i1 %tobool.not.i90, label %if.end39.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

if.end39.dma_set_max_seg_size.exit_crit_edge:     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %39, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %if.end39.dma_set_max_seg_size.exit_crit_edge
  %41 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lldi, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %call50 = tail call i32 @ib_register_device(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef %dev49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %dma_set_max_seg_size.exit.cleanup_crit_edge, label %dma_set_max_seg_size.exit.do.end56_crit_edge

dma_set_max_seg_size.exit.do.end56_crit_edge:     ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

dma_set_max_seg_size.exit.cleanup_crit_edge:      ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end56:                                         ; preds = %dma_set_max_seg_size.exit.do.end56_crit_edge, %for.body.i.do.end56_crit_edge
  %ret.0 = phi i32 [ %call50, %dma_set_max_seg_size.exit.do.end56_crit_edge ], [ %call.i, %for.body.i.do.end56_crit_edge ]
  %lldi58 = getelementptr i8, ptr %work, i32 -152
  %43 = ptrtoint ptr %lldi58 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lldi58, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44, i32 3
  %45 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end56.pci_name.exit_crit_edge

do.end56.pci_name.exit_crit_edge:                 ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end56.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %48, %if.end.i.i ], [ %46, %do.end56.pci_name.exit_crit_edge ]
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %retval.0.i.i, i32 noundef %ret.0) #10
  tail call void @c4iw_dealloc(ptr noundef %add.ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit, %dma_set_max_seg_size.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_set_device_ops(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_dealloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_unregister_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_unregister_device.__UNIQUE_ID_ddebug702, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_unregister_device, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_unregister_device.__UNIQUE_ID_ddebug702, ptr noundef nonnull @.str.4, ptr noundef %dev) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @ib_unregister_device(ptr noundef %dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_post_send(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_post_receive(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_poll_cq(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_arm_cq(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_post_srq_recv(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c4iw_query_device(ptr noundef %ibdev, ptr noundef %props, ptr nocapture noundef readonly %uhw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_query_device.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_query_device, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_query_device.__UNIQUE_ID_ddebug689, ptr noundef nonnull @.str.22, ptr noundef %ibdev) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %inlen = getelementptr inbounds %struct.ib_udata, ptr %uhw, i32 0, i32 2
  %0 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %outlen = getelementptr inbounds %struct.ib_udata, ptr %uhw, i32 0, i32 3
  %2 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %if.end6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %sys_image_guid = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 1
  %lldi = getelementptr inbounds %struct.c4iw_dev, ptr %ibdev, i32 0, i32 1, i32 8
  %ports = getelementptr inbounds %struct.c4iw_dev, ptr %ibdev, i32 0, i32 1, i32 8, i32 3
  %4 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  %10 = call ptr @memcpy(ptr %sys_image_guid, ptr %9, i32 3)
  %arrayidx.i.i = getelementptr i8, ptr %sys_image_guid, i32 3
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %arrayidx.i.i, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %sys_image_guid, i32 4
  %12 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -2, ptr %arrayidx1.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %sys_image_guid, i32 5
  %add.ptr2.i.i = getelementptr i8, ptr %9, i32 3
  %13 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr2.i.i, i32 3)
  %14 = ptrtoint ptr %sys_image_guid to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sys_image_guid, align 1
  %16 = xor i8 %15, 2
  store i8 %16, ptr %sys_image_guid, align 1
  %adapter_type = getelementptr inbounds %struct.c4iw_dev, ptr %ibdev, i32 0, i32 1, i32 8, i32 13
  %17 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %adapter_type, align 8
  %19 = and i8 %18, 15
  %and = zext i8 %19 to i32
  %hw_ver = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 6
  %20 = ptrtoint ptr %hw_ver to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and, ptr %hw_ver, align 8
  %fw_vers = getelementptr inbounds %struct.c4iw_dev, ptr %ibdev, i32 0, i32 1, i32 8, i32 16
  %21 = ptrtoint ptr %fw_vers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw_vers, align 4
  %conv12 = zext i32 %22 to i64
  %23 = ptrtoint ptr %props to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv12, ptr %props, align 8
  %device_cap_flags = getelementptr inbounds %struct.c4iw_dev, ptr %ibdev, i32 0, i32 2
  %24 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %device_cap_flags, align 8
  %conv13 = zext i32 %25 to i64
  %device_cap_flags14 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 9
  %26 = ptrtoint ptr %device_cap_flags14 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv13, ptr %device_cap_flags14, align 8
  %page_size_cap = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 3
  %27 = ptrtoint ptr %page_size_cap to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 268431360, ptr %page_size_cap, align 8
  %28 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lldi, align 8
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vendor, align 8
  %conv17 = zext i16 %31 to i32
  %vendor_id = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 4
  %32 = ptrtoint ptr %vendor_id to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv17, ptr %vendor_id, align 8
  %33 = load ptr, ptr %lldi, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %device, align 2
  %conv21 = zext i16 %35 to i32
  %vendor_part_id = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 5
  %36 = ptrtoint ptr %vendor_part_id to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv21, ptr %vendor_part_id, align 4
  %max_mr_size = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 2
  %37 = ptrtoint ptr %max_mr_size to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 -1, ptr %max_mr_size, align 8
  %vr = getelementptr inbounds %struct.c4iw_dev, ptr %ibdev, i32 0, i32 1, i32 8, i32 4
  %38 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vr, align 8
  %size = getelementptr inbounds %struct.cxgb4_virt_res, ptr %39, i32 0, i32 6, i32 1
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size, align 4
  %div99 = lshr i32 %41, 1
  %max_qp = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 7
  %42 = ptrtoint ptr %max_qp to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div99, ptr %max_qp, align 4
  %43 = load ptr, ptr %vr, align 8
  %size27 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %43, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %size27 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size27, align 4
  %max_srq = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 33
  %46 = ptrtoint ptr %max_srq to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %max_srq, align 4
  %t4_max_qp_depth = getelementptr inbounds %struct.c4iw_dev, ptr %ibdev, i32 0, i32 1, i32 14, i32 5
  %47 = ptrtoint ptr %t4_max_qp_depth to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %t4_max_qp_depth, align 4
  %max_qp_wr = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 8
  %49 = ptrtoint ptr %max_qp_wr to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %max_qp_wr, align 8
  %50 = load i32, ptr %t4_max_qp_depth, align 4
  %max_srq_wr = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 34
  %51 = ptrtoint ptr %max_srq_wr to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %max_srq_wr, align 8
  %max_send_sge = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 10
  %52 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 17, ptr %max_send_sge, align 8
  %max_recv_sge = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 11
  %53 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 4, ptr %max_recv_sge, align 4
  %max_srq_sge = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 35
  %54 = ptrtoint ptr %max_srq_sge to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4, ptr %max_srq_sge, align 4
  %max_sge_rd = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 12
  %55 = ptrtoint ptr %max_sge_rd to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %max_sge_rd, align 8
  %max_ird_adapter = getelementptr inbounds %struct.c4iw_dev, ptr %ibdev, i32 0, i32 1, i32 8, i32 33
  %56 = ptrtoint ptr %max_ird_adapter to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_ird_adapter, align 8
  %max_res_rd_atom = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 19
  %58 = ptrtoint ptr %max_res_rd_atom to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %max_res_rd_atom, align 4
  %max_ordird_qp = getelementptr inbounds %struct.c4iw_dev, ptr %ibdev, i32 0, i32 1, i32 8, i32 32
  %59 = ptrtoint ptr %max_ordird_qp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_ordird_qp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @c4iw_max_read_depth to i32))
  %61 = load i32, ptr @c4iw_max_read_depth, align 4
  %62 = tail call i32 @llvm.umin.i32(i32 %60, i32 %61)
  %max_qp_rd_atom = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 17
  %63 = ptrtoint ptr %max_qp_rd_atom to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %max_qp_rd_atom, align 4
  %max_qp_init_rd_atom = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 20
  %64 = ptrtoint ptr %max_qp_init_rd_atom to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %62, ptr %max_qp_init_rd_atom, align 8
  %65 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vr, align 8
  %size43 = getelementptr inbounds %struct.cxgb4_virt_res, ptr %66, i32 0, i32 6, i32 1
  %67 = ptrtoint ptr %size43 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size43, align 4
  %max_cq = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 13
  %69 = ptrtoint ptr %max_cq to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %max_cq, align 4
  %t4_max_cq_depth = getelementptr inbounds %struct.c4iw_dev, ptr %ibdev, i32 0, i32 1, i32 14, i32 6
  %70 = ptrtoint ptr %t4_max_cq_depth to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %t4_max_cq_depth, align 8
  %max_cqe = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 14
  %72 = ptrtoint ptr %max_cqe to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %max_cqe, align 8
  %73 = load ptr, ptr %vr, align 8
  %size.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %73, i32 0, i32 2, i32 1
  %74 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size.i, align 4
  %shr.i = lshr i32 %75, 5
  %max_mr = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 15
  %76 = ptrtoint ptr %max_mr to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %shr.i, ptr %max_mr, align 4
  %max_pd = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 16
  %77 = ptrtoint ptr %max_pd to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 65536, ptr %max_pd, align 8
  %local_ca_ack_delay = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 39
  %78 = ptrtoint ptr %local_ca_ack_delay to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %local_ca_ack_delay, align 2
  %ulptx_memwrite_dsgl = getelementptr inbounds %struct.c4iw_dev, ptr %ibdev, i32 0, i32 1, i32 8, i32 34
  %79 = ptrtoint ptr %ulptx_memwrite_dsgl to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ulptx_memwrite_dsgl, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool50.not = icmp eq i8 %80, 0
  br i1 %tobool50.not, label %if.end6.land.end.thread_crit_edge, label %land.end

if.end6.land.end.thread_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.thread

land.end:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @use_dsgl to i32))
  %81 = load i32, ptr @use_dsgl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool52.not = icmp eq i32 %81, 0
  br i1 %tobool52.not, label %land.end.land.end.thread_crit_edge, label %land.end._crit_edge

land.end._crit_edge:                              ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %82

land.end.land.end.thread_crit_edge:               ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.end.land.end.thread_crit_edge, %if.end6.land.end.thread_crit_edge
  br label %82

82:                                               ; preds = %land.end.thread, %land.end._crit_edge
  %83 = phi i32 [ 32, %land.end.thread ], [ 128, %land.end._crit_edge ]
  %max_fast_reg_page_list_len = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 36
  %84 = ptrtoint ptr %max_fast_reg_page_list_len to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %max_fast_reg_page_list_len, align 8
  br label %cleanup

cleanup:                                          ; preds = %82, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %82 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_dev_fw_str(ptr noundef %dev, ptr nocapture noundef writeonly %str) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_dev_fw_str.__UNIQUE_ID_ddebug699, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_dev_fw_str, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_dev_fw_str.__UNIQUE_ID_ddebug699, ptr noundef nonnull @.str.12, ptr noundef %dev) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fw_vers = getelementptr inbounds %struct.c4iw_dev, ptr %dev, i32 0, i32 1, i32 8, i32 16
  %0 = ptrtoint ptr %fw_vers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_vers, align 4
  %shr = lshr i32 %1, 24
  %shr7 = lshr i32 %1, 16
  %and8 = and i32 %shr7, 255
  %shr12 = lshr i32 %1, 8
  %and13 = and i32 %shr12, 255
  %and18 = and i32 %1, 255
  %call19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef 32, ptr noundef nonnull @.str.24, i32 noundef %shr, i32 noundef %and8, i32 noundef %and13, i32 noundef %and18)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c4iw_query_port(ptr noundef %ibdev, i32 noundef %port, ptr noundef %props) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_query_port.__UNIQUE_ID_ddebug694, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_query_port, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_query_port.__UNIQUE_ID_ddebug694, ptr noundef nonnull @.str.22, ptr noundef %ibdev) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %active_speed = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 20
  %active_width = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 19
  %call3 = tail call i32 @ib_get_eth_speed(ptr noundef %ibdev, i32 noundef %port, ptr noundef %active_speed, ptr noundef %active_width) #7
  %port_cap_flags = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 7
  %0 = ptrtoint ptr %port_cap_flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10420224, ptr %port_cap_flags, align 8
  %gid_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 5
  %1 = ptrtoint ptr %gid_tbl_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %gid_tbl_len, align 8
  %max_msg_sz = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 8
  %2 = ptrtoint ptr %max_msg_sz to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %max_msg_sz, align 4
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c4iw_port_immutable(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef writeonly %immutable) #0 align 64 {
entry:
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #7
  %0 = call ptr @memset(ptr %attr, i32 255, i32 72)
  %core_cap_flags = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 2
  %1 = ptrtoint ptr %core_cap_flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4194312, ptr %core_cap_flags, align 4
  %call = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef nonnull %attr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %gid_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 5
  %2 = ptrtoint ptr %gid_tbl_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gid_tbl_len, align 8
  %gid_tbl_len1 = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 1
  %4 = ptrtoint ptr %gid_tbl_len1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %gid_tbl_len1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c4iw_query_gid(ptr noundef %ibdev, i32 noundef %port, i32 noundef %index, ptr noundef %gid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_query_gid.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_query_gid, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_query_gid.__UNIQUE_ID_ddebug688, ptr noundef nonnull @.str.28, ptr noundef %ibdev, i32 noundef %port, i32 noundef %index, ptr noundef %gid) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %tobool3.not = icmp eq i32 %port, 0
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = call ptr @memset(ptr %gid, i32 0, i32 16)
  %ports = getelementptr inbounds %struct.c4iw_dev, ptr %ibdev, i32 0, i32 1, i32 8, i32 3
  %1 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ports, align 4
  %sub = add i32 %port, -1
  %arrayidx8 = getelementptr ptr, ptr %2, i32 %sub
  %3 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx8, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 86
  %5 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_addr, align 64
  %7 = call ptr @memcpy(ptr %gid, ptr %6, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c4iw_alloc_ucontext(ptr noundef %ucontext, ptr nocapture noundef readonly %udata) #0 align 64 {
entry:
  %uresp = alloca %struct.c4iw_alloc_ucontext_resp, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ucontext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucontext, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %uresp) #7
  %2 = getelementptr inbounds %struct.c4iw_alloc_ucontext_resp, ptr %uresp, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %uresp, i32 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_alloc_ucontext.__UNIQUE_ID_ddebug683, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_alloc_ucontext, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_alloc_ucontext.__UNIQUE_ID_ddebug683, ptr noundef nonnull @.str.22, ptr noundef %1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rdev = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1
  %uctx = getelementptr inbounds %struct.c4iw_ucontext, ptr %ucontext, i32 0, i32 1
  tail call void @c4iw_init_dev_ucontext(ptr noundef %rdev, ptr noundef %uctx) #7
  %mmaps = getelementptr inbounds %struct.c4iw_ucontext, ptr %ucontext, i32 0, i32 4
  %5 = ptrtoint ptr %mmaps to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %mmaps, ptr %mmaps, align 4
  %prev.i = getelementptr inbounds %struct.c4iw_ucontext, ptr %ucontext, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mmaps, ptr %prev.i, align 4
  %mmap_lock = getelementptr inbounds %struct.c4iw_ucontext, ptr %ucontext, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %mmap_lock, ptr noundef nonnull @.str.30, ptr noundef nonnull @c4iw_alloc_ucontext.__key, i16 noundef signext 3) #7
  %outlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 3
  %7 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %8)
  %cmp = icmp ult i32 %8, 12
  br i1 %cmp, label %land.end, label %if.else

land.end:                                         ; preds = %do.end
  %.b77 = load i1, ptr @c4iw_alloc_ucontext.__already_done, align 1
  br i1 %.b77, label %land.end.if.end26_crit_edge, label %if.then20, !prof !154

land.end.if.end26_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then20:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @c4iw_alloc_ucontext.__already_done, align 1
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %land.end.if.end26_crit_edge
  %flags = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 7
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %or = or i32 %10, 2
  store i32 %or, ptr %flags, align 4
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 24) #11
  %tobool36.not = icmp eq ptr %call7.i, null
  br i1 %tobool36.not, label %if.else.cleanup_crit_edge, label %if.end38

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %if.else
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4096, ptr %2, align 8
  tail call void @_raw_spin_lock(ptr noundef %mmap_lock) #7
  %key = getelementptr inbounds %struct.c4iw_ucontext, ptr %ucontext, i32 0, i32 2
  %13 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %key, align 4
  %conv = zext i32 %14 to i64
  %15 = ptrtoint ptr %uresp to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv, ptr %uresp, align 8
  %add = add i32 %14, 4096
  store i32 %add, ptr %key, align 4
  tail call void @_raw_spin_unlock(ptr noundef %mmap_lock) #7
  %outbuf.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %16 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %outbuf.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #7
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i, label %if.end38.err_mm_crit_edge, label %if.end.i.i.i

if.end38.err_mm_crit_edge:                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mm

if.end.i.i.i:                                     ; preds = %if.end38
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 12, i32 -1226833920) #12, !srcloc !155
  %asmresult.i.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.err_mm_crit_edge

if.end.i.i.i.err_mm_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mm

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %uresp, i32 noundef 12) #7
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %17, ptr noundef nonnull %uresp, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool.not.i, label %if.end45, label %copy_to_user.exit.i.err_mm_crit_edge

copy_to_user.exit.i.err_mm_crit_edge:             ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mm

if.end45:                                         ; preds = %copy_to_user.exit.i
  %19 = ptrtoint ptr %uresp to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %uresp, align 8
  %conv47 = trunc i64 %20 to i32
  %key48 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i, i32 0, i32 2
  %21 = ptrtoint ptr %key48 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv47, ptr %key48, align 8
  %status_page = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 15
  %22 = ptrtoint ptr %status_page to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %status_page, align 8
  %24 = ptrtoint ptr %23 to i32
  %call.i = call i32 @__virt_to_phys(i32 noundef %24) #7
  %conv51 = zext i32 %call.i to i64
  %addr = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i, i32 0, i32 1
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv51, ptr %addr, align 8
  %len = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i, i32 0, i32 3
  %26 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4096, ptr %len, align 4
  call void @_raw_spin_lock(ptr noundef %mmap_lock) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @insert_mmap.__UNIQUE_ID_ddebug679, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_alloc_ucontext, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !152

if.then.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %key48 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %key48, align 8
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %addr, align 8
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @insert_mmap.__UNIQUE_ID_ddebug679, ptr noundef nonnull @.str.38, i32 noundef %28, i64 noundef %30, i32 noundef %32) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end45
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i, align 4
  %call.i.i.i78 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %34, ptr noundef %mmaps) #7
  br i1 %call.i.i.i78, label %if.end.i.i.i79, label %do.end.i.insert_mmap.exit_crit_edge

do.end.i.insert_mmap.exit_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %insert_mmap.exit

if.end.i.i.i79:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i, ptr %prev.i, align 4
  %36 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %mmaps, ptr %call7.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call7.i, ptr %34, align 4
  br label %insert_mmap.exit

insert_mmap.exit:                                 ; preds = %if.end.i.i.i79, %do.end.i.insert_mmap.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %mmap_lock) #7
  br label %cleanup

err_mm:                                           ; preds = %copy_to_user.exit.i.err_mm_crit_edge, %if.end.i.i.i.err_mm_crit_edge, %if.end38.err_mm_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_mm, %insert_mmap.exit, %if.else.cleanup_crit_edge, %if.end26
  %retval.0 = phi i32 [ 0, %insert_mmap.exit ], [ 0, %if.end26 ], [ -14, %err_mm ], [ -12, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uresp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @c4iw_dealloc_ucontext(ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_dealloc_ucontext.__UNIQUE_ID_ddebug682, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_dealloc_ucontext, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_dealloc_ucontext.__UNIQUE_ID_ddebug682, ptr noundef nonnull @.str.41, ptr noundef %context) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %mmaps = getelementptr inbounds %struct.c4iw_ucontext, ptr %context, i32 0, i32 4
  %2 = ptrtoint ptr %mmaps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmaps, align 4
  %cmp.not29 = icmp eq ptr %3, %mmaps
  br i1 %cmp.not29, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %mm.030 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %3, %do.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %mm.030 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0 = load ptr, ptr %mm.030, align 8
  tail call void @kfree(ptr noundef %mm.030) #7
  %cmp.not = icmp eq ptr %tmp.0, %mmaps
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %rdev = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1
  %uctx = getelementptr inbounds %struct.c4iw_ucontext, ptr %context, i32 0, i32 1
  tail call void @c4iw_release_dev_ucontext(ptr noundef %rdev, ptr noundef %uctx) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c4iw_mmap(ptr noundef %context, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %0 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_end, align 4
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vma, align 4
  %sub = sub i32 %1, %3
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_pgoff, align 4
  %shl = shl i32 %5, 12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_mmap.__UNIQUE_ID_ddebug684, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_mmap, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_pgoff, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_mmap.__UNIQUE_ID_ddebug684, ptr noundef nonnull @.str.44, i32 noundef %7, i32 noundef %shl, i32 noundef %sub) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vma, align 4
  %and = and i32 %9, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context, align 4
  %mmap_lock.i = getelementptr inbounds %struct.c4iw_ucontext, ptr %context, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %mmap_lock.i) #7
  %mmaps.i = getelementptr inbounds %struct.c4iw_ucontext, ptr %context, i32 0, i32 4
  %12 = ptrtoint ptr %mmaps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmaps.i, align 4
  %cmp.i.not37.i = icmp eq ptr %13, %mmaps.i
  br i1 %cmp.i.not37.i, label %if.end7.remove_mmap.exit.thread_crit_edge, label %if.end7.for.body.i_crit_edge

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

if.end7.remove_mmap.exit.thread_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %remove_mmap.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %pos.038.i = phi ptr [ %nxt.039.i, %for.inc.i.for.body.i_crit_edge ], [ %13, %if.end7.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %pos.038.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %nxt.039.i = load ptr, ptr %pos.038.i, align 4
  %key3.i = getelementptr inbounds %struct.c4iw_mm_entry, ptr %pos.038.i, i32 0, i32 2
  %15 = ptrtoint ptr %key3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %key3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %shl)
  %cmp.i = icmp eq i32 %16, %shl
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %len4.i = getelementptr inbounds %struct.c4iw_mm_entry, ptr %pos.038.i, i32 0, i32 3
  %17 = ptrtoint ptr %len4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sub)
  %cmp5.i = icmp eq i32 %18, %sub
  br i1 %cmp5.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %len4.i.le = getelementptr inbounds %struct.c4iw_mm_entry, ptr %pos.038.i, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.038.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.038.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %pos.038.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pos.038.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %25 = ptrtoint ptr %pos.038.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %pos.038.i, ptr %pos.038.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %pos.038.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %pos.038.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @remove_mmap.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_mmap, %if.then14.i)) #7
          to label %remove_mmap.exit [label %if.then14.i], !srcloc !152

if.then14.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %addr.i = getelementptr inbounds %struct.c4iw_mm_entry, ptr %pos.038.i, i32 0, i32 1
  %27 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %addr.i, align 8
  %29 = ptrtoint ptr %len4.i.le to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len4.i.le, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @remove_mmap.__UNIQUE_ID_ddebug678, ptr noundef nonnull @.str.38, i32 noundef %shl, i64 noundef %28, i32 noundef %30) #7
  br label %remove_mmap.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %nxt.039.i, %mmaps.i
  br i1 %cmp.i.not.i, label %for.inc.i.remove_mmap.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.remove_mmap.exit.thread_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %remove_mmap.exit.thread

remove_mmap.exit.thread:                          ; preds = %for.inc.i.remove_mmap.exit.thread_crit_edge, %if.end7.remove_mmap.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mmap_lock.i) #7
  br label %cleanup

remove_mmap.exit:                                 ; preds = %if.then14.i, %list_del_init.exit.i
  %tobool12.not = icmp eq ptr %pos.038.i, null
  br i1 %tobool12.not, label %remove_mmap.exit.cleanup_crit_edge, label %if.end14

remove_mmap.exit.cleanup_crit_edge:               ; preds = %remove_mmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %remove_mmap.exit
  %addr15 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %pos.038.i, i32 0, i32 1
  %31 = ptrtoint ptr %addr15 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %addr15, align 8
  tail call void @kfree(ptr noundef nonnull %pos.038.i) #7
  %lldi = getelementptr inbounds %struct.c4iw_dev, ptr %11, i32 0, i32 1, i32 8
  %33 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lldi, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 47
  %35 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %resource, align 8
  %conv = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %conv)
  %cmp.not = icmp ult i64 %32, %conv
  br i1 %cmp.not, label %if.end14.if.else_crit_edge, label %land.lhs.true

if.end14.if.else_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end14
  %end = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 47, i32 0, i32 1
  %37 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp26 = icmp eq i32 %38, 0
  %sub38 = sub i32 1, %36
  %add = add i32 %sub38, %38
  %cond = select i1 %cmp26, i32 0, i32 %add
  %add39 = add i32 %cond, %36
  %conv40 = zext i32 %add39 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %conv40)
  %cmp41 = icmp ult i64 %32, %conv40
  br i1 %cmp41, label %if.then43, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %39 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vm_page_prot, align 4
  %and44 = and i32 %40, -61
  store i32 %and44, ptr %vm_page_prot, align 4
  %41 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vma, align 4
  %shr = lshr i64 %32, 12
  %conv47 = trunc i64 %shr to i32
  %call.i = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %42, i32 noundef %conv47, i32 noundef %sub, i32 noundef %and44) #7
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end14.if.else_crit_edge
  %arrayidx53 = getelementptr %struct.pci_dev, ptr %34, i32 0, i32 47, i32 2
  %43 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx53, align 8
  %conv55 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %conv55)
  %cmp56.not = icmp ult i64 %32, %conv55
  br i1 %cmp56.not, label %if.else.if.else120_crit_edge, label %land.lhs.true58

if.else.if.else120_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else120

land.lhs.true58:                                  ; preds = %if.else
  %end68 = getelementptr %struct.pci_dev, ptr %34, i32 0, i32 47, i32 2, i32 1
  %45 = ptrtoint ptr %end68 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %end68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp69 = icmp eq i32 %46, 0
  %sub83 = sub i32 1, %44
  %add84 = add i32 %sub83, %46
  %cond86 = select i1 %cmp69, i32 0, i32 %add84
  %add87 = add i32 %cond86, %44
  %conv88 = zext i32 %add87 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %conv88)
  %cmp89 = icmp ult i64 %32, %conv88
  br i1 %cmp89, label %if.then91, label %land.lhs.true58.if.else120_crit_edge

land.lhs.true58.if.else120_crit_edge:             ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else120

if.then91:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #9
  %vm_page_prot109 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %47 = ptrtoint ptr %vm_page_prot109 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vm_page_prot109, align 4
  %and110 = and i32 %48, -61
  store i32 %and110, ptr %vm_page_prot109, align 4
  %49 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vma, align 4
  %shr116 = lshr i64 %32, 12
  %conv117 = trunc i64 %shr116 to i32
  %call.i186 = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %50, i32 noundef %conv117, i32 noundef %sub, i32 noundef %and110) #7
  br label %cleanup

if.else120:                                       ; preds = %land.lhs.true58.if.else120_crit_edge, %if.else.if.else120_crit_edge
  %51 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vma, align 4
  %shr122 = lshr i64 %32, 12
  %conv123 = trunc i64 %shr122 to i32
  %vm_page_prot124 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %53 = ptrtoint ptr %vm_page_prot124 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vm_page_prot124, align 4
  %call125 = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %52, i32 noundef %conv123, i32 noundef %sub, i32 noundef %54) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else120, %if.then91, %if.then43, %remove_mmap.exit.cleanup_crit_edge, %remove_mmap.exit.thread, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ -22, %remove_mmap.exit.cleanup_crit_edge ], [ %call.i, %if.then43 ], [ %call.i186, %if.then91 ], [ %call125, %if.else120 ], [ -22, %remove_mmap.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c4iw_allocate_pd(ptr noundef %pd, ptr noundef readonly %udata) #0 align 64 {
entry:
  %uresp = alloca %struct.c4iw_alloc_pd_resp, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_allocate_pd.__UNIQUE_ID_ddebug686, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_allocate_pd, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_allocate_pd.__UNIQUE_ID_ddebug686, ptr noundef nonnull @.str.22, ptr noundef %1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pdid_table = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 0, i32 2
  %call4 = tail call i32 @c4iw_get_resource(ptr noundef %pdid_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end.cleanup60_crit_edge, label %if.end7

do.end.cleanup60_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup60

if.end7:                                          ; preds = %do.end
  %pdid8 = getelementptr inbounds %struct.c4iw_pd, ptr %pd, i32 0, i32 1
  %2 = ptrtoint ptr %pdid8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call4, ptr %pdid8, align 4
  %rhp9 = getelementptr inbounds %struct.c4iw_pd, ptr %pd, i32 0, i32 2
  %3 = ptrtoint ptr %rhp9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %rhp9, align 4
  %tobool10.not = icmp eq ptr %udata, null
  br i1 %tobool10.not, label %if.end7.if.end19_crit_edge, label %if.then11

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then11:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uresp) #7
  %4 = ptrtoint ptr %uresp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call4, ptr %uresp, align 4
  %outbuf.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %5 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %outbuf.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #7
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i, label %if.then11.if.then16_crit_edge, label %if.end.i.i.i

if.then11.if.then16_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.end.i.i.i:                                     ; preds = %if.then11
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #12, !srcloc !155
  %asmresult.i.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.if.then16_crit_edge

if.end.i.i.i.if.then16_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %uresp, i32 noundef 4) #7
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %uresp, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool.not.i, label %if.end19.critedge, label %copy_to_user.exit.i.if.then16_crit_edge

copy_to_user.exit.i.if.then16_crit_edge:          ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.then16:                                        ; preds = %copy_to_user.exit.i.if.then16_crit_edge, %if.end.i.i.i.if.then16_crit_edge, %if.then11.if.then16_crit_edge
  %8 = ptrtoint ptr %rhp9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rhp9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_deallocate_pd.__UNIQUE_ID_ddebug685, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_allocate_pd, %if.then.i)) #7
          to label %c4iw_deallocate_pd.exit [label %if.then.i], !srcloc !152

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %pdid8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pdid8, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_deallocate_pd.__UNIQUE_ID_ddebug685, ptr noundef nonnull @.str.51, ptr noundef %pd, i32 noundef %11) #7
  br label %c4iw_deallocate_pd.exit

c4iw_deallocate_pd.exit:                          ; preds = %if.then.i, %if.then16
  %pdid_table.i = getelementptr inbounds %struct.c4iw_dev, ptr %9, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %pdid8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pdid8, align 4
  call void @c4iw_put_resource(ptr noundef %pdid_table.i, i32 noundef %13) #7
  %stats.i = getelementptr inbounds %struct.c4iw_dev, ptr %9, i32 0, i32 1, i32 13
  call void @mutex_lock_nested(ptr noundef %stats.i, i32 noundef 0) #7
  %cur.i = getelementptr inbounds %struct.c4iw_dev, ptr %9, i32 0, i32 1, i32 13, i32 2, i32 1
  %14 = ptrtoint ptr %cur.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %cur.i, align 8
  %dec.i = add i64 %15, -1
  store i64 %dec.i, ptr %cur.i, align 8
  call void @mutex_unlock(ptr noundef %stats.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uresp) #7
  br label %cleanup60

if.end19.critedge:                                ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uresp) #7
  br label %if.end19

if.end19:                                         ; preds = %if.end19.critedge, %if.end7.if.end19_crit_edge
  %stats = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13
  call void @mutex_lock_nested(ptr noundef %stats, i32 noundef 0) #7
  %cur = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 2, i32 1
  %16 = ptrtoint ptr %cur to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %cur, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %cur, align 8
  %max = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 2, i32 2
  %18 = ptrtoint ptr %max to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %max, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %inc, i64 %19)
  %cmp = icmp ugt i64 %inc, %19
  br i1 %cmp, label %if.then31, label %if.end19.if.end40_crit_edge

if.end19.if.end40_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then31:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %max to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %inc, ptr %max, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then31, %if.end19.if.end40_crit_edge
  call void @mutex_unlock(ptr noundef %stats) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_allocate_pd.__UNIQUE_ID_ddebug687, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_allocate_pd, %if.then56)) #7
          to label %cleanup60 [label %if.then56], !srcloc !152

if.then56:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_allocate_pd.__UNIQUE_ID_ddebug687, ptr noundef nonnull @.str.48, i32 noundef %call4, ptr noundef %pd) #7
  br label %cleanup60

cleanup60:                                        ; preds = %if.then56, %if.end40, %c4iw_deallocate_pd.exit, %do.end.cleanup60_crit_edge
  %retval.1 = phi i32 [ -22, %do.end.cleanup60_crit_edge ], [ -14, %c4iw_deallocate_pd.exit ], [ 0, %if.then56 ], [ 0, %if.end40 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c4iw_deallocate_pd(ptr noundef %pd, ptr nocapture noundef readnone %udata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rhp1 = getelementptr inbounds %struct.c4iw_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %rhp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rhp1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_deallocate_pd.__UNIQUE_ID_ddebug685, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_deallocate_pd, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdid = getelementptr inbounds %struct.c4iw_pd, ptr %pd, i32 0, i32 1
  %2 = ptrtoint ptr %pdid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pdid, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_deallocate_pd.__UNIQUE_ID_ddebug685, ptr noundef nonnull @.str.51, ptr noundef %pd, i32 noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pdid_table = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 0, i32 2
  %pdid5 = getelementptr inbounds %struct.c4iw_pd, ptr %pd, i32 0, i32 1
  %4 = ptrtoint ptr %pdid5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pdid5, align 4
  tail call void @c4iw_put_resource(ptr noundef %pdid_table, i32 noundef %5) #7
  %stats = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13
  tail call void @mutex_lock_nested(ptr noundef %stats, i32 noundef 0) #7
  %cur = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 13, i32 2, i32 1
  %6 = ptrtoint ptr %cur to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cur, align 8
  %dec = add i64 %7, -1
  store i64 %dec, ptr %cur, align 8
  tail call void @mutex_unlock(ptr noundef %stats) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_create_srq(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_modify_srq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_destroy_srq(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_create_qp(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_ib_modify_qp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_ib_query_qp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_destroy_qp(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_create_cq(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_destroy_cq(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @c4iw_get_dma_mr(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @c4iw_reg_user_mr(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_dereg_mr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @c4iw_alloc_mr(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_map_mr_sg(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @c4iw_alloc_device_stats(ptr nocapture noundef readnone %ibdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdma_alloc_hw_stats_struct(ptr noundef nonnull @cxgb4_descs, i32 noundef 8, i32 noundef 10) #7
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c4iw_get_mib(ptr nocapture noundef readonly %ibdev, ptr nocapture noundef %stats, i32 noundef %port, i32 noundef %index) #0 align 64 {
entry:
  %v4 = alloca %struct.tp_tcp_stats, align 8
  %v6 = alloca %struct.tp_tcp_stats, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %v4) #7
  %0 = call ptr @memset(ptr %v4, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %v6) #7
  %1 = call ptr @memset(ptr %v6, i32 255, i32 32)
  %lldi = getelementptr inbounds %struct.c4iw_dev, ptr %ibdev, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldi, align 8
  call void @cxgb4_get_tcp_stats(ptr noundef %3, ptr noundef nonnull %v4, ptr noundef nonnull %v6) #7
  %tcp_in_segs = getelementptr inbounds %struct.tp_tcp_stats, ptr %v4, i32 0, i32 1
  %4 = ptrtoint ptr %tcp_in_segs to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tcp_in_segs, align 8
  %value = getelementptr inbounds %struct.rdma_hw_stats, ptr %stats, i32 0, i32 6
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %value, align 8
  %tcp_out_segs = getelementptr inbounds %struct.tp_tcp_stats, ptr %v4, i32 0, i32 2
  %7 = ptrtoint ptr %tcp_out_segs to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tcp_out_segs, align 8
  %arrayidx2 = getelementptr %struct.rdma_hw_stats, ptr %stats, i32 1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %arrayidx2, align 8
  %tcp_retrans_segs = getelementptr inbounds %struct.tp_tcp_stats, ptr %v4, i32 0, i32 3
  %10 = ptrtoint ptr %tcp_retrans_segs to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tcp_retrans_segs, align 8
  %arrayidx4 = getelementptr %struct.rdma_hw_stats, ptr %stats, i32 1, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %arrayidx4, align 8
  %13 = ptrtoint ptr %v4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v4, align 8
  %conv = zext i32 %14 to i64
  %arrayidx6 = getelementptr %struct.rdma_hw_stats, ptr %stats, i32 1, i32 0, i32 1, i32 4, i32 1
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv, ptr %arrayidx6, align 8
  %tcp_in_segs7 = getelementptr inbounds %struct.tp_tcp_stats, ptr %v6, i32 0, i32 1
  %16 = ptrtoint ptr %tcp_in_segs7 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tcp_in_segs7, align 8
  %arrayidx9 = getelementptr %struct.rdma_hw_stats, ptr %stats, i32 1, i32 0, i32 1, i32 4, i32 2
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %arrayidx9, align 8
  %tcp_out_segs10 = getelementptr inbounds %struct.tp_tcp_stats, ptr %v6, i32 0, i32 2
  %19 = ptrtoint ptr %tcp_out_segs10 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tcp_out_segs10, align 8
  %arrayidx12 = getelementptr %struct.rdma_hw_stats, ptr %stats, i32 1, i32 0, i32 1, i32 4, i32 6
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %arrayidx12, align 8
  %tcp_retrans_segs13 = getelementptr inbounds %struct.tp_tcp_stats, ptr %v6, i32 0, i32 3
  %22 = ptrtoint ptr %tcp_retrans_segs13 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tcp_retrans_segs13, align 8
  %arrayidx15 = getelementptr %struct.rdma_hw_stats, ptr %stats, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx15, align 8
  %25 = ptrtoint ptr %v6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %v6, align 8
  %conv17 = zext i32 %26 to i64
  %arrayidx19 = getelementptr %struct.rdma_hw_stats, ptr %stats, i32 1, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv17, ptr %arrayidx19, align 8
  %num_counters = getelementptr inbounds %struct.rdma_hw_stats, ptr %stats, i32 0, i32 5
  %28 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_counters, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %v6) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %v4) #7
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_fill_res_mr_entry(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_fill_res_cq_entry(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_fill_res_cm_id_entry(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_qp_add_ref(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_qp_rem_ref(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @c4iw_get_qp(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_connect(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_accept_cr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_reject_cr(ptr noundef, ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_create_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_destroy_listen(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rev_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.ib_core_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hw_rev_show.__UNIQUE_ID_ddebug695, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hw_rev_show, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hw_rev_show.__UNIQUE_ID_ddebug695, ptr noundef nonnull @.str.12, ptr noundef %dev) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %adapter_type = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8, i32 13
  %2 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %adapter_type, align 8
  %4 = and i8 %3, 15
  %and = zext i8 %4 to i32
  %call5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.13, i32 noundef %and) #7
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hca_type_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %info = alloca %struct.ethtool_drvinfo, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.ib_core_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 8
  call void @llvm.lifetime.start.p0(i64 196, ptr nonnull %info) #7
  %2 = call ptr @memset(ptr %info, i32 255, i32 196)
  %ports = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8, i32 3
  %3 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ports, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hca_type_show.__UNIQUE_ID_ddebug696, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hca_type_show, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hca_type_show.__UNIQUE_ID_ddebug696, ptr noundef nonnull @.str.12, ptr noundef %dev) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 44
  %7 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ethtool_ops, align 16
  %get_drvinfo = getelementptr inbounds %struct.ethtool_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %get_drvinfo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_drvinfo, align 4
  call void %10(ptr noundef %6, ptr noundef nonnull %info) #7
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call5 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.16, ptr noundef %driver) #7
  call void @llvm.lifetime.end.p0(i64 196, ptr nonnull %info) #7
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @board_id_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.ib_core_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @board_id_show.__UNIQUE_ID_ddebug697, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@board_id_show, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @board_id_show.__UNIQUE_ID_ddebug697, ptr noundef nonnull @.str.12, ptr noundef %dev) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lldi = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldi, align 8
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor, align 8
  %conv = zext i16 %5 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %conv8 = zext i16 %7 to i32
  %call9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv8) #7
  ret i32 %call9
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_get_eth_speed(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_init_dev_ucontext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_release_dev_ucontext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_get_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_put_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_alloc_hw_stats_struct(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_get_tcp_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_device_set_netdev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !14, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !35, !37, !38, !39, !40, !42, !44, !45, !47, !48, !50, !52, !53, !55, !56, !58, !60, !61, !62, !63, !65, !66, !68, !70, !71, !73, !74, !75, !76, !78, !79, !81, !82, !84, !85, !86, !87, !89, !90, !92, !94, !96, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !129, !131, !133, !135, !137, !139, !141}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @__param_fastreg_support, !1, !"__param_fastreg_support", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 59, i32 1}
!2 = !{ptr @__UNIQUE_ID_fastreg_supporttype680, !1, !"__UNIQUE_ID_fastreg_supporttype680", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_fastreg_support681, !4, !"__UNIQUE_ID_fastreg_support681", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 60, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 529, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @c4iw_register_device.__UNIQUE_ID_ddebug700, !6, !"__UNIQUE_ID_ddebug700", i1 false, i1 false}
!11 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 538, i32 31}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 551, i32 40}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 558, i32 2}
!18 = !{ptr @c4iw_register_device._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @c4iw_register_device._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 566, i32 2}
!22 = !{ptr @c4iw_unregister_device.__UNIQUE_ID_ddebug702, !21, !"__UNIQUE_ID_ddebug702", i1 false, i1 false}
!23 = !{ptr @__param_str_fastreg_support, !1, !"__param_str_fastreg_support", i1 false, i1 false}
!24 = !{ptr @fastreg_support, !25, !"fastreg_support", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 58, i32 12}
!26 = !{ptr @c4iw_dev_ops, !27, !"c4iw_dev_ops", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 452, i32 35}
!28 = !{ptr @c4iw_attr_group, !29, !"c4iw_attr_group", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 418, i32 37}
!30 = !{ptr @c4iw_class_attributes, !31, !"c4iw_class_attributes", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 411, i32 26}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 331, i32 8}
!34 = !{ptr @dev_attr_hw_rev, !33, !"dev_attr_hw_rev", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 326, i32 2}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @hw_rev_show.__UNIQUE_ID_ddebug695, !36, !"__UNIQUE_ID_ddebug695", i1 false, i1 false}
!39 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 328, i32 8}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 345, i32 8}
!44 = !{ptr @dev_attr_hca_type, !43, !"dev_attr_hca_type", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 341, i32 2}
!47 = !{ptr @hca_type_show.__UNIQUE_ID_ddebug696, !46, !"__UNIQUE_ID_ddebug696", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 343, i32 25}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 357, i32 8}
!52 = !{ptr @dev_attr_board_id, !51, !"dev_attr_board_id", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 353, i32 2}
!55 = !{ptr @board_id_show.__UNIQUE_ID_ddebug697, !54, !"__UNIQUE_ID_ddebug697", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 354, i32 25}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 262, i32 2}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @c4iw_query_device.__UNIQUE_ID_ddebug689, !59, !"__UNIQUE_ID_ddebug689", i1 false, i1 false}
!62 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 443, i32 2}
!65 = !{ptr @get_dev_fw_str.__UNIQUE_ID_ddebug699, !64, !"__UNIQUE_ID_ddebug699", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 445, i32 40}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 304, i32 2}
!70 = !{ptr @c4iw_query_port.__UNIQUE_ID_ddebug694, !69, !"__UNIQUE_ID_ddebug694", i1 false, i1 false}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 246, i32 2}
!73 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @c4iw_query_gid.__UNIQUE_ID_ddebug688, !72, !"__UNIQUE_ID_ddebug688", i1 false, i1 false}
!75 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 86, i32 2}
!78 = !{ptr @c4iw_alloc_ucontext.__UNIQUE_ID_ddebug683, !77, !"__UNIQUE_ID_ddebug683", i1 false, i1 false}
!79 = !{ptr @c4iw_alloc_ucontext.__key, !80, !"__key", i1 false, i1 false}
!80 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 89, i32 2}
!81 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 92, i32 3}
!84 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @c4iw_alloc_ucontext._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @c4iw_alloc_ucontext._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!89 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!90 = distinct !{null, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h", i32 569, i32 2}
!96 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @insert_mmap.__UNIQUE_ID_ddebug679, !95, !"__UNIQUE_ID_ddebug679", i1 false, i1 false}
!99 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 68, i32 2}
!102 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @c4iw_dealloc_ucontext.__UNIQUE_ID_ddebug682, !101, !"__UNIQUE_ID_ddebug682", i1 false, i1 false}
!104 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 135, i32 2}
!107 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @c4iw_mmap.__UNIQUE_ID_ddebug684, !106, !"__UNIQUE_ID_ddebug684", i1 false, i1 false}
!109 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h", i32 556, i32 4}
!112 = !{ptr @remove_mmap.__UNIQUE_ID_ddebug678, !111, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 216, i32 2}
!115 = !{ptr @c4iw_allocate_pd.__UNIQUE_ID_ddebug686, !114, !"__UNIQUE_ID_ddebug686", i1 false, i1 false}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 237, i32 2}
!118 = !{ptr @c4iw_allocate_pd.__UNIQUE_ID_ddebug687, !117, !"__UNIQUE_ID_ddebug687", i1 false, i1 false}
!119 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 201, i32 2}
!122 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @c4iw_deallocate_pd.__UNIQUE_ID_ddebug685, !121, !"__UNIQUE_ID_ddebug685", i1 false, i1 false}
!124 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 372, i32 21}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 373, i32 22}
!129 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 374, i32 26}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 375, i32 22}
!133 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 376, i32 21}
!135 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 377, i32 22}
!137 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 378, i32 26}
!139 = !{ptr @.str.59, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 379, i32 22}
!141 = !{ptr @cxgb4_descs, !142, !"cxgb4_descs", i1 false, i1 false}
!142 = !{!"../drivers/infiniband/hw/cxgb4/provider.c", i32 371, i32 36}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{i64 2148968015, i64 2148968020, i64 2148968033, i64 2148968077, i64 2148968111, i64 2148968132}
!153 = !{i8 0, i8 2}
!154 = !{!"branch_weights", i32 2000, i32 1}
!155 = !{i64 2153309875, i64 2153309900}
