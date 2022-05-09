; ModuleID = '/llk/IR_all_yes/drivers/infiniband/ulp/iser/iser_initiator.c_pt.bc'
source_filename = "../drivers/infiniband/ulp/iser/iser_initiator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.ib_conn = type { ptr, ptr, ptr, i32, ptr, %struct.iser_fr_pool, i8, %struct.ib_cqe }
%struct.iser_fr_pool = type { %struct.list_head, %struct.spinlock, i32, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ib_cqe = type { ptr }
%struct.iscsi_session = type { ptr, %struct.mutex, %struct.wait_queue_head, %struct.iscsi_tm, %struct.timer_list, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, ptr, %struct.iscsi_pool, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iscsi_tm = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.iscsi_pool = type { %struct.kfifo, ptr, i32 }
%struct.kfifo = type { %union.anon.186, [0 x i8] }
%union.anon.186 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.iser_conn = type { %struct.ib_conn, ptr, ptr, i32, i32, i16, [64 x i8], %struct.work_struct, %struct.mutex, %struct.completion, %struct.completion, %struct.completion, %struct.list_head, %struct.iser_login_desc, ptr, i32, i16, i16, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.iser_login_desc = type <{ ptr, ptr, i64, i64, %struct.ib_sge, %struct.ib_cqe }>
%struct.ib_sge = type { i64, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.131, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.131 = type { %struct.atomic_t }
%struct.iser_device = type { ptr, ptr, %struct.ib_event_handler, %struct.list_head, i32 }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.iser_rx_desc = type <{ %struct.iser_ctrl, %struct.iscsi_hdr, [128 x i8], i64, %struct.ib_sge, %struct.ib_cqe, [24 x i8] }>
%struct.iser_ctrl = type <{ i8, [3 x i8], i32, i64, i32, i64 }>
%struct.iscsi_hdr = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, [12 x i8] }
%struct.ib_wc = type { %union.anon.144, i32, i32, i32, i32, ptr, %union.anon.145, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.144 = type { i64 }
%union.anon.145 = type { i32 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.iscsi_task = type { ptr, i16, i16, i32, i32, %struct.scsi_lun, i32, i32, %struct.iscsi_r2t_info, ptr, i32, ptr, ptr, i32, i32, i8, i8, i32, %struct.refcount_struct, %struct.list_head, ptr }
%struct.iscsi_r2t_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_iser_task = type { %struct.iser_tx_desc, ptr, i32, ptr, i32, [2 x i32], [2 x %struct.iser_mem_reg], [2 x %struct.iser_data_buf], [2 x %struct.iser_data_buf] }
%struct.iser_tx_desc = type { %struct.iser_ctrl, %struct.iscsi_hdr, i32, i64, [2 x %struct.ib_sge], i32, %struct.ib_cqe, i8, %struct.ib_reg_wr, %struct.ib_send_wr, %struct.ib_send_wr }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.166, ptr, i32, i32, i32, %union.anon.167 }
%union.anon.166 = type { i64 }
%union.anon.167 = type { i32 }
%struct.iser_mem_reg = type { %struct.ib_sge, i32, ptr }
%struct.iser_data_buf = type { ptr, i32, i32, i32 }
%struct.iser_fr_desc = type { %struct.list_head, %struct.iser_reg_resources, i8, %struct.list_head }
%struct.iser_reg_resources = type { ptr, ptr, i8 }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.134, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.134 = type { %struct.list_head }
%struct.iscsi_conn = type { ptr, ptr, ptr, i32, %struct.timer_list, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_scsi_req = type { i8, i8, i16, i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, [16 x i8] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.iscsi_data = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, i32, i32, i32 }

@iser_alloc_rx_descriptors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013iser: %s: failed allocating rx descriptors / data buffers\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iser_alloc_rx_descriptors\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/infiniband/ulp/iser/iser_initiator.c\00", [51 x i8] zeroinitializer }, align 32
@iser_alloc_rx_descriptors._entry_ptr = internal global ptr @iser_alloc_rx_descriptors._entry, section ".printk_index", align 4
@iser_send_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013iser: %s: conn %p failed task->itt %d err %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iser_send_command\00", [46 x i8] zeroinitializer }, align 32
@iser_send_command._entry_ptr = internal global ptr @iser_send_command._entry, section ".printk_index", align 4
@iser_debug_level = external dso_local local_unnamed_addr global i32, align 4
@iser_send_data_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017iser: %s: %s itt %d dseg_len %d offset %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iser_send_data_out\00", [45 x i8] zeroinitializer }, align 32
@iser_send_data_out._entry_ptr = internal global ptr @iser_send_data_out._entry, section ".printk_index", align 4
@ig = external dso_local local_unnamed_addr global %struct.iser_global, align 4
@iser_send_data_out._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013iser: %s: Offset:%ld & DSL:%ld in Data-Out inconsistent with total len:%ld, itt:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@iser_send_data_out._entry_ptr.9 = internal global ptr @iser_send_data_out._entry.7, section ".printk_index", align 4
@iser_send_data_out._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017iser: %s: data-out itt: %d, offset: %ld, sz: %ld\0A\00", [44 x i8] zeroinitializer }, align 32
@iser_send_data_out._entry_ptr.12 = internal global ptr @iser_send_data_out._entry.10, section ".printk_index", align 4
@iser_send_data_out._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013iser: %s: conn %p failed err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@iser_send_data_out._entry_ptr.15 = internal global ptr @iser_send_data_out._entry.13, section ".printk_index", align 4
@iser_send_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013iser: %s: data present on non login task!!!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iser_send_control\00", [46 x i8] zeroinitializer }, align 32
@iser_send_control._entry_ptr = internal global ptr @iser_send_control._entry, section ".printk_index", align 4
@iser_send_control._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017iser: %s: op %x dsl %lx, posting login rx buffer\0A\00", [44 x i8] zeroinitializer }, align 32
@iser_send_control._entry_ptr.20 = internal global ptr @iser_send_control._entry.18, section ".printk_index", align 4
@iser_send_control._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.17, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iser_send_control._entry_ptr.22 = internal global ptr @iser_send_control._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"login_rsp\00", [22 x i8] zeroinitializer }, align 32
@iser_login_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017iser: %s: op 0x%x itt 0x%x dlen %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iser_login_rsp\00", [17 x i8] zeroinitializer }, align 32
@iser_login_rsp._entry_ptr = internal global ptr @iser_login_rsp._entry, section ".printk_index", align 4
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"task_rsp\00", [23 x i8] zeroinitializer }, align 32
@iser_task_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.27, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iser_task_rsp\00", [18 x i8] zeroinitializer }, align 32
@iser_task_rsp._entry_ptr = internal global ptr @iser_task_rsp._entry, section ".printk_index", align 4
@iser_task_rsp._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013iser: %s: posting rx buffer err %d\0A\00", [58 x i8] zeroinitializer }, align 32
@iser_task_rsp._entry_ptr.30 = internal global ptr @iser_task_rsp._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"command\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dataout\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@iser_prepare_read_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013iser: %s: Failed to set up Data-IN RDMA\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iser_prepare_read_cmd\00", [42 x i8] zeroinitializer }, align 32
@iser_prepare_read_cmd._entry_ptr = internal global ptr @iser_prepare_read_cmd._entry, section ".printk_index", align 4
@iser_prepare_read_cmd._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017iser: %s: Cmd itt:%d READ tags RKEY:%#.4X VA:%#llX\0A\00", [42 x i8] zeroinitializer }, align 32
@iser_prepare_read_cmd._entry_ptr.40 = internal global ptr @iser_prepare_read_cmd._entry.38, section ".printk_index", align 4
@iser_prepare_write_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013iser: %s: Failed to register write cmd RDMA mem\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iser_prepare_write_cmd\00", [41 x i8] zeroinitializer }, align 32
@iser_prepare_write_cmd._entry_ptr = internal global ptr @iser_prepare_write_cmd._entry, section ".printk_index", align 4
@iser_prepare_write_cmd._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017iser: %s: Cmd itt:%d, WRITE tags, RKEY:%#.4X VA:%#llX + unsol:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@iser_prepare_write_cmd._entry_ptr.45 = internal global ptr @iser_prepare_write_cmd._entry.43, section ".printk_index", align 4
@iser_prepare_write_cmd._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017iser: %s: Cmd itt:%d, WRITE, adding imm.data sz: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@iser_prepare_write_cmd._entry_ptr.48 = internal global ptr @iser_prepare_write_cmd._entry.46, section ".printk_index", align 4
@iser_post_rx_bufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017iser: %s: req op %x flags %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iser_post_rx_bufs\00", [46 x i8] zeroinitializer }, align 32
@iser_post_rx_bufs._entry_ptr = internal global ptr @iser_post_rx_bufs._entry, section ".printk_index", align 4
@iser_post_rx_bufs._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016iser: %s: Discovery session, re-using login RX buffer\0A\00", [39 x i8] zeroinitializer }, align 32
@iser_post_rx_bufs._entry_ptr.53 = internal global ptr @iser_post_rx_bufs._entry.51, section ".printk_index", align 4
@iser_post_rx_bufs._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016iser: %s: Normal session, posting batch of RX %d buffers\0A\00", [36 x i8] zeroinitializer }, align 32
@iser_post_rx_bufs._entry_ptr.56 = internal global ptr @iser_post_rx_bufs._entry.54, section ".printk_index", align 4
@iser_check_remote_inv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017iser: %s: conn %p: remote invalidation for rkey %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iser_check_remote_inv\00", [42 x i8] zeroinitializer }, align 32
@iser_check_remote_inv._entry_ptr = internal global ptr @iser_check_remote_inv._entry, section ".printk_index", align 4
@iser_check_remote_inv._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013iser: %s: conn %p: unexpected remote invalidation, terminating connection\0A\00", [51 x i8] zeroinitializer }, align 32
@iser_check_remote_inv._entry_ptr.61 = internal global ptr @iser_check_remote_inv._entry.59, section ".printk_index", align 4
@iser_check_remote_inv._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013iser: %s: failed to get task for itt=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@iser_check_remote_inv._entry_ptr.64 = internal global ptr @iser_check_remote_inv._entry.62, section ".printk_index", align 4
@iser_inv_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013iser: %s: Bogus remote invalidation for rkey %#x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iser_inv_desc\00", [18 x i8] zeroinitializer }, align 32
@iser_inv_desc._entry_ptr = internal global ptr @iser_inv_desc._entry, section ".printk_index", align 4
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 292, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 416, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 443, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 468, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 474, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 484, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 511, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 530, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 545, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 559, i32 21 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 571, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 651, i32 21 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 662, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 679, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 685, i32 21 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 694, i32 21 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 711, i32 21 }
@___asan_gen_.173 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 326, i32 6 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 77, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 86, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 129, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 142, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 148, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 323, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 329, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 333, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 607, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 611, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 633, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.260 = private constant [48 x i8] c"../drivers/infiniband/ulp/iser/iser_initiator.c\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 591, i32 3 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @iser_alloc_rx_descriptors._entry, ptr @iser_alloc_rx_descriptors._entry_ptr, ptr @iser_check_remote_inv._entry, ptr @iser_check_remote_inv._entry.59, ptr @iser_check_remote_inv._entry.62, ptr @iser_check_remote_inv._entry_ptr, ptr @iser_check_remote_inv._entry_ptr.61, ptr @iser_check_remote_inv._entry_ptr.64, ptr @iser_inv_desc._entry, ptr @iser_inv_desc._entry_ptr, ptr @iser_login_rsp._entry, ptr @iser_login_rsp._entry_ptr, ptr @iser_post_rx_bufs._entry, ptr @iser_post_rx_bufs._entry.51, ptr @iser_post_rx_bufs._entry.54, ptr @iser_post_rx_bufs._entry_ptr, ptr @iser_post_rx_bufs._entry_ptr.53, ptr @iser_post_rx_bufs._entry_ptr.56, ptr @iser_prepare_read_cmd._entry, ptr @iser_prepare_read_cmd._entry.38, ptr @iser_prepare_read_cmd._entry_ptr, ptr @iser_prepare_read_cmd._entry_ptr.40, ptr @iser_prepare_write_cmd._entry, ptr @iser_prepare_write_cmd._entry.43, ptr @iser_prepare_write_cmd._entry.46, ptr @iser_prepare_write_cmd._entry_ptr, ptr @iser_prepare_write_cmd._entry_ptr.45, ptr @iser_prepare_write_cmd._entry_ptr.48, ptr @iser_send_command._entry, ptr @iser_send_command._entry_ptr, ptr @iser_send_control._entry, ptr @iser_send_control._entry.18, ptr @iser_send_control._entry.21, ptr @iser_send_control._entry_ptr, ptr @iser_send_control._entry_ptr.20, ptr @iser_send_control._entry_ptr.22, ptr @iser_send_data_out._entry, ptr @iser_send_data_out._entry.10, ptr @iser_send_data_out._entry.13, ptr @iser_send_data_out._entry.7, ptr @iser_send_data_out._entry_ptr, ptr @iser_send_data_out._entry_ptr.12, ptr @iser_send_data_out._entry_ptr.15, ptr @iser_send_data_out._entry_ptr.9, ptr @iser_task_rsp._entry, ptr @iser_task_rsp._entry.28, ptr @iser_task_rsp._entry_ptr, ptr @iser_task_rsp._entry_ptr.30, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_alloc_rx_descriptors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_send_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_send_data_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_send_data_out._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_send_data_out._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_send_data_out._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_send_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_send_control._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_send_control._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_login_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_task_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_task_rsp._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_prepare_read_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_prepare_read_cmd._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_prepare_write_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_prepare_write_cmd._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_prepare_write_cmd._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_post_rx_bufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_post_rx_bufs._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_post_rx_bufs._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_check_remote_inv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_check_remote_inv._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_check_remote_inv._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_inv_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iser_alloc_rx_descriptors(ptr noundef %iser_conn, ptr nocapture noundef readonly %session) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.ib_conn, ptr %iser_conn, i32 0, i32 4
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %cmds_max = getelementptr inbounds %struct.iscsi_session, ptr %session, i32 0, i32 57
  %2 = ptrtoint ptr %cmds_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmds_max, align 4
  %qp_max_recv_dtos = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 4
  %4 = ptrtoint ptr %qp_max_recv_dtos to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %qp_max_recv_dtos, align 4
  %scsi_cmds_max = getelementptr inbounds %struct.iscsi_session, ptr %session, i32 0, i32 56
  %5 = ptrtoint ptr %scsi_cmds_max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scsi_cmds_max, align 4
  %pages_per_mr = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 17
  %7 = ptrtoint ptr %pages_per_mr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pages_per_mr, align 2
  %conv = zext i16 %8 to i32
  %call = tail call i32 @iser_alloc_fastreg_pool(ptr noundef %iser_conn, i32 noundef %6, i32 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device2, align 4
  %login_desc.i = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 8192) #10
  %12 = ptrtoint ptr %login_desc.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store ptr %call7.i.i, ptr %login_desc.i, align 1
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.alloc_login_buf_fail_crit_edge, label %if.end.i

if.end.alloc_login_buf_fail_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %alloc_login_buf_fail

if.end.i:                                         ; preds = %if.end
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %call.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i) #7
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge, label %if.then.i.i.i, !prof !129

land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ib_dma_map_single.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %16) #7
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %20, %if.end.i.i.i.i ], [ %18, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #7
  br label %ib_dma_map_single.exit.i

if.end39.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %16, ptr noundef nonnull %call7.i.i, i32 noundef 8192) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %21 = load ptr, ptr @mem_map, align 4
  %22 = ptrtoint ptr %call7.i.i to i32
  %sub.i.i.i = add i32 %22, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %21, i32 %shr.i.i.i
  %and.i.i.i = and i32 %22, 4088
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %16, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef 8192, i32 noundef 1, i32 noundef 0) #7
  br label %ib_dma_map_single.exit.i

ib_dma_map_single.exit.i:                         ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge ]
  %conv2.i.i = zext i32 %retval.0.i.i.i to i64
  %req_dma.i = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 13, i32 2
  %23 = ptrtoint ptr %req_dma.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %conv2.i.i, ptr %req_dma.i, align 1
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %10, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %27, i32 noundef %retval.0.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i.i.i = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i.i.i, label %ib_dma_map_single.exit.i.free_req.i_crit_edge, label %if.end10.i

ib_dma_map_single.exit.i.free_req.i_crit_edge:    ; preds = %ib_dma_map_single.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_req.i

if.end10.i:                                       ; preds = %ib_dma_map_single.exit.i
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8268, i32 noundef 3264, i32 noundef 2) #11
  %rsp.i = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 13, i32 1
  %28 = ptrtoint ptr %rsp.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store ptr %call1.i.i.i, ptr %rsp.i, align 1
  %tobool13.not.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool13.not.i, label %if.end10.i.unmap_req.i_crit_edge, label %if.end15.i

if.end10.i.unmap_req.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap_req.i

if.end15.i:                                       ; preds = %if.end10.i
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %10, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %call.i.i47.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call1.i.i.i) #7
  br i1 %call.i.i47.i, label %land.rhs.i.i49.i, label %if.end39.i.i62.i

land.rhs.i.i49.i:                                 ; preds = %if.end15.i
  %.b1.i.i48.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i48.i, label %land.rhs.i.i49.i.ib_dma_map_single.exit65.i_crit_edge, label %if.then.i.i53.i, !prof !129

land.rhs.i.i49.i.ib_dma_map_single.exit65.i_crit_edge: ; preds = %land.rhs.i.i49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ib_dma_map_single.exit65.i

if.then.i.i53.i:                                  ; preds = %land.rhs.i.i49.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i50.i = tail call ptr @dev_driver_string(ptr noundef %32) #7
  %init_name.i.i.i51.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i.i51.i, align 8
  %tobool.not.i.i.i52.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i52.i, label %if.end.i.i.i54.i, label %if.then.i.i53.i.dev_name.exit.i.i56.i_crit_edge

if.then.i.i53.i.dev_name.exit.i.i56.i_crit_edge:  ; preds = %if.then.i.i53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i56.i

if.end.i.i.i54.i:                                 ; preds = %if.then.i.i53.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  br label %dev_name.exit.i.i56.i

dev_name.exit.i.i56.i:                            ; preds = %if.end.i.i.i54.i, %if.then.i.i53.i.dev_name.exit.i.i56.i_crit_edge
  %retval.0.i.i.i55.i = phi ptr [ %36, %if.end.i.i.i54.i ], [ %34, %if.then.i.i53.i.dev_name.exit.i.i56.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef %call16.i.i50.i, ptr noundef %retval.0.i.i.i55.i) #7
  br label %ib_dma_map_single.exit65.i

if.end39.i.i62.i:                                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %32, ptr noundef nonnull %call1.i.i.i, i32 noundef 8268) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %37 = load ptr, ptr @mem_map, align 4
  %38 = ptrtoint ptr %call1.i.i.i to i32
  %sub.i.i57.i = add i32 %38, 1073741824
  %shr.i.i58.i = lshr exact i32 %sub.i.i57.i, 12
  %add.ptr.i.i59.i = getelementptr %struct.page, ptr %37, i32 %shr.i.i58.i
  %call41.i.i61.i = tail call i32 @dma_map_page_attrs(ptr noundef %32, ptr noundef %add.ptr.i.i59.i, i32 noundef 0, i32 noundef 8268, i32 noundef 2, i32 noundef 0) #7
  br label %ib_dma_map_single.exit65.i

ib_dma_map_single.exit65.i:                       ; preds = %if.end39.i.i62.i, %dev_name.exit.i.i56.i, %land.rhs.i.i49.i.ib_dma_map_single.exit65.i_crit_edge
  %retval.0.i.i63.i = phi i32 [ %call41.i.i61.i, %if.end39.i.i62.i ], [ -1, %dev_name.exit.i.i56.i ], [ -1, %land.rhs.i.i49.i.ib_dma_map_single.exit65.i_crit_edge ]
  %conv2.i64.i = zext i32 %retval.0.i.i63.i to i64
  %rsp_dma.i = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 13, i32 3
  %39 = ptrtoint ptr %rsp_dma.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %conv2.i64.i, ptr %rsp_dma.i, align 1
  %40 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %10, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %43, i32 noundef %retval.0.i.i63.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i63.i)
  %cmp.i.i66.i = icmp eq i32 %retval.0.i.i63.i, -1
  br i1 %cmp.i.i66.i, label %free_rsp.i, label %if.end6

free_rsp.i:                                       ; preds = %ib_dma_map_single.exit65.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %rsp.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load ptr, ptr %rsp.i, align 1
  tail call void @kfree(ptr noundef %45) #7
  br label %unmap_req.i

unmap_req.i:                                      ; preds = %free_rsp.i, %if.end10.i.unmap_req.i_crit_edge
  %46 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %10, align 4
  %48 = ptrtoint ptr %req_dma.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %req_dma.i, align 1
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 8
  %conv.i.i = trunc i64 %49 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %51, i32 noundef %conv.i.i, i32 noundef 8192, i32 noundef 1, i32 noundef 0) #7
  br label %free_req.i

free_req.i:                                       ; preds = %unmap_req.i, %ib_dma_map_single.exit.i.free_req.i_crit_edge
  %52 = ptrtoint ptr %login_desc.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load ptr, ptr %login_desc.i, align 1
  tail call void @kfree(ptr noundef %53) #7
  br label %alloc_login_buf_fail

if.end6:                                          ; preds = %ib_dma_map_single.exit65.i
  %54 = ptrtoint ptr %cmds_max to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cmds_max, align 4
  %num_rx_descs = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 15
  %56 = ptrtoint ptr %num_rx_descs to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %num_rx_descs, align 4
  %57 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %55, i32 256) #7
  %58 = extractvalue { i32, i1 } %57, 1
  br i1 %58, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !130

kmalloc_array.exit.thread:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %rx_descs98 = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 14
  br label %rx_desc_alloc_fail.sink.split

if.end7.i:                                        ; preds = %if.end6
  %59 = extractvalue { i32, i1 } %57, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %59, i32 noundef 3264) #11
  %rx_descs = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 14
  %60 = ptrtoint ptr %rx_descs to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call8.i, ptr %rx_descs, align 4
  %tobool11.not = icmp eq ptr %call8.i, null
  br i1 %tobool11.not, label %if.end7.i.rx_desc_alloc_fail_crit_edge, label %for.cond.preheader

if.end7.i.rx_desc_alloc_fail_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rx_desc_alloc_fail

for.cond.preheader:                               ; preds = %if.end7.i
  %61 = ptrtoint ptr %qp_max_recv_dtos to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %qp_max_recv_dtos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp102.not = icmp eq i32 %62, 0
  br i1 %cmp102.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pd = getelementptr inbounds %struct.iser_device, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %for.body.lr.ph
  %rx_desc.0104 = phi ptr [ %call8.i, %for.body.lr.ph ], [ %incdec.ptr, %if.end22.for.body_crit_edge ]
  %i.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end22.for.body_crit_edge ]
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %rx_desc.0104) #7
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %for.body
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.ib_dma_map_single.exit_crit_edge, label %if.then.i.i84, !prof !129

land.rhs.i.i.ib_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ib_dma_map_single.exit

if.then.i.i84:                                    ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %66) #7
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i83 = icmp eq ptr %68, null
  br i1 %tobool.not.i.i.i83, label %if.end.i.i.i, label %if.then.i.i84.dev_name.exit.i.i_crit_edge

if.then.i.i84.dev_name.exit.i.i_crit_edge:        ; preds = %if.then.i.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i84
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %66, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i84.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i85 = phi ptr [ %70, %if.end.i.i.i ], [ %68, %if.then.i.i84.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i85) #7
  br label %ib_dma_map_single.exit

if.end39.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %66, ptr noundef %rx_desc.0104, i32 noundef 204) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %71 = load ptr, ptr @mem_map, align 4
  %72 = ptrtoint ptr %rx_desc.0104 to i32
  %sub.i.i = add i32 %72, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %71, i32 %shr.i.i
  %and.i.i = and i32 %72, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %66, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 204, i32 noundef 2, i32 noundef 0) #7
  br label %ib_dma_map_single.exit

ib_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge ]
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %76, i32 noundef %retval.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i86 = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i86, label %rx_desc_dma_map_failed, label %if.end22

if.end22:                                         ; preds = %ib_dma_map_single.exit
  %conv2.i = zext i32 %retval.0.i.i to i64
  %dma_addr23 = getelementptr inbounds %struct.iser_rx_desc, ptr %rx_desc.0104, i32 0, i32 3
  %77 = ptrtoint ptr %dma_addr23 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 8)
  store i64 %conv2.i, ptr %dma_addr23, align 1
  %cqe = getelementptr inbounds %struct.iser_rx_desc, ptr %rx_desc.0104, i32 0, i32 5
  %78 = ptrtoint ptr %cqe to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store ptr @iser_task_rsp, ptr %cqe, align 1
  %rx_sg24 = getelementptr inbounds %struct.iser_rx_desc, ptr %rx_desc.0104, i32 0, i32 4
  %79 = ptrtoint ptr %rx_sg24 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %conv2.i, ptr %rx_sg24, align 8
  %length = getelementptr inbounds %struct.iser_rx_desc, ptr %rx_desc.0104, i32 0, i32 4, i32 1
  %80 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 204, ptr %length, align 8
  %81 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pd, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %lkey = getelementptr inbounds %struct.iser_rx_desc, ptr %rx_desc.0104, i32 0, i32 4, i32 2
  %85 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %lkey, align 4
  %inc = add nuw i32 %i.0103, 1
  %incdec.ptr = getelementptr %struct.iser_rx_desc, ptr %rx_desc.0104, i32 1
  %86 = ptrtoint ptr %qp_max_recv_dtos to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %qp_max_recv_dtos, align 4
  %cmp = icmp ult i32 %inc, %87
  br i1 %cmp, label %if.end22.for.body_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

rx_desc_dma_map_failed:                           ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0103)
  %cmp28106 = icmp sgt i32 %i.0103, 0
  br i1 %cmp28106, label %for.body30.preheader, label %rx_desc_dma_map_failed.for.end36_crit_edge

rx_desc_dma_map_failed.for.end36_crit_edge:       ; preds = %rx_desc_dma_map_failed
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end36

for.body30.preheader:                             ; preds = %rx_desc_dma_map_failed
  %88 = ptrtoint ptr %rx_descs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rx_descs, align 4
  br label %for.body30

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.body30.preheader
  %rx_desc.1108 = phi ptr [ %incdec.ptr35, %for.body30.for.body30_crit_edge ], [ %89, %for.body30.preheader ]
  %j.0107 = phi i32 [ %inc34, %for.body30.for.body30_crit_edge ], [ 0, %for.body30.preheader ]
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 4
  %dma_addr32 = getelementptr inbounds %struct.iser_rx_desc, ptr %rx_desc.1108, i32 0, i32 3
  %92 = ptrtoint ptr %dma_addr32 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 8)
  %93 = load i64, ptr %dma_addr32, align 1
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %91, align 8
  %conv.i = trunc i64 %93 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %95, i32 noundef %conv.i, i32 noundef 204, i32 noundef 2, i32 noundef 0) #7
  %inc34 = add nuw nsw i32 %j.0107, 1
  %incdec.ptr35 = getelementptr %struct.iser_rx_desc, ptr %rx_desc.1108, i32 1
  %exitcond.not = icmp eq i32 %inc34, %i.0103
  br i1 %exitcond.not, label %for.body30.for.end36_crit_edge, label %for.body30.for.body30_crit_edge

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body30

for.body30.for.end36_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end36

for.end36:                                        ; preds = %for.body30.for.end36_crit_edge, %rx_desc_dma_map_failed.for.end36_crit_edge
  %96 = ptrtoint ptr %rx_descs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rx_descs, align 4
  tail call void @kfree(ptr noundef %97) #7
  br label %rx_desc_alloc_fail.sink.split

rx_desc_alloc_fail.sink.split:                    ; preds = %for.end36, %kmalloc_array.exit.thread
  %rx_descs98.sink = phi ptr [ %rx_descs98, %kmalloc_array.exit.thread ], [ %rx_descs, %for.end36 ]
  %98 = ptrtoint ptr %rx_descs98.sink to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %rx_descs98.sink, align 4
  br label %rx_desc_alloc_fail

rx_desc_alloc_fail:                               ; preds = %rx_desc_alloc_fail.sink.split, %if.end7.i.rx_desc_alloc_fail_crit_edge
  %99 = ptrtoint ptr %login_desc.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load ptr, ptr %login_desc.i, align 1
  %tobool.not.i88 = icmp eq ptr %100, null
  br i1 %tobool.not.i88, label %rx_desc_alloc_fail.alloc_login_buf_fail_crit_edge, label %if.end.i94

rx_desc_alloc_fail.alloc_login_buf_fail_crit_edge: ; preds = %rx_desc_alloc_fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %alloc_login_buf_fail

if.end.i94:                                       ; preds = %rx_desc_alloc_fail
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %device2, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %105 = ptrtoint ptr %req_dma.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 8)
  %106 = load i64, ptr %req_dma.i, align 1
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %104, align 8
  %conv.i.i91 = trunc i64 %106 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %108, i32 noundef %conv.i.i91, i32 noundef 8192, i32 noundef 1, i32 noundef 0) #7
  %109 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %102, align 4
  %111 = ptrtoint ptr %rsp_dma.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 8)
  %112 = load i64, ptr %rsp_dma.i, align 1
  %113 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %110, align 8
  %conv.i15.i = trunc i64 %112 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %114, i32 noundef %conv.i15.i, i32 noundef 8268, i32 noundef 2, i32 noundef 0) #7
  %115 = ptrtoint ptr %login_desc.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load ptr, ptr %login_desc.i, align 1
  tail call void @kfree(ptr noundef %116) #7
  %117 = ptrtoint ptr %rsp.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load ptr, ptr %rsp.i, align 1
  tail call void @kfree(ptr noundef %118) #7
  %119 = ptrtoint ptr %login_desc.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 4)
  store ptr null, ptr %login_desc.i, align 1
  %120 = ptrtoint ptr %rsp.i to i32
  call void @__asan_storeN_noabort(i32 %120, i32 4)
  store ptr null, ptr %rsp.i, align 1
  br label %alloc_login_buf_fail

alloc_login_buf_fail:                             ; preds = %if.end.i94, %rx_desc_alloc_fail.alloc_login_buf_fail_crit_edge, %free_req.i, %if.end.alloc_login_buf_fail_crit_edge
  tail call void @iser_free_fastreg_pool(ptr noundef %iser_conn) #7
  br label %do.end

do.end:                                           ; preds = %alloc_login_buf_fail, %entry.do.end_crit_edge
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end22.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iser_alloc_fastreg_pool(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iser_task_rsp(ptr nocapture readnone %cq, ptr noundef %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  %4 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wc, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -228
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %if.then, !prof !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iser_err_comp(ptr noundef %wc, ptr noundef nonnull @.str.26) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.ib_conn, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dma_addr = getelementptr i8, ptr %5, i32 -24
  %12 = ptrtoint ptr %dma_addr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %dma_addr, align 1
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 8
  %conv.i = trunc i64 %13 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %15, i32 noundef %conv.i, i32 noundef 204, i32 noundef 2) #7
  %iscsi_header = getelementptr i8, ptr %5, i32 -200
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %16 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %byte_len, align 4
  %sub = add i32 %17, -76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %18 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp3 = icmp sgt i32 %18, 2
  br i1 %cmp3, label %do.end, label %if.end.do.end15_crit_edge, !prof !130

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %iscsi_header to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %iscsi_header, align 4
  %conv = zext i8 %20 to i32
  %itt = getelementptr i8, ptr %5, i32 -184
  %21 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %itt, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.27, i32 noundef %conv, i32 noundef %22, i32 noundef %sub) #12
  br label %do.end15

do.end15:                                         ; preds = %do.end, %if.end.do.end15_crit_edge
  %wc_flags.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 9
  %23 = ptrtoint ptr %wc_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wc_flags.i, align 8
  %and.i = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end15.if.end19_crit_edge, label %if.then.i

do.end15.if.end19_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then.i:                                        ; preds = %do.end15
  %ex.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 6
  %25 = ptrtoint ptr %ex.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ex.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %27 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i = icmp sgt i32 %27, 2
  br i1 %cmp.i, label %do.end.i, label %if.then.i.do.end6.i_crit_edge, !prof !130

if.then.i.do.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, ptr noundef %3, i32 noundef %26) #12
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %if.then.i.do.end6.i_crit_edge
  %snd_w_inv.i = getelementptr inbounds %struct.iser_conn, ptr %3, i32 0, i32 18
  %28 = ptrtoint ptr %snd_w_inv.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %snd_w_inv.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool7.not.i = icmp eq i8 %29, 0
  br i1 %tobool7.not.i, label %do.end19.i, label %if.end22.i, !prof !130

do.end19.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, ptr noundef %3) #12
  br label %if.then18

if.end22.i:                                       ; preds = %do.end6.i
  %iscsi_conn.i = getelementptr inbounds %struct.iser_conn, ptr %3, i32 0, i32 1
  %30 = ptrtoint ptr %iscsi_conn.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iscsi_conn.i, align 4
  %itt.i = getelementptr i8, ptr %5, i32 -184
  %32 = ptrtoint ptr %itt.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %itt.i, align 4
  %call23.i = tail call ptr @iscsi_itt_to_ctask(ptr noundef %31, i32 noundef %33) #7
  %tobool24.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool24.not.i, label %do.end67.i, label %if.then31.i, !prof !130

if.then31.i:                                      ; preds = %if.end22.i
  %dd_data.i = getelementptr inbounds %struct.iscsi_task, ptr %call23.i, i32 0, i32 20
  %34 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dd_data.i, align 4
  %dir.i = getelementptr inbounds %struct.iscsi_iser_task, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dir.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool32.not.i = icmp eq i32 %37, 0
  br i1 %tobool32.not.i, label %if.then31.i.if.end45.i_crit_edge, label %if.then33.i

if.then31.i.if.end45.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

if.then33.i:                                      ; preds = %if.then31.i
  %mem_h.i = getelementptr inbounds %struct.iscsi_iser_task, ptr %35, i32 0, i32 6, i32 0, i32 2
  %38 = ptrtoint ptr %mem_h.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mem_h.i, align 4
  %sig_protected.i.i = getelementptr inbounds %struct.iser_fr_desc, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %sig_protected.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sig_protected.i.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %land.rhs.i.i

land.lhs.true.i.i:                                ; preds = %if.then33.i
  %rsc.i.i = getelementptr inbounds %struct.iser_fr_desc, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %rsc.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rsc.i.i, align 4
  %rkey1.i.i = getelementptr inbounds %struct.ib_mr, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %rkey1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rkey1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %26)
  %cmp.not.i.i = icmp eq i32 %45, %26
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.iser_inv_desc.exit.thread.i_crit_edge, label %land.lhs.true.i.i.iser_inv_desc.exit.i_crit_edge, !prof !129

land.lhs.true.i.i.iser_inv_desc.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iser_inv_desc.exit.i

land.lhs.true.i.i.iser_inv_desc.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iser_inv_desc.exit.thread.i

land.rhs.i.i:                                     ; preds = %if.then33.i
  %sig_mr.i.i = getelementptr inbounds %struct.iser_fr_desc, ptr %39, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %sig_mr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sig_mr.i.i, align 4
  %rkey5.i.i = getelementptr inbounds %struct.ib_mr, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %rkey5.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rkey5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %26)
  %cmp6.not.i.i = icmp eq i32 %49, %26
  br i1 %cmp6.not.i.i, label %land.rhs.i.i.iser_inv_desc.exit.thread.i_crit_edge, label %land.rhs.i.i.iser_inv_desc.exit.i_crit_edge, !prof !129

land.rhs.i.i.iser_inv_desc.exit.i_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iser_inv_desc.exit.i

land.rhs.i.i.iser_inv_desc.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iser_inv_desc.exit.thread.i

iser_inv_desc.exit.thread.i:                      ; preds = %land.rhs.i.i.iser_inv_desc.exit.thread.i_crit_edge, %land.lhs.true.i.i.iser_inv_desc.exit.thread.i_crit_edge
  %mr_valid.i.i = getelementptr inbounds %struct.iser_fr_desc, ptr %39, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %mr_valid.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i.i = load i8, ptr %mr_valid.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  store i8 %bf.clear.i.i, ptr %mr_valid.i.i, align 4
  br label %if.end45.i

iser_inv_desc.exit.i:                             ; preds = %land.rhs.i.i.iser_inv_desc.exit.i_crit_edge, %land.lhs.true.i.i.iser_inv_desc.exit.i_crit_edge
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef %26) #12
  br label %if.then18

if.end45.i:                                       ; preds = %iser_inv_desc.exit.thread.i, %if.then31.i.if.end45.i_crit_edge
  %arrayidx47.i = getelementptr %struct.iscsi_iser_task, ptr %35, i32 0, i32 5, i32 1
  %51 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool48.not.i = icmp eq i32 %52, 0
  br i1 %tobool48.not.i, label %if.end45.i.if.end19_crit_edge, label %if.then49.i

if.end45.i.if.end19_crit_edge:                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then49.i:                                      ; preds = %if.end45.i
  %mem_h52.i = getelementptr %struct.iscsi_iser_task, ptr %35, i32 0, i32 6, i32 1, i32 2
  %53 = ptrtoint ptr %mem_h52.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mem_h52.i, align 4
  %sig_protected.i90.i = getelementptr inbounds %struct.iser_fr_desc, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %sig_protected.i90.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %sig_protected.i90.i, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i91.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i91.i, label %land.lhs.true.i95.i, label %land.rhs.i99.i

land.lhs.true.i95.i:                              ; preds = %if.then49.i
  %rsc.i92.i = getelementptr inbounds %struct.iser_fr_desc, ptr %54, i32 0, i32 1
  %57 = ptrtoint ptr %rsc.i92.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rsc.i92.i, align 4
  %rkey1.i93.i = getelementptr inbounds %struct.ib_mr, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %rkey1.i93.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rkey1.i93.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %26)
  %cmp.not.i94.i = icmp eq i32 %60, %26
  br i1 %cmp.not.i94.i, label %land.lhs.true.i95.i.iser_inv_desc.exit107.thread.i_crit_edge, label %land.lhs.true.i95.i.iser_inv_desc.exit107.i_crit_edge, !prof !129

land.lhs.true.i95.i.iser_inv_desc.exit107.i_crit_edge: ; preds = %land.lhs.true.i95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iser_inv_desc.exit107.i

land.lhs.true.i95.i.iser_inv_desc.exit107.thread.i_crit_edge: ; preds = %land.lhs.true.i95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iser_inv_desc.exit107.thread.i

land.rhs.i99.i:                                   ; preds = %if.then49.i
  %sig_mr.i96.i = getelementptr inbounds %struct.iser_fr_desc, ptr %54, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %sig_mr.i96.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sig_mr.i96.i, align 4
  %rkey5.i97.i = getelementptr inbounds %struct.ib_mr, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %rkey5.i97.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rkey5.i97.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %26)
  %cmp6.not.i98.i = icmp eq i32 %64, %26
  br i1 %cmp6.not.i98.i, label %land.rhs.i99.i.iser_inv_desc.exit107.thread.i_crit_edge, label %land.rhs.i99.i.iser_inv_desc.exit107.i_crit_edge, !prof !129

land.rhs.i99.i.iser_inv_desc.exit107.i_crit_edge: ; preds = %land.rhs.i99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iser_inv_desc.exit107.i

land.rhs.i99.i.iser_inv_desc.exit107.thread.i_crit_edge: ; preds = %land.rhs.i99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iser_inv_desc.exit107.thread.i

iser_inv_desc.exit107.thread.i:                   ; preds = %land.rhs.i99.i.iser_inv_desc.exit107.thread.i_crit_edge, %land.lhs.true.i95.i.iser_inv_desc.exit107.thread.i_crit_edge
  %mr_valid.i102.i = getelementptr inbounds %struct.iser_fr_desc, ptr %54, i32 0, i32 1, i32 2
  %65 = ptrtoint ptr %mr_valid.i102.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i103.i = load i8, ptr %mr_valid.i102.i, align 4
  %bf.clear.i104.i = and i8 %bf.load.i103.i, 127
  store i8 %bf.clear.i104.i, ptr %mr_valid.i102.i, align 4
  br label %if.end19

iser_inv_desc.exit107.i:                          ; preds = %land.rhs.i99.i.iser_inv_desc.exit107.i_crit_edge, %land.lhs.true.i95.i.iser_inv_desc.exit107.i_crit_edge
  %call.i100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef %26) #12
  br label %if.then18

do.end67.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %itt.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %itt.i, align 4
  %call70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.58, i32 noundef %67) #12
  br label %if.then18

if.then18:                                        ; preds = %do.end67.i, %iser_inv_desc.exit107.i, %iser_inv_desc.exit.i, %do.end19.i
  %iscsi_conn = getelementptr inbounds %struct.iser_conn, ptr %3, i32 0, i32 1
  %68 = ptrtoint ptr %iscsi_conn to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %iscsi_conn, align 4
  tail call void @iscsi_conn_failure(ptr noundef %69, i32 noundef 1011) #7
  br label %cleanup

if.end19:                                         ; preds = %iser_inv_desc.exit107.thread.i, %if.end45.i.if.end19_crit_edge, %do.end15.if.end19_crit_edge
  %iscsi_conn20 = getelementptr inbounds %struct.iser_conn, ptr %3, i32 0, i32 1
  %70 = ptrtoint ptr %iscsi_conn20 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %iscsi_conn20, align 4
  %data = getelementptr i8, ptr %5, i32 -152
  tail call void @iscsi_iser_recv(ptr noundef %71, ptr noundef %iscsi_header, ptr noundef %data, i32 noundef %sub) #7
  %72 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %device, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %76 = ptrtoint ptr %dma_addr to i32
  call void @__asan_loadN_noabort(i32 %76, i32 8)
  %77 = load i64, ptr %dma_addr, align 1
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %75, align 8
  %conv.i57 = trunc i64 %77 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %79, i32 noundef %conv.i57, i32 noundef 204, i32 noundef 2) #7
  %call24 = tail call i32 @iser_post_recvm(ptr noundef %3, ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end19.cleanup_crit_edge, label %do.end29

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end29:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %call24) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.end19.cleanup_crit_edge, %if.then18, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iser_free_fastreg_pool(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iser_free_rx_descriptors(ptr noundef %iser_conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.ib_conn, ptr %iser_conn, i32 0, i32 4
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  tail call void @iser_free_fastreg_pool(ptr noundef %iser_conn) #7
  %rx_descs = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 14
  %qp_max_recv_dtos = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 4
  %2 = ptrtoint ptr %qp_max_recv_dtos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qp_max_recv_dtos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not = icmp eq i32 %3, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %rx_descs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_descs, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %rx_desc.014 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %5, %for.body.preheader ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dma_addr = getelementptr inbounds %struct.iser_rx_desc, ptr %rx_desc.014, i32 0, i32 3
  %8 = ptrtoint ptr %dma_addr to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %dma_addr, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %conv.i = trunc i64 %9 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %conv.i, i32 noundef 204, i32 noundef 2, i32 noundef 0) #7
  %inc = add nuw i32 %i.015, 1
  %incdec.ptr = getelementptr %struct.iser_rx_desc, ptr %rx_desc.014, i32 1
  %12 = ptrtoint ptr %qp_max_recv_dtos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qp_max_recv_dtos, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %14 = ptrtoint ptr %rx_descs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_descs, align 4
  tail call void @kfree(ptr noundef %15) #7
  %16 = ptrtoint ptr %rx_descs to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rx_descs, align 4
  %login_desc.i = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 13
  %17 = ptrtoint ptr %login_desc.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load ptr, ptr %login_desc.i, align 1
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %for.end.iser_free_login_buf.exit_crit_edge, label %if.end.i

for.end.iser_free_login_buf.exit_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %iser_free_login_buf.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device2, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %req_dma.i = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 13, i32 2
  %23 = ptrtoint ptr %req_dma.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %req_dma.i, align 1
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 8
  %conv.i.i = trunc i64 %24 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %26, i32 noundef %conv.i.i, i32 noundef 8192, i32 noundef 1, i32 noundef 0) #7
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %20, align 4
  %rsp_dma.i = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 13, i32 3
  %29 = ptrtoint ptr %rsp_dma.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %rsp_dma.i, align 1
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 8
  %conv.i15.i = trunc i64 %30 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %32, i32 noundef %conv.i15.i, i32 noundef 8268, i32 noundef 2, i32 noundef 0) #7
  %33 = ptrtoint ptr %login_desc.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load ptr, ptr %login_desc.i, align 1
  tail call void @kfree(ptr noundef %34) #7
  %rsp.i = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 13, i32 1
  %35 = ptrtoint ptr %rsp.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load ptr, ptr %rsp.i, align 1
  tail call void @kfree(ptr noundef %36) #7
  %37 = ptrtoint ptr %login_desc.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store ptr null, ptr %login_desc.i, align 1
  %38 = ptrtoint ptr %rsp.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store ptr null, ptr %rsp.i, align 1
  br label %iser_free_login_buf.exit

iser_free_login_buf.exit:                         ; preds = %if.end.i, %for.end.iser_free_login_buf.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iser_send_command(ptr noundef %conn, ptr nocapture noundef readonly %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %dd_data1 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 4
  %sc3 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 11
  %6 = ptrtoint ptr %sc3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc3, align 4
  %data_length = getelementptr inbounds %struct.iscsi_scsi_req, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_length, align 4
  %type = getelementptr inbounds %struct.iser_tx_desc, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %type, align 4
  %cqe = getelementptr inbounds %struct.iser_tx_desc, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @iser_cmd_comp, ptr %cqe, align 4
  %device1.i = getelementptr inbounds %struct.ib_conn, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device1.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %dma_addr.i = getelementptr inbounds %struct.iser_tx_desc, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dma_addr.i, align 8
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 8
  %conv.i.i = trunc i64 %17 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %19, i32 noundef %conv.i.i, i32 noundef 76, i32 noundef 1) #7
  %20 = call ptr @memset(ptr %3, i32 0, i32 28)
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 16, ptr %3, align 8
  %num_sge.i = getelementptr inbounds %struct.iser_tx_desc, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %num_sge.i, align 8
  %flags = getelementptr inbounds %struct.iscsi_scsi_req, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags, align 1
  %25 = and i8 %24, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  %data = getelementptr inbounds %struct.iscsi_iser_task, ptr %3, i32 0, i32 7
  %prot = getelementptr inbounds %struct.iscsi_iser_task, ptr %3, i32 0, i32 8
  %arrayidx6 = getelementptr %struct.iscsi_iser_task, ptr %3, i32 0, i32 7, i32 1
  %arrayidx8 = getelementptr %struct.iscsi_iser_task, ptr %3, i32 0, i32 8, i32 1
  %data_buf.0 = select i1 %tobool.not, ptr %arrayidx6, ptr %data
  %prot_buf.0 = select i1 %tobool.not, ptr %arrayidx8, ptr %prot
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 17, i32 0, i32 1
  %26 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool9.not = icmp eq i32 %27, 0
  br i1 %tobool9.not, label %entry.if.end13_crit_edge, label %if.then10

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 17
  %28 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdb.i, align 4
  %30 = ptrtoint ptr %data_buf.0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %data_buf.0, align 4
  %31 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nents.i, align 4
  %size = getelementptr inbounds %struct.iser_data_buf, ptr %data_buf.0, i32 0, i32 1
  %33 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %size, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %entry.if.end13_crit_edge
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 17, i32 1
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length.i, align 4
  %data_len = getelementptr inbounds %struct.iser_data_buf, ptr %data_buf.0, i32 0, i32 2
  %36 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %data_len, align 4
  %prot_sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 18
  %37 = ptrtoint ptr %prot_sdb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prot_sdb.i, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.end13.if.end37_crit_edge, label %scsi_prot_sg_count.exit

if.end13.if.end37_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

scsi_prot_sg_count.exit:                          ; preds = %if.end13
  %nents.i114 = getelementptr inbounds %struct.sg_table, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %nents.i114 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nents.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool16.not = icmp eq i32 %40, 0
  br i1 %tobool16.not, label %scsi_prot_sg_count.exit.if.end37_crit_edge, label %scsi_prot_sglist.exit

scsi_prot_sg_count.exit.if.end37_crit_edge:       ; preds = %scsi_prot_sg_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

scsi_prot_sglist.exit:                            ; preds = %scsi_prot_sg_count.exit
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  %43 = ptrtoint ptr %prot_buf.0 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %prot_buf.0, align 4
  %44 = ptrtoint ptr %prot_sdb.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prot_sdb.i, align 4
  %tobool.not.i120 = icmp eq ptr %45, null
  br i1 %tobool.not.i120, label %scsi_prot_sglist.exit.scsi_prot_sg_count.exit124_crit_edge, label %cond.true.i122

scsi_prot_sglist.exit.scsi_prot_sg_count.exit124_crit_edge: ; preds = %scsi_prot_sglist.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %scsi_prot_sg_count.exit124

cond.true.i122:                                   ; preds = %scsi_prot_sglist.exit
  call void @__sanitizer_cov_trace_pc() #9
  %nents.i121 = getelementptr inbounds %struct.sg_table, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %nents.i121 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nents.i121, align 4
  br label %scsi_prot_sg_count.exit124

scsi_prot_sg_count.exit124:                       ; preds = %cond.true.i122, %scsi_prot_sglist.exit.scsi_prot_sg_count.exit124_crit_edge
  %cond.i123 = phi i32 [ %47, %cond.true.i122 ], [ 0, %scsi_prot_sglist.exit.scsi_prot_sg_count.exit124_crit_edge ]
  %size21 = getelementptr inbounds %struct.iser_data_buf, ptr %prot_buf.0, i32 0, i32 1
  %48 = ptrtoint ptr %size21 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %cond.i123, ptr %size21, align 4
  %49 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data_len, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 1
  %51 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device, align 4
  %sector_size = getelementptr inbounds %struct.scsi_device, ptr %52, i32 0, i32 20
  %53 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sector_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i = icmp eq i32 %54, 0
  %55 = tail call i32 @llvm.ctlz.i32(i32 %54, i1 true) #7, !range !132
  %sub.i.op.i = xor i32 %55, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %shr = lshr i32 %50, %sub.i
  %mul = shl i32 %shr, 3
  %data_len36 = getelementptr inbounds %struct.iser_data_buf, ptr %prot_buf.0, i32 0, i32 2
  %56 = ptrtoint ptr %data_len36 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %mul, ptr %data_len36, align 4
  br label %if.end37

if.end37:                                         ; preds = %scsi_prot_sg_count.exit124, %scsi_prot_sg_count.exit.if.end37_crit_edge, %if.end13.if.end37_crit_edge
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %flags, align 1
  %59 = and i8 %58, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool41.not = icmp eq i8 %59, 0
  br i1 %tobool41.not, label %if.end37.if.end47_crit_edge, label %if.then42

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then42:                                        ; preds = %if.end37
  %60 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dd_data1, align 4
  %data.i = getelementptr inbounds %struct.iscsi_iser_task, ptr %61, i32 0, i32 7
  %call.i = tail call i32 @iser_dma_map_task_data(ptr noundef %61, ptr noundef %data.i, i32 noundef 0, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i125 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i125, label %if.end.i, label %if.then42.do.end_crit_edge

if.then42.do.end_crit_edge:                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.then42
  %sc.i = getelementptr inbounds %struct.iscsi_iser_task, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %sc.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sc.i, align 8
  %prot_sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %63, i32 0, i32 18
  %64 = ptrtoint ptr %prot_sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prot_sdb.i.i, align 4
  %tobool.not.i.i126 = icmp eq ptr %65, null
  br i1 %tobool.not.i.i126, label %if.end.i.if.end9.i_crit_edge, label %scsi_prot_sg_count.exit.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

scsi_prot_sg_count.exit.i:                        ; preds = %if.end.i
  %nents.i.i = getelementptr inbounds %struct.sg_table, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool2.not.i = icmp eq i32 %67, 0
  br i1 %tobool2.not.i, label %scsi_prot_sg_count.exit.i.if.end9.i_crit_edge, label %if.then3.i

scsi_prot_sg_count.exit.i.if.end9.i_crit_edge:    ; preds = %scsi_prot_sg_count.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then3.i:                                       ; preds = %scsi_prot_sg_count.exit.i
  %prot.i = getelementptr inbounds %struct.iscsi_iser_task, ptr %61, i32 0, i32 8
  %call5.i = tail call i32 @iser_dma_map_task_data(ptr noundef %61, ptr noundef %prot.i, i32 noundef 0, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then3.i.if.end9.i_crit_edge, label %if.then3.i.do.end_crit_edge

if.then3.i.do.end_crit_edge:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then3.i.if.end9.i_crit_edge, %scsi_prot_sg_count.exit.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %call10.i = tail call i32 @iser_reg_mem_fastreg(ptr noundef %61, i32 noundef 0, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end14.i, label %do.end.i

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #12
  br label %do.end

if.end14.i:                                       ; preds = %if.end9.i
  %rdma_reg.i = getelementptr inbounds %struct.iscsi_iser_task, ptr %61, i32 0, i32 6
  %68 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %61, align 1
  %70 = or i8 %69, 4
  store i8 %70, ptr %61, align 1
  %rkey.i = getelementptr inbounds %struct.iscsi_iser_task, ptr %61, i32 0, i32 6, i32 0, i32 1
  %71 = ptrtoint ptr %rkey.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rkey.i, align 8
  %read_stag.i = getelementptr inbounds %struct.iser_ctrl, ptr %61, i32 0, i32 4
  %73 = ptrtoint ptr %read_stag.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %72, ptr %read_stag.i, align 1
  %74 = ptrtoint ptr %rdma_reg.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %rdma_reg.i, align 8
  %read_va.i = getelementptr inbounds %struct.iser_ctrl, ptr %61, i32 0, i32 5
  %76 = ptrtoint ptr %read_va.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 8)
  store i64 %75, ptr %read_va.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %77 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %77)
  %cmp.i = icmp sgt i32 %77, 2
  br i1 %cmp.i, label %do.end24.i, label %if.end14.i.if.end47_crit_edge, !prof !130

if.end14.i.if.end47_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.end24.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %itt.i = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 6
  %78 = ptrtoint ptr %itt.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %itt.i, align 4
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %79, i32 noundef %72, i64 noundef %75) #12
  br label %if.end47

if.end47:                                         ; preds = %do.end24.i, %if.end14.i.if.end47_crit_edge, %if.end37.if.end47_crit_edge
  %80 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %flags, align 1
  %82 = and i8 %81, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool51.not = icmp eq i8 %82, 0
  br i1 %tobool51.not, label %if.end47.if.end59_crit_edge, label %if.then52

if.end47.if.end59_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then52:                                        ; preds = %if.end47
  %imm_count = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 7
  %83 = ptrtoint ptr %imm_count to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %imm_count, align 4
  %data_length54 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 8, i32 2
  %85 = ptrtoint ptr %data_length54 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data_length54, align 4
  %add = add i32 %86, %84
  %87 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dd_data1, align 4
  %arrayidx.i = getelementptr %struct.iscsi_iser_task, ptr %88, i32 0, i32 7, i32 1
  %arrayidx2.i = getelementptr %struct.iser_tx_desc, ptr %88, i32 0, i32 4, i32 1
  %call.i128 = tail call i32 @iser_dma_map_task_data(ptr noundef %88, ptr noundef %arrayidx.i, i32 noundef 1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool.not.i129 = icmp eq i32 %call.i128, 0
  br i1 %tobool.not.i129, label %if.end.i133, label %if.then52.do.end_crit_edge

if.then52.do.end_crit_edge:                       ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i133:                                      ; preds = %if.then52
  %sc.i130 = getelementptr inbounds %struct.iscsi_iser_task, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %sc.i130 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sc.i130, align 8
  %prot_sdb.i.i131 = getelementptr inbounds %struct.scsi_cmnd, ptr %90, i32 0, i32 18
  %91 = ptrtoint ptr %prot_sdb.i.i131 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prot_sdb.i.i131, align 4
  %tobool.not.i.i132 = icmp eq ptr %92, null
  br i1 %tobool.not.i.i132, label %if.end.i133.if.end11.i_crit_edge, label %scsi_prot_sg_count.exit.i135

if.end.i133.if.end11.i_crit_edge:                 ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

scsi_prot_sg_count.exit.i135:                     ; preds = %if.end.i133
  %nents.i.i134 = getelementptr inbounds %struct.sg_table, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %nents.i.i134 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %nents.i.i134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool4.not.i = icmp eq i32 %94, 0
  br i1 %tobool4.not.i, label %scsi_prot_sg_count.exit.i135.if.end11.i_crit_edge, label %if.then5.i

scsi_prot_sg_count.exit.i135.if.end11.i_crit_edge: ; preds = %scsi_prot_sg_count.exit.i135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then5.i:                                       ; preds = %scsi_prot_sg_count.exit.i135
  %arrayidx6.i = getelementptr %struct.iscsi_iser_task, ptr %88, i32 0, i32 8, i32 1
  %call7.i = tail call i32 @iser_dma_map_task_data(ptr noundef %88, ptr noundef %arrayidx6.i, i32 noundef 1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then5.i.if.end11.i_crit_edge, label %if.then5.i.do.end_crit_edge

if.then5.i.do.end_crit_edge:                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then5.i.if.end11.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then5.i.if.end11.i_crit_edge, %scsi_prot_sg_count.exit.i135.if.end11.i_crit_edge, %if.end.i133.if.end11.i_crit_edge
  %data_len.i = getelementptr %struct.iscsi_iser_task, ptr %88, i32 0, i32 7, i32 1, i32 2
  %95 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %data_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %84)
  %cmp.i136 = icmp eq i32 %96, %84
  %call12.i = tail call i32 @iser_reg_mem_fastreg(ptr noundef %88, i32 noundef 1, i1 noundef zeroext %cmp.i136) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 0
  br i1 %cmp13.not.i, label %if.end16.i, label %do.end.i137

do.end.i137:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #12
  br label %do.end

if.end16.i:                                       ; preds = %if.end11.i
  %arrayidx17.i = getelementptr %struct.iscsi_iser_task, ptr %88, i32 0, i32 6, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp18.i = icmp ult i32 %add, %9
  br i1 %cmp18.i, label %if.then19.i, label %if.end16.i.if.end44.i_crit_edge

if.end16.i.if.end44.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.then19.i:                                      ; preds = %if.end16.i
  %97 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %88, align 1
  %99 = or i8 %98, 8
  store i8 %99, ptr %88, align 1
  %100 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %data_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %84)
  %cmp22.i = icmp ugt i32 %101, %84
  br i1 %cmp22.i, label %if.then24.i, label %if.then19.i.do.body27.i_crit_edge

if.then19.i.do.body27.i_crit_edge:                ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27.i

if.then24.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  %rkey.i138 = getelementptr %struct.iscsi_iser_task, ptr %88, i32 0, i32 6, i32 1, i32 1
  %102 = ptrtoint ptr %rkey.i138 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rkey.i138, align 8
  %write_stag.i = getelementptr inbounds %struct.iser_ctrl, ptr %88, i32 0, i32 2
  %104 = ptrtoint ptr %write_stag.i to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 %103, ptr %write_stag.i, align 1
  %105 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx17.i, align 8
  %conv25.i = zext i32 %add to i64
  %add.i = add i64 %106, %conv25.i
  %write_va.i = getelementptr inbounds %struct.iser_ctrl, ptr %88, i32 0, i32 3
  %107 = ptrtoint ptr %write_va.i to i32
  call void @__asan_storeN_noabort(i32 %107, i32 8)
  store i64 %add.i, ptr %write_va.i, align 1
  br label %do.body27.i

do.body27.i:                                      ; preds = %if.then24.i, %if.then19.i.do.body27.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %108 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %108)
  %cmp28.i = icmp sgt i32 %108, 2
  br i1 %cmp28.i, label %do.end35.i, label %do.body27.i.if.end44.i_crit_edge, !prof !130

do.body27.i.if.end44.i_crit_edge:                 ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

do.end35.i:                                       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #9
  %itt.i139 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 6
  %109 = ptrtoint ptr %itt.i139 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %itt.i139, align 4
  %rkey37.i = getelementptr %struct.iscsi_iser_task, ptr %88, i32 0, i32 6, i32 1, i32 1
  %111 = ptrtoint ptr %rkey37.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rkey37.i, align 8
  %113 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %arrayidx17.i, align 8
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef %110, i32 noundef %112, i64 noundef %114, i32 noundef %add) #12
  br label %if.end44.i

if.end44.i:                                       ; preds = %do.end35.i, %do.body27.i.if.end44.i_crit_edge, %if.end16.i.if.end44.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp45.not.i = icmp eq i32 %84, 0
  br i1 %cmp45.not.i, label %if.end44.i.if.end59_crit_edge, label %do.body48.i

if.end44.i.if.end59_crit_edge:                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.body48.i:                                      ; preds = %if.end44.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %115 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %115)
  %cmp49.i = icmp sgt i32 %115, 2
  br i1 %cmp49.i, label %do.end60.i, label %do.body48.i.do.end66.i_crit_edge, !prof !130

do.body48.i.do.end66.i_crit_edge:                 ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66.i

do.end60.i:                                       ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #9
  %itt62.i = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 6
  %116 = ptrtoint ptr %itt62.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %itt62.i, align 4
  %call63.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.42, i32 noundef %117, i32 noundef %84) #12
  br label %do.end66.i

do.end66.i:                                       ; preds = %do.end60.i, %do.body48.i.do.end66.i_crit_edge
  %118 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %arrayidx17.i, align 8
  %120 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %119, ptr %arrayidx2.i, align 8
  %length.i140 = getelementptr %struct.iser_tx_desc, ptr %88, i32 0, i32 4, i32 1, i32 1
  %121 = ptrtoint ptr %length.i140 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %84, ptr %length.i140, align 8
  %lkey.i = getelementptr %struct.iscsi_iser_task, ptr %88, i32 0, i32 6, i32 1, i32 0, i32 2
  %122 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %lkey.i, align 4
  %lkey71.i = getelementptr %struct.iser_tx_desc, ptr %88, i32 0, i32 4, i32 1, i32 2
  %124 = ptrtoint ptr %lkey71.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %lkey71.i, align 4
  %num_sge.i141 = getelementptr inbounds %struct.iser_tx_desc, ptr %88, i32 0, i32 5
  %125 = ptrtoint ptr %num_sge.i141 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 2, ptr %num_sge.i141, align 8
  br label %if.end59

if.end59:                                         ; preds = %do.end66.i, %if.end44.i.if.end59_crit_edge, %if.end47.if.end59_crit_edge
  %status = getelementptr inbounds %struct.iscsi_iser_task, ptr %3, i32 0, i32 2
  %126 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %status, align 4
  %call60 = tail call i32 @iser_post_send(ptr noundef %1, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end59.cleanup_crit_edge, label %if.end59.do.end_crit_edge

if.end59.do.end_crit_edge:                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end59.do.end_crit_edge, %do.end.i137, %if.then5.i.do.end_crit_edge, %if.then52.do.end_crit_edge, %do.end.i, %if.then3.i.do.end_crit_edge, %if.then42.do.end_crit_edge
  %err.0 = phi i32 [ %call60, %if.end59.do.end_crit_edge ], [ %call.i, %if.then42.do.end_crit_edge ], [ %call5.i, %if.then3.i.do.end_crit_edge ], [ %call10.i, %do.end.i ], [ %call.i128, %if.then52.do.end_crit_edge ], [ %call7.i, %if.then5.i.do.end_crit_edge ], [ %call12.i, %do.end.i137 ]
  %itt = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 6
  %127 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %itt, align 4
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %conn, i32 noundef %128, i32 noundef %err.0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end59.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %do.end ], [ 0, %if.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iser_cmd_comp(ptr nocapture readnone %cq, ptr noundef %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !129

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iser_err_comp(ptr noundef %wc, ptr noundef nonnull @.str.31) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iser_post_send(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iser_send_data_out(ptr noundef %conn, ptr noundef %task, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %dd_data1 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %itt2 = getelementptr inbounds %struct.iscsi_data, ptr %hdr, i32 0, i32 6
  %4 = ptrtoint ptr %itt2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %itt2, align 4
  %dlength = getelementptr inbounds %struct.iscsi_data, ptr %hdr, i32 0, i32 4
  %6 = ptrtoint ptr %dlength to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dlength, align 1
  %conv = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx4 = getelementptr %struct.iscsi_data, ptr %hdr, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %9 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or = or i32 %shl6, %shl
  %arrayidx8 = getelementptr %struct.iscsi_data, ptr %hdr, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %11 to i32
  %or10 = or i32 %or, %conv9
  %offset = getelementptr inbounds %struct.iscsi_data, ptr %hdr, i32 0, i32 12
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %14 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp = icmp sgt i32 %14, 2
  br i1 %cmp, label %do.end, label %entry.do.end15_crit_edge, !prof !130

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.6, i32 noundef %5, i32 noundef %or10, i32 noundef %13) #12
  br label %do.end15

do.end15:                                         ; preds = %do.end, %entry.do.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 4) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 4), align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %15, i32 noundef 2848) #7
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %do.end15.cleanup_crit_edge, label %if.end19

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %do.end15
  %type = getelementptr inbounds %struct.iser_tx_desc, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %type, align 4
  %cqe = getelementptr inbounds %struct.iser_tx_desc, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @iser_dataout_comp, ptr %cqe, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 16, ptr %call.i, align 8
  %iscsi_header = getelementptr inbounds %struct.iser_tx_desc, ptr %call.i, i32 0, i32 1
  %19 = call ptr @memcpy(ptr %iscsi_header, ptr %hdr, i32 48)
  %call20 = tail call i32 @iser_initialize_task_headers(ptr noundef %task, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.send_data_out_error_crit_edge

if.end19.send_data_out_error_crit_edge:           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %send_data_out_error

if.end23:                                         ; preds = %if.end19
  %arrayidx24 = getelementptr %struct.iscsi_iser_task, ptr %3, i32 0, i32 6, i32 1
  %arrayidx25 = getelementptr %struct.iser_tx_desc, ptr %call.i, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx24, align 8
  %conv26 = zext i32 %13 to i64
  %add = add i64 %21, %conv26
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %add, ptr %arrayidx25, align 8
  %length = getelementptr %struct.iser_tx_desc, ptr %call.i, i32 0, i32 4, i32 1, i32 1
  %23 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or10, ptr %length, align 8
  %lkey = getelementptr %struct.iscsi_iser_task, ptr %3, i32 0, i32 6, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lkey, align 4
  %lkey29 = getelementptr %struct.iser_tx_desc, ptr %call.i, i32 0, i32 4, i32 1, i32 2
  %26 = ptrtoint ptr %lkey29 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %lkey29, align 4
  %num_sge = getelementptr inbounds %struct.iser_tx_desc, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %num_sge, align 8
  %add30 = add i32 %or10, %13
  %data_len = getelementptr %struct.iscsi_iser_task, ptr %3, i32 0, i32 7, i32 1, i32 2
  %28 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %29)
  %cmp32 = icmp ugt i32 %add30, %29
  br i1 %cmp32, label %do.end37, label %do.body44

do.end37:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %13, i32 noundef %or10, i32 noundef %29, i32 noundef %5) #12
  br label %send_data_out_error

do.body44:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %30 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp45 = icmp sgt i32 %30, 2
  br i1 %cmp45, label %do.end56, label %do.body44.do.end61_crit_edge, !prof !130

do.body44.do.end61_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end61

do.end56:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.6, i32 noundef %5, i32 noundef %13, i32 noundef %or10) #12
  br label %do.end61

do.end61:                                         ; preds = %do.end56, %do.body44.do.end61_crit_edge
  %call62 = tail call i32 @iser_post_send(ptr noundef %1, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %do.end61.cleanup_crit_edge, label %do.end61.send_data_out_error_crit_edge

do.end61.send_data_out_error_crit_edge:           ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %send_data_out_error

do.end61.cleanup_crit_edge:                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

send_data_out_error:                              ; preds = %do.end61.send_data_out_error_crit_edge, %do.end37, %if.end19.send_data_out_error_crit_edge
  %err.0 = phi i32 [ %call20, %if.end19.send_data_out_error_crit_edge ], [ -22, %do.end37 ], [ %call62, %do.end61.send_data_out_error_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 4) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 4), align 4
  tail call void @kmem_cache_free(ptr noundef %31, ptr noundef nonnull %call.i) #7
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.6, ptr noundef %conn, i32 noundef %err.0) #12
  br label %cleanup

cleanup:                                          ; preds = %send_data_out_error, %do.end61.cleanup_crit_edge, %do.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %send_data_out_error ], [ -12, %do.end15.cleanup_crit_edge ], [ 0, %do.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iser_dataout_comp(ptr nocapture readnone %cq, ptr noundef %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qp_context, align 4
  %device1 = getelementptr inbounds %struct.ib_conn, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device1, align 4
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !129

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iser_err_comp(ptr noundef %wc, ptr noundef nonnull @.str.33) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %1, i32 -124
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %dma_addr = getelementptr i8, ptr %1, i32 -44
  %12 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dma_addr, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 8
  %conv.i = trunc i64 %13 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %conv.i, i32 noundef 76, i32 noundef 1, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 4) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 4), align 4
  tail call void @kmem_cache_free(ptr noundef %16, ptr noundef %add.ptr.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iser_initialize_task_headers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iser_send_control(ptr noundef %conn, ptr noundef readonly %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 1
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %dd_data1 = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 20
  %2 = ptrtoint ptr %dd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data1, align 4
  %type = getelementptr inbounds %struct.iser_tx_desc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %type, align 4
  %cqe = getelementptr inbounds %struct.iser_tx_desc, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @iser_ctrl_comp, ptr %cqe, align 4
  %device1.i = getelementptr inbounds %struct.ib_conn, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device1.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dma_addr.i = getelementptr inbounds %struct.iser_tx_desc, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %dma_addr.i, align 8
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 8
  %conv.i.i = trunc i64 %11 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %13, i32 noundef %conv.i.i, i32 noundef 76, i32 noundef 1) #7
  %14 = call ptr @memset(ptr %3, i32 0, i32 28)
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 16, ptr %3, align 8
  %num_sge.i = getelementptr inbounds %struct.iser_tx_desc, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %num_sge.i, align 8
  %17 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device1.i, align 4
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 4
  %dlength = getelementptr inbounds %struct.iscsi_hdr, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %dlength to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dlength, align 1
  %conv = zext i8 %22 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx5 = getelementptr %struct.iscsi_hdr, ptr %20, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %24 to i32
  %shl7 = shl nuw nsw i32 %conv6, 8
  %or = or i32 %shl7, %shl
  %arrayidx10 = getelementptr %struct.iscsi_hdr, ptr %20, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %26 to i32
  %or12 = or i32 %or, %conv11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or12)
  %cmp.not = icmp eq i32 %or12, 0
  br i1 %cmp.not, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then:                                          ; preds = %entry
  %login_task = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 15
  %27 = ptrtoint ptr %login_task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %login_task, align 8
  %cmp16.not = icmp eq ptr %28, %task
  br i1 %cmp16.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15 = getelementptr %struct.iser_tx_desc, ptr %3, i32 0, i32 4, i32 1
  %login_desc = getelementptr inbounds %struct.iser_conn, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %18, align 4
  %req_dma = getelementptr inbounds %struct.iser_conn, ptr %1, i32 0, i32 13, i32 2
  %31 = ptrtoint ptr %req_dma to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %req_dma, align 1
  %data_count = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 10
  %33 = ptrtoint ptr %data_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_count, align 4
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %30, align 8
  %conv.i = trunc i64 %32 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %36, i32 noundef %conv.i, i32 noundef %34, i32 noundef 1) #7
  %37 = ptrtoint ptr %login_desc to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load ptr, ptr %login_desc, align 1
  %data = getelementptr inbounds %struct.iscsi_task, ptr %task, i32 0, i32 9
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %41 = ptrtoint ptr %data_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_count, align 4
  %43 = call ptr @memcpy(ptr %38, ptr %40, i32 %42)
  %44 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %18, align 4
  %46 = ptrtoint ptr %req_dma to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %req_dma, align 1
  %48 = load i32, ptr %data_count, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %45, align 8
  %conv.i110 = trunc i64 %47 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %50, i32 noundef %conv.i110, i32 noundef %48, i32 noundef 1) #7
  %51 = ptrtoint ptr %req_dma to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %req_dma, align 1
  %53 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %arrayidx15, align 8
  %54 = ptrtoint ptr %data_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_count, align 4
  %length = getelementptr %struct.iser_tx_desc, ptr %3, i32 0, i32 4, i32 1, i32 1
  %56 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %length, align 8
  %pd = getelementptr inbounds %struct.iser_device, ptr %18, i32 0, i32 1
  %57 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pd, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %lkey = getelementptr %struct.iser_tx_desc, ptr %3, i32 0, i32 4, i32 1, i32 2
  %61 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %lkey, align 4
  %62 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %num_sge.i, align 8
  br label %if.end26

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #12
  br label %do.end63

if.end26:                                         ; preds = %cleanup.thread, %entry.if.end26_crit_edge
  %login_task27 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 15
  %63 = ptrtoint ptr %login_task27 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %login_task27, align 8
  %cmp28 = icmp eq ptr %64, %task
  br i1 %cmp28, label %do.body31, label %if.end26.if.end55_crit_edge

if.end26.if.end55_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

do.body31:                                        ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %65 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp32 = icmp sgt i32 %65, 2
  br i1 %cmp32, label %do.end38, label %do.body31.do.end45_crit_edge, !prof !130

do.body31.do.end45_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

do.end38:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 4
  %conv41 = zext i8 %69 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %conv41, i32 noundef %or12) #12
  br label %do.end45

do.end45:                                         ; preds = %do.end38, %do.body31.do.end45_crit_edge
  %call46 = tail call i32 @iser_post_recvl(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %do.end45.do.end63_crit_edge

do.end45.do.end63_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end63

if.end49:                                         ; preds = %do.end45
  %70 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task, align 4
  %72 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dd_data, align 4
  %session1.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 2
  %74 = ptrtoint ptr %session1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %session1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %76 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %cmp.i = icmp sgt i32 %76, 2
  br i1 %cmp.i, label %do.end.i, label %if.end49.do.end6.i_crit_edge, !prof !130

if.end49.do.end6.i_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

do.end.i:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %71, align 4
  %conv.i111 = zext i8 %78 to i32
  %flags.i = getelementptr inbounds %struct.iscsi_hdr, ptr %71, i32 0, i32 1
  %79 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %flags.i, align 1
  %conv4.i = zext i8 %80 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %conv.i111, i32 noundef %conv4.i) #12
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %if.end49.do.end6.i_crit_edge
  %flags7.i = getelementptr inbounds %struct.iscsi_hdr, ptr %71, i32 0, i32 1
  %81 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %flags7.i, align 1
  %83 = and i8 %82, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %83)
  %cmp9.not.i = icmp eq i8 %83, 3
  br i1 %cmp9.not.i, label %if.end12.i, label %do.end6.i.if.end55_crit_edge

do.end6.i.if.end55_crit_edge:                     ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end12.i:                                       ; preds = %do.end6.i
  %discovery_sess.i = getelementptr inbounds %struct.iscsi_session, ptr %75, i32 0, i32 43
  %84 = ptrtoint ptr %discovery_sess.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %discovery_sess.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool13.not.i = icmp eq i8 %85, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %86 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp35.i = icmp sgt i32 %86, 1
  br i1 %tobool13.not.i, label %do.body34.i, label %do.body15.i

do.body15.i:                                      ; preds = %if.end12.i
  br i1 %cmp35.i, label %do.end27.i, label %do.body15.i.if.end55_crit_edge, !prof !130

do.body15.i.if.end55_crit_edge:                   ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

do.end27.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50) #12
  br label %if.end55

do.body34.i:                                      ; preds = %if.end12.i
  br i1 %cmp35.i, label %do.end46.i, label %do.body34.i.do.end51.i_crit_edge, !prof !130

do.body34.i.do.end51.i_crit_edge:                 ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end51.i

do.end46.i:                                       ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #9
  %qp_max_recv_dtos.i = getelementptr inbounds %struct.iser_conn, ptr %73, i32 0, i32 4
  %87 = ptrtoint ptr %qp_max_recv_dtos.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %qp_max_recv_dtos.i, align 4
  %sub.i = add i32 %88, -1
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.50, i32 noundef %sub.i) #12
  br label %do.end51.i

do.end51.i:                                       ; preds = %do.end46.i, %do.body34.i.do.end51.i_crit_edge
  %rx_descs.i = getelementptr inbounds %struct.iser_conn, ptr %73, i32 0, i32 14
  %qp_max_recv_dtos52.i = getelementptr inbounds %struct.iser_conn, ptr %73, i32 0, i32 4
  %89 = ptrtoint ptr %qp_max_recv_dtos52.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %qp_max_recv_dtos52.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp5368.i = icmp ugt i32 %90, 1
  br i1 %cmp5368.i, label %do.end51.i.for.body.i_crit_edge, label %do.end51.i.if.end55_crit_edge

do.end51.i.if.end55_crit_edge:                    ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

do.end51.i.for.body.i_crit_edge:                  ; preds = %do.end51.i
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.069.i, 1
  %91 = ptrtoint ptr %qp_max_recv_dtos52.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %qp_max_recv_dtos52.i, align 4
  %cmp53.i = icmp ult i32 %inc.i, %92
  br i1 %cmp53.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end55_crit_edge

for.cond.i.if.end55_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.end51.i.for.body.i_crit_edge
  %i.069.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 1, %do.end51.i.for.body.i_crit_edge ]
  %93 = ptrtoint ptr %rx_descs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rx_descs.i, align 4
  %arrayidx.i = getelementptr %struct.iser_rx_desc, ptr %94, i32 %i.069.i
  %call55.i = tail call i32 @iser_post_recvm(ptr noundef %73, ptr noundef %arrayidx.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %for.cond.i, label %for.body.i.do.end63_crit_edge

for.body.i.do.end63_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end63

if.end55:                                         ; preds = %for.cond.i.if.end55_crit_edge, %do.end51.i.if.end55_crit_edge, %do.end27.i, %do.body15.i.if.end55_crit_edge, %do.end6.i.if.end55_crit_edge, %if.end26.if.end55_crit_edge
  %call57 = tail call i32 @iser_post_send(ptr noundef %1, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end55.cleanup66_crit_edge, label %if.end55.do.end63_crit_edge

if.end55.do.end63_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end63

if.end55.cleanup66_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup66

do.end63:                                         ; preds = %if.end55.do.end63_crit_edge, %for.body.i.do.end63_crit_edge, %do.end45.do.end63_crit_edge, %cleanup
  %err.0 = phi i32 [ 0, %cleanup ], [ %call46, %do.end45.do.end63_crit_edge ], [ %call57, %if.end55.do.end63_crit_edge ], [ %call55.i, %for.body.i.do.end63_crit_edge ]
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17, ptr noundef %conn, i32 noundef %err.0) #12
  br label %cleanup66

cleanup66:                                        ; preds = %do.end63, %if.end55.cleanup66_crit_edge
  %retval.0 = phi i32 [ %err.0, %do.end63 ], [ 0, %if.end55.cleanup66_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iser_ctrl_comp(ptr nocapture readnone %cq, ptr noundef %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %if.then, !prof !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iser_err_comp(ptr noundef %wc, ptr noundef nonnull @.str.32) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wc, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -232
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %itt = getelementptr inbounds %struct.iscsi_hdr, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %itt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp2 = icmp eq i32 %7, -1
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iscsi_put_task(ptr noundef %add.ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iser_post_recvl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iser_login_rsp(ptr nocapture noundef readnone %cq, ptr noundef %wc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %if.then, !prof !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iser_err_comp(ptr noundef %wc, ptr noundef nonnull @.str.23) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wc, align 8
  %device = getelementptr inbounds %struct.ib_conn, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %rsp_dma = getelementptr i8, ptr %7, i32 -24
  %12 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %rsp_dma, align 1
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 8
  %conv.i = trunc i64 %13 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %15, i32 noundef %conv.i, i32 noundef 8268, i32 noundef 2) #7
  %rsp = getelementptr i8, ptr %7, i32 -36
  %16 = ptrtoint ptr %rsp to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load ptr, ptr %rsp, align 1
  %add.ptr = getelementptr i8, ptr %17, i32 28
  %add.ptr4 = getelementptr i8, ptr %17, i32 76
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %18 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %byte_len, align 4
  %sub = add i32 %19, -76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %20 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp5 = icmp sgt i32 %20, 2
  br i1 %cmp5, label %do.end, label %if.end.do.end17_crit_edge, !prof !130

if.end.do.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr, align 4
  %conv = zext i8 %22 to i32
  %itt = getelementptr i8, ptr %17, i32 44
  %23 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %itt, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %24, i32 noundef %sub) #12
  br label %do.end17

do.end17:                                         ; preds = %do.end, %if.end.do.end17_crit_edge
  %iscsi_conn = getelementptr inbounds %struct.iser_conn, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %iscsi_conn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iscsi_conn, align 4
  tail call void @iscsi_iser_recv(ptr noundef %26, ptr noundef %add.ptr, ptr noundef %add.ptr4, i32 noundef %sub) #7
  %27 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %31 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %rsp_dma, align 1
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 8
  %conv.i46 = trunc i64 %32 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %34, i32 noundef %conv.i46, i32 noundef 8268, i32 noundef 2) #7
  %35 = ptrtoint ptr %iscsi_conn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iscsi_conn, align 4
  %session = getelementptr inbounds %struct.iscsi_conn, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %session, align 8
  %discovery_sess = getelementptr inbounds %struct.iscsi_session, ptr %38, i32 0, i32 43
  %39 = ptrtoint ptr %discovery_sess to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %discovery_sess, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool22.not = icmp eq i8 %40, 0
  br i1 %tobool22.not, label %if.end24, label %do.end17.cleanup_crit_edge

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  %rx_descs = getelementptr inbounds %struct.iser_conn, ptr %3, i32 0, i32 14
  %41 = ptrtoint ptr %rx_descs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_descs, align 4
  %call25 = tail call i32 @iser_post_recvm(ptr noundef %3, ptr noundef %42) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end17.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iser_err_comp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_iser_recv(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iser_post_recvm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_failure(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_put_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @iser_task_rdma_init(ptr nocapture noundef writeonly %iser_task) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 2
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  %dir = getelementptr inbounds %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 5
  %data_len = getelementptr inbounds %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 7, i32 0, i32 2
  %1 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %data_len, align 8
  %data_len6 = getelementptr %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 7, i32 1, i32 2
  %2 = ptrtoint ptr %data_len6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %data_len6, align 8
  %data_len8 = getelementptr inbounds %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 8, i32 0, i32 2
  %3 = ptrtoint ptr %data_len8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %data_len8, align 8
  %data_len11 = getelementptr %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 8, i32 1, i32 2
  %4 = ptrtoint ptr %data_len11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %data_len11, align 8
  %dma_nents = getelementptr inbounds %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 8, i32 0, i32 3
  %5 = ptrtoint ptr %dma_nents to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %dma_nents, align 4
  %dma_nents16 = getelementptr %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 8, i32 1, i32 3
  %6 = ptrtoint ptr %dma_nents16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dma_nents16, align 4
  %7 = call ptr @memset(ptr %dir, i32 0, i32 56)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iser_task_rdma_finalize(ptr noundef %iser_task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sc = getelementptr inbounds %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 3
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 8
  %prot_sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %prot_sdb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prot_sdb.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.scsi_prot_sg_count.exit_crit_edge, label %cond.true.i

entry.scsi_prot_sg_count.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %scsi_prot_sg_count.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %nents.i = getelementptr inbounds %struct.sg_table, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nents.i, align 4
  br label %scsi_prot_sg_count.exit

scsi_prot_sg_count.exit:                          ; preds = %cond.true.i, %entry.scsi_prot_sg_count.exit_crit_edge
  %cond.i = phi i32 [ %5, %cond.true.i ], [ 0, %entry.scsi_prot_sg_count.exit_crit_edge ]
  %dir = getelementptr inbounds %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 5
  %6 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dir, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %scsi_prot_sg_count.exit.if.end5_crit_edge, label %if.then

scsi_prot_sg_count.exit.if.end5_crit_edge:        ; preds = %scsi_prot_sg_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %scsi_prot_sg_count.exit
  tail call void @iser_unreg_mem_fastreg(ptr noundef %iser_task, i32 noundef 0) #7
  %data = getelementptr inbounds %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 7
  tail call void @iser_dma_unmap_task_data(ptr noundef %iser_task, ptr noundef %data, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool2.not = icmp eq i32 %cond.i, 0
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prot = getelementptr inbounds %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 8
  tail call void @iser_dma_unmap_task_data(ptr noundef %iser_task, ptr noundef %prot, i32 noundef 2) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %scsi_prot_sg_count.exit.if.end5_crit_edge
  %arrayidx7 = getelementptr %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %if.end5.if.end17_crit_edge, label %if.then9

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then9:                                         ; preds = %if.end5
  tail call void @iser_unreg_mem_fastreg(ptr noundef %iser_task, i32 noundef 1) #7
  %arrayidx11 = getelementptr %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 7, i32 1
  tail call void @iser_dma_unmap_task_data(ptr noundef %iser_task, ptr noundef %arrayidx11, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool12.not = icmp eq i32 %cond.i, 0
  br i1 %tobool12.not, label %if.then9.if.end17_crit_edge, label %if.then13

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15 = getelementptr %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 8, i32 1
  tail call void @iser_dma_unmap_task_data(ptr noundef %iser_task, ptr noundef %arrayidx15, i32 noundef 1) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.then9.if.end17_crit_edge, %if.end5.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iser_unreg_mem_fastreg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iser_dma_unmap_task_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iser_dma_map_task_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iser_reg_mem_fastreg(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_itt_to_ctask(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !42, !44, !45, !46, !47, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 292, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @iser_alloc_rx_descriptors._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @iser_alloc_rx_descriptors._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 416, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @iser_send_command._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @iser_send_command._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 443, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @iser_send_data_out._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @iser_send_data_out._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 468, i32 3}
!18 = !{ptr @iser_send_data_out._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @iser_send_data_out._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 474, i32 2}
!22 = !{ptr @iser_send_data_out._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @iser_send_data_out._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 484, i32 2}
!26 = !{ptr @iser_send_data_out._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @iser_send_data_out._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 511, i32 4}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @iser_send_control._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @iser_send_control._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 530, i32 3}
!35 = !{ptr @iser_send_control._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @iser_send_control._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @iser_send_control._entry.21, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 545, i32 2}
!39 = !{ptr @iser_send_control._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 559, i32 21}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 571, i32 2}
!44 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @iser_login_rsp._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @iser_login_rsp._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 651, i32 21}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 662, i32 2}
!51 = !{ptr @iser_task_rsp._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @iser_task_rsp._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 679, i32 3}
!55 = !{ptr @iser_task_rsp._entry.28, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @iser_task_rsp._entry_ptr.30, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 685, i32 21}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 694, i32 21}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 711, i32 21}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!65 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 77, i32 3}
!69 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @iser_prepare_read_cmd._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @iser_prepare_read_cmd._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 86, i32 2}
!74 = !{ptr @iser_prepare_read_cmd._entry.38, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @iser_prepare_read_cmd._entry_ptr.40, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 129, i32 3}
!78 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @iser_prepare_write_cmd._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @iser_prepare_write_cmd._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 142, i32 3}
!83 = !{ptr @iser_prepare_write_cmd._entry.43, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @iser_prepare_write_cmd._entry_ptr.45, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 148, i32 3}
!87 = !{ptr @iser_prepare_write_cmd._entry.46, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @iser_prepare_write_cmd._entry_ptr.48, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 323, i32 2}
!91 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @iser_post_rx_bufs._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @iser_post_rx_bufs._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 329, i32 3}
!96 = !{ptr @iser_post_rx_bufs._entry.51, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @iser_post_rx_bufs._entry_ptr.53, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 333, i32 2}
!100 = !{ptr @iser_post_rx_bufs._entry.54, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @iser_post_rx_bufs._entry_ptr.56, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 607, i32 3}
!104 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @iser_check_remote_inv._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @iser_check_remote_inv._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.60, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 611, i32 4}
!109 = !{ptr @iser_check_remote_inv._entry.59, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @iser_check_remote_inv._entry_ptr.61, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.63, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 633, i32 4}
!113 = !{ptr @iser_check_remote_inv._entry.62, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @iser_check_remote_inv._entry_ptr.64, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/infiniband/ulp/iser/iser_initiator.c", i32 591, i32 3}
!117 = !{ptr @.str.66, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @iser_inv_desc._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @iser_inv_desc._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{!"branch_weights", i32 2000, i32 1}
!130 = !{!"branch_weights", i32 1, i32 2000}
!131 = !{i8 0, i8 2}
!132 = !{i32 0, i32 33}
