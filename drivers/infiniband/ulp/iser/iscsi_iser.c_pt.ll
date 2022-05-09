; ModuleID = '/llk/IR_all_yes/drivers/infiniband/ulp/iser/iscsi_iser.c_pt.bc'
source_filename = "../drivers/infiniband/ulp/iser/iscsi_iser.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.132 }
%union.anon.132 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iser_global = type { %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.iscsi_transport = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iscsi_hdr = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, [12 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.iscsi_task = type { ptr, i16, i16, i32, i32, %struct.scsi_lun, i32, i32, %struct.iscsi_r2t_info, ptr, i32, ptr, ptr, i32, i32, i8, i8, i32, %struct.refcount_struct, %struct.list_head, ptr }
%struct.iscsi_r2t_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.iscsi_conn = type { ptr, ptr, ptr, i32, %struct.timer_list, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ib_conn = type { ptr, ptr, ptr, i32, ptr, %struct.iser_fr_pool, i8, %struct.ib_cqe }
%struct.iser_fr_pool = type { %struct.list_head, %struct.spinlock, i32, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ib_cqe = type { ptr }
%struct.iser_conn = type { %struct.ib_conn, ptr, ptr, i32, i32, i16, [64 x i8], %struct.work_struct, %struct.mutex, %struct.completion, %struct.completion, %struct.completion, %struct.list_head, %struct.iser_login_desc, ptr, i32, i16, i16, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.iser_login_desc = type <{ ptr, ptr, i64, i64, %struct.ib_sge, %struct.ib_cqe }>
%struct.ib_sge = type { i64, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.131, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.131 = type { %struct.atomic_t }
%struct.iser_tx_desc = type { %struct.iser_ctrl, %struct.iscsi_hdr, i32, i64, [2 x %struct.ib_sge], i32, %struct.ib_cqe, i8, %struct.ib_reg_wr, %struct.ib_send_wr, %struct.ib_send_wr }
%struct.iser_ctrl = type <{ i8, [3 x i8], i32, i64, i32, i64 }>
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.167, ptr, i32, i32, i32, %union.anon.168 }
%union.anon.167 = type { i64 }
%union.anon.168 = type { i32 }
%struct.iser_device = type { ptr, ptr, %struct.ib_event_handler, %struct.list_head, i32 }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.iscsi_iser_task = type { %struct.iser_tx_desc, ptr, i32, ptr, i32, [2 x i32], [2 x %struct.iser_mem_reg], [2 x %struct.iser_data_buf], [2 x %struct.iser_data_buf] }
%struct.iser_mem_reg = type { %struct.ib_sge, i32, ptr }
%struct.iser_data_buf = type { ptr, i32, i32, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.185, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.185 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.172 }
%struct.anon.172 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.iscsi_cls_session = type { %struct.list_head, ptr, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i8, %struct.delayed_work, i32, i8, i32, i32, i32, ptr, %struct.device }
%struct.iscsi_cls_conn = type { %struct.list_head, ptr, ptr, i32, %struct.mutex, ptr, i32, %struct.work_struct, %struct.device, i32 }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.__kernel_sockaddr_storage = type { %union.anon.182 }
%union.anon.182 = type { ptr, [124 x i8] }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%struct.iscsi_stats = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.iscsi_stats_custom] }
%struct.iscsi_stats_custom = type { [64 x i8], i64 }
%struct.iscsi_data = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_description525 = internal constant [63 x i8] c"ib_iser.description=iSER (iSCSI Extensions for RDMA) Datamover\00", section ".modinfo", align 1
@__UNIQUE_ID_file526 = internal constant [49 x i8] c"ib_iser.file=drivers/infiniband/ulp/iser/ib_iser\00", section ".modinfo", align 1
@__UNIQUE_ID_license527 = internal constant [29 x i8] c"ib_iser.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author528 = internal constant [55 x i8] c"ib_iser.author=Alex Nezhinsky, Dan Bar Dov, Or Gerlitz\00", section ".modinfo", align 1
@iser_debug_level = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_str_debug_level = internal constant [20 x i8] c"ib_iser.debug_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug_level = internal constant %struct.kernel_param { ptr @__param_str_debug_level, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.132 { ptr @iser_debug_level } }, section "__param", align 4
@__UNIQUE_ID_debug_leveltype529 = internal constant [33 x i8] c"ib_iser.parmtype=debug_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_level530 = internal constant [72 x i8] c"ib_iser.parm=debug_level:Enable debug tracing if > 0 (default:disabled)\00", section ".modinfo", align 1
@__param_str_max_lun = internal constant [16 x i8] c"ib_iser.max_lun\00", align 1
@iscsi_iser_size_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @iscsi_iser_set, ptr @param_get_uint, ptr null }, [16 x i8] zeroinitializer }, align 32
@iscsi_max_lun = internal global { i32, [28 x i8] } { i32 512, [28 x i8] zeroinitializer }, align 32
@__param_max_lun = internal constant %struct.kernel_param { ptr @__param_str_max_lun, ptr null, ptr @iscsi_iser_size_ops, i16 292, i8 -1, i8 0, %union.anon.132 { ptr @iscsi_max_lun } }, section "__param", align 4
@__UNIQUE_ID_max_lun531 = internal constant [77 x i8] c"ib_iser.parm=max_lun:Max LUNs to allow per session, should > 0 (default:512)\00", section ".modinfo", align 1
@iser_max_sectors = dso_local global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__param_str_max_sectors = internal constant [20 x i8] c"ib_iser.max_sectors\00", align 1
@__param_max_sectors = internal constant %struct.kernel_param { ptr @__param_str_max_sectors, ptr null, ptr @iscsi_iser_size_ops, i16 420, i8 -1, i8 0, %union.anon.132 { ptr @iser_max_sectors } }, section "__param", align 4
@__UNIQUE_ID_max_sectors532 = internal constant [99 x i8] c"ib_iser.parm=max_sectors:Max number of sectors in a single scsi command, should > 0 (default:1024)\00", section ".modinfo", align 1
@iser_always_reg = dso_local global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_str_always_register = internal constant [24 x i8] c"ib_iser.always_register\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_always_register = internal constant %struct.kernel_param { ptr @__param_str_always_register, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.132 { ptr @iser_always_reg } }, section "__param", align 4
@__UNIQUE_ID_always_registertype533 = internal constant [38 x i8] c"ib_iser.parmtype=always_register:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_always_register534 = internal constant [103 x i8] c"ib_iser.parm=always_register:Always register memory, even for continuous memory regions (default:true)\00", section ".modinfo", align 1
@iser_pi_enable = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_str_pi_enable = internal constant [18 x i8] c"ib_iser.pi_enable\00", align 1
@__param_pi_enable = internal constant %struct.kernel_param { ptr @__param_str_pi_enable, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.132 { ptr @iser_pi_enable } }, section "__param", align 4
@__UNIQUE_ID_pi_enabletype535 = internal constant [32 x i8] c"ib_iser.parmtype=pi_enable:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_pi_enable536 = internal constant [72 x i8] c"ib_iser.parm=pi_enable:Enable T10-PI offload support (default:disabled)\00", section ".modinfo", align 1
@iscsi_iser_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013iser: %s: wrong datalen %d (hdr), %d (IB)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iscsi_iser_recv\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/infiniband/ulp/iser/iscsi_iser.c\00", [55 x i8] zeroinitializer }, align 32
@iscsi_iser_recv._entry_ptr = internal global ptr @iscsi_iser_recv._entry, section ".printk_index", align 4
@iscsi_iser_recv._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017iser: %s: aligned datalen (%d) hdr, %d (IB)\0A\00", [49 x i8] zeroinitializer }, align 32
@iscsi_iser_recv._entry_ptr.5 = internal global ptr @iscsi_iser_recv._entry.3, section ".printk_index", align 4
@iser_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017iser: %s: Removing iSER datamover...\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iser_exit\00", [22 x i8] zeroinitializer }, align 32
@iser_exit._entry_ptr = internal global ptr @iser_exit._entry, section ".printk_index", align 4
@release_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ig = dso_local global { %struct.iser_global, [52 x i8] } zeroinitializer, align 32
@iser_exit._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 1074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\013iser: %s: Error cleanup stage completed but we still have iser connections, destroying them anyway\0A\00", [58 x i8] zeroinitializer }, align 32
@iser_exit._entry_ptr.10 = internal global ptr @iser_exit._entry.8, section ".printk_index", align 4
@iscsi_iser_transport = internal global { %struct.iscsi_transport, [60 x i8] } { %struct.iscsi_transport { ptr null, ptr @.str.13, i32 137, ptr @iscsi_iser_session_create, ptr @iscsi_iser_session_destroy, ptr @iscsi_iser_conn_create, ptr @iscsi_conn_unbind, ptr @iscsi_iser_conn_bind, ptr @iscsi_iser_conn_start, ptr @iscsi_iser_conn_stop, ptr @iscsi_conn_teardown, ptr @iscsi_iser_set_param, ptr @iscsi_iser_get_ep_param, ptr @iscsi_conn_get_param, ptr @iscsi_session_get_param, ptr @iscsi_host_get_param, ptr @iscsi_host_set_param, ptr @iscsi_conn_send_pdu, ptr @iscsi_iser_conn_get_stats, ptr @iscsi_iser_task_init, ptr @iscsi_iser_task_xmit, ptr @iscsi_iser_cleanup_task, ptr @iscsi_iser_pdu_alloc, ptr null, ptr null, ptr null, ptr @iscsi_session_recovery_timedout, ptr @iscsi_iser_ep_connect, ptr @iscsi_iser_ep_poll, ptr @iscsi_iser_ep_disconnect, ptr null, ptr null, ptr null, ptr null, ptr @iser_attr_is_visible, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_iser_check_protection }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_ib_iser__543_1085_iser_init6 = internal global ptr @iser_init, section ".initcall6.init", align 4
@__exitcall_iser_exit = internal global ptr @iser_exit, section ".exitcall.exit", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iser\00", [27 x i8] zeroinitializer }, align 32
@iscsi_iser_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @iscsi_queuecommand, ptr null, ptr null, ptr @.str.22, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_eh_abort, ptr @iscsi_eh_device_reset, ptr @iscsi_eh_recover_target, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_target_alloc, ptr null, ptr null, ptr null, ptr @scsi_change_queue_depth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_eh_cmd_timed_out, ptr null, ptr null, ptr @.str.23, ptr null, i32 0, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 0, i32 0, i16 512, i8 0, i32 0, i8 -128, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@iscsi_iser_scsi_transport = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@iscsi_iser_session_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013iser: %s: iser conn %p already started teardown\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iscsi_iser_session_create\00", [38 x i8] zeroinitializer }, align 32
@iscsi_iser_session_create._entry_ptr = internal global ptr @iscsi_iser_session_create._entry, section ".printk_index", align 4
@iscsi_iser_session_create._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017iser: %s: iser_conn %p, sg_tablesize %u, max_sectors %u\0A\00", [37 x i8] zeroinitializer }, align 32
@iscsi_iser_session_create._entry_ptr.18 = internal global ptr @iscsi_iser_session_create._entry.16, section ".printk_index", align 4
@iscsi_iser_session_create._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014iser: %s: max_sectors was reduced from %u to %u\0A\00", [45 x i8] zeroinitializer }, align 32
@iscsi_iser_session_create._entry_ptr.21 = internal global ptr @iscsi_iser_session_create._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iSCSI Initiator over iSER\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iscsi_iser\00", [21 x i8] zeroinitializer }, align 32
@iscsi_iser_conn_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013iser: %s: can't bind eph %llx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iscsi_iser_conn_bind\00", [43 x i8] zeroinitializer }, align 32
@iscsi_iser_conn_bind._entry_ptr = internal global ptr @iscsi_iser_conn_bind._entry, section ".printk_index", align 4
@iscsi_iser_conn_bind._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013iser: %s: iser_conn %p state is %d, teardown started\0A\00", [40 x i8] zeroinitializer }, align 32
@iscsi_iser_conn_bind._entry_ptr.28 = internal global ptr @iscsi_iser_conn_bind._entry.26, section ".printk_index", align 4
@iscsi_iser_conn_bind._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016iser: %s: binding iscsi conn %p to iser_conn %p\0A\00", [45 x i8] zeroinitializer }, align 32
@iscsi_iser_conn_bind._entry_ptr.31 = internal global ptr @iscsi_iser_conn_bind._entry.29, section ".printk_index", align 4
@iscsi_iser_conn_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016iser: %s: stopping iscsi_conn: %p, iser_conn: %p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iscsi_iser_conn_stop\00", [43 x i8] zeroinitializer }, align 32
@iscsi_iser_conn_stop._entry_ptr = internal global ptr @iscsi_iser_conn_stop._entry, section ".printk_index", align 4
@unbind_iser_conn_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @unbind_iser_conn_mutex, i64 52), ptr getelementptr (i8, ptr @unbind_iser_conn_mutex, i64 52) }, ptr @unbind_iser_conn_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unbind_iser_conn_mutex.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unbind_iser_conn_mutex\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@iscsi_iser_set_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013iser: %s: DataDigest wasn't negotiated to None\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iscsi_iser_set_param\00", [43 x i8] zeroinitializer }, align 32
@iscsi_iser_set_param._entry_ptr = internal global ptr @iscsi_iser_set_param._entry, section ".printk_index", align 4
@iscsi_iser_set_param._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iscsi_iser_set_param._entry_ptr.40 = internal global ptr @iscsi_iser_set_param._entry.39, section ".printk_index", align 4
@iscsi_iser_set_param._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.38, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013iser: %s: IFMarker wasn't negotiated to No\0A\00", [50 x i8] zeroinitializer }, align 32
@iscsi_iser_set_param._entry_ptr.43 = internal global ptr @iscsi_iser_set_param._entry.41, section ".printk_index", align 4
@iscsi_iser_set_param._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.38, ptr @.str.2, i32 727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013iser: %s: OFMarker wasn't negotiated to No\0A\00", [50 x i8] zeroinitializer }, align 32
@iscsi_iser_set_param._entry_ptr.46 = internal global ptr @iscsi_iser_set_param._entry.44, section ".printk_index", align 4
@iscsi_iser_task_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013iser: %s: Failed to init task %p, err = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iscsi_iser_task_init\00", [43 x i8] zeroinitializer }, align 32
@iscsi_iser_task_init._entry_ptr = internal global ptr @iscsi_iser_task_init._entry, section ".printk_index", align 4
@iscsi_iser_task_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017iser: %s: cmd [itt %x total %d imm %d unsol_data %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iscsi_iser_task_xmit\00", [43 x i8] zeroinitializer }, align 32
@iscsi_iser_task_xmit._entry_ptr = internal global ptr @iscsi_iser_task_xmit._entry, section ".printk_index", align 4
@iscsi_iser_task_xmit._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017iser: %s: ctask xmit [cid %d itt 0x%x]\0A\00", [54 x i8] zeroinitializer }, align 32
@iscsi_iser_task_xmit._entry_ptr.53 = internal global ptr @iscsi_iser_task_xmit._entry.51, section ".printk_index", align 4
@iscsi_iser_mtask_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017iser: %s: mtask xmit [cid %d itt 0x%x]\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iscsi_iser_mtask_xmit\00", [42 x i8] zeroinitializer }, align 32
@iscsi_iser_mtask_xmit._entry_ptr = internal global ptr @iscsi_iser_mtask_xmit._entry, section ".printk_index", align 4
@iscsi_iser_task_xmit_unsol_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017iser: %s: Sending data-out: itt 0x%x, data count %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"iscsi_iser_task_xmit_unsol_data\00", [32 x i8] zeroinitializer }, align 32
@iscsi_iser_task_xmit_unsol_data._entry_ptr = internal global ptr @iscsi_iser_task_xmit_unsol_data._entry, section ".printk_index", align 4
@iscsi_iser_task_xmit_unsol_data._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017iser: %s: Need to send %d more as data-out PDUs\0A\00", [45 x i8] zeroinitializer }, align 32
@iscsi_iser_task_xmit_unsol_data._entry_ptr.60 = internal global ptr @iscsi_iser_task_xmit_unsol_data._entry.58, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iscsi_iser_ep_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016iser: %s: iser conn %p rc = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iscsi_iser_ep_poll\00", [45 x i8] zeroinitializer }, align 32
@iscsi_iser_ep_poll._entry_ptr = internal global ptr @iscsi_iser_ep_poll._entry, section ".printk_index", align 4
@iscsi_iser_ep_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016iser: %s: ep %p iser conn %p\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iscsi_iser_ep_disconnect\00", [39 x i8] zeroinitializer }, align 32
@iscsi_iser_ep_disconnect._entry_ptr = internal global ptr @iscsi_iser_ep_disconnect._entry, section ".printk_index", align 4
@iscsi_iser_ep_disconnect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&iser_conn->release_work)\00", [52 x i8] zeroinitializer }, align 32
@iser_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017iser: %s: Starting iSER datamover...\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iser_init\00", [22 x i8] zeroinitializer }, align 32
@iser_init._entry_ptr = internal global ptr @iser_init._entry, section ".printk_index", align 4
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iser_descriptors\00", [47 x i8] zeroinitializer }, align 32
@iser_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&ig.device_list_mutex\00", [42 x i8] zeroinitializer }, align 32
@iser_init.__key.70 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ig.connlist_mutex\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"release workqueue\00", [46 x i8] zeroinitializer }, align 32
@iser_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.67, ptr @.str.2, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013iser: %s: failed to allocate release workqueue\0A\00", [46 x i8] zeroinitializer }, align 32
@iser_init._entry_ptr.75 = internal global ptr @iser_init._entry.73, section ".printk_index", align 4
@iser_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.67, ptr @.str.2, i32 1045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013iser: %s: iscsi_register_transport failed\0A\00", [51 x i8] zeroinitializer }, align 32
@iser_init._entry_ptr.78 = internal global ptr @iser_init._entry.76, section ".printk_index", align 4
@switch.table.iser_attr_is_visible = internal constant { [44 x i16], [40 x i8] } { [44 x i16] [i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 0, i16 0, i16 0, i16 292, i16 292, i16 292, i16 292, i16 292, i16 0, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 292, i16 0, i16 292, i16 292, i16 292, i16 0, i16 292, i16 292, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 292], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1017]
@__sancov_gen_cov_switch_values.79 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 12, i64 13]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"iser_debug_level\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 88, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"iscsi_iser_size_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 93, i32 38 }
@___asan_gen_.87 = private unnamed_addr constant [14 x i8] c"iscsi_max_lun\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 98, i32 21 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"iser_max_sectors\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 102, i32 14 }
@___asan_gen_.93 = private unnamed_addr constant [16 x i8] c"iser_always_reg\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 107, i32 6 }
@___asan_gen_.96 = private unnamed_addr constant [15 x i8] c"iser_pi_enable\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 112, i32 6 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 147, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 154, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1065, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [11 x i8] c"release_wq\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 84, i32 33 }
@___asan_gen_.129 = private unnamed_addr constant [3 x i8] c"ig\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 86, i32 20 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1073, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [21 x i8] c"iscsi_iser_transport\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 976, i32 31 }
@___asan_gen_.145 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 326, i32 6 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 978, i32 28 }
@___asan_gen_.150 = private unnamed_addr constant [15 x i8] c"iscsi_iser_sht\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 959, i32 34 }
@___asan_gen_.153 = private unnamed_addr constant [26 x i8] c"iscsi_iser_scsi_transport\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 83, i32 40 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 636, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 670, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 675, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 961, i32 28 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 971, i32 28 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 469, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 478, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 490, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 536, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [23 x i8] c"unbind_iser_conn_mutex\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 85, i32 8 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 704, i32 15 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 706, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 713, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 720, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 727, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 240, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 332, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 337, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 272, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 295, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 306, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 858, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 881, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 893, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1018, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1022, i32 36 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1030, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1032, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1035, i32 31 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1037, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.358 = private constant [44 x i8] c"../drivers/infiniband/ulp/iser/iscsi_iser.c\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1045, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant [34 x i8] c"switch.table.iser_attr_is_visible\00", align 1
@llvm.compiler.used = appending global [140 x ptr] [ptr @__UNIQUE_ID_always_register534, ptr @__UNIQUE_ID_always_registertype533, ptr @__UNIQUE_ID_author528, ptr @__UNIQUE_ID_debug_level530, ptr @__UNIQUE_ID_debug_leveltype529, ptr @__UNIQUE_ID_description525, ptr @__UNIQUE_ID_file526, ptr @__UNIQUE_ID_license527, ptr @__UNIQUE_ID_max_lun531, ptr @__UNIQUE_ID_max_sectors532, ptr @__UNIQUE_ID_pi_enable536, ptr @__UNIQUE_ID_pi_enabletype535, ptr @__exitcall_iser_exit, ptr @__initcall__kmod_ib_iser__543_1085_iser_init6, ptr @__param_always_register, ptr @__param_debug_level, ptr @__param_max_lun, ptr @__param_max_sectors, ptr @__param_pi_enable, ptr @iscsi_iser_conn_bind._entry, ptr @iscsi_iser_conn_bind._entry.26, ptr @iscsi_iser_conn_bind._entry.29, ptr @iscsi_iser_conn_bind._entry_ptr, ptr @iscsi_iser_conn_bind._entry_ptr.28, ptr @iscsi_iser_conn_bind._entry_ptr.31, ptr @iscsi_iser_conn_stop._entry, ptr @iscsi_iser_conn_stop._entry_ptr, ptr @iscsi_iser_ep_disconnect._entry, ptr @iscsi_iser_ep_disconnect._entry_ptr, ptr @iscsi_iser_ep_poll._entry, ptr @iscsi_iser_ep_poll._entry_ptr, ptr @iscsi_iser_mtask_xmit._entry, ptr @iscsi_iser_mtask_xmit._entry_ptr, ptr @iscsi_iser_recv._entry, ptr @iscsi_iser_recv._entry.3, ptr @iscsi_iser_recv._entry_ptr, ptr @iscsi_iser_recv._entry_ptr.5, ptr @iscsi_iser_session_create._entry, ptr @iscsi_iser_session_create._entry.16, ptr @iscsi_iser_session_create._entry.19, ptr @iscsi_iser_session_create._entry_ptr, ptr @iscsi_iser_session_create._entry_ptr.18, ptr @iscsi_iser_session_create._entry_ptr.21, ptr @iscsi_iser_set_param._entry, ptr @iscsi_iser_set_param._entry.39, ptr @iscsi_iser_set_param._entry.41, ptr @iscsi_iser_set_param._entry.44, ptr @iscsi_iser_set_param._entry_ptr, ptr @iscsi_iser_set_param._entry_ptr.40, ptr @iscsi_iser_set_param._entry_ptr.43, ptr @iscsi_iser_set_param._entry_ptr.46, ptr @iscsi_iser_task_init._entry, ptr @iscsi_iser_task_init._entry_ptr, ptr @iscsi_iser_task_xmit._entry, ptr @iscsi_iser_task_xmit._entry.51, ptr @iscsi_iser_task_xmit._entry_ptr, ptr @iscsi_iser_task_xmit._entry_ptr.53, ptr @iscsi_iser_task_xmit_unsol_data._entry, ptr @iscsi_iser_task_xmit_unsol_data._entry.58, ptr @iscsi_iser_task_xmit_unsol_data._entry_ptr, ptr @iscsi_iser_task_xmit_unsol_data._entry_ptr.60, ptr @iser_exit, ptr @iser_exit._entry, ptr @iser_exit._entry.8, ptr @iser_exit._entry_ptr, ptr @iser_exit._entry_ptr.10, ptr @iser_init._entry, ptr @iser_init._entry.73, ptr @iser_init._entry.76, ptr @iser_init._entry_ptr, ptr @iser_init._entry_ptr.75, ptr @iser_init._entry_ptr.78, ptr @iser_debug_level, ptr @iscsi_iser_size_ops, ptr @iscsi_max_lun, ptr @iser_max_sectors, ptr @iser_always_reg, ptr @iser_pi_enable, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @release_wq, ptr @ig, ptr @.str.9, ptr @iscsi_iser_transport, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @iscsi_iser_sht, ptr @iscsi_iser_scsi_transport, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @unbind_iser_conn_mutex, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @iscsi_iser_ep_disconnect.__key, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @iser_init.__key, ptr @.str.69, ptr @iser_init.__key.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @switch.table.iser_attr_is_visible], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_debug_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_size_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_max_lun to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_max_sectors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_always_reg to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_pi_enable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_recv._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @release_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ig to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_exit._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_transport to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_scsi_transport to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_session_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_session_create._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_session_create._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_conn_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_conn_bind._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_conn_bind._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_conn_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unbind_iser_conn_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_set_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_set_param._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_set_param._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_set_param._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_task_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_task_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_task_xmit._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_mtask_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_task_xmit_unsol_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_task_xmit_unsol_data._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_ep_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_ep_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_iser_ep_disconnect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_init.__key.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iser_attr_is_visible to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsi_iser_recv(ptr noundef %conn, ptr noundef %hdr, ptr noundef %rx_data, i32 noundef %rx_data_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dlength = getelementptr inbounds %struct.iscsi_hdr, ptr %hdr, i32 0, i32 4
  %0 = ptrtoint ptr %dlength to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dlength, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx2 = getelementptr %struct.iscsi_hdr, ptr %hdr, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %shl4 = shl nuw nsw i32 %conv3, 8
  %or = or i32 %shl4, %shl
  %arrayidx6 = getelementptr %struct.iscsi_hdr, ptr %hdr, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %5 to i32
  %or8 = or i32 %or, %conv7
  call void @__sanitizer_cov_trace_cmp4(i32 %or8, i32 %rx_data_len)
  %cmp = icmp sgt i32 %or8, %rx_data_len
  %add = add nuw nsw i32 %or8, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %rx_data_len)
  %cmp10 = icmp slt i32 %add, %rx_data_len
  %or.cond = select i1 %cmp, i1 true, i1 %cmp10
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %or8, i32 noundef %rx_data_len) #14
  br label %error

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %or8, i32 %rx_data_len)
  %cmp12.not = icmp eq i32 %or8, %rx_data_len
  br i1 %cmp12.not, label %if.end.if.end28_crit_edge, label %do.body15

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

do.body15:                                        ; preds = %if.end
  %6 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp16 = icmp sgt i32 %6, 2
  br i1 %cmp16, label %do.end22, label %do.body15.if.end28_crit_edge, !prof !216

do.body15.if.end28_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

do.end22:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %or8, i32 noundef %rx_data_len) #14
  br label %if.end28

if.end28:                                         ; preds = %do.end22, %do.body15.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %call29 = tail call i32 @iscsi_complete_pdu(ptr noundef %conn, ptr noundef %hdr, ptr noundef %rx_data, i32 noundef %rx_data_len) #11
  %7 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call29, label %if.end28.error_crit_edge [
    i32 0, label %if.end28.cleanup_crit_edge
    i32 1017, label %if.end28.cleanup_crit_edge51
  ]

if.end28.cleanup_crit_edge51:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28.error_crit_edge:                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

error:                                            ; preds = %if.end28.error_crit_edge, %do.end
  %rc.0 = phi i32 [ 1006, %do.end ], [ %call29, %if.end28.error_crit_edge ]
  tail call void @iscsi_conn_failure(ptr noundef %conn, i32 noundef %rc.0) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end28.cleanup_crit_edge, %if.end28.cleanup_crit_edge51
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_complete_pdu(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_failure(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iser_initialize_task_headers(ptr nocapture noundef readonly %task, ptr noundef %tx_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conn = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 12
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 4
  %device1 = getelementptr inbounds %struct.ib_conn, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device1, align 4
  %dd_data2 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %6 = ptrtoint ptr %dd_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dd_data2, align 4
  %state = getelementptr inbounds %struct.iser_conn, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.not = icmp eq i32 %9, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !217

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %tx_desc) #11
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.ib_dma_map_single.exit_crit_edge, label %if.then.i.i, !prof !217

land.rhs.i.i.ib_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_dma_map_single.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %13) #11
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %17, %if.end.i.i.i ], [ %15, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %ib_dma_map_single.exit

if.end39.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %13, ptr noundef %tx_desc, i32 noundef 76) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %tx_desc to i32
  %sub.i.i = add i32 %19, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %18, i32 %shr.i.i
  %and.i.i = and i32 %19, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %13, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 76, i32 noundef 1, i32 noundef 0) #11
  br label %ib_dma_map_single.exit

ib_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge ]
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef %retval.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %ib_dma_map_single.exit.cleanup_crit_edge, label %if.end8

ib_dma_map_single.exit.cleanup_crit_edge:         ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv2.i = zext i32 %retval.0.i.i to i64
  %inv_wr = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 10
  %24 = ptrtoint ptr %inv_wr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %inv_wr, align 8
  %reg_wr = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 8
  %25 = ptrtoint ptr %reg_wr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %reg_wr, align 8
  %mapped = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 7
  %26 = ptrtoint ptr %mapped to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %mapped, align 8
  %dma_addr10 = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 3
  %27 = ptrtoint ptr %dma_addr10 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv2.i, ptr %dma_addr10, align 8
  %tx_sg = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 4
  %28 = ptrtoint ptr %tx_sg to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv2.i, ptr %tx_sg, align 8
  %length = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 4, i32 0, i32 1
  %29 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 76, ptr %length, align 8
  %pd = getelementptr inbounds %struct.iser_device, ptr %5, i32 0, i32 1
  %30 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pd, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %lkey = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 4, i32 0, i32 2
  %34 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %lkey, align 4
  %iser_conn16 = getelementptr inbounds %struct.iscsi_iser_task, ptr %7, i32 0, i32 1
  %35 = ptrtoint ptr %iser_conn16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %3, ptr %iser_conn16, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %ib_dma_map_single.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %ib_dma_map_single.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iser_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge, !prof !216

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %1 = load ptr, ptr @release_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #11
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 2), i32 noundef 0) #11
  %2 = load volatile ptr, ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 3), align 4
  %cmp.i.not = icmp eq ptr %2, getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 3)
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 2)) #11
  br i1 %cmp.i.not, label %do.end4.if.end26_crit_edge, label %do.end10

do.end4.if.end26_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.end10:                                         ; preds = %do.end4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7) #14
  %3 = load ptr, ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 3), align 4
  %cmp18.not32 = icmp eq ptr %3, getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 3)
  br i1 %cmp18.not32, label %do.end10.if.end26_crit_edge, label %do.end10.for.body_crit_edge

do.end10.for.body_crit_edge:                      ; preds = %do.end10
  br label %for.body

do.end10.if.end26_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end10.for.body_crit_edge
  %.pn.in33 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %3, %do.end10.for.body_crit_edge ]
  %iser_conn.0 = getelementptr i8, ptr %.pn.in33, i32 -480
  %4 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in33, align 4
  tail call void @iser_conn_release(ptr noundef %iser_conn.0) #11
  %cmp18.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 3)
  br i1 %cmp18.not, label %for.body.if.end26_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end26:                                         ; preds = %for.body.if.end26_crit_edge, %do.end10.if.end26_crit_edge, %do.end4.if.end26_crit_edge
  %call27 = tail call i32 @iscsi_unregister_transport(ptr noundef nonnull @iscsi_iser_transport) #11
  %5 = load ptr, ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 4), align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iser_conn_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_unregister_transport(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iser_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge, !prof !216

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %1 = call ptr @memset(ptr @ig, i32 0, i32 204)
  %call5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.68, i32 noundef 272, i32 noundef 0, i32 noundef 8192, ptr noundef null) #11
  store ptr %call5, ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 4), align 4
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %do.end4.cleanup_crit_edge, label %do.body9

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body9:                                         ; preds = %do.end4
  tail call void @__mutex_init(ptr noundef nonnull @ig, ptr noundef nonnull @.str.69, ptr noundef nonnull @iser_init.__key) #11
  store volatile ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 1), ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 1), ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 1, i32 1), align 4
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 2), ptr noundef nonnull @.str.71, ptr noundef nonnull @iser_init.__key.70) #11
  store volatile ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 3), ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 3), align 4
  store ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 3), ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 3, i32 1), align 4
  %call15 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.72, i32 noundef 0, i32 noundef 0) #11
  store ptr %call15, ptr @release_wq, align 4
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end20, label %if.end23

do.end20:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.67) #14
  br label %err_alloc_wq

if.end23:                                         ; preds = %do.body9
  %call24 = tail call ptr @iscsi_register_transport(ptr noundef nonnull @iscsi_iser_transport) #11
  store ptr %call24, ptr @iscsi_iser_scsi_transport, align 4
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.end29, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.67) #14
  %2 = load ptr, ptr @release_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %2) #11
  br label %err_alloc_wq

err_alloc_wq:                                     ; preds = %do.end29, %do.end20
  %err.0 = phi i32 [ -22, %do.end29 ], [ -12, %do.end20 ]
  %3 = load ptr, ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 4), align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_wq, %if.end23.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_alloc_wq ], [ -12, %do.end4.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_iser_set(ptr noundef %val, ptr noundef %kp) #0 align 64 {
entry:
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #11
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %n, align 4
  %call = call i32 @kstrtouint(ptr noundef %val, i32 noundef 10, ptr noundef nonnull %n) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = call i32 @param_set_uint(ptr noundef %val, ptr noundef %kp) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_uint(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_uint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iscsi_iser_session_create(ptr noundef readonly %ep, i16 noundef zeroext %cmds_max, i16 noundef zeroext %qdepth, i32 noundef %initial_cmdsn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @iscsi_host_alloc(ptr noundef nonnull @iscsi_iser_sht, i32 noundef 0, i1 noundef zeroext false) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @iscsi_iser_scsi_transport, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 12
  %1 = ptrtoint ptr %transportt to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %transportt, align 4
  %cmd_per_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 27
  %2 = ptrtoint ptr %cmd_per_lun to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %qdepth, ptr %cmd_per_lun, align 8
  %3 = load i32, ptr @iscsi_max_lun, align 4
  %conv = zext i32 %3 to i64
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 22
  %4 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %max_lun, align 8
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 21
  %5 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %max_id, align 4
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 20
  %6 = ptrtoint ptr %max_channel to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %max_channel, align 8
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 24
  %7 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 16, ptr %max_cmd_len, align 4
  %tobool1.not = icmp eq ptr %ep, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %8 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep, align 8
  %scsi_sg_tablesize = getelementptr inbounds %struct.iser_conn, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %scsi_sg_tablesize to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %scsi_sg_tablesize, align 4
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 28
  %12 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %sg_tablesize, align 2
  %max_cmds = getelementptr inbounds %struct.iser_conn, ptr %9, i32 0, i32 5
  %13 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %max_cmds, align 4
  %15 = tail call i16 @llvm.umin.i16(i16 %14, i16 %cmds_max)
  %cond = zext i16 %15 to i32
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 26
  %16 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond, ptr %can_queue, align 4
  %state_mutex = getelementptr inbounds %struct.iser_conn, ptr %9, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #11
  %state = getelementptr inbounds %struct.iser_conn, ptr %9, i32 0, i32 3
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp8.not = icmp eq i32 %18, 2
  br i1 %cmp8.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %9) #14
  tail call void @mutex_unlock(ptr noundef %state_mutex) #11
  br label %free_host

if.end14:                                         ; preds = %if.then2
  %device = getelementptr inbounds %struct.ib_conn, ptr %9, i32 0, i32 4
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %pi_support = getelementptr inbounds %struct.ib_conn, ptr %9, i32 0, i32 6
  %23 = ptrtoint ptr %pi_support to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pi_support, align 4, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool16.not = icmp eq i8 %24, 0
  br i1 %tobool16.not, label %if.end14.if.end20_crit_edge, label %if.then17

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %sig_prot_cap = getelementptr inbounds %struct.ib_device, ptr %22, i32 0, i32 22, i32 40
  %25 = ptrtoint ptr %sig_prot_cap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sig_prot_cap, align 4
  %27 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sg_tablesize, align 2
  %sg_prot_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 29
  %29 = ptrtoint ptr %sg_prot_tablesize to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %sg_prot_tablesize, align 4
  %and.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 25
  %and1.i = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %or4.i = or i32 %spec.select.i, 34
  %ret.1.i = select i1 %tobool2.not.i, i32 %spec.select.i, i32 %or4.i
  %and6.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %or9.i = or i32 %ret.1.i, 68
  %ret.2.i = select i1 %tobool7.not.i, i32 %ret.1.i, i32 %or9.i
  %prot_capabilities.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 41
  %30 = ptrtoint ptr %prot_capabilities.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %ret.2.i, ptr %prot_capabilities.i, align 4
  %prot_guard_type.i = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 42
  %31 = ptrtoint ptr %prot_guard_type.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %prot_guard_type.i, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  %device_cap_flags = getelementptr inbounds %struct.ib_device, ptr %22, i32 0, i32 22, i32 9
  %32 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %device_cap_flags, align 8
  %and = and i64 %33, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool22.not = icmp eq i64 %and, 0
  br i1 %tobool22.not, label %if.then23, label %if.end20.if.end24_crit_edge

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %virt_boundary_mask = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 33
  %34 = ptrtoint ptr %virt_boundary_mask to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4095, ptr %virt_boundary_mask, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  %parent = getelementptr inbounds %struct.ib_device, ptr %22, i32 0, i32 13, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent, align 8
  %call25 = tail call i32 @iscsi_host_add(ptr noundef nonnull %call, ptr noundef %36) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  tail call void @mutex_unlock(ptr noundef %state_mutex) #11
  br i1 %tobool26.not, label %if.end24.if.end47_crit_edge, label %if.end24.free_host_crit_edge

if.end24.free_host_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_host

if.end24.if.end47_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.else:                                          ; preds = %if.end
  %37 = tail call i16 @llvm.umin.i16(i16 %cmds_max, i16 512)
  %cond41 = zext i16 %37 to i32
  %can_queue42 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 26
  %38 = ptrtoint ptr %can_queue42 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond41, ptr %can_queue42, align 4
  %call43 = tail call i32 @iscsi_host_add(ptr noundef nonnull %call, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.else.if.end47_crit_edge, label %if.else.free_host_crit_edge

if.else.free_host_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_host

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.end47:                                         ; preds = %if.else.if.end47_crit_edge, %if.end24.if.end47_crit_edge
  %iser_conn.0 = phi ptr [ null, %if.else.if.end47_crit_edge ], [ %9, %if.end24.if.end47_crit_edge ]
  %sg_tablesize48 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 28
  %39 = ptrtoint ptr %sg_tablesize48 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %sg_tablesize48, align 2
  %conv49 = zext i16 %40 to i32
  %mul = shl nuw nsw i32 %conv49, 3
  %41 = load i32, ptr @iser_max_sectors, align 4
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 %mul)
  %max_sectors = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 30
  %43 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %max_sectors, align 8
  %44 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp58 = icmp sgt i32 %44, 2
  br i1 %cmp58, label %do.end65, label %if.end47.do.end73_crit_edge, !prof !216

if.end47.do.end73_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end73

do.end65:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, ptr noundef %iser_conn.0, i32 noundef %conv49, i32 noundef %42) #14
  br label %do.end73

do.end73:                                         ; preds = %do.end65, %if.end47.do.end73_crit_edge
  %45 = ptrtoint ptr %max_sectors to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_sectors, align 8
  %47 = load i32, ptr @iser_max_sectors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %47)
  %cmp75 = icmp ult i32 %46, %47
  br i1 %cmp75, label %do.body78, label %do.end73.if.end97_crit_edge

do.end73.if.end97_crit_edge:                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

do.body78:                                        ; preds = %do.end73
  %48 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp79 = icmp sgt i32 %48, 0
  br i1 %cmp79, label %do.end90, label %do.body78.if.end97_crit_edge, !prof !216

do.body78.if.end97_crit_edge:                     ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

do.end90:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #13
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15, i32 noundef %47, i32 noundef %46) #14
  br label %if.end97

if.end97:                                         ; preds = %do.end90, %do.body78.if.end97_crit_edge, %do.end73.if.end97_crit_edge
  %can_queue98 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 26
  %49 = ptrtoint ptr %can_queue98 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %can_queue98, align 4
  %conv99 = trunc i32 %50 to i16
  %call100 = tail call ptr @iscsi_session_setup(ptr noundef nonnull @iscsi_iser_transport, ptr noundef nonnull %call, i16 noundef zeroext %conv99, i32 noundef 0, i32 noundef 408, i32 noundef %initial_cmdsn, i32 noundef 0) #11
  %tobool101.not = icmp eq ptr %call100, null
  br i1 %tobool101.not, label %remove_host, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

remove_host:                                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iscsi_host_remove(ptr noundef nonnull %call) #11
  br label %free_host

free_host:                                        ; preds = %remove_host, %if.else.free_host_crit_edge, %if.end24.free_host_crit_edge, %do.end
  tail call void @iscsi_host_free(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %free_host, %if.end97.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %free_host ], [ null, %entry.cleanup_crit_edge ], [ %call100, %if.end97.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iscsi_iser_session_destroy(ptr noundef %cls_session) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.iscsi_cls_session, ptr %cls_session, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  tail call void @iscsi_session_teardown(ptr noundef %cls_session) #11
  tail call void @iscsi_host_remove(ptr noundef %retval.0.i) #11
  tail call void @iscsi_host_free(ptr noundef %retval.0.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iscsi_iser_conn_create(ptr noundef %cls_session, i32 noundef %conn_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @iscsi_conn_setup(ptr noundef %cls_session, i32 noundef 0, i32 noundef %conn_idx) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %max_recv_dlength = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %max_recv_dlength to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 128, ptr %max_recv_dlength, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_unbind(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_iser_conn_bind(ptr noundef %cls_session, ptr noundef %cls_conn, i64 noundef %transport_eph, i32 noundef %is_leading) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %call = tail call i32 @iscsi_conn_bind(ptr noundef %cls_session, ptr noundef %cls_conn, i32 noundef %is_leading) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @iscsi_lookup_endpoint(i64 noundef %transport_eph) #11
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i64 noundef %transport_eph) #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call1, align 8
  %state_mutex = getelementptr inbounds %struct.iser_conn, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #11
  %state = getelementptr inbounds %struct.iser_conn, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end14, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, ptr noundef %3, i32 noundef %5) #14
  br label %out

if.end14:                                         ; preds = %if.end5
  %session = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %session, align 8
  %call15 = tail call i32 @iser_alloc_rx_descriptors(ptr noundef %3, ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body19, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body19:                                        ; preds = %if.end14
  %8 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp20 = icmp sgt i32 %8, 1
  br i1 %cmp20, label %do.end26, label %do.body19.do.end31_crit_edge, !prof !216

do.body19.do.end31_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

do.end26:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25, ptr noundef %1, ptr noundef %3) #14
  br label %do.end31

do.end31:                                         ; preds = %do.end26, %do.body19.do.end31_crit_edge
  %dd_data32 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dd_data32 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %dd_data32, align 4
  %iscsi_conn = getelementptr inbounds %struct.iser_conn, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %iscsi_conn to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %iscsi_conn, align 4
  br label %out

out:                                              ; preds = %do.end31, %if.end14.out_crit_edge, %if.then7
  %error.0 = phi i32 [ -22, %if.then7 ], [ %call15, %if.end14.out_crit_edge ], [ 0, %do.end31 ]
  tail call void @iscsi_put_endpoint(ptr noundef nonnull %call1) #11
  tail call void @mutex_unlock(ptr noundef %state_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ -22, %do.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_iser_conn_start(ptr noundef %cls_conn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %stop_completion = getelementptr inbounds %struct.iser_conn, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %stop_completion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %stop_completion, align 4
  %call = tail call i32 @iscsi_conn_start(ptr noundef %cls_conn) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iscsi_iser_conn_stop(ptr noundef %cls_conn, i32 noundef %flag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %4 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge, !prof !216

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef %1, ptr noundef %3) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %state_mutex = getelementptr inbounds %struct.iser_conn, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @unbind_iser_conn_mutex, i32 noundef 0) #11
  %call8 = tail call i32 @iser_conn_terminate(ptr noundef nonnull %3) #11
  tail call void @iscsi_conn_stop(ptr noundef %cls_conn, i32 noundef %flag) #11
  %iscsi_conn = getelementptr inbounds %struct.iser_conn, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %iscsi_conn to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %iscsi_conn, align 4
  %6 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dd_data1, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @unbind_iser_conn_mutex) #11
  %stop_completion = getelementptr inbounds %struct.iser_conn, ptr %3, i32 0, i32 9
  tail call void @complete(ptr noundef %stop_completion) #11
  tail call void @mutex_unlock(ptr noundef %state_mutex) #11
  br label %if.end11

if.else:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iscsi_conn_stop(ptr noundef %cls_conn, i32 noundef %flag) #11
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_teardown(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_iser_set_param(ptr noundef %cls_conn, i32 noundef %param, ptr noundef %buf, i32 noundef %buflen) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !219
  %1 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %param, label %sw.default [
    i32 0, label %entry.cleanup_crit_edge
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
    i32 12, label %sw.bb12
    i32 13, label %sw.bb22
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.36, ptr noundef nonnull %value)
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %do.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #14
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.36, ptr noundef nonnull %value)
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %sw.bb2.cleanup_crit_edge, label %do.end8

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end8:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #14
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %call13 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.36, ptr noundef nonnull %value)
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool14.not = icmp eq i32 %7, 0
  br i1 %tobool14.not, label %sw.bb12.cleanup_crit_edge, label %do.end18

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end18:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.38) #14
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  %call23 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.36, ptr noundef nonnull %value)
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool24.not = icmp eq i32 %9, 0
  br i1 %tobool24.not, label %sw.bb22.cleanup_crit_edge, label %do.end28

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end28:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.38) #14
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call32 = tail call i32 @iscsi_set_param(ptr noundef %cls_conn, i32 noundef %param, ptr noundef %buf, i32 noundef %buflen) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %do.end28, %sw.bb22.cleanup_crit_edge, %do.end18, %sw.bb12.cleanup_crit_edge, %do.end8, %sw.bb2.cleanup_crit_edge, %do.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %sw.default ], [ -71, %do.end28 ], [ -71, %do.end18 ], [ -71, %do.end8 ], [ -71, %do.end ], [ 0, %sw.bb22.cleanup_crit_edge ], [ 0, %sw.bb12.cleanup_crit_edge ], [ 0, %sw.bb2.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ %param, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_iser_get_ep_param(ptr nocapture noundef readonly %ep, i32 noundef %param, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %2 = and i32 %param, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %2)
  %switch = icmp eq i32 %2, 20
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %dst_addr = getelementptr inbounds %struct.rdma_cm_id, ptr %4, i32 0, i32 4, i32 0, i32 1
  %call = tail call i32 @iscsi_conn_get_addr_param(ptr noundef %dst_addr, i32 noundef %param, ptr noundef %buf) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -107, %lor.lhs.false.cleanup_crit_edge ], [ -107, %sw.bb.cleanup_crit_edge ], [ -38, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_get_param(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_session_get_param(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_host_get_param(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_host_set_param(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_send_pdu(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iscsi_iser_conn_get_stats(ptr nocapture noundef readonly %cls_conn, ptr nocapture noundef writeonly %stats) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_cls_conn, ptr %cls_conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 8
  %txdata_octets = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %txdata_octets to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %txdata_octets, align 8
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %stats, align 8
  %rxdata_octets = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %rxdata_octets to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %rxdata_octets, align 8
  %rxdata_octets2 = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 1
  %7 = ptrtoint ptr %rxdata_octets2 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %rxdata_octets2, align 8
  %scsicmd_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 49
  %8 = ptrtoint ptr %scsicmd_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scsicmd_pdus_cnt, align 8
  %scsicmd_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 3
  %10 = ptrtoint ptr %scsicmd_pdus to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %scsicmd_pdus, align 4
  %dataout_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 50
  %11 = ptrtoint ptr %dataout_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dataout_pdus_cnt, align 4
  %dataout_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 7
  %13 = ptrtoint ptr %dataout_pdus to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dataout_pdus, align 4
  %scsirsp_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 51
  %14 = ptrtoint ptr %scsirsp_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scsirsp_pdus_cnt, align 8
  %scsirsp_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 11
  %16 = ptrtoint ptr %scsirsp_pdus to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %scsirsp_pdus, align 4
  %datain_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 52
  %17 = ptrtoint ptr %datain_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %datain_pdus_cnt, align 4
  %datain_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 14
  %19 = ptrtoint ptr %datain_pdus to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %datain_pdus, align 8
  %r2t_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 53
  %20 = ptrtoint ptr %r2t_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %r2t_pdus_cnt, align 8
  %r2t_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 16
  %22 = ptrtoint ptr %r2t_pdus to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %r2t_pdus, align 8
  %tmfcmd_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 54
  %23 = ptrtoint ptr %tmfcmd_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tmfcmd_pdus_cnt, align 4
  %tmfcmd_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 4
  %25 = ptrtoint ptr %tmfcmd_pdus to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tmfcmd_pdus, align 8
  %tmfrsp_pdus_cnt = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 55
  %26 = ptrtoint ptr %tmfrsp_pdus_cnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tmfrsp_pdus_cnt, align 8
  %tmfrsp_pdus = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 12
  %28 = ptrtoint ptr %tmfrsp_pdus to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tmfrsp_pdus, align 8
  %custom_length = getelementptr inbounds %struct.iscsi_stats, ptr %stats, i32 0, i32 21
  %29 = ptrtoint ptr %custom_length to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %custom_length, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_iser_task_init(ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %call = tail call i32 @iser_initialize_task_headers(ptr noundef %task, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef %1, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sc = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 11
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %command_sent = getelementptr inbounds %struct.iscsi_iser_task, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %command_sent to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %command_sent, align 4
  tail call void @iser_task_rdma_init(ptr noundef %1) #11
  %5 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc, align 4
  %sc6 = getelementptr inbounds %struct.iscsi_iser_task, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %sc6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %sc6, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %do.end
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_iser_task_xmit(ptr noundef %task) #0 align 64 {
entry:
  %hdr.i = alloca %struct.iscsi_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 12
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 4
  %dd_data = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 4
  %sc = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 11
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp sgt i32 %6, 2
  br i1 %cmp.i, label %do.end.i, label %if.then.iscsi_iser_mtask_xmit.exit_crit_edge, !prof !216

if.then.iscsi_iser_mtask_xmit.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %iscsi_iser_mtask_xmit.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %id.i = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 4
  %itt.i = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 6
  %9 = ptrtoint ptr %itt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %itt.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef %8, i32 noundef %10) #14
  br label %iscsi_iser_mtask_xmit.exit

iscsi_iser_mtask_xmit.exit:                       ; preds = %do.end.i, %if.then.iscsi_iser_mtask_xmit.exit_crit_edge
  %call5.i = tail call i32 @iser_send_control(ptr noundef %1, ptr noundef %task) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 15
  %11 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %do.body, label %if.end.do.body36_crit_edge

if.end.do.body36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

do.body:                                          ; preds = %if.end
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 17, i32 1
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp6 = icmp eq i32 %14, 0
  br i1 %cmp6, label %do.body10, label %do.body17, !prof !216

do.body10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/ulp/iser/iscsi_iser.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 330, 0\0A.popsection", ""() #11, !srcloc !220
  unreachable

do.body17:                                        ; preds = %do.body
  %15 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp18 = icmp sgt i32 %15, 2
  br i1 %cmp18, label %do.end28, label %do.body17.do.end53_crit_edge, !prof !216

do.body17.do.end53_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53

do.end28:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  %itt = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 6
  %16 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %itt, align 4
  %imm_count = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 7
  %18 = ptrtoint ptr %imm_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %imm_count, align 4
  %data_length = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 8, i32 2
  %20 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_length, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %17, i32 noundef %14, i32 noundef %19, i32 noundef %21) #14
  br label %do.body36

do.body36:                                        ; preds = %do.end28, %if.end.do.body36_crit_edge
  %.pr = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp37 = icmp sgt i32 %.pr, 2
  br i1 %cmp37, label %do.end47, label %do.body36.do.end53_crit_edge, !prof !216

do.body36.do.end53_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53

do.end47:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %itt49 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 6
  %24 = ptrtoint ptr %itt49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %itt49, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i32 noundef %23, i32 noundef %25) #14
  br label %do.end53

do.end53:                                         ; preds = %do.end47, %do.body36.do.end53_crit_edge, %do.body17.do.end53_crit_edge
  %command_sent = getelementptr inbounds %struct.iscsi_iser_task, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %command_sent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %command_sent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool54.not = icmp eq i32 %27, 0
  br i1 %tobool54.not, label %if.then55, label %do.end53.if.end61_crit_edge

do.end53.if.end61_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then55:                                        ; preds = %do.end53
  %call56 = tail call i32 @iser_send_command(ptr noundef %1, ptr noundef %task) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end59:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %command_sent to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %command_sent, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.end59, %do.end53.if.end61_crit_edge
  %data_length.i = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 8, i32 2
  %29 = ptrtoint ptr %data_length.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_length.i, align 4
  %sent.i = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 8, i32 6
  %31 = ptrtoint ptr %sent.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sent.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.i88 = icmp ugt i32 %30, %32
  br i1 %cmp.i88, label %if.then64, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then64:                                        ; preds = %if.end61
  %unsol_r2t.i = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %hdr.i) #11
  %33 = call ptr @memset(ptr %hdr.i, i32 255, i32 48)
  %itt.i89 = getelementptr inbounds %struct.iscsi_data, ptr %hdr.i, i32 0, i32 6
  %data_count.i = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 8, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %do.end29.i.while.body.i_crit_edge, %if.then64
  call void @iscsi_prep_data_out_pdu(ptr noundef %task, ptr noundef %unsol_r2t.i, ptr noundef nonnull %hdr.i) #11
  %34 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp.i90 = icmp sgt i32 %34, 2
  br i1 %cmp.i90, label %do.end.i91, label %while.body.i.do.end6.i_crit_edge, !prof !216

while.body.i.do.end6.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6.i

do.end.i91:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %itt.i89 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %itt.i89, align 4
  %37 = ptrtoint ptr %data_count.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_count.i, align 4
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef %36, i32 noundef %38) #14
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i91, %while.body.i.do.end6.i_crit_edge
  %call7.i = call i32 @iser_send_data_out(ptr noundef %1, ptr noundef %task, ptr noundef nonnull %hdr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.then9.i

if.then9.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %datasn.i = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 8, i32 5
  %39 = ptrtoint ptr %datasn.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %datasn.i, align 4
  %dec.i = add i32 %40, -1
  store i32 %dec.i, ptr %datasn.i, align 4
  br label %iscsi_iser_task_xmit_unsol_data.exit

if.end10.i:                                       ; preds = %do.end6.i
  %41 = ptrtoint ptr %data_count.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_count.i, align 4
  %43 = ptrtoint ptr %sent.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sent.i, align 4
  %add.i = add i32 %44, %42
  store i32 %add.i, ptr %sent.i, align 4
  %45 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp13.i = icmp sgt i32 %45, 2
  br i1 %cmp13.i, label %do.end23.i, label %if.end10.i.do.end29.i_crit_edge, !prof !216

if.end10.i.do.end29.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29.i

do.end23.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %data_length.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_length.i, align 4
  %sub.i = sub i32 %47, %add.i
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef %sub.i) #14
  br label %do.end29.i

do.end29.i:                                       ; preds = %do.end23.i, %if.end10.i.do.end29.i_crit_edge
  %48 = ptrtoint ptr %data_length.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_length.i, align 4
  %50 = ptrtoint ptr %sent.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sent.i, align 4
  %cmp.i.not.i = icmp ugt i32 %49, %51
  br i1 %cmp.i.not.i, label %do.end29.i.while.body.i_crit_edge, label %do.end29.i.iscsi_iser_task_xmit_unsol_data.exit_crit_edge

do.end29.i.iscsi_iser_task_xmit_unsol_data.exit_crit_edge: ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iscsi_iser_task_xmit_unsol_data.exit

do.end29.i.while.body.i_crit_edge:                ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

iscsi_iser_task_xmit_unsol_data.exit:             ; preds = %do.end29.i.iscsi_iser_task_xmit_unsol_data.exit_crit_edge, %if.then9.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %hdr.i) #11
  br label %cleanup

cleanup:                                          ; preds = %iscsi_iser_task_xmit_unsol_data.exit, %if.end61.cleanup_crit_edge, %if.then55.cleanup_crit_edge, %iscsi_iser_mtask_xmit.exit
  %retval.0 = phi i32 [ %call5.i, %iscsi_iser_mtask_xmit.exit ], [ %call7.i, %iscsi_iser_task_xmit_unsol_data.exit ], [ 0, %if.end61.cleanup_crit_edge ], [ %call56, %if.then55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iscsi_iser_cleanup_task(ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %conn = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 12
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %dd_data1 = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data1, align 4
  %device2 = getelementptr inbounds %struct.ib_conn, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mapped = getelementptr inbounds %struct.iser_tx_desc, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mapped, align 8, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then6, !prof !216

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %dma_addr = getelementptr inbounds %struct.iser_tx_desc, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dma_addr, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 8
  %conv.i = trunc i64 %13 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %conv.i, i32 noundef 76, i32 noundef 1, i32 noundef 0) #11
  %16 = ptrtoint ptr %mapped to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %mapped, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %sc = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 11
  %17 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sc, align 4
  %tobool9.not = icmp eq ptr %18, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %status = getelementptr inbounds %struct.iscsi_iser_task, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp = icmp eq i32 %20, 1
  br i1 %cmp, label %if.then12, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %status, align 4
  tail call void @iser_task_rdma_finalize(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iscsi_iser_pdu_alloc(ptr nocapture noundef %task, i8 noundef zeroext %opcode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %iscsi_header = getelementptr inbounds %struct.iser_tx_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %iscsi_header, ptr %task, align 4
  %hdr_max = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 1
  %3 = ptrtoint ptr %hdr_max to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 48, ptr %hdr_max, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_session_recovery_timedout(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iscsi_iser_ep_connect(ptr nocapture noundef readnone %shost, ptr noundef %dst_addr, i32 noundef %non_blocking) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @iscsi_create_endpoint(i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 548) #15
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.failure_crit_edge, label %if.end5

if.end.failure_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %failure

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %call, align 8
  %ep6 = getelementptr inbounds %struct.iser_conn, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %ep6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %ep6, align 8
  tail call void @iser_conn_init(ptr noundef nonnull %call7.i.i) #11
  %call7 = tail call i32 @iser_connect(ptr noundef nonnull %call7.i.i, ptr noundef null, ptr noundef %dst_addr, i32 noundef %non_blocking) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end5.failure_crit_edge

if.end5.failure_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %failure

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

failure:                                          ; preds = %if.end5.failure_crit_edge, %if.end.failure_crit_edge
  %err.0 = phi i32 [ %call7, %if.end5.failure_crit_edge ], [ -12, %if.end.failure_crit_edge ]
  tail call void @iscsi_destroy_endpoint(ptr noundef nonnull %call) #11
  %3 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %failure, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %3, %failure ], [ %call, %if.end5.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_iser_ep_poll(ptr nocapture noundef readonly %ep, i32 noundef %timeout_ms) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %up_completion = getelementptr inbounds %struct.iser_conn, ptr %1, i32 0, i32 11
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout_ms) #11
  %call1 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %up_completion, i32 noundef %call2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %state_mutex = getelementptr inbounds %struct.iser_conn, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #11
  %state = getelementptr inbounds %struct.iser_conn, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %.off = add i32 %3, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %spec.select = sext i1 %switch to i32
  tail call void @mutex_unlock(ptr noundef %state_mutex) #11
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %rc.1 = phi i32 [ %spec.select, %if.then ], [ %call1, %entry.do.body_crit_edge ]
  %4 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp8 = icmp sgt i32 %4, 1
  br i1 %cmp8, label %do.end, label %do.body.do.end15_crit_edge, !prof !216

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, ptr noundef %1, i32 noundef %rc.1) #14
  br label %do.end15

do.end15:                                         ; preds = %do.end, %do.body.do.end15_crit_edge
  %5 = tail call i32 @llvm.smin.i32(i32 %rc.1, i32 1)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iscsi_iser_ep_disconnect(ptr noundef %ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 8
  %2 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge, !prof !216

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef %ep, ptr noundef %1) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %state_mutex = getelementptr inbounds %struct.iser_conn, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #11
  %call5 = tail call i32 @iser_conn_terminate(ptr noundef %1) #11
  %iscsi_conn = getelementptr inbounds %struct.iser_conn, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %iscsi_conn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iscsi_conn, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %if.else, label %do.body8

do.body8:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %release_work = getelementptr inbounds %struct.iser_conn, ptr %1, i32 0, i32 7
  tail call void @__init_work(ptr noundef %release_work, i32 noundef 0) #11
  %5 = ptrtoint ptr %release_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %release_work, align 4
  %lockdep_map = getelementptr inbounds %struct.iser_conn, ptr %1, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.65, ptr noundef nonnull @iscsi_iser_ep_disconnect.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry12 = getelementptr inbounds %struct.iser_conn, ptr %1, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.iser_conn, ptr %1, i32 0, i32 7, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.iser_conn, ptr %1, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @iser_release_work, ptr %func, align 4
  %9 = load ptr, ptr @release_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %release_work) #11
  tail call void @mutex_unlock(ptr noundef %state_mutex) #11
  br label %if.end20

if.else:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %state = getelementptr inbounds %struct.iser_conn, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %state, align 4
  tail call void @mutex_unlock(ptr noundef %state_mutex) #11
  tail call void @iser_conn_release(ptr noundef %1) #11
  br label %if.end20

if.end20:                                         ; preds = %if.else, %do.body8
  tail call void @iscsi_destroy_endpoint(ptr noundef %ep) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @iser_attr_is_visible(i32 noundef %param_type, i32 noundef %param) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %param_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %param_type, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %param)
  %switch = icmp ult i32 %param, 3
  %. = select i1 %switch, i16 292, i16 0
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %param)
  %1 = icmp ult i32 %param, 44
  br i1 %1, label %switch.lookup, label %sw.bb2.return_crit_edge

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.lookup:                                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [44 x i16], ptr @switch.table.iser_attr_is_visible, i32 0, i32 %param
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %2)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

return:                                           ; preds = %switch.lookup, %sw.bb2.return_crit_edge, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i16 [ %., %sw.bb ], [ 0, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %sw.bb2.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @iscsi_iser_check_protection(ptr nocapture noundef readonly %task, ptr noundef %sector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %dir1 = getelementptr inbounds %struct.iscsi_iser_task, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dir1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = zext i1 %tobool.not to i32
  %call = tail call zeroext i8 @iser_check_task_pi_status(ptr noundef %1, i32 noundef %cond, ptr noundef %sector) #11
  ret i8 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_host_alloc(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_host_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_session_setup(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_host_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_host_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_queuecommand(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_abort(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_device_reset(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_recover_target(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_target_alloc(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_cmd_timed_out(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_session_teardown(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_conn_setup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_lookup_endpoint(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iser_alloc_rx_descriptors(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_put_endpoint(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iser_conn_terminate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_stop(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_set_param(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_get_addr_param(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iser_task_rdma_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iser_send_command(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iser_send_control(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_prep_data_out_pdu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iser_send_data_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iser_task_rdma_finalize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_create_endpoint(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iser_conn_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iser_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_destroy_endpoint(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iser_release_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iser_check_task_pi_status(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_register_transport(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !36, !38, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99, !101, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !129, !130, !131, !132, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !181, !183, !184, !186, !187, !188, !189, !191, !193, !194, !196, !197, !199, !201, !202, !203, !205, !206}
!llvm.module.flags = !{!207, !208, !209, !210, !211, !212, !213, !214}
!llvm.ident = !{!215}

!0 = !{ptr @__UNIQUE_ID_description525, !1, !"__UNIQUE_ID_description525", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 77, i32 1}
!2 = !{ptr @__UNIQUE_ID_file526, !3, !"__UNIQUE_ID_file526", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 78, i32 1}
!4 = !{ptr @__UNIQUE_ID_license527, !3, !"__UNIQUE_ID_license527", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author528, !6, !"__UNIQUE_ID_author528", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 79, i32 1}
!7 = !{ptr @iser_debug_level, !8, !"iser_debug_level", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 88, i32 5}
!9 = !{ptr @__param_debug_level, !10, !"__param_debug_level", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 89, i32 1}
!11 = !{ptr @__UNIQUE_ID_debug_leveltype529, !10, !"__UNIQUE_ID_debug_leveltype529", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_debug_level530, !13, !"__UNIQUE_ID_debug_level530", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 90, i32 1}
!14 = !{ptr @__param_max_lun, !15, !"__param_max_lun", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 99, i32 1}
!16 = !{ptr @__UNIQUE_ID_max_lun531, !17, !"__UNIQUE_ID_max_lun531", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 100, i32 1}
!18 = !{ptr @iser_max_sectors, !19, !"iser_max_sectors", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 102, i32 14}
!20 = !{ptr @__param_max_sectors, !21, !"__param_max_sectors", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 103, i32 1}
!22 = !{ptr @__UNIQUE_ID_max_sectors532, !23, !"__UNIQUE_ID_max_sectors532", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 105, i32 1}
!24 = !{ptr @iser_always_reg, !25, !"iser_always_reg", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 107, i32 6}
!26 = !{ptr @__param_always_register, !27, !"__param_always_register", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 108, i32 1}
!28 = !{ptr @__UNIQUE_ID_always_registertype533, !27, !"__UNIQUE_ID_always_registertype533", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_always_register534, !30, !"__UNIQUE_ID_always_register534", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 109, i32 1}
!31 = !{ptr @iser_pi_enable, !32, !"iser_pi_enable", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 112, i32 6}
!33 = !{ptr @__param_pi_enable, !34, !"__param_pi_enable", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 113, i32 1}
!35 = !{ptr @__UNIQUE_ID_pi_enabletype535, !34, !"__UNIQUE_ID_pi_enabletype535", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_pi_enable536, !37, !"__UNIQUE_ID_pi_enable536", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 114, i32 1}
!38 = !{ptr @.str, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 147, i32 3}
!40 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @iscsi_iser_recv._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @iscsi_iser_recv._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 154, i32 3}
!46 = !{ptr @iscsi_iser_recv._entry.3, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @iscsi_iser_recv._entry_ptr.5, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 1065, i32 2}
!50 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @iser_exit._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @iser_exit._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 1073, i32 3}
!55 = !{ptr @iser_exit._entry.8, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @iser_exit._entry_ptr.10, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @__initcall__kmod_ib_iser__543_1085_iser_init6, !58, !"__initcall__kmod_ib_iser__543_1085_iser_init6", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 1085, i32 1}
!59 = !{ptr @__exitcall_iser_exit, !60, !"__exitcall_iser_exit", i1 false, i1 false}
!60 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 1086, i32 1}
!61 = !{ptr @release_wq, !62, !"release_wq", i1 false, i1 false}
!62 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 84, i32 33}
!63 = !{ptr @ig, !64, !"ig", i1 false, i1 false}
!64 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 86, i32 20}
!65 = !{ptr @__param_str_debug_level, !10, !"__param_str_debug_level", i1 false, i1 false}
!66 = !{ptr @__param_str_max_lun, !15, !"__param_str_max_lun", i1 false, i1 false}
!67 = !{ptr @iscsi_iser_size_ops, !68, !"iscsi_iser_size_ops", i1 false, i1 false}
!68 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 93, i32 38}
!69 = !{ptr @iscsi_max_lun, !70, !"iscsi_max_lun", i1 false, i1 false}
!70 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 98, i32 21}
!71 = !{ptr @__param_str_max_sectors, !21, !"__param_str_max_sectors", i1 false, i1 false}
!72 = !{ptr @__param_str_always_register, !27, !"__param_str_always_register", i1 false, i1 false}
!73 = !{ptr @__param_str_pi_enable, !34, !"__param_str_pi_enable", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!76 = !{ptr @.str.11, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.12, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.13, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 978, i32 28}
!80 = !{ptr @iscsi_iser_transport, !81, !"iscsi_iser_transport", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 976, i32 31}
!82 = !{ptr @.str.14, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 636, i32 4}
!84 = !{ptr @.str.15, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @iscsi_iser_session_create._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @iscsi_iser_session_create._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.17, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 670, i32 2}
!89 = !{ptr @iscsi_iser_session_create._entry.16, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @iscsi_iser_session_create._entry_ptr.18, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.20, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 675, i32 3}
!93 = !{ptr @iscsi_iser_session_create._entry.19, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @iscsi_iser_session_create._entry_ptr.21, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.22, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 961, i32 28}
!97 = !{ptr @.str.23, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 971, i32 28}
!99 = !{ptr @iscsi_iser_sht, !100, !"iscsi_iser_sht", i1 false, i1 false}
!100 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 959, i32 34}
!101 = !{ptr @iscsi_iser_scsi_transport, !102, !"iscsi_iser_scsi_transport", i1 false, i1 false}
!102 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 83, i32 40}
!103 = !{ptr @.str.24, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 469, i32 3}
!105 = !{ptr @.str.25, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @iscsi_iser_conn_bind._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @iscsi_iser_conn_bind._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.27, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 478, i32 3}
!110 = !{ptr @iscsi_iser_conn_bind._entry.26, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @iscsi_iser_conn_bind._entry_ptr.28, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.30, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 490, i32 2}
!114 = !{ptr @iscsi_iser_conn_bind._entry.29, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @iscsi_iser_conn_bind._entry_ptr.31, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.32, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 536, i32 2}
!118 = !{ptr @.str.33, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @iscsi_iser_conn_stop._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @iscsi_iser_conn_stop._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.34, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 85, i32 8}
!123 = !{ptr @.str.35, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @unbind_iser_conn_mutex, !122, !"unbind_iser_conn_mutex", i1 false, i1 false}
!125 = !{ptr @.str.36, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 704, i32 15}
!127 = !{ptr @.str.37, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 706, i32 4}
!129 = !{ptr @.str.38, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @iscsi_iser_set_param._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @iscsi_iser_set_param._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @iscsi_iser_set_param._entry.39, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 713, i32 4}
!134 = !{ptr @iscsi_iser_set_param._entry_ptr.40, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.42, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 720, i32 4}
!137 = !{ptr @iscsi_iser_set_param._entry.41, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @iscsi_iser_set_param._entry_ptr.43, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.45, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 727, i32 4}
!141 = !{ptr @iscsi_iser_set_param._entry.44, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @iscsi_iser_set_param._entry_ptr.46, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.47, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 240, i32 3}
!145 = !{ptr @.str.48, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @iscsi_iser_task_init._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @iscsi_iser_task_init._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.49, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 332, i32 3}
!150 = !{ptr @.str.50, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @iscsi_iser_task_xmit._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @iscsi_iser_task_xmit._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.52, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 337, i32 2}
!155 = !{ptr @iscsi_iser_task_xmit._entry.51, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @iscsi_iser_task_xmit._entry_ptr.53, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.54, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 272, i32 2}
!159 = !{ptr @.str.55, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @iscsi_iser_mtask_xmit._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @iscsi_iser_mtask_xmit._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.56, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 295, i32 3}
!164 = !{ptr @.str.57, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @iscsi_iser_task_xmit_unsol_data._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @iscsi_iser_task_xmit_unsol_data._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.59, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 306, i32 3}
!169 = !{ptr @iscsi_iser_task_xmit_unsol_data._entry.58, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @iscsi_iser_task_xmit_unsol_data._entry_ptr.60, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.61, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 858, i32 2}
!173 = !{ptr @.str.62, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @iscsi_iser_ep_poll._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @iscsi_iser_ep_poll._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.63, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 881, i32 2}
!178 = !{ptr @.str.64, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @iscsi_iser_ep_disconnect._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @iscsi_iser_ep_disconnect._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @iscsi_iser_ep_disconnect.__key, !182, !"__key", i1 false, i1 false}
!182 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 893, i32 3}
!183 = !{ptr @.str.65, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.66, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 1018, i32 2}
!186 = !{ptr @.str.67, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @iser_init._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @iser_init._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.68, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 1022, i32 36}
!191 = !{ptr @iser_init.__key, !192, !"__key", i1 false, i1 false}
!192 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 1030, i32 2}
!193 = !{ptr @.str.69, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @iser_init.__key.70, !195, !"__key", i1 false, i1 false}
!195 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 1032, i32 2}
!196 = !{ptr @.str.71, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.72, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 1035, i32 31}
!199 = !{ptr @.str.74, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 1037, i32 3}
!201 = !{ptr @iser_init._entry.73, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @iser_init._entry_ptr.75, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.77, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/infiniband/ulp/iser/iscsi_iser.c", i32 1045, i32 3}
!205 = !{ptr @iser_init._entry.76, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @iser_init._entry_ptr.78, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{i32 1, !"wchar_size", i32 2}
!208 = !{i32 1, !"min_enum_size", i32 4}
!209 = !{i32 8, !"branch-target-enforcement", i32 0}
!210 = !{i32 8, !"sign-return-address", i32 0}
!211 = !{i32 8, !"sign-return-address-all", i32 0}
!212 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!213 = !{i32 7, !"uwtable", i32 1}
!214 = !{i32 7, !"frame-pointer", i32 2}
!215 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!216 = !{!"branch_weights", i32 1, i32 2000}
!217 = !{!"branch_weights", i32 2000, i32 1}
!218 = !{i8 0, i8 2}
!219 = !{!"auto-init"}
!220 = !{i64 2158479498, i64 2158480003, i64 2158479535, i64 2158479591, i64 2158479625, i64 2158479649, i64 2158479690, i64 2158479711, i64 2158479739, i64 2158479773}
