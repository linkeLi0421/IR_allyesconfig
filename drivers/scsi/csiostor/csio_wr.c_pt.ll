; ModuleID = '/llk/IR_all_yes/drivers/scsi/csiostor/csio_wr.c_pt.bc'
source_filename = "../drivers/scsi/csiostor/csio_wr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.csio_hw = type { %struct.csio_sm, %struct.spinlock, %struct.csio_scsim, %struct.csio_wrm, ptr, ptr, i32, i32, [4 x [128 x %struct.csio_scsi_qset]], [4 x %struct.csio_scsi_cpu_info], i32, i32, %struct.csio_mgmtm, %struct.csio_mbm, i32, ptr, %struct.list_head, i32, i32, %struct.work_struct, %struct.list_head, %struct.list_head, [32 x i8], [16 x i8], [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i8, i16, i32, %struct.csio_vpd, i8, i32, i8, i8, i8, i8, i32, [4 x %struct.csio_pport], %struct.csio_hw_params, ptr, ptr, ptr, i32, i32, i32, i8, i8, %struct.csio_fcoe_res_info, ptr, [514 x %struct.csio_msix_entries], ptr, %struct.csio_hw_stats }
%struct.csio_sm = type { %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.csio_scsim = type { ptr, i8, i8, i16, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.csio_scsi_stats }
%struct.csio_scsi_stats = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_wrm = type { i32, ptr, i32, i32, [128 x ptr], i32, %struct.csio_sge }
%struct.csio_sge = type { i32, i32, i32, [16 x i32], [6 x i16], [4 x i8] }
%struct.csio_scsi_qset = type { i32, i32, i32 }
%struct.csio_scsi_cpu_info = type { i16 }
%struct.csio_mgmtm = type { ptr, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.csio_mgmtm_stats }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.csio_mgmtm_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_mbm = type { i32, i32, %struct.timer_list, ptr, %struct.list_head, %struct.list_head, ptr, i32, %struct.csio_mbm_stats }
%struct.csio_mbm_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.csio_vpd = type { i32, [17 x i8], [17 x i8], [17 x i8] }
%struct.csio_pport = type { i16, i16, i8, i8, i16, [6 x i8], i8, i8, i8, i8, %struct.link_config }
%struct.link_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.csio_hw_params = type { i32, i32, %struct.pci_params, i32 }
%struct.pci_params = type { i16, i16, i32, i16, i8 }
%struct.csio_fcoe_res_info = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_msix_entries = type { ptr, [24 x i8] }
%struct.csio_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], i64, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%union.anon.79 = type { ptr }
%struct.csio_q = type { i16, i16, i16, i16, i32, ptr, ptr, i32, ptr, %union.anon.2, i32, i32, i32, %struct.csio_qstats, [44 x i8] }
%union.anon.2 = type { %struct.csio_iq, [500 x i8] }
%struct.csio_iq = type { i16, i16, i16, i32, ptr }
%struct.csio_qstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_dma_buf = type { %struct.list_head, ptr, i32, i32 }
%struct.csio_iq_params = type { i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i64, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i64 }
%struct.csio_eq_params = type { i8, i8, i8, i16, i32, i8, i16, i8, i8, i8, i16, i64 }
%struct.csio_qstatus_page = type { i32, i16, i16 }
%struct.csio_wr_pair = type { ptr, i32, ptr, i32 }
%struct.csio_fl_dma_buf = type { [4 x %struct.csio_dma_buf], i32, i32, i8 }
%struct.csio_iqwr_footer = type { i32, i32, %union.anon.85 }
%union.anon.85 = type { i64 }

@csio_intr_coalesce_time = dso_local global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@csio_wr_alloc_q._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 198, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No more free queues.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csio_wr_alloc_q\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/csiostor/csio_wr.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@csio_wr_alloc_q._entry_ptr = internal global ptr @csio_wr_alloc_q._entry, section ".printk_index", align 4
@csio_wr_alloc_q._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 215, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid Ingress queue WR size:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@csio_wr_alloc_q._entry_ptr.7 = internal global ptr @csio_wr_alloc_q._entry.5, section ".printk_index", align 4
@csio_wr_alloc_q._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 230, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid queue type: 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@csio_wr_alloc_q._entry_ptr.10 = internal global ptr @csio_wr_alloc_q._entry.8, section ".printk_index", align 4
@csio_wr_alloc_q._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 241, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Failed to allocate DMA memory for queue at id: %d size: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@csio_wr_alloc_q._entry_ptr.13 = internal global ptr @csio_wr_alloc_q._entry.11, section ".printk_index", align 4
@csio_wr_alloc_q._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 273, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to allocate FL queue for IQ idx:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@csio_wr_alloc_q._entry_ptr.16 = internal global ptr @csio_wr_alloc_q._entry.14, section ".printk_index", align 4
@csio_wr_alloc_q._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 287, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to allocate FL queue bufs for IQ idx:%d\0A\00", [48 x i8] zeroinitializer }, align 32
@csio_wr_alloc_q._entry_ptr.19 = internal global ptr @csio_wr_alloc_q._entry.17, section ".printk_index", align 4
@csio_wr_iq_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 429, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IQ command out of memory!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csio_wr_iq_create\00", [46 x i8] zeroinitializer }, align 32
@csio_wr_iq_create._entry_ptr = internal global ptr @csio_wr_iq_create._entry, section ".printk_index", align 4
@csio_intr_coalesce_cnt = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@csio_sge_thresh_reg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@csio_wr_iq_create._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 500, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Issue of IQ cmd failed!\0A\00", [39 x i8] zeroinitializer }, align 32
@csio_wr_iq_create._entry_ptr.24 = internal global ptr @csio_wr_iq_create._entry.22, section ".printk_index", align 4
@csio_wr_eq_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 568, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EQ command out of memory!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csio_wr_eq_create\00", [46 x i8] zeroinitializer }, align 32
@csio_wr_eq_create._entry_ptr = internal global ptr @csio_wr_eq_create._entry, section ".printk_index", align 4
@csio_wr_eq_create._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 588, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Issue of EQ OFLD cmd failed!\0A\00", [34 x i8] zeroinitializer }, align 32
@csio_wr_eq_create._entry_ptr.29 = internal global ptr @csio_wr_eq_create._entry.27, section ".printk_index", align 4
@csio_wr_process_iq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1194, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unknown resp type 0x%x received\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csio_wr_process_iq\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@csio_wr_process_iq._entry_ptr = internal global ptr @csio_wr_process_iq._entry, section ".printk_index", align 4
@csio_sge_timer_reg = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@csio_wrm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1651, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Num queues is not set\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csio_wrm_init\00", [18 x i8] zeroinitializer }, align 32
@csio_wrm_init._entry_ptr = internal global ptr @csio_wrm_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@csio_wr_fill_fl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 130, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could only fill %d buffers!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csio_wr_fill_fl\00", [16 x i8] zeroinitializer }, align 32
@csio_wr_fill_fl._entry_ptr = internal global ptr @csio_wr_fill_fl._entry, section ".printk_index", align 4
@csio_wr_iq_create_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 350, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IQ cmd returned 0x%x!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"csio_wr_iq_create_rsp\00", [42 x i8] zeroinitializer }, align 32
@csio_wr_iq_create_rsp._entry_ptr = internal global ptr @csio_wr_iq_create_rsp._entry, section ".printk_index", align 4
@csio_wr_iq_create_rsp._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 368, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Exceeding MAX_IQ(%d) supported! iqid:%d rel_iqid:%d FW iq_start:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@csio_wr_iq_create_rsp._entry_ptr.41 = internal global ptr @csio_wr_iq_create_rsp._entry.39, section ".printk_index", align 4
@csio_wr_eq_cfg_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 530, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EQ OFLD cmd returned 0x%x!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csio_wr_eq_cfg_rsp\00", [45 x i8] zeroinitializer }, align 32
@csio_wr_eq_cfg_rsp._entry_ptr = internal global ptr @csio_wr_eq_cfg_rsp._entry, section ".printk_index", align 4
@switch.table.csio_wr_iq_create = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\00\02\00\00\00\03", [24 x i8] zeroinitializer }, align 32
@switch.table.csio_wr_get_sge = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.49 = private unnamed_addr constant [24 x i8] c"csio_intr_coalesce_time\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 51, i32 5 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 198, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 214, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 230, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 239, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 271, i32 5 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 285, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 429, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [23 x i8] c"csio_intr_coalesce_cnt\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 48, i32 5 }
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c"csio_sge_thresh_reg\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 49, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 500, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 568, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 588, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1193, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant [19 x i8] c"csio_sge_timer_reg\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 52, i32 12 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1651, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 130, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 350, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 365, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [35 x i8] c"../drivers/scsi/csiostor/csio_wr.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 530, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [31 x i8] c"switch.table.csio_wr_iq_create\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [29 x i8] c"switch.table.csio_wr_get_sge\00", align 1
@llvm.compiler.used = appending global [66 x ptr] [ptr @csio_wr_alloc_q._entry, ptr @csio_wr_alloc_q._entry.11, ptr @csio_wr_alloc_q._entry.14, ptr @csio_wr_alloc_q._entry.17, ptr @csio_wr_alloc_q._entry.5, ptr @csio_wr_alloc_q._entry.8, ptr @csio_wr_alloc_q._entry_ptr, ptr @csio_wr_alloc_q._entry_ptr.10, ptr @csio_wr_alloc_q._entry_ptr.13, ptr @csio_wr_alloc_q._entry_ptr.16, ptr @csio_wr_alloc_q._entry_ptr.19, ptr @csio_wr_alloc_q._entry_ptr.7, ptr @csio_wr_eq_cfg_rsp._entry, ptr @csio_wr_eq_cfg_rsp._entry_ptr, ptr @csio_wr_eq_create._entry, ptr @csio_wr_eq_create._entry.27, ptr @csio_wr_eq_create._entry_ptr, ptr @csio_wr_eq_create._entry_ptr.29, ptr @csio_wr_fill_fl._entry, ptr @csio_wr_fill_fl._entry_ptr, ptr @csio_wr_iq_create._entry, ptr @csio_wr_iq_create._entry.22, ptr @csio_wr_iq_create._entry_ptr, ptr @csio_wr_iq_create._entry_ptr.24, ptr @csio_wr_iq_create_rsp._entry, ptr @csio_wr_iq_create_rsp._entry.39, ptr @csio_wr_iq_create_rsp._entry_ptr, ptr @csio_wr_iq_create_rsp._entry_ptr.41, ptr @csio_wr_process_iq._entry, ptr @csio_wr_process_iq._entry_ptr, ptr @csio_wrm_init._entry, ptr @csio_wrm_init._entry_ptr, ptr @csio_intr_coalesce_time, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @csio_intr_coalesce_cnt, ptr @csio_sge_thresh_reg, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @csio_sge_timer_reg, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @switch.table.csio_wr_iq_create, ptr @switch.table.csio_wr_get_sge], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_intr_coalesce_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_wr_alloc_q._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_wr_alloc_q._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_wr_alloc_q._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_wr_alloc_q._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_wr_alloc_q._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_wr_alloc_q._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_wr_iq_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_intr_coalesce_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_sge_thresh_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_wr_iq_create._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_wr_eq_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_wr_eq_create._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_wr_process_iq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_sge_timer_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_wrm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_wr_fill_fl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_wr_iq_create_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_wr_iq_create_rsp._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_wr_eq_cfg_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.csio_wr_iq_create to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.csio_wr_get_sge to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_wr_alloc_q(ptr nocapture noundef %hw, i32 noundef %qsize, i32 noundef %wrsize, i16 noundef zeroext %type, ptr noundef %owner, i32 noundef %nflb, i32 noundef %sreg, ptr noundef %iq_intx_handler) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wrm1 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3
  %free_qidx = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %free_qidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %free_qidx, align 4
  %2 = ptrtoint ptr %wrm1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wrm1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp slt i32 %1, %3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i16 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %type, label %do.end22 [
    i16 1, label %sw.bb
    i16 2, label %sw.bb3
    i16 3, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %qsize, 63
  %and = and i32 %add, -64
  %sge_control.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 1
  %7 = ptrtoint ptr %sge_control.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sge_control.i, align 4
  %and.i = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 64, i32 128
  %add2 = add i32 %cond.i, %and
  br label %sw.epilog26

sw.bb3:                                           ; preds = %if.end
  %9 = add i32 %wrsize, -16
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 28)
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %10, label %do.end7 [
    i32 0, label %sw.bb3.sw.epilog_crit_edge
    i32 1, label %sw.bb3.sw.epilog_crit_edge276
    i32 3, label %sw.bb3.sw.epilog_crit_edge277
    i32 7, label %sw.bb3.sw.epilog_crit_edge278
  ]

sw.bb3.sw.epilog_crit_edge278:                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3.sw.epilog_crit_edge277:                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3.sw.epilog_crit_edge276:                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end7:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %pdev8 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %12 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev8, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.6, i32 noundef %wrsize) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge276, %sw.bb3.sw.epilog_crit_edge277, %sw.bb3.sw.epilog_crit_edge278
  %div = udiv i32 %qsize, %wrsize
  %add10 = add i32 %div, 15
  %and11 = and i32 %add10, -16
  %mul = mul i32 %and11, %wrsize
  br label %sw.epilog26

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %div13 = udiv i32 %qsize, %wrsize
  %add14 = add i32 %div13, 7
  %and15 = and i32 %add14, -8
  %mul16 = mul i32 %and15, %wrsize
  %sge_control.i238 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 1
  %14 = ptrtoint ptr %sge_control.i238 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sge_control.i238, align 4
  %and.i239 = and i32 %15, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i239)
  %tobool.not.i240 = icmp eq i32 %and.i239, 0
  %cond.i241 = select i1 %tobool.not.i240, i32 64, i32 128
  %add18 = add i32 %cond.i241, %mul16
  br label %sw.epilog26

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %type to i32
  %pdev23 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %16 = ptrtoint ptr %pdev23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev23, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.9, i32 noundef %conv) #12
  br label %cleanup

sw.epilog26:                                      ; preds = %sw.bb12, %sw.epilog, %sw.bb
  %qsz.0 = phi i32 [ %add18, %sw.bb12 ], [ %mul, %sw.epilog ], [ %add2, %sw.bb ]
  %q_arr = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %q_arr, align 4
  %arrayidx = getelementptr ptr, ptr %19, i32 %1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %pdev27 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %22 = ptrtoint ptr %pdev27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev27, align 8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %pstart = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 10
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev28, i32 noundef %qsz.0, ptr noundef %pstart, i32 noundef 3264, i32 noundef 0) #9
  %vstart = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 5
  %24 = ptrtoint ptr %vstart to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %vstart, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end34, label %if.end37

do.end34:                                         ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %pdev27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev27, align 8
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.12, i32 noundef %1, i32 noundef %qsize) #12
  br label %cleanup

if.end37:                                         ; preds = %sw.epilog26
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %type, ptr %21, align 128
  %owner39 = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 8
  %28 = ptrtoint ptr %owner39 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %owner, ptr %owner39, align 8
  %inc_idx = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 3
  %29 = ptrtoint ptr %inc_idx to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %inc_idx, align 2
  %cidx = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 2
  %30 = ptrtoint ptr %cidx to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %cidx, align 4
  %pidx = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 1
  %31 = ptrtoint ptr %pidx to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %pidx, align 2
  %size = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 12
  %32 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %qsz.0, ptr %size, align 8
  %wr_sz = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 4
  %33 = ptrtoint ptr %wr_sz to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %wrsize, ptr %wr_sz, align 8
  %34 = ptrtoint ptr %free_qidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %free_qidx, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %free_qidx, align 4
  %36 = zext i16 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %type, label %if.else125 [
    i16 2, label %if.then44
    i16 1, label %if.then111
  ]

if.then44:                                        ; preds = %if.end37
  %genbit = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 9, i32 0, i32 2
  %37 = ptrtoint ptr %genbit to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %genbit, align 4
  %38 = ptrtoint ptr %wr_sz to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wr_sz, align 8
  %sub = sub i32 %qsz.0, %39
  %div47 = udiv i32 %sub, %39
  %credits = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 7
  %40 = ptrtoint ptr %credits to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div47, ptr %credits, align 4
  %41 = ptrtoint ptr %vstart to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vstart, align 4
  %43 = ptrtoint ptr %42 to i32
  %sub51 = add i32 %sub, %43
  %44 = inttoptr i32 %sub51 to ptr
  %vwrap = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 6
  %45 = ptrtoint ptr %vwrap to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %vwrap, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nflb)
  %cmp52.not = icmp eq i32 %nflb, 0
  br i1 %cmp52.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %if.then44
  %mul55 = shl i32 %nflb, 3
  %call56 = tail call i32 @csio_wr_alloc_q(ptr noundef %hw, i32 noundef %mul55, i32 noundef 8, i16 noundef zeroext 3, ptr noundef %owner, i32 noundef 0, i32 noundef %sreg, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call56)
  %cmp57 = icmp eq i32 %call56, -1
  br i1 %cmp57, label %do.end62, label %if.end65

do.end62:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %pdev27 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev27, align 8
  %dev64 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.15, i32 noundef %1) #12
  br label %cleanup

if.end65:                                         ; preds = %if.then54
  %flq_idx67 = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 9, i32 0, i32 3
  %48 = ptrtoint ptr %flq_idx67 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call56, ptr %flq_idx67, align 4
  %49 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %q_arr, align 4
  %arrayidx71 = getelementptr ptr, ptr %50, i32 %call56
  %51 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx71, align 4
  %credits72 = getelementptr inbounds %struct.csio_q, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %credits72 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %credits72, align 4
  %55 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %54, i32 20) #9
  %56 = extractvalue { i32, i1 } %55, 1
  br i1 %56, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !93

kcalloc.exit.thread:                              ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %bufs261 = getelementptr inbounds %struct.csio_q, ptr %52, i32 0, i32 9, i32 0, i32 4
  %57 = ptrtoint ptr %bufs261 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %bufs261, align 4
  br label %do.end81

if.end7.i.i:                                      ; preds = %if.end65
  %58 = extractvalue { i32, i1 } %55, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %58, i32 noundef 3520) #13
  %bufs = getelementptr inbounds %struct.csio_q, ptr %52, i32 0, i32 9, i32 0, i32 4
  %59 = ptrtoint ptr %bufs to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call8.i.i, ptr %bufs, align 4
  %tobool77.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool77.not, label %if.end7.i.i.do.end81_crit_edge, label %if.end84

if.end7.i.i.do.end81_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81

do.end81:                                         ; preds = %if.end7.i.i.do.end81_crit_edge, %kcalloc.exit.thread
  %60 = ptrtoint ptr %pdev27 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev27, align 8
  %dev83 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev83, ptr noundef nonnull @.str.18, i32 noundef %1) #12
  br label %cleanup

if.end84:                                         ; preds = %if.end7.i.i
  %packen = getelementptr inbounds %struct.csio_q, ptr %52, i32 0, i32 9, i32 0, i32 1
  %62 = ptrtoint ptr %packen to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %packen, align 2
  %offset = getelementptr inbounds %struct.csio_q, ptr %52, i32 0, i32 9, i32 0, i32 2
  %63 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %offset, align 4
  %sreg88 = getelementptr inbounds %struct.csio_q, ptr %52, i32 0, i32 9, i32 0, i32 3
  %64 = ptrtoint ptr %sreg88 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sreg, ptr %sreg88, align 4
  %65 = ptrtoint ptr %credits72 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %credits72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not35.i = icmp eq i32 %66, 0
  br i1 %tobool.not35.i, label %if.end84.if.end92_crit_edge, label %while.body.lr.ph.i

if.end84.if.end92_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

while.body.lr.ph.i:                               ; preds = %if.end84
  %vstart.i = getelementptr inbounds %struct.csio_q, ptr %52, i32 0, i32 5
  %67 = ptrtoint ptr %vstart.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vstart.i, align 4
  %arrayidx5.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 3, i32 %sreg
  %and.i242 = and i32 %sreg, 15
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %n.038.i = phi i32 [ %66, %while.body.lr.ph.i ], [ %dec39.i, %if.end.i.while.body.i_crit_edge ]
  %buf.037.i = phi ptr [ %call8.i.i, %while.body.lr.ph.i ], [ %incdec.ptr13.i, %if.end.i.while.body.i_crit_edge ]
  %d.036.i = phi ptr [ %68, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ]
  %69 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx5.i, align 4
  %len.i = getelementptr inbounds %struct.csio_dma_buf, ptr %buf.037.i, i32 0, i32 3
  %71 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %len.i, align 4
  %72 = ptrtoint ptr %pdev27 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev27, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %paddr7.i = getelementptr inbounds %struct.csio_dma_buf, ptr %buf.037.i, i32 0, i32 2
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %70, ptr noundef %paddr7.i, i32 noundef 3264, i32 noundef 0) #9
  %vaddr.i = getelementptr inbounds %struct.csio_dma_buf, ptr %buf.037.i, i32 0, i32 1
  %74 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i.i, ptr %vaddr.i, align 4
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %csio_wr_fill_fl.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %dec39.i = add i32 %n.038.i, -1
  %75 = ptrtoint ptr %paddr7.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %paddr7.i, align 4
  %or.i = or i32 %76, %and.i242
  %conv.i = zext i32 %or.i to i64
  %incdec.ptr.i = getelementptr i64, ptr %d.036.i, i32 1
  %77 = ptrtoint ptr %d.036.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv.i, ptr %d.036.i, align 8
  %incdec.ptr13.i = getelementptr %struct.csio_dma_buf, ptr %buf.037.i, i32 1
  %tobool.not.i243 = icmp eq i32 %dec39.i, 0
  br i1 %tobool.not.i243, label %if.end.i.if.end92_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.if.end92_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

csio_wr_fill_fl.exit:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %pdev27 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdev27, align 8
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.35, i32 noundef %n.038.i) #12
  br label %cleanup

if.end92:                                         ; preds = %if.end.i.if.end92_crit_edge, %if.end84.if.end92_crit_edge
  %80 = ptrtoint ptr %credits72 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %credits72, align 4
  %82 = trunc i32 %81 to i16
  %conv95 = add i16 %82, -8
  %inc_idx96 = getelementptr inbounds %struct.csio_q, ptr %52, i32 0, i32 3
  %83 = ptrtoint ptr %inc_idx96 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv95, ptr %inc_idx96, align 2
  %pidx97 = getelementptr inbounds %struct.csio_q, ptr %52, i32 0, i32 1
  %84 = ptrtoint ptr %pidx97 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv95, ptr %pidx97, align 2
  br label %if.end100

if.else:                                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %flq_idx99 = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 9, i32 0, i32 3
  %85 = ptrtoint ptr %flq_idx99 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %flq_idx99, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.else, %if.end92
  %iq_intx_handler102 = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 9, i32 0, i32 4
  %86 = ptrtoint ptr %iq_intx_handler102 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %iq_intx_handler, ptr %iq_intx_handler102, align 4
  %87 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %q_arr, align 4
  %arrayidx105 = getelementptr ptr, ptr %88, i32 %1
  %89 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx105, align 4
  %un106 = getelementptr inbounds %struct.csio_q, ptr %90, i32 0, i32 9
  %91 = ptrtoint ptr %un106 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 -1, ptr %un106, align 4
  br label %cleanup

if.then111:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %sge_control.i244 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 1
  %92 = ptrtoint ptr %sge_control.i244 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sge_control.i244, align 4
  %and.i245 = and i32 %93, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i245)
  %tobool.not.i246 = icmp eq i32 %and.i245, 0
  %cond.i247.neg = select i1 %tobool.not.i246, i32 -64, i32 -128
  %sub113 = add i32 %cond.i247.neg, %qsz.0
  %div114237 = lshr i32 %sub113, 6
  %credits115 = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 7
  %94 = ptrtoint ptr %credits115 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %div114237, ptr %credits115, align 4
  %95 = ptrtoint ptr %vstart to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %vstart, align 4
  %97 = ptrtoint ptr %96 to i32
  %add117 = add i32 %qsz.0, %97
  %98 = ptrtoint ptr %sge_control.i244 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sge_control.i244, align 4
  %and.i249 = and i32 %99, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i249)
  %tobool.not.i250 = icmp eq i32 %and.i249, 0
  %cond.i251.neg = select i1 %tobool.not.i250, i32 -64, i32 -128
  %sub119 = add i32 %add117, %cond.i251.neg
  %100 = inttoptr i32 %sub119 to ptr
  %vwrap120 = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 6
  %101 = ptrtoint ptr %vwrap120 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %vwrap120, align 16
  %102 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %q_arr, align 4
  %arrayidx123 = getelementptr ptr, ptr %103, i32 %1
  %104 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx123, align 4
  %un124 = getelementptr inbounds %struct.csio_q, ptr %105, i32 0, i32 9
  %106 = ptrtoint ptr %un124 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 -1, ptr %un124, align 4
  br label %cleanup

if.else125:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %sge_control.i252 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 1
  %107 = ptrtoint ptr %sge_control.i252 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sge_control.i252, align 4
  %and.i253 = and i32 %108, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i253)
  %tobool.not.i254 = icmp eq i32 %and.i253, 0
  %cond.i255.neg = select i1 %tobool.not.i254, i32 -64, i32 -128
  %sub127 = add i32 %cond.i255.neg, %qsz.0
  %div128236 = lshr i32 %sub127, 3
  %credits129 = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 7
  %109 = ptrtoint ptr %credits129 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %div128236, ptr %credits129, align 4
  %110 = ptrtoint ptr %vstart to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %vstart, align 4
  %112 = ptrtoint ptr %111 to i32
  %add131 = add i32 %qsz.0, %112
  %113 = ptrtoint ptr %sge_control.i252 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sge_control.i252, align 4
  %and.i257 = and i32 %114, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i257)
  %tobool.not.i258 = icmp eq i32 %and.i257, 0
  %cond.i259.neg = select i1 %tobool.not.i258, i32 -64, i32 -128
  %sub133 = add i32 %add131, %cond.i259.neg
  %115 = inttoptr i32 %sub133 to ptr
  %vwrap134 = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 6
  %116 = ptrtoint ptr %vwrap134 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %115, ptr %vwrap134, align 16
  %117 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %q_arr, align 4
  %arrayidx137 = getelementptr ptr, ptr %118, i32 %1
  %119 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx137, align 4
  %un138 = getelementptr inbounds %struct.csio_q, ptr %120, i32 0, i32 9
  %121 = ptrtoint ptr %un138 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 -1, ptr %un138, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else125, %if.then111, %if.end100, %csio_wr_fill_fl.exit, %do.end81, %do.end62, %do.end34, %do.end22, %do.end7, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end22 ], [ -1, %do.end62 ], [ -1, %do.end81 ], [ -1, %do.end34 ], [ -1, %do.end7 ], [ -1, %csio_wr_fill_fl.exit ], [ %1, %if.then111 ], [ %1, %if.else125 ], [ %1, %if.end100 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_wr_iq_create(ptr noundef %hw, ptr noundef %priv, i32 noundef %iq_idx, i32 noundef %vec, i8 noundef zeroext %portid, i1 noundef zeroext %async, ptr noundef %cbfn) local_unnamed_addr #0 align 64 {
entry:
  %iqp.i = alloca %struct.csio_iq_params, align 8
  %retval1.i = alloca i32, align 4
  %iqp = alloca %struct.csio_iq_params, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %async to i8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %iqp) #9
  %0 = call ptr @memset(ptr %iqp, i32 0, i32 104)
  %conv = zext i8 %portid to i32
  %q_arr = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %q_arr, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 %iq_idx
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %portid1 = getelementptr inbounds %struct.csio_q, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %portid1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %portid1, align 4
  %mb_mempool = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 44
  %6 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mb_mempool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %7, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %intr_mode = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 46
  %10 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %intr_mode, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %11, label %if.end.sw.epilog_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge140
    i32 3, label %sw.bb10
    i32 0, label %sw.bb14
  ]

if.end.sw.bb_crit_edge140:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge140
  %intr_iq_idx = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 17
  %13 = ptrtoint ptr %intr_iq_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %intr_iq_idx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %iq_idx)
  %cmp = icmp ne i32 %14, %iq_idx
  %spec.select = zext i1 %cmp to i8
  %15 = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 10
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select, ptr %15, align 2
  %17 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %q_arr, align 4
  %arrayidx9 = getelementptr ptr, ptr %18, i32 %14
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx9, align 4
  %physiqid = getelementptr inbounds %struct.csio_q, ptr %20, i32 0, i32 9, i32 0, i32 1
  %21 = ptrtoint ptr %physiqid to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %physiqid, align 2
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %iqandst11 = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 10
  %23 = ptrtoint ptr %iqandst11 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %iqandst11, align 2
  %conv12 = trunc i32 %vec to i16
  br label %sw.epilog.sink.split

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mb_mempool, align 4
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %25) #9
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %sw.bb10, %sw.bb
  %conv12.sink = phi i16 [ %conv12, %sw.bb10 ], [ %22, %sw.bb ]
  %iqandstindex13 = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 13
  %26 = ptrtoint ptr %iqandstindex13 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv12.sink, ptr %iqandstindex13, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %pfn = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 34
  %27 = ptrtoint ptr %pfn to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pfn, align 8
  %29 = ptrtoint ptr %iqp to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %iqp, align 8
  %bf.value = shl i8 %28, 3
  %bf.shl = and i8 %bf.value, 56
  %bf.clear = and i8 %bf.load, 71
  %bf.set = or i8 %bf.clear, %bf.shl
  %vfn = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 1
  %30 = ptrtoint ptr %vfn to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %vfn, align 1
  %bf.set18 = or i8 %bf.set, -128
  store i8 %bf.set18, ptr %iqp, align 8
  %viid = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 6
  %31 = ptrtoint ptr %viid to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %viid, align 2
  %type = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 7
  %32 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %type, align 1
  %iqasynch = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 8
  %33 = ptrtoint ptr %iqasynch to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool, ptr %iqasynch, align 4
  %34 = load i32, ptr @csio_intr_coalesce_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool21.not = icmp ne i32 %34, 0
  %.sink139 = zext i1 %tobool21.not to i8
  %35 = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 11
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink139, ptr %35, align 1
  %iqanud = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 12
  %37 = ptrtoint ptr %iqanud to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %iqanud, align 8
  %iqpciech = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 15
  %38 = ptrtoint ptr %iqpciech to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %portid, ptr %iqpciech, align 1
  %39 = load i32, ptr @csio_sge_thresh_reg, align 4
  %conv26 = trunc i32 %39 to i8
  %iqintcntthresh = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 18
  %40 = ptrtoint ptr %iqintcntthresh to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv26, ptr %iqintcntthresh, align 8
  %41 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %q_arr, align 4
  %arrayidx29 = getelementptr ptr, ptr %42, i32 %iq_idx
  %43 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx29, align 4
  %wr_sz = getelementptr inbounds %struct.csio_q, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %wr_sz to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %wr_sz, align 8
  %47 = add i32 %46, -16
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %48)
  %49 = icmp ult i32 %48, 8
  br i1 %49, label %switch.hole_check, label %sw.epilog.sw.epilog37_crit_edge

sw.epilog.sw.epilog37_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog37

switch.hole_check:                                ; preds = %sw.epilog
  %switch.maskindex = trunc i32 %48 to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %50 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %switch.lobit.not = icmp eq i8 %50, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog37_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog37_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog37

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.csio_wr_iq_create, i32 0, i32 %48
  %51 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %51)
  %switch.load = load i8, ptr %switch.gep, align 1
  %iqesize36 = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 21
  %52 = ptrtoint ptr %iqesize36 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %switch.load, ptr %iqesize36, align 1
  br label %sw.epilog37

sw.epilog37:                                      ; preds = %switch.lookup, %switch.hole_check.sw.epilog37_crit_edge, %sw.epilog.sw.epilog37_crit_edge
  %53 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx29, align 4
  %size = getelementptr inbounds %struct.csio_q, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size, align 8
  %wr_sz44 = getelementptr inbounds %struct.csio_q, ptr %54, i32 0, i32 4
  %57 = ptrtoint ptr %wr_sz44 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %wr_sz44, align 8
  %div = udiv i32 %56, %58
  %conv45 = trunc i32 %div to i16
  %iqsize = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 22
  %59 = ptrtoint ptr %iqsize to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv45, ptr %iqsize, align 4
  %60 = load ptr, ptr %arrayidx29, align 4
  %pstart = getelementptr inbounds %struct.csio_q, ptr %60, i32 0, i32 10
  %61 = ptrtoint ptr %pstart to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pstart, align 32
  %conv49 = zext i32 %62 to i64
  %iqaddr = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 23
  %63 = ptrtoint ptr %iqaddr to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv49, ptr %iqaddr, align 8
  %64 = load ptr, ptr %arrayidx29, align 4
  %flq_idx54 = getelementptr inbounds %struct.csio_q, ptr %64, i32 0, i32 9, i32 0, i32 3
  %65 = ptrtoint ptr %flq_idx54 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flq_idx54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %cmp55.not = icmp eq i32 %66, -1
  br i1 %cmp55.not, label %sw.epilog37.if.end81_crit_edge, label %if.then57

sw.epilog37.if.end81_crit_edge:                   ; preds = %sw.epilog37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then57:                                        ; preds = %sw.epilog37
  call void @__sanitizer_cov_trace_pc() #11
  %chip_id = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 31
  %67 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %chip_id, align 2
  %arrayidx61 = getelementptr ptr, ptr %42, i32 %66
  %69 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx61, align 4
  %fl0paden = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 31
  %71 = ptrtoint ptr %fl0paden to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %fl0paden, align 2
  %packen = getelementptr inbounds %struct.csio_q, ptr %70, i32 0, i32 9, i32 0, i32 1
  %72 = ptrtoint ptr %packen to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %packen, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool64.not = icmp ne i16 %73, 0
  %conv65 = zext i1 %tobool64.not to i8
  %fl0packen = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 32
  %74 = ptrtoint ptr %fl0packen to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv65, ptr %fl0packen, align 1
  %fl0fbmin = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 36
  %75 = ptrtoint ptr %fl0fbmin to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 2, ptr %fl0fbmin, align 1
  %.mask = and i16 %68, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %.mask)
  %cmp66 = icmp eq i16 %.mask, 20480
  %conv69 = select i1 %cmp66, i8 3, i8 2
  %fl0fbmax = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 37
  %76 = ptrtoint ptr %fl0fbmax to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv69, ptr %fl0fbmax, align 8
  %77 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx61, align 4
  %size73 = getelementptr inbounds %struct.csio_q, ptr %78, i32 0, i32 12
  %79 = ptrtoint ptr %size73 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size73, align 8
  %div74138 = lshr i32 %80, 6
  %conv75 = trunc i32 %div74138 to i16
  %fl0size = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 40
  %81 = ptrtoint ptr %fl0size to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv75, ptr %fl0size, align 4
  %82 = load ptr, ptr %arrayidx61, align 4
  %pstart79 = getelementptr inbounds %struct.csio_q, ptr %82, i32 0, i32 10
  %83 = ptrtoint ptr %pstart79 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pstart79, align 32
  %conv80 = zext i32 %84 to i64
  %fl0addr = getelementptr inbounds %struct.csio_iq_params, ptr %iqp, i32 0, i32 41
  %85 = ptrtoint ptr %fl0addr to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv80, ptr %fl0addr, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.then57, %sw.epilog37.if.end81_crit_edge
  call void @csio_mb_iq_alloc_write(ptr noundef %hw, ptr noundef nonnull %call, ptr noundef %priv, i32 noundef 10000, ptr noundef nonnull %iqp, ptr noundef %cbfn) #9
  %call82 = call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end91, label %do.end87

do.end87:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %pdev88 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %86 = ptrtoint ptr %pdev88 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev88, align 8
  %dev89 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev89, ptr noundef nonnull @.str.23) #12
  %88 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mb_mempool, align 4
  call void @mempool_free(ptr noundef nonnull %call, ptr noundef %89) #9
  br label %cleanup

if.end91:                                         ; preds = %if.end81
  %cmp92.not = icmp eq ptr %cbfn, null
  br i1 %cmp92.not, label %if.end95, label %if.end91.cleanup_crit_edge

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end95:                                         ; preds = %if.end91
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %iqp.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1.i) #9
  %90 = ptrtoint ptr %retval1.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %retval1.i, align 4, !annotation !94
  %91 = call ptr @memset(ptr %iqp.i, i32 0, i32 104)
  call void @csio_mb_iq_alloc_write_rsp(ptr noundef %hw, ptr noundef nonnull %call, ptr noundef nonnull %retval1.i, ptr noundef nonnull %iqp.i) #9
  %92 = ptrtoint ptr %retval1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %retval1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp.not.i = icmp eq i32 %93, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %94 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.37, i32 noundef %93) #12
  br label %csio_wr_iq_create_rsp.exit

if.end.i:                                         ; preds = %if.end95
  %iqid.i = getelementptr inbounds %struct.csio_iq_params, ptr %iqp.i, i32 0, i32 3
  %96 = ptrtoint ptr %iqid.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %iqid.i, align 4
  %98 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %q_arr, align 4
  %arrayidx.i = getelementptr ptr, ptr %99, i32 %iq_idx
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i, align 4
  %un.i = getelementptr inbounds %struct.csio_q, ptr %101, i32 0, i32 9
  %102 = ptrtoint ptr %un.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %97, ptr %un.i, align 4
  %physiqid.i = getelementptr inbounds %struct.csio_iq_params, ptr %iqp.i, i32 0, i32 2
  %103 = ptrtoint ptr %physiqid.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %physiqid.i, align 2
  %105 = load ptr, ptr %q_arr, align 4
  %arrayidx5.i = getelementptr ptr, ptr %105, i32 %iq_idx
  %106 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx5.i, align 4
  %physiqid7.i = getelementptr inbounds %struct.csio_q, ptr %107, i32 0, i32 9, i32 0, i32 1
  %108 = ptrtoint ptr %physiqid7.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %104, ptr %physiqid7.i, align 2
  %109 = load ptr, ptr %q_arr, align 4
  %arrayidx10.i = getelementptr ptr, ptr %109, i32 %iq_idx
  %110 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx10.i, align 4
  %cidx.i = getelementptr inbounds %struct.csio_q, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %cidx.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 0, ptr %cidx.i, align 4
  %113 = load ptr, ptr %q_arr, align 4
  %arrayidx13.i = getelementptr ptr, ptr %113, i32 %iq_idx
  %114 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx13.i, align 4
  %pidx.i = getelementptr inbounds %struct.csio_q, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %pidx.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %pidx.i, align 2
  %117 = load ptr, ptr %q_arr, align 4
  %arrayidx16.i = getelementptr ptr, ptr %117, i32 %iq_idx
  %118 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx16.i, align 4
  %inc_idx.i = getelementptr inbounds %struct.csio_q, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %inc_idx.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %inc_idx.i, align 2
  %121 = load i16, ptr %iqid.i, align 4
  %conv.i = zext i16 %121 to i32
  %fw_iq_start.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 2
  %122 = ptrtoint ptr %fw_iq_start.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %fw_iq_start.i, align 8
  %sub.i = sub i32 %conv.i, %123
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %sub.i)
  %cmp19.i = icmp ugt i32 %sub.i, 127
  br i1 %cmp19.i, label %do.end24.i, label %if.end32.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev25.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %124 = ptrtoint ptr %pdev25.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pdev25.i, align 8
  %dev26.i = getelementptr inbounds %struct.pci_dev, ptr %125, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26.i, ptr noundef nonnull @.str.40, i32 noundef 128, i32 noundef %sub.i, i32 noundef %conv.i, i32 noundef %123) #12
  br label %csio_wr_iq_create_rsp.exit

if.end32.i:                                       ; preds = %if.end.i
  %126 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %q_arr, align 4
  %arrayidx35.i = getelementptr ptr, ptr %127, i32 %iq_idx
  %128 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx35.i, align 4
  %arrayidx37.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 4, i32 %sub.i
  %130 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %129, ptr %arrayidx37.i, align 4
  %131 = ptrtoint ptr %physiqid.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %physiqid.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  call void @arm_heavy_mb() #9
  %conv.i.i = zext i16 %132 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 16
  %or1.i.i = or i32 %shl.i.i, 49152
  %133 = call i32 @llvm.bswap.i32(i32 %or1.i.i) #9
  %regstart.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %134 = ptrtoint ptr %regstart.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regstart.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %135, i32 110596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %133) #9, !srcloc !96
  %136 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %q_arr, align 4
  %arrayidx41.i = getelementptr ptr, ptr %137, i32 %iq_idx
  %138 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx41.i, align 4
  %flq_idx43.i = getelementptr inbounds %struct.csio_q, ptr %139, i32 0, i32 9, i32 0, i32 3
  %140 = ptrtoint ptr %flq_idx43.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %flq_idx43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %141)
  %cmp44.not.i = icmp eq i32 %141, -1
  br i1 %cmp44.not.i, label %if.end32.i.csio_wr_iq_create_rsp.exit_crit_edge, label %if.then46.i

if.end32.i.csio_wr_iq_create_rsp.exit_crit_edge:  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %csio_wr_iq_create_rsp.exit

if.then46.i:                                      ; preds = %if.end32.i
  %arrayidx49.i = getelementptr ptr, ptr %137, i32 %141
  %142 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx49.i, align 4
  %fl0id.i = getelementptr inbounds %struct.csio_iq_params, ptr %iqp.i, i32 0, i32 4
  %144 = ptrtoint ptr %fl0id.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %fl0id.i, align 2
  %un53.i = getelementptr inbounds %struct.csio_q, ptr %143, i32 0, i32 9
  %146 = ptrtoint ptr %un53.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %un53.i, align 4
  %147 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %q_arr, align 4
  %arrayidx56.i = getelementptr ptr, ptr %148, i32 %141
  %149 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx56.i, align 4
  %cidx57.i = getelementptr inbounds %struct.csio_q, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %cidx57.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %cidx57.i, align 4
  %152 = load ptr, ptr %q_arr, align 4
  %arrayidx60.i = getelementptr ptr, ptr %152, i32 %141
  %153 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx60.i, align 4
  %credits.i = getelementptr inbounds %struct.csio_q, ptr %154, i32 0, i32 7
  %155 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %credits.i, align 4
  %157 = trunc i32 %156 to i16
  %conv62.i = add i16 %157, -8
  %pidx66.i = getelementptr inbounds %struct.csio_q, ptr %154, i32 0, i32 1
  %158 = ptrtoint ptr %pidx66.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv62.i, ptr %pidx66.i, align 2
  %159 = load ptr, ptr %q_arr, align 4
  %arrayidx69.i = getelementptr ptr, ptr %159, i32 %141
  %160 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx69.i, align 4
  %credits70.i = getelementptr inbounds %struct.csio_q, ptr %161, i32 0, i32 7
  %162 = ptrtoint ptr %credits70.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %credits70.i, align 4
  %164 = trunc i32 %163 to i16
  %conv72.i = add i16 %164, -8
  %inc_idx76.i = getelementptr inbounds %struct.csio_q, ptr %161, i32 0, i32 3
  %165 = ptrtoint ptr %inc_idx76.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %conv72.i, ptr %inc_idx76.i, align 2
  %inc_idx.i.i = getelementptr inbounds %struct.csio_q, ptr %143, i32 0, i32 3
  %166 = ptrtoint ptr %inc_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %inc_idx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %167)
  %cmp.i.i = icmp ugt i16 %167, 7
  br i1 %cmp.i.i, label %do.body.i.i, label %if.then46.i.csio_wr_iq_create_rsp.exit_crit_edge

if.then46.i.csio_wr_iq_create_rsp.exit_crit_edge: ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %csio_wr_iq_create_rsp.exit

do.body.i.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  call void @arm_heavy_mb() #9
  %168 = ptrtoint ptr %un53.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %un53.i, align 4
  %conv2.i.i = zext i16 %169 to i32
  %shl.i125.i = shl nuw nsw i32 %conv2.i.i, 15
  %170 = ptrtoint ptr %inc_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %inc_idx.i.i, align 2
  %172 = lshr i16 %171, 3
  %div.i.i = zext i16 %172 to i32
  %or.i.i = or i32 %shl.i125.i, %div.i.i
  %or7.i.i = or i32 %or.i.i, 24576
  %173 = call i32 @llvm.bswap.i32(i32 %or7.i.i) #9
  %174 = ptrtoint ptr %regstart.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regstart.i.i, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %175, i32 110592
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.i, i32 %173) #9, !srcloc !96
  %176 = ptrtoint ptr %inc_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %inc_idx.i.i, align 2
  %178 = and i16 %177, 7
  store i16 %178, ptr %inc_idx.i.i, align 2
  br label %csio_wr_iq_create_rsp.exit

csio_wr_iq_create_rsp.exit:                       ; preds = %do.body.i.i, %if.then46.i.csio_wr_iq_create_rsp.exit_crit_edge, %if.end32.i.csio_wr_iq_create_rsp.exit_crit_edge, %do.end24.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ -22, %do.end24.i ], [ 0, %do.body.i.i ], [ 0, %if.then46.i.csio_wr_iq_create_rsp.exit_crit_edge ], [ 0, %if.end32.i.csio_wr_iq_create_rsp.exit_crit_edge ]
  %179 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mb_mempool, align 4
  call void @mempool_free(ptr noundef nonnull %call, ptr noundef %180) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1.i) #9
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %iqp.i) #9
  br label %cleanup

cleanup:                                          ; preds = %csio_wr_iq_create_rsp.exit, %if.end91.cleanup_crit_edge, %do.end87, %sw.bb14, %do.end
  %retval.0 = phi i32 [ -22, %do.end87 ], [ %retval.0.i, %csio_wr_iq_create_rsp.exit ], [ -22, %sw.bb14 ], [ -12, %do.end ], [ 0, %if.end91.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %iqp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_iq_alloc_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_mb_issue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_wr_eq_create(ptr noundef %hw, ptr noundef %priv, i32 noundef %eq_idx, i32 noundef %iq_idx, i8 noundef zeroext %portid, ptr noundef %cbfn) local_unnamed_addr #0 align 64 {
entry:
  %eqp.i = alloca %struct.csio_eq_params, align 8
  %retval1.i = alloca i32, align 4
  %eqp = alloca %struct.csio_eq_params, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %eqp) #9
  %0 = call ptr @memset(ptr %eqp, i32 0, i32 32)
  %mb_mempool = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 44
  %1 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mb_mempool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %2, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pfn = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 34
  %5 = ptrtoint ptr %pfn to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pfn, align 8
  %7 = ptrtoint ptr %eqp to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %eqp, align 8
  %vfn = getelementptr inbounds %struct.csio_eq_params, ptr %eqp, i32 0, i32 1
  %8 = ptrtoint ptr %vfn to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %vfn, align 1
  %eqstart = getelementptr inbounds %struct.csio_eq_params, ptr %eqp, i32 0, i32 2
  %9 = ptrtoint ptr %eqstart to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %eqstart, align 2
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %eqstart, align 2
  %hostfcmode = getelementptr inbounds %struct.csio_eq_params, ptr %eqp, i32 0, i32 5
  %10 = ptrtoint ptr %hostfcmode to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load2 = load i8, ptr %hostfcmode, align 4
  %q_arr = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %q_arr, align 4
  %arrayidx = getelementptr ptr, ptr %12, i32 %iq_idx
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %un = getelementptr inbounds %struct.csio_q, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %un to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %un, align 4
  %iqid5 = getelementptr inbounds %struct.csio_eq_params, ptr %eqp, i32 0, i32 6
  %17 = ptrtoint ptr %iqid5 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %iqid5, align 2
  %fbmin = getelementptr inbounds %struct.csio_eq_params, ptr %eqp, i32 0, i32 8
  %18 = ptrtoint ptr %fbmin to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load6 = load i8, ptr %fbmin, align 1
  %bf.clear7 = and i8 %bf.load6, 3
  %bf.set11 = or i8 %bf.clear7, 76
  store i8 %bf.set11, ptr %fbmin, align 1
  %cidxfthresh = getelementptr inbounds %struct.csio_eq_params, ptr %eqp, i32 0, i32 9
  %19 = ptrtoint ptr %cidxfthresh to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load12 = load i8, ptr %cidxfthresh, align 2
  %bf.clear13 = and i8 %bf.load12, 31
  store i8 %bf.clear13, ptr %cidxfthresh, align 2
  %bf.value = shl i8 %portid, 2
  %bf.shl = and i8 %bf.value, 28
  %bf.set4 = and i8 %bf.load2, 35
  %bf.clear16 = or i8 %bf.set4, %bf.shl
  %bf.set17 = or i8 %bf.clear16, -128
  store i8 %bf.set17, ptr %hostfcmode, align 4
  %arrayidx20 = getelementptr ptr, ptr %12, i32 %eq_idx
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx20, align 4
  %size = getelementptr inbounds %struct.csio_q, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 8
  %div57 = lshr i32 %23, 6
  %conv = trunc i32 %div57 to i16
  %eqsize = getelementptr inbounds %struct.csio_eq_params, ptr %eqp, i32 0, i32 10
  %24 = ptrtoint ptr %eqsize to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %eqsize, align 4
  %25 = load ptr, ptr %arrayidx20, align 4
  %pstart = getelementptr inbounds %struct.csio_q, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %pstart to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pstart, align 32
  %conv24 = zext i32 %27 to i64
  %eqaddr = getelementptr inbounds %struct.csio_eq_params, ptr %eqp, i32 0, i32 11
  %28 = ptrtoint ptr %eqaddr to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv24, ptr %eqaddr, align 8
  call void @csio_mb_eq_ofld_alloc_write(ptr noundef %hw, ptr noundef nonnull %call, ptr noundef %priv, i32 noundef 10000, ptr noundef nonnull %eqp, ptr noundef %cbfn) #9
  %call25 = call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end34, label %do.end30

do.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pdev31 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %29 = ptrtoint ptr %pdev31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev31, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.28) #12
  %31 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mb_mempool, align 4
  call void @mempool_free(ptr noundef nonnull %call, ptr noundef %32) #9
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %cmp.not = icmp eq ptr %cbfn, null
  br i1 %cmp.not, label %if.end37, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %eqp.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1.i) #9
  %33 = ptrtoint ptr %retval1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %retval1.i, align 4, !annotation !94
  %34 = call ptr @memset(ptr %eqp.i, i32 0, i32 32)
  call void @csio_mb_eq_ofld_alloc_write_rsp(ptr noundef %hw, ptr noundef nonnull %call, ptr noundef nonnull %retval1.i, ptr noundef nonnull %eqp.i) #9
  %35 = ptrtoint ptr %retval1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %retval1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.not.i = icmp eq i32 %36, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %37 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.42, i32 noundef %36) #12
  br label %csio_wr_eq_cfg_rsp.exit

if.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %eqid.i = getelementptr inbounds %struct.csio_eq_params, ptr %eqp.i, i32 0, i32 4
  %39 = ptrtoint ptr %eqid.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %eqid.i, align 8
  %conv.i = trunc i32 %40 to i16
  %41 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %q_arr, align 4
  %arrayidx.i = getelementptr ptr, ptr %42, i32 %eq_idx
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %un.i = getelementptr inbounds %struct.csio_q, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %un.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i, ptr %un.i, align 4
  %physeqid.i = getelementptr inbounds %struct.csio_eq_params, ptr %eqp.i, i32 0, i32 3
  %46 = ptrtoint ptr %physeqid.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %physeqid.i, align 4
  %48 = load ptr, ptr %q_arr, align 4
  %arrayidx5.i = getelementptr ptr, ptr %48, i32 %eq_idx
  %49 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx5.i, align 4
  %physeqid7.i = getelementptr inbounds %struct.csio_q, ptr %50, i32 0, i32 9, i32 0, i32 1
  %51 = ptrtoint ptr %physeqid7.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %47, ptr %physeqid7.i, align 2
  %52 = load ptr, ptr %q_arr, align 4
  %arrayidx10.i = getelementptr ptr, ptr %52, i32 %eq_idx
  %53 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx10.i, align 4
  %cidx.i = getelementptr inbounds %struct.csio_q, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %cidx.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %cidx.i, align 4
  %56 = load ptr, ptr %q_arr, align 4
  %arrayidx13.i = getelementptr ptr, ptr %56, i32 %eq_idx
  %57 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx13.i, align 4
  %pidx.i = getelementptr inbounds %struct.csio_q, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %pidx.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %pidx.i, align 2
  %60 = load ptr, ptr %q_arr, align 4
  %arrayidx16.i = getelementptr ptr, ptr %60, i32 %eq_idx
  %61 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx16.i, align 4
  %inc_idx.i = getelementptr inbounds %struct.csio_q, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %inc_idx.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %inc_idx.i, align 2
  br label %csio_wr_eq_cfg_rsp.exit

csio_wr_eq_cfg_rsp.exit:                          ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ 0, %if.end.i ]
  %64 = ptrtoint ptr %mb_mempool to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mb_mempool, align 4
  call void @mempool_free(ptr noundef nonnull %call, ptr noundef %65) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %eqp.i) #9
  br label %cleanup

cleanup:                                          ; preds = %csio_wr_eq_cfg_rsp.exit, %if.end34.cleanup_crit_edge, %do.end30, %do.end
  %retval.0 = phi i32 [ -22, %do.end30 ], [ %retval.0.i, %csio_wr_eq_cfg_rsp.exit ], [ -12, %do.end ], [ 0, %if.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %eqp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_eq_ofld_alloc_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_wr_destroy_queues(ptr noundef %hw, i1 noundef zeroext %cmd) local_unnamed_addr #0 align 64 {
entry:
  %iqp.i = alloca %struct.csio_iq_params, align 8
  %eqp.i = alloca %struct.csio_eq_params, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %free_qidx = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %free_qidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %free_qidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp165 = icmp sgt i32 %1, 0
  br i1 %cmp165, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %q_arr = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 1
  %mb_mempool.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 44
  %pfn.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 34
  %vfn.i = getelementptr inbounds %struct.csio_eq_params, ptr %eqp.i, i32 0, i32 1
  %eqid2.i = getelementptr inbounds %struct.csio_eq_params, ptr %eqp.i, i32 0, i32 4
  %vfn.i143 = getelementptr inbounds %struct.csio_iq_params, ptr %iqp.i, i32 0, i32 1
  %iqid1.i = getelementptr inbounds %struct.csio_iq_params, ptr %iqp.i, i32 0, i32 3
  %type.i = getelementptr inbounds %struct.csio_iq_params, ptr %iqp.i, i32 0, i32 7
  %2 = getelementptr inbounds %struct.csio_iq_params, ptr %iqp.i, i32 0, i32 4
  %fl1id.i = getelementptr inbounds %struct.csio_iq_params, ptr %iqp.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0167 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %cmd.addr.0.off0166 = phi i1 [ %cmd, %for.body.lr.ph ], [ %cmd.addr.4.off0, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %q_arr, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 %i.0167
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 128
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %8, label %for.body.for.inc_crit_edge [
    i16 1, label %sw.bb
    i16 2, label %for.body.sw.bb26_crit_edge
  ]

for.body.sw.bb26_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb26

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %un = getelementptr inbounds %struct.csio_q, ptr %6, i32 0, i32 9
  %10 = ptrtoint ptr %un to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %un, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp6.not = icmp eq i16 %11, -1
  br i1 %cmp6.not, label %sw.bb.sw.bb26_crit_edge, label %if.then

sw.bb.sw.bb26_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb26

if.then:                                          ; preds = %sw.bb
  %vwrap.i = getelementptr inbounds %struct.csio_q, ptr %6, i32 0, i32 6
  %12 = ptrtoint ptr %vwrap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vwrap.i, align 16
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 0, ptr %13, align 4
  br i1 %cmd.addr.0.off0166, label %if.end, label %if.then8

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %q_arr, align 4
  %arrayidx11 = getelementptr ptr, ptr %16, i32 %i.0167
  br label %for.inc.sink.split

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %eqp.i) #9
  %17 = call ptr @memset(ptr %eqp.i, i32 0, i32 32)
  %18 = ptrtoint ptr %mb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mb_mempool.i, align 4
  %call.i = call noalias ptr @mempool_alloc(ptr noundef %19, i32 noundef 2592) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %csio_wr_eq_destroy.exit.thread, label %if.end.i

csio_wr_eq_destroy.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %eqp.i) #9
  br label %if.end19

if.end.i:                                         ; preds = %if.end
  %20 = ptrtoint ptr %pfn.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pfn.i, align 8
  %22 = ptrtoint ptr %eqp.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %eqp.i, align 8
  %23 = ptrtoint ptr %vfn.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %vfn.i, align 1
  %24 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %q_arr, align 4
  %arrayidx.i136 = getelementptr ptr, ptr %25, i32 %i.0167
  %26 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i136, align 4
  %un.i = getelementptr inbounds %struct.csio_q, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %un.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %un.i, align 4
  %conv.i = zext i16 %29 to i32
  %30 = ptrtoint ptr %eqid2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv.i, ptr %eqid2.i, align 8
  call void @csio_mb_eq_ofld_free(ptr noundef %hw, ptr noundef nonnull %call.i, ptr noundef null, i32 noundef 10000, ptr noundef nonnull %eqp.i, ptr noundef null) #9
  %call3.i = call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.not.i, label %if.end11.i, label %csio_wr_eq_destroy.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 @csio_mb_fw_retval(ptr noundef nonnull %call.i) #9
  %31 = ptrtoint ptr %mb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mb_mempool.i, align 4
  call void @mempool_free(ptr noundef nonnull %call.i, ptr noundef %32) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %eqp.i) #9
  br label %if.end19

csio_wr_eq_destroy.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %mb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mb_mempool.i, align 4
  call void @mempool_free(ptr noundef nonnull %call.i, ptr noundef %34) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %eqp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call3.i)
  %switch.selectcmp.case1 = icmp ne i32 %call3.i, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call3.i)
  %switch.selectcmp.case2 = icmp ne i32 %call3.i, -110
  %not.switch.selectcmp = and i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  br label %if.end19

if.end19:                                         ; preds = %csio_wr_eq_destroy.exit, %if.end11.i, %csio_wr_eq_destroy.exit.thread
  %cmd.addr.1.off0 = phi i1 [ true, %csio_wr_eq_destroy.exit.thread ], [ true, %if.end11.i ], [ %not.switch.selectcmp, %csio_wr_eq_destroy.exit ]
  %35 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %q_arr, align 4
  %arrayidx22 = getelementptr ptr, ptr %36, i32 %i.0167
  %37 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx22, align 4
  %un23 = getelementptr inbounds %struct.csio_q, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %un23 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 -1, ptr %un23, align 4
  br label %sw.bb26

sw.bb26:                                          ; preds = %if.end19, %sw.bb.sw.bb26_crit_edge, %for.body.sw.bb26_crit_edge
  %cmd.addr.2.off0 = phi i1 [ %cmd.addr.0.off0166, %for.body.sw.bb26_crit_edge ], [ %cmd.addr.1.off0, %if.end19 ], [ %cmd.addr.0.off0166, %sw.bb.sw.bb26_crit_edge ]
  %40 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %q_arr, align 4
  %arrayidx29 = getelementptr ptr, ptr %41, i32 %i.0167
  %42 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx29, align 4
  %un30 = getelementptr inbounds %struct.csio_q, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %un30 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %un30, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %45)
  %cmp32.not = icmp eq i16 %45, -1
  br i1 %cmp32.not, label %sw.bb26.for.inc_crit_edge, label %if.then34

sw.bb26.for.inc_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then34:                                        ; preds = %sw.bb26
  %genbit.i = getelementptr inbounds %struct.csio_q, ptr %43, i32 0, i32 9, i32 0, i32 2
  %46 = ptrtoint ptr %genbit.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %genbit.i, align 4
  %credits.i = getelementptr inbounds %struct.csio_q, ptr %43, i32 0, i32 7
  %47 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %credits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp10.not.i = icmp eq i32 %48, 0
  br i1 %cmp10.not.i, label %if.then34.csio_wr_cleanup_iq_ftr.exit_crit_edge, label %for.body.lr.ph.i

if.then34.csio_wr_cleanup_iq_ftr.exit_crit_edge:  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %csio_wr_cleanup_iq_ftr.exit

for.body.lr.ph.i:                                 ; preds = %if.then34
  %vstart.i = getelementptr inbounds %struct.csio_q, ptr %43, i32 0, i32 5
  %wr_sz.i = getelementptr inbounds %struct.csio_q, ptr %43, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %49 = ptrtoint ptr %vstart.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vstart.i, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = ptrtoint ptr %wr_sz.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wr_sz.i, align 8
  %mul.i = mul i32 %53, %i.011.i
  %add.i = add i32 %53, -16
  %sub.i = add i32 %add.i, %51
  %add3.i = add i32 %sub.i, %mul.i
  %54 = inttoptr i32 %add3.i to ptr
  %55 = call ptr @memset(ptr %54, i32 0, i32 16)
  %inc.i = add nuw i32 %i.011.i, 1
  %56 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %credits.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %57
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.csio_wr_cleanup_iq_ftr.exit_crit_edge

for.body.i.csio_wr_cleanup_iq_ftr.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %csio_wr_cleanup_iq_ftr.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

csio_wr_cleanup_iq_ftr.exit:                      ; preds = %for.body.i.csio_wr_cleanup_iq_ftr.exit_crit_edge, %if.then34.csio_wr_cleanup_iq_ftr.exit_crit_edge
  br i1 %cmd.addr.2.off0, label %if.end55, label %if.then36

if.then36:                                        ; preds = %csio_wr_cleanup_iq_ftr.exit
  %58 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %q_arr, align 4
  %arrayidx39 = getelementptr ptr, ptr %59, i32 %i.0167
  %60 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx39, align 4
  %un40 = getelementptr inbounds %struct.csio_q, ptr %61, i32 0, i32 9
  %62 = ptrtoint ptr %un40 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -1, ptr %un40, align 4
  %63 = load ptr, ptr %q_arr, align 4
  %arrayidx44 = getelementptr ptr, ptr %63, i32 %i.0167
  %64 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx44, align 4
  %flq_idx46 = getelementptr inbounds %struct.csio_q, ptr %65, i32 0, i32 9, i32 0, i32 3
  %66 = ptrtoint ptr %flq_idx46 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flq_idx46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp47.not = icmp eq i32 %67, -1
  br i1 %cmp47.not, label %if.then36.for.inc_crit_edge, label %if.then49

if.then36.for.inc_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then49:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx52 = getelementptr ptr, ptr %63, i32 %67
  br label %for.inc.sink.split

if.end55:                                         ; preds = %csio_wr_cleanup_iq_ftr.exit
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %iqp.i) #9
  %68 = call ptr @memset(ptr %iqp.i, i32 0, i32 104)
  %69 = ptrtoint ptr %mb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mb_mempool.i, align 4
  %call.i140 = call noalias ptr @mempool_alloc(ptr noundef %70, i32 noundef 2592) #9
  %tobool.not.i141 = icmp eq ptr %call.i140, null
  br i1 %tobool.not.i141, label %csio_wr_iq_destroy.exit.thread, label %if.end.i148

csio_wr_iq_destroy.exit.thread:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %iqp.i) #9
  br label %if.end63

if.end.i148:                                      ; preds = %if.end55
  %71 = ptrtoint ptr %pfn.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %pfn.i, align 8
  %73 = ptrtoint ptr %iqp.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load.i = load i8, ptr %iqp.i, align 8
  %bf.value.i = shl i8 %72, 3
  %bf.shl.i = and i8 %bf.value.i, 56
  %bf.clear.i = and i8 %bf.load.i, -57
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %iqp.i, align 8
  %74 = ptrtoint ptr %vfn.i143 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %vfn.i143, align 1
  %75 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %q_arr, align 4
  %arrayidx.i145 = getelementptr ptr, ptr %76, i32 %i.0167
  %77 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i145, align 4
  %un.i146 = getelementptr inbounds %struct.csio_q, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %un.i146 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %un.i146, align 4
  %81 = ptrtoint ptr %iqid1.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %iqid1.i, align 4
  %82 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %type.i, align 1
  %83 = load ptr, ptr %arrayidx.i145, align 4
  %flq_idx6.i = getelementptr inbounds %struct.csio_q, ptr %83, i32 0, i32 9, i32 0, i32 3
  %84 = ptrtoint ptr %flq_idx6.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flq_idx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %cmp.not.i147 = icmp eq i32 %85, -1
  br i1 %cmp.not.i147, label %if.end.i148.if.end13.i_crit_edge, label %if.then7.i

if.end.i148.if.end13.i_crit_edge:                 ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then7.i:                                       ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx10.i = getelementptr ptr, ptr %76, i32 %85
  %86 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx10.i, align 4
  %un11.i = getelementptr inbounds %struct.csio_q, ptr %87, i32 0, i32 9
  %88 = ptrtoint ptr %un11.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %un11.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then7.i, %if.end.i148.if.end13.i_crit_edge
  %.sink.i = phi i16 [ %89, %if.then7.i ], [ -1, %if.end.i148.if.end13.i_crit_edge ]
  %90 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %.sink.i, ptr %2, align 2
  %91 = ptrtoint ptr %fl1id.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 -1, ptr %fl1id.i, align 8
  call void @csio_mb_iq_free(ptr noundef %hw, ptr noundef nonnull %call.i140, ptr noundef null, i32 noundef 10000, ptr noundef nonnull %iqp.i, ptr noundef null) #9
  %call14.i = call i32 @csio_mb_issue(ptr noundef %hw, ptr noundef nonnull %call.i140) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.not.i = icmp eq i32 %call14.i, 0
  br i1 %cmp15.not.i, label %if.end21.i, label %csio_wr_iq_destroy.exit

if.end21.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i149 = call i32 @csio_mb_fw_retval(ptr noundef nonnull %call.i140) #9
  %92 = ptrtoint ptr %mb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mb_mempool.i, align 4
  call void @mempool_free(ptr noundef nonnull %call.i140, ptr noundef %93) #9
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %iqp.i) #9
  br label %if.end63

csio_wr_iq_destroy.exit:                          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %mb_mempool.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mb_mempool.i, align 4
  call void @mempool_free(ptr noundef nonnull %call.i140, ptr noundef %95) #9
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %iqp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call14.i)
  %switch.selectcmp.case1162 = icmp ne i32 %call14.i, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call14.i)
  %switch.selectcmp.case2163 = icmp ne i32 %call14.i, -110
  %not.switch.selectcmp164 = and i1 %switch.selectcmp.case1162, %switch.selectcmp.case2163
  br label %if.end63

if.end63:                                         ; preds = %csio_wr_iq_destroy.exit, %if.end21.i, %csio_wr_iq_destroy.exit.thread
  %cmd.addr.3.off0 = phi i1 [ true, %csio_wr_iq_destroy.exit.thread ], [ true, %if.end21.i ], [ %not.switch.selectcmp164, %csio_wr_iq_destroy.exit ]
  %96 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %q_arr, align 4
  %arrayidx66 = getelementptr ptr, ptr %97, i32 %i.0167
  %98 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx66, align 4
  %un67 = getelementptr inbounds %struct.csio_q, ptr %99, i32 0, i32 9
  %100 = ptrtoint ptr %un67 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 -1, ptr %un67, align 4
  %101 = load ptr, ptr %q_arr, align 4
  %arrayidx71 = getelementptr ptr, ptr %101, i32 %i.0167
  %102 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx71, align 4
  %flq_idx73 = getelementptr inbounds %struct.csio_q, ptr %103, i32 0, i32 9, i32 0, i32 3
  %104 = ptrtoint ptr %flq_idx73 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flq_idx73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %105)
  %cmp74.not = icmp eq i32 %105, -1
  br i1 %cmp74.not, label %if.end63.for.inc_crit_edge, label %if.then76

if.end63.for.inc_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then76:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx79 = getelementptr ptr, ptr %101, i32 %105
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then76, %if.then49, %if.then8
  %arrayidx79.sink = phi ptr [ %arrayidx79, %if.then76 ], [ %arrayidx52, %if.then49 ], [ %arrayidx11, %if.then8 ]
  %cmd.addr.4.off0.ph = phi i1 [ %cmd.addr.3.off0, %if.then76 ], [ false, %if.then49 ], [ false, %if.then8 ]
  %106 = ptrtoint ptr %arrayidx79.sink to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx79.sink, align 4
  %un80 = getelementptr inbounds %struct.csio_q, ptr %107, i32 0, i32 9
  %108 = ptrtoint ptr %un80 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 -1, ptr %un80, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end63.for.inc_crit_edge, %if.then36.for.inc_crit_edge, %sw.bb26.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmd.addr.4.off0 = phi i1 [ %cmd.addr.0.off0166, %for.body.for.inc_crit_edge ], [ %cmd.addr.3.off0, %if.end63.for.inc_crit_edge ], [ false, %if.then36.for.inc_crit_edge ], [ %cmd.addr.2.off0, %sw.bb26.for.inc_crit_edge ], [ %cmd.addr.4.off0.ph, %for.inc.sink.split ]
  %inc = add nuw nsw i32 %i.0167, 1
  %109 = ptrtoint ptr %free_qidx to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %free_qidx, align 4
  %cmp = icmp slt i32 %inc, %110
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %flags = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %111 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flags, align 4
  %and = and i32 %112, -17
  store i32 %and, ptr %flags, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @csio_wr_get(ptr nocapture noundef readonly %hw, i32 noundef %qidx, i32 noundef %size, ptr nocapture noundef writeonly %wrp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %q_arr = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_arr, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %qidx
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %vstart = getelementptr inbounds %struct.csio_q, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vstart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vstart, align 4
  %6 = ptrtoint ptr %5 to i32
  %pidx = getelementptr inbounds %struct.csio_q, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pidx, align 2
  %conv = zext i16 %8 to i32
  %mul = shl nuw nsw i32 %conv, 6
  %add = add i32 %mul, %6
  %9 = inttoptr i32 %add to ptr
  %vwrap = getelementptr inbounds %struct.csio_q, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %vwrap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vwrap, align 16
  %cidx2 = getelementptr inbounds %struct.csio_qstatus_page, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %cidx2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cidx2, align 4
  %cidx3 = getelementptr inbounds %struct.csio_q, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %cidx3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %cidx3, align 4
  %add6 = add i32 %size, 63
  %and = and i32 %add6, -64
  %div140 = lshr i32 %add6, 6
  %conv8 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %13)
  %cmp = icmp ugt i16 %8, %13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %credits10 = getelementptr inbounds %struct.csio_q, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %credits10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %credits10, align 4
  %sub.neg = xor i32 %conv, -1
  %sub13 = add nsw i32 %sub.neg, %conv8
  %sub14 = add i32 %sub13, %16
  br label %if.end26

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %8)
  %cmp17 = icmp ugt i16 %13, %8
  br i1 %cmp17, label %if.then19, label %if.else24

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %17 = xor i32 %conv, -1
  %sub23 = add nsw i32 %conv8, %17
  br label %if.end26

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %credits25 = getelementptr inbounds %struct.csio_q, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %credits25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %credits25, align 4
  %n_qempty = getelementptr inbounds %struct.csio_q, ptr %3, i32 0, i32 13, i32 5
  %20 = ptrtoint ptr %n_qempty to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_qempty, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %n_qempty, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then19, %if.then
  %credits.0 = phi i32 [ %sub14, %if.then ], [ %sub23, %if.then19 ], [ %19, %if.else24 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %credits.0)
  %tobool.not = icmp eq i32 %credits.0, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %div140, i32 %credits.0)
  %cmp27 = icmp sgt i32 %div140, %credits.0
  %or.cond = or i1 %tobool.not, %cmp27
  br i1 %or.cond, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %n_qfull = getelementptr inbounds %struct.csio_q, ptr %3, i32 0, i32 13, i32 6
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  %add33 = add i32 %add, %and
  %22 = ptrtoint ptr %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add33, i32 %22)
  %cmp35 = icmp ugt i32 %add33, %22
  %23 = ptrtoint ptr %wrp to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %9, ptr %wrp, align 4
  br i1 %cmp35, label %if.then39, label %if.else55, !prof !93

if.then39:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %vwrap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vwrap, align 16
  %26 = ptrtoint ptr %25 to i32
  %sub41 = sub i32 %26, %add
  %size1 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp, i32 0, i32 1
  %27 = ptrtoint ptr %size1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub41, ptr %size1, align 4
  %28 = ptrtoint ptr %vstart to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vstart, align 4
  %addr2 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp, i32 0, i32 2
  %30 = ptrtoint ptr %addr2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %addr2, align 4
  %sub44 = sub i32 %and, %sub41
  %size2 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp, i32 0, i32 3
  %31 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub44, ptr %size2, align 4
  %add46 = add i32 %sub44, 63
  %div48141 = lshr i32 %add46, 6
  %conv49 = trunc i32 %div48141 to i16
  %32 = ptrtoint ptr %pidx to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv49, ptr %pidx, align 2
  %n_qwrap = getelementptr inbounds %struct.csio_q, ptr %3, i32 0, i32 13, i32 2
  %33 = ptrtoint ptr %n_qwrap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_qwrap, align 4
  %inc52 = add i32 %34, 1
  store i32 %inc52, ptr %n_qwrap, align 4
  %n_eq_wr_split = getelementptr inbounds %struct.csio_q, ptr %3, i32 0, i32 13, i32 3
  %35 = ptrtoint ptr %n_eq_wr_split to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n_eq_wr_split, align 4
  %inc54 = add i32 %36, 1
  store i32 %inc54, ptr %n_eq_wr_split, align 4
  %.pre = trunc i32 %div140 to i16
  br label %if.end83

if.else55:                                        ; preds = %if.end32
  %size157 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp, i32 0, i32 1
  %37 = ptrtoint ptr %size157 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and, ptr %size157, align 4
  %addr258 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp, i32 0, i32 2
  %38 = ptrtoint ptr %addr258 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %addr258, align 4
  %size259 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp, i32 0, i32 3
  %39 = ptrtoint ptr %size259 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %size259, align 4
  %40 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %pidx, align 2
  %42 = trunc i32 %div140 to i16
  %conv65 = add i16 %41, %42
  store i16 %conv65, ptr %pidx, align 2
  %conv67 = zext i16 %conv65 to i32
  %credits68 = getelementptr inbounds %struct.csio_q, ptr %3, i32 0, i32 7
  %43 = ptrtoint ptr %credits68 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %credits68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv67)
  %cmp69 = icmp eq i32 %44, %conv67
  br i1 %cmp69, label %if.then77, label %if.else55.if.end83_crit_edge, !prof !93

if.else55.if.end83_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then77:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %pidx to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %pidx, align 2
  %n_qwrap80 = getelementptr inbounds %struct.csio_q, ptr %3, i32 0, i32 13, i32 2
  %46 = ptrtoint ptr %n_qwrap80 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n_qwrap80, align 4
  %inc81 = add i32 %47, 1
  store i32 %inc81, ptr %n_qwrap80, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then77, %if.else55.if.end83_crit_edge, %if.then39
  %conv84.pre-phi = phi i16 [ %42, %if.else55.if.end83_crit_edge ], [ %42, %if.then77 ], [ %.pre, %if.then39 ]
  %inc_idx = getelementptr inbounds %struct.csio_q, ptr %3, i32 0, i32 3
  %48 = ptrtoint ptr %inc_idx to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv84.pre-phi, ptr %inc_idx, align 2
  %stats85 = getelementptr inbounds %struct.csio_q, ptr %3, i32 0, i32 13
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.then29
  %stats85.sink142 = phi ptr [ %stats85, %if.end83 ], [ %n_qfull, %if.then29 ]
  %retval.0 = phi i32 [ 0, %if.end83 ], [ -16, %if.then29 ]
  %49 = ptrtoint ptr %stats85.sink142 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %stats85.sink142, align 4
  %inc86 = add i32 %50, 1
  store i32 %inc86, ptr %stats85.sink142, align 4
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @csio_wr_copy_to_wrp(ptr nocapture noundef readonly %data_buf, ptr nocapture noundef readonly %wrp, i32 noundef %wr_off, i32 noundef %data_len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %size1 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp, i32 0, i32 1
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size1, align 4
  %sub = sub i32 %1, %wr_off
  %2 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %data_len)
  %3 = ptrtoint ptr %wrp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wrp, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %wr_off
  %5 = call ptr @memcpy(ptr %add.ptr, ptr %data_buf, i32 %2)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %data_len)
  %tobool.not.not = icmp ult i32 %sub, %data_len
  br i1 %tobool.not.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub3 = sub i32 %data_len, %2
  %addr2 = getelementptr inbounds %struct.csio_wr_pair, ptr %wrp, i32 0, i32 2
  %6 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr2, align 4
  %add.ptr4 = getelementptr i8, ptr %data_buf, i32 %2
  %8 = call ptr @memcpy(ptr %7, ptr %add.ptr4, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_wr_issue(ptr nocapture noundef readonly %hw, i32 noundef %qidx, i1 noundef zeroext %prio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %q_arr = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_arr, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %qidx
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  tail call void @arm_heavy_mb() #9
  %shl = select i1 %prio, i32 16384, i32 0
  %physeqid = getelementptr inbounds %struct.csio_q, ptr %3, i32 0, i32 9, i32 0, i32 1
  %4 = ptrtoint ptr %physeqid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %physeqid, align 2
  %conv5 = zext i16 %5 to i32
  %shl6 = shl nuw nsw i32 %conv5, 15
  %or = or i32 %shl6, %shl
  %inc_idx = getelementptr inbounds %struct.csio_q, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %inc_idx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inc_idx, align 2
  %8 = or i16 %7, 8192
  %or9 = zext i16 %8 to i32
  %or10 = or i32 %or, %or9
  %9 = tail call i32 @llvm.bswap.i32(i32 %or10)
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %10 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 110592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #9, !srcloc !96
  %12 = ptrtoint ptr %inc_idx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %inc_idx, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_wr_process_iq(ptr noundef %hw, ptr nocapture noundef %q, ptr nocapture noundef readonly %iq_handler, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %flb.i = alloca %struct.csio_fl_dma_buf, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vstart = getelementptr inbounds %struct.csio_q, ptr %q, i32 0, i32 5
  %0 = ptrtoint ptr %vstart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vstart, align 4
  %2 = ptrtoint ptr %1 to i32
  %cidx = getelementptr inbounds %struct.csio_q, ptr %q, i32 0, i32 2
  %3 = ptrtoint ptr %cidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cidx, align 4
  %conv = zext i16 %4 to i32
  %wr_sz = getelementptr inbounds %struct.csio_q, ptr %q, i32 0, i32 4
  %5 = ptrtoint ptr %wr_sz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wr_sz, align 8
  %mul = mul i32 %6, %conv
  %add = add i32 %mul, %2
  %7 = inttoptr i32 %add to ptr
  %flq_idx = getelementptr inbounds %struct.csio_q, ptr %q, i32 0, i32 9, i32 0, i32 3
  %8 = ptrtoint ptr %flq_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flq_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.not = icmp eq i32 %9, -1
  br i1 %cmp.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %q_arr = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %q_arr, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %9
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %13, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %sub = add i32 %6, -16
  %add6 = add i32 %sub, %add
  %genbit.i = getelementptr inbounds %struct.csio_q, ptr %q, i32 0, i32 9, i32 0, i32 2
  %ftr.0165 = inttoptr i32 %add6 to ptr
  %14 = ptrtoint ptr %genbit.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %genbit.i, align 4
  %u.i166 = getelementptr inbounds %struct.csio_iqwr_footer, ptr %ftr.0165, i32 0, i32 2
  %16 = ptrtoint ptr %u.i166 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %u.i166, align 8
  %18 = lshr i8 %17, 7
  %19 = zext i8 %18 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %19)
  %cmp.i167 = icmp eq i16 %15, %19
  br i1 %cmp.i167, label %while.body.lr.ph, label %cond.end.while.end_crit_edge

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %cond.end
  %fw_iq_start = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 2
  %q_arr17 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 1
  %intr_iq_idx = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 17
  %sge2.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6
  %totlen.i = getelementptr inbounds %struct.csio_fl_dma_buf, ptr %flb.i, i32 0, i32 2
  %offset16.i = getelementptr inbounds %struct.csio_fl_dma_buf, ptr %flb.i, i32 0, i32 1
  %defer_free.i = getelementptr inbounds %struct.csio_fl_dma_buf, ptr %flb.i, i32 0, i32 3
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %n_rsp_unknown = getelementptr inbounds %struct.csio_q, ptr %q, i32 0, i32 13, i32 7
  %vwrap = getelementptr inbounds %struct.csio_q, ptr %q, i32 0, i32 6
  %n_qwrap = getelementptr inbounds %struct.csio_q, ptr %q, i32 0, i32 13, i32 2
  %inc_idx = getelementptr inbounds %struct.csio_q, ptr %q, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end46.while.body_crit_edge, %while.body.lr.ph
  %u.i171 = phi ptr [ %u.i166, %while.body.lr.ph ], [ %u.i, %if.end46.while.body_crit_edge ]
  %ftr.0170 = phi ptr [ %ftr.0165, %while.body.lr.ph ], [ %ftr.0, %if.end46.while.body_crit_edge ]
  %wr.0168 = phi ptr [ %7, %while.body.lr.ph ], [ %wr.1, %if.end46.while.body_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  %20 = ptrtoint ptr %u.i171 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %u.i171, align 8
  %22 = lshr i8 %21, 4
  %23 = and i8 %22, 3
  %and = zext i8 %23 to i32
  %24 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %and, label %do.end [
    i32 1, label %sw.bb
    i32 0, label %sw.bb10
    i32 2, label %sw.bb11
  ]

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %wr_sz to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wr_sz, align 8
  %sub9 = add i32 %26, -16
  call void %iq_handler(ptr noundef %hw, ptr noundef %wr.0168, i32 noundef %sub9, ptr noundef null, ptr noundef %priv) #9
  br label %sw.epilog

sw.bb10:                                          ; preds = %while.body
  %pldbuflen_qid = getelementptr inbounds %struct.csio_iqwr_footer, ptr %ftr.0170, i32 0, i32 1
  %27 = ptrtoint ptr %pldbuflen_qid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pldbuflen_qid, align 4
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %flb.i) #9
  %29 = call ptr @memset(ptr %flb.i, i32 255, i32 92)
  %30 = ptrtoint ptr %q_arr17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %q_arr17, align 4
  %32 = ptrtoint ptr %flq_idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flq_idx, align 4
  %arrayidx.i = getelementptr ptr, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %tobool.not.i = icmp sgt i32 %28, -1
  br i1 %tobool.not.i, label %sw.bb10.if.end9.i_crit_edge, label %if.then.i

sw.bb10.if.end9.i_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then.i:                                        ; preds = %sw.bb10
  %offset.i = getelementptr inbounds %struct.csio_q, ptr %35, i32 0, i32 9, i32 0, i32 2
  %36 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i148 = icmp sgt i32 %37, 0
  br i1 %cmp.i148, label %if.then5.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  %cidx.i.i = getelementptr inbounds %struct.csio_q, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %cidx.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %cidx.i.i, align 4
  %inc.i.i = add i16 %39, 1
  store i16 %inc.i.i, ptr %cidx.i.i, align 4
  %conv.i.i = zext i16 %inc.i.i to i32
  %credits.i.i = getelementptr inbounds %struct.csio_q, ptr %35, i32 0, i32 7
  %40 = ptrtoint ptr %credits.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %credits.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %conv.i.i)
  %cmp.i.i = icmp eq i32 %41, %conv.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then5.i.csio_wr_inval_flq_buf.exit.i_crit_edge

if.then5.i.csio_wr_inval_flq_buf.exit.i_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %csio_wr_inval_flq_buf.exit.i

if.then.i.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %cidx.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %cidx.i.i, align 4
  %n_qwrap.i.i = getelementptr inbounds %struct.csio_q, ptr %35, i32 0, i32 13, i32 2
  %43 = ptrtoint ptr %n_qwrap.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n_qwrap.i.i, align 4
  %inc4.i.i = add i32 %44, 1
  store i32 %inc4.i.i, ptr %n_qwrap.i.i, align 4
  br label %csio_wr_inval_flq_buf.exit.i

csio_wr_inval_flq_buf.exit.i:                     ; preds = %if.then.i.i, %if.then5.i.csio_wr_inval_flq_buf.exit.i_crit_edge
  %45 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %offset.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %csio_wr_inval_flq_buf.exit.i, %if.then.i.if.end.i_crit_edge
  %and8.i = and i32 %28, 2147483647
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i, %sw.bb10.if.end9.i_crit_edge
  %len.0.i = phi i32 [ %and8.i, %if.end.i ], [ %28, %sw.bb10.if.end9.i_crit_edge ]
  %46 = ptrtoint ptr %totlen.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %len.0.i, ptr %totlen.i, align 4
  %bufs.i = getelementptr inbounds %struct.csio_q, ptr %35, i32 0, i32 9, i32 0, i32 4
  %cidx.i = getelementptr inbounds %struct.csio_q, ptr %35, i32 0, i32 2
  %offset15.i = getelementptr inbounds %struct.csio_q, ptr %35, i32 0, i32 9, i32 0, i32 2
  %credits.i74.i = getelementptr inbounds %struct.csio_q, ptr %35, i32 0, i32 7
  %n_qwrap.i76.i = getelementptr inbounds %struct.csio_q, ptr %35, i32 0, i32 13, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %csio_wr_inval_flq_buf.exit79.i, %if.end9.i
  %fbuf.0.i = phi ptr [ %flb.i, %if.end9.i ], [ %incdec.ptr.i, %csio_wr_inval_flq_buf.exit79.i ]
  %len.1.i = phi i32 [ %len.0.i, %if.end9.i ], [ %sub.i, %csio_wr_inval_flq_buf.exit79.i ]
  %47 = ptrtoint ptr %bufs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bufs.i, align 4
  %49 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %cidx.i, align 4
  %idxprom.i = zext i16 %50 to i32
  %paddr.i.i = getelementptr %struct.csio_dma_buf, ptr %48, i32 %idxprom.i, i32 2
  %51 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %paddr.i.i, align 4
  %and.i.i = and i32 %52, 15
  %arrayidx.i.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 3, i32 %and.i.i
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i, align 4
  %paddr12.i = getelementptr inbounds %struct.csio_dma_buf, ptr %fbuf.0.i, i32 0, i32 2
  %55 = ptrtoint ptr %paddr12.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %52, ptr %paddr12.i, align 4
  %vaddr.i = getelementptr %struct.csio_dma_buf, ptr %48, i32 %idxprom.i, i32 1
  %56 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vaddr.i, align 4
  %vaddr13.i = getelementptr inbounds %struct.csio_dma_buf, ptr %fbuf.0.i, i32 0, i32 1
  %58 = ptrtoint ptr %vaddr13.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %vaddr13.i, align 4
  %59 = ptrtoint ptr %offset15.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offset15.i, align 4
  %61 = ptrtoint ptr %offset16.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %offset16.i, align 4
  %62 = call i32 @llvm.umin.i32(i32 %54, i32 %len.1.i) #9
  %len18.i = getelementptr inbounds %struct.csio_dma_buf, ptr %fbuf.0.i, i32 0, i32 3
  %63 = ptrtoint ptr %len18.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %len18.i, align 4
  %sub.i = sub i32 %len.1.i, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool19.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool19.not.i, label %for.end.i, label %if.end21.i

if.end21.i:                                       ; preds = %for.cond.i
  %64 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %cidx.i, align 4
  %inc.i72.i = add i16 %65, 1
  store i16 %inc.i72.i, ptr %cidx.i, align 4
  %conv.i73.i = zext i16 %inc.i72.i to i32
  %66 = ptrtoint ptr %credits.i74.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %credits.i74.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %conv.i73.i)
  %cmp.i75.i = icmp eq i32 %67, %conv.i73.i
  br i1 %cmp.i75.i, label %if.then.i78.i, label %if.end21.i.csio_wr_inval_flq_buf.exit79.i_crit_edge

if.end21.i.csio_wr_inval_flq_buf.exit79.i_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %csio_wr_inval_flq_buf.exit79.i

if.then.i78.i:                                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %cidx.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %cidx.i, align 4
  %69 = ptrtoint ptr %n_qwrap.i76.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %n_qwrap.i76.i, align 4
  %inc4.i77.i = add i32 %70, 1
  store i32 %inc4.i77.i, ptr %n_qwrap.i76.i, align 4
  br label %csio_wr_inval_flq_buf.exit79.i

csio_wr_inval_flq_buf.exit79.i:                   ; preds = %if.then.i78.i, %if.end21.i.csio_wr_inval_flq_buf.exit79.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.csio_dma_buf, ptr %fbuf.0.i, i32 1
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %packen.i = getelementptr inbounds %struct.csio_q, ptr %35, i32 0, i32 9, i32 0, i32 1
  %71 = ptrtoint ptr %packen.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %packen.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool23.not.i = icmp eq i16 %72, 0
  %conv25.i = zext i1 %tobool23.not.i to i8
  %73 = ptrtoint ptr %defer_free.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv25.i, ptr %defer_free.i, align 4
  %74 = ptrtoint ptr %wr_sz to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %wr_sz, align 8
  %sub26.i = add i32 %75, -16
  call void %iq_handler(ptr noundef %hw, ptr noundef %wr.0168, i32 noundef %sub26.i, ptr noundef nonnull %flb.i, ptr noundef %priv) #9
  %76 = ptrtoint ptr %packen.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %packen.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool29.not.i = icmp eq i16 %77, 0
  br i1 %tobool29.not.i, label %if.else.i, label %if.then30.i

if.then30.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %sge2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sge2.i, align 4
  %sub31.i = add i32 %62, -1
  %add.i = add i32 %sub31.i, %79
  %neg.i = sub i32 0, %79
  %and34.i = and i32 %add.i, %neg.i
  %80 = ptrtoint ptr %offset15.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset15.i, align 4
  br label %if.end38.sink.split.i

if.else.i:                                        ; preds = %for.end.i
  %82 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %cidx.i, align 4
  %inc.i81.i = add i16 %83, 1
  store i16 %inc.i81.i, ptr %cidx.i, align 4
  %conv.i82.i = zext i16 %inc.i81.i to i32
  %84 = ptrtoint ptr %credits.i74.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %credits.i74.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %conv.i82.i)
  %cmp.i84.i = icmp eq i32 %85, %conv.i82.i
  br i1 %cmp.i84.i, label %if.then.i87.i, label %if.else.i.csio_wr_process_fl.exit_crit_edge

if.else.i.csio_wr_process_fl.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %csio_wr_process_fl.exit

if.then.i87.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %cidx.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %cidx.i, align 4
  %87 = ptrtoint ptr %n_qwrap.i76.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %n_qwrap.i76.i, align 4
  br label %if.end38.sink.split.i

if.end38.sink.split.i:                            ; preds = %if.then.i87.i, %if.then30.i
  %.sink89.i = phi i32 [ 1, %if.then.i87.i ], [ %81, %if.then30.i ]
  %.sink.i = phi i32 [ %88, %if.then.i87.i ], [ %and34.i, %if.then30.i ]
  %n_qwrap.i76.sink.i = phi ptr [ %n_qwrap.i76.i, %if.then.i87.i ], [ %offset15.i, %if.then30.i ]
  %inc4.i86.i = add i32 %.sink.i, %.sink89.i
  %89 = ptrtoint ptr %n_qwrap.i76.sink.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %inc4.i86.i, ptr %n_qwrap.i76.sink.i, align 4
  br label %csio_wr_process_fl.exit

csio_wr_process_fl.exit:                          ; preds = %if.end38.sink.split.i, %if.else.i.csio_wr_process_fl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %flb.i) #9
  br label %sw.epilog

sw.bb11:                                          ; preds = %while.body
  %pldbuflen_qid12 = getelementptr inbounds %struct.csio_iqwr_footer, ptr %ftr.0170, i32 0, i32 1
  %90 = ptrtoint ptr %pldbuflen_qid12 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pldbuflen_qid12, align 4
  %92 = ptrtoint ptr %fw_iq_start to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fw_iq_start, align 4
  %sub13 = sub i32 %91, %93
  %94 = ptrtoint ptr %q_arr17 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %q_arr17, align 4
  %96 = ptrtoint ptr %intr_iq_idx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %intr_iq_idx, align 8
  %arrayidx18 = getelementptr ptr, ptr %95, i32 %97
  %98 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx18, align 4
  %physiqid = getelementptr inbounds %struct.csio_q, ptr %99, i32 0, i32 9, i32 0, i32 1
  %100 = ptrtoint ptr %physiqid to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %physiqid, align 2
  %conv20 = zext i16 %101 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub13, i32 %conv20)
  %cmp21 = icmp eq i32 %sub13, %conv20
  br i1 %cmp21, label %sw.bb11.sw.epilog_crit_edge, label %if.else, !prof !93

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx15 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 4, i32 %sub13
  %102 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx15, align 4
  %iq_intx_handler = getelementptr inbounds %struct.csio_q, ptr %103, i32 0, i32 9, i32 0, i32 4
  %104 = ptrtoint ptr %iq_intx_handler to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %iq_intx_handler, align 4
  call void %105(ptr noundef %hw, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef %103) #9
  br label %sw.epilog

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %and) #12
  %108 = ptrtoint ptr %n_rsp_unknown to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %n_rsp_unknown, align 4
  %inc = add i32 %109, 1
  store i32 %inc, ptr %n_rsp_unknown, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.else, %sw.bb11.sw.epilog_crit_edge, %csio_wr_process_fl.exit, %sw.bb
  %110 = ptrtoint ptr %wr.0168 to i32
  %111 = ptrtoint ptr %wr_sz to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %wr_sz, align 8
  %add26 = add i32 %112, %110
  %113 = ptrtoint ptr %vwrap to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %vwrap, align 16
  %115 = ptrtoint ptr %114 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %115)
  %cmp27 = icmp eq i32 %add26, %115
  br i1 %cmp27, label %if.then29, label %if.else37

if.then29:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %cidx to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %cidx, align 4
  %117 = ptrtoint ptr %vstart to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %vstart, align 4
  %119 = ptrtoint ptr %genbit.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %genbit.i, align 4
  %121 = xor i16 %120, 1
  store i16 %121, ptr %genbit.i, align 4
  %122 = ptrtoint ptr %n_qwrap to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %n_qwrap, align 4
  %inc36 = add i32 %123, 1
  store i32 %inc36, ptr %n_qwrap, align 4
  br label %if.end46

if.else37:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %124 = ptrtoint ptr %cidx to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %cidx, align 4
  %inc39 = add i16 %125, 1
  store i16 %inc39, ptr %cidx, align 4
  %126 = ptrtoint ptr %vstart to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %vstart, align 4
  %128 = ptrtoint ptr %127 to i32
  %conv42 = zext i16 %inc39 to i32
  %mul44 = mul i32 %112, %conv42
  %add45 = add i32 %mul44, %128
  %129 = inttoptr i32 %add45 to ptr
  br label %if.end46

if.end46:                                         ; preds = %if.else37, %if.then29
  %wr.1 = phi ptr [ %118, %if.then29 ], [ %129, %if.else37 ]
  %130 = ptrtoint ptr %wr.1 to i32
  %sub48 = add i32 %112, -16
  %add49 = add i32 %sub48, %130
  %131 = ptrtoint ptr %inc_idx to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %inc_idx, align 2
  %inc50 = add i16 %132, 1
  store i16 %inc50, ptr %inc_idx, align 2
  %ftr.0 = inttoptr i32 %add49 to ptr
  %133 = ptrtoint ptr %genbit.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %genbit.i, align 4
  %u.i = getelementptr inbounds %struct.csio_iqwr_footer, ptr %ftr.0, i32 0, i32 2
  %135 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %u.i, align 8
  %137 = lshr i8 %136, 7
  %138 = zext i8 %137 to i16
  %cmp.i = icmp eq i16 %134, %138
  br i1 %cmp.i, label %if.end46.while.body_crit_edge, label %if.end46.while.end_crit_edge

if.end46.while.end_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end46.while.body_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end46.while.end_crit_edge, %cond.end.while.end_crit_edge
  %inc_idx51 = getelementptr inbounds %struct.csio_q, ptr %q, i32 0, i32 3
  %139 = ptrtoint ptr %inc_idx51 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %inc_idx51, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %140)
  %tobool52.not = icmp eq i16 %140, 0
  br i1 %tobool52.not, label %if.then61, label %if.end64, !prof !93

if.then61:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %n_stray_comp = getelementptr inbounds %struct.csio_q, ptr %q, i32 0, i32 13, i32 8
  %141 = ptrtoint ptr %n_stray_comp to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %n_stray_comp, align 4
  %inc63 = add i32 %142, 1
  store i32 %inc63, ptr %n_stray_comp, align 4
  br label %do.body76

if.end64:                                         ; preds = %while.end
  %tobool65.not = icmp eq ptr %cond, null
  br i1 %tobool65.not, label %if.end64.do.body76_crit_edge, label %if.then66

if.end64.do.body76_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body76

if.then66:                                        ; preds = %if.end64
  %pidx.i = getelementptr inbounds %struct.csio_q, ptr %cond, i32 0, i32 1
  %143 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %pidx.i, align 2
  %conv.i = zext i16 %144 to i32
  %cidx.i149 = getelementptr inbounds %struct.csio_q, ptr %cond, i32 0, i32 2
  %145 = ptrtoint ptr %cidx.i149 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %cidx.i149, align 4
  %conv1.i = zext i16 %146 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %144, i16 %146)
  %cmp.i150 = icmp ugt i16 %144, %146
  br i1 %cmp.i150, label %if.then.i152, label %if.else.i153

if.then.i152:                                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i151 = sub nsw i32 %conv.i, %conv1.i
  br label %csio_wr_avail_qcredits.exit

if.else.i153:                                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_cmp2(i16 %146, i16 %144)
  %cmp11.i = icmp ugt i16 %146, %144
  br i1 %cmp11.i, label %if.then13.i, label %if.else.i153.if.then70_crit_edge

if.else.i153.if.then70_crit_edge:                 ; preds = %if.else.i153
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then70

if.then13.i:                                      ; preds = %if.else.i153
  call void @__sanitizer_cov_trace_pc() #11
  %credits.i = getelementptr inbounds %struct.csio_q, ptr %cond, i32 0, i32 7
  %147 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %credits.i, align 4
  %sub18.neg.i = sub nsw i32 %conv.i, %conv1.i
  %sub19.i = add i32 %sub18.neg.i, %148
  br label %csio_wr_avail_qcredits.exit

csio_wr_avail_qcredits.exit:                      ; preds = %if.then13.i, %if.then.i152
  %retval.0.i = phi i32 [ %sub.i151, %if.then.i152 ], [ %sub19.i, %if.then13.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %retval.0.i)
  %cmp68 = icmp ult i32 %retval.0.i, 17
  br i1 %cmp68, label %csio_wr_avail_qcredits.exit.if.then70_crit_edge, label %csio_wr_avail_qcredits.exit.do.body76_crit_edge

csio_wr_avail_qcredits.exit.do.body76_crit_edge:  ; preds = %csio_wr_avail_qcredits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body76

csio_wr_avail_qcredits.exit.if.then70_crit_edge:  ; preds = %csio_wr_avail_qcredits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then70

if.then70:                                        ; preds = %csio_wr_avail_qcredits.exit.if.then70_crit_edge, %if.else.i153.if.then70_crit_edge
  %retval.0.i164 = phi i32 [ %retval.0.i, %csio_wr_avail_qcredits.exit.if.then70_crit_edge ], [ 0, %if.else.i153.if.then70_crit_edge ]
  %credits = getelementptr inbounds %struct.csio_q, ptr %cond, i32 0, i32 7
  %149 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %credits, align 4
  %sub71 = sub nuw nsw i32 65528, %retval.0.i164
  %sub72 = add i32 %sub71, %150
  %conv73 = trunc i32 %sub72 to i16
  %inc_idx.i = getelementptr inbounds %struct.csio_q, ptr %cond, i32 0, i32 3
  %151 = ptrtoint ptr %inc_idx.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %inc_idx.i, align 2
  %add.i154 = add i16 %152, %conv73
  store i16 %add.i154, ptr %inc_idx.i, align 2
  %add5.i = add i16 %144, %conv73
  %153 = ptrtoint ptr %pidx.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %add5.i, ptr %pidx.i, align 2
  %conv8.i = zext i16 %add5.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %conv8.i)
  %cmp.not.i = icmp ugt i32 %150, %conv8.i
  br i1 %cmp.not.i, label %if.then70.csio_wr_update_fl.exit_crit_edge, label %if.then.i157, !prof !101

if.then70.csio_wr_update_fl.exit_crit_edge:       ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %csio_wr_update_fl.exit

if.then.i157:                                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  %154 = trunc i32 %150 to i16
  %conv16.i = sub i16 %add5.i, %154
  %155 = ptrtoint ptr %pidx.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv16.i, ptr %pidx.i, align 2
  %156 = ptrtoint ptr %inc_idx.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %.pr = load i16, ptr %inc_idx.i, align 2
  br label %csio_wr_update_fl.exit

csio_wr_update_fl.exit:                           ; preds = %if.then.i157, %if.then70.csio_wr_update_fl.exit_crit_edge
  %157 = phi i16 [ %add.i154, %if.then70.csio_wr_update_fl.exit_crit_edge ], [ %.pr, %if.then.i157 ]
  %n_flq_refill.i = getelementptr inbounds %struct.csio_q, ptr %cond, i32 0, i32 13, i32 9
  %158 = ptrtoint ptr %n_flq_refill.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %n_flq_refill.i, align 4
  %inc.i = add i32 %159, 1
  store i32 %inc.i, ptr %n_flq_refill.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %157)
  %cmp.i160 = icmp ugt i16 %157, 7
  br i1 %cmp.i160, label %do.body.i, label %csio_wr_update_fl.exit.do.body76_crit_edge

csio_wr_update_fl.exit.do.body76_crit_edge:       ; preds = %csio_wr_update_fl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body76

do.body.i:                                        ; preds = %csio_wr_update_fl.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  call void @arm_heavy_mb() #9
  %un.i = getelementptr inbounds %struct.csio_q, ptr %cond, i32 0, i32 9
  %160 = ptrtoint ptr %un.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %un.i, align 4
  %conv2.i = zext i16 %161 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 15
  %162 = ptrtoint ptr %inc_idx.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %inc_idx.i, align 2
  %164 = lshr i16 %163, 3
  %div.i = zext i16 %164 to i32
  %or.i = or i32 %shl.i, %div.i
  %or7.i = or i32 %or.i, 24576
  %165 = call i32 @llvm.bswap.i32(i32 %or7.i) #9
  %regstart.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %166 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regstart.i, align 4
  %add.ptr.i = getelementptr i8, ptr %167, i32 110592
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %165) #9, !srcloc !96
  %168 = ptrtoint ptr %inc_idx.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %inc_idx.i, align 2
  %170 = and i16 %169, 7
  store i16 %170, ptr %inc_idx.i, align 2
  br label %do.body76

do.body76:                                        ; preds = %do.body.i, %csio_wr_update_fl.exit.do.body76_crit_edge, %csio_wr_avail_qcredits.exit.do.body76_crit_edge, %if.end64.do.body76_crit_edge, %if.then61
  %rv.0 = phi i32 [ -22, %if.then61 ], [ 0, %if.end64.do.body76_crit_edge ], [ 0, %csio_wr_avail_qcredits.exit.do.body76_crit_edge ], [ 0, %csio_wr_update_fl.exit.do.body76_crit_edge ], [ 0, %do.body.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  call void @arm_heavy_mb() #9
  %171 = ptrtoint ptr %inc_idx51 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %inc_idx51, align 2
  %conv80 = zext i16 %172 to i32
  %physiqid82 = getelementptr inbounds %struct.csio_q, ptr %q, i32 0, i32 9, i32 0, i32 1
  %173 = ptrtoint ptr %physiqid82 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %physiqid82, align 2
  %conv83 = zext i16 %174 to i32
  %shl84 = shl nuw i32 %conv83, 16
  %or = or i32 %shl84, %conv80
  %175 = load i32, ptr @csio_sge_timer_reg, align 4
  %shl85 = shl i32 %175, 13
  %or86 = or i32 %or, %shl85
  %176 = call i32 @llvm.bswap.i32(i32 %or86)
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %177 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %178, i32 110596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %176) #9, !srcloc !96
  %179 = ptrtoint ptr %inc_idx51 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %inc_idx51, align 2
  %conv88 = zext i16 %180 to i32
  %n_tot_rsps = getelementptr inbounds %struct.csio_q, ptr %q, i32 0, i32 13, i32 1
  %181 = ptrtoint ptr %n_tot_rsps to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %n_tot_rsps, align 4
  %add90 = add i32 %182, %conv88
  store i32 %add90, ptr %n_tot_rsps, align 4
  store i16 0, ptr %inc_idx51, align 2
  ret i32 %rv.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_wr_process_iq_idx(ptr noundef %hw, i32 noundef %qidx, ptr nocapture noundef readonly %iq_handler, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %q_arr = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_arr, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %qidx
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @csio_wr_process_iq(ptr noundef %hw, ptr noundef %3, ptr noundef %iq_handler, ptr noundef %priv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_wr_sge_init(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %devctl.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else7, label %if.then

if.then:                                          ; preds = %entry
  %fw_state = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 32
  %2 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then1:                                         ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %regstart.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regstart.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 572662306) #9, !srcloc !96
  %pdev.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 8
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.not.i = icmp eq i8 %9, 0
  br i1 %tobool.i.not.i, label %if.then1.if.else31.i_crit_edge, label %if.then.i

if.then1.if.else31.i_crit_edge:                   ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else31.i

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %devctl.i) #9
  %10 = ptrtoint ptr %devctl.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %devctl.i, align 2, !annotation !94
  %call19.i = call i32 @pcie_capability_read_word(ptr noundef %7, i32 noundef 8, ptr noundef nonnull %devctl.i) #9
  %11 = ptrtoint ptr %devctl.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %devctl.i, align 2
  %13 = lshr i16 %12, 5
  %14 = and i16 %13, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp21.not.i = icmp eq i16 %14, 0
  %narrow.i = add nuw nsw i16 %14, 7
  %add.i = zext i16 %narrow.i to i32
  %shl20.i = shl nuw nsw i32 1, %add.i
  %pack_align.0.i = select i1 %cmp21.not.i, i32 128, i32 %shl20.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %devctl.i) #9
  br label %if.else31.i

if.else31.i:                                      ; preds = %if.then.i, %if.then1.if.else31.i_crit_edge
  %pack_align.1.i = phi i32 [ %pack_align.0.i, %if.then.i ], [ 128, %if.then1.if.else31.i_crit_edge ]
  %15 = call i32 @llvm.ctlz.i32(i32 %pack_align.1.i, i1 false) #9, !range !104
  call void @csio_set_reg_field(ptr noundef %hw, i32 noundef 4104, i32 noundef 131184, i32 noundef 131072) #9
  %.neg.i = mul nsw i32 %15, -65536
  %shl49.i = add nsw i32 %.neg.i, 1703936
  call void @csio_set_reg_field(ptr noundef %hw, i32 noundef 4388, i32 noundef 458752, i32 noundef %shl49.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regstart.i, align 4
  %add.ptr54.i = getelementptr i8, ptr %17, i32 4164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 1048576) #9, !srcloc !96
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and55.i = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %if.else31.i.csio_wr_fixup_host_params.exit_crit_edge, label %do.body58.i

if.else31.i.csio_wr_fixup_host_params.exit_crit_edge: ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %csio_wr_fixup_host_params.exit

do.body58.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regstart.i, align 4
  %add.ptr62.i = getelementptr i8, ptr %21, i32 4172
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62.i) #9, !srcloc !107
  %23 = call i32 @llvm.bswap.i32(i32 %22) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  %add65.i = add nsw i32 %pack_align.1.i, -1
  %sub66.i = add i32 %23, %add65.i
  %neg.i = sub nsw i32 0, %pack_align.1.i
  %and68.i = and i32 %sub66.i, %neg.i
  %24 = call i32 @llvm.bswap.i32(i32 %and68.i) #9
  %25 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regstart.i, align 4
  %add.ptr70.i = getelementptr i8, ptr %26, i32 4172
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i, i32 %24) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regstart.i, align 4
  %add.ptr77.i = getelementptr i8, ptr %28, i32 4176
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77.i) #9, !srcloc !107
  %30 = call i32 @llvm.bswap.i32(i32 %29) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  %sub82.i = add i32 %30, %add65.i
  %and85.i = and i32 %sub82.i, %neg.i
  %31 = call i32 @llvm.bswap.i32(i32 %and85.i) #9
  %32 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regstart.i, align 4
  %add.ptr87.i = getelementptr i8, ptr %33, i32 4176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87.i, i32 %31) #9, !srcloc !96
  br label %csio_wr_fixup_host_params.exit

csio_wr_fixup_host_params.exit:                   ; preds = %do.body58.i, %if.else31.i.csio_wr_fixup_host_params.exit_crit_edge
  %sge2.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6
  %34 = ptrtoint ptr %sge2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %pack_align.1.i, ptr %sge2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %regstart.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regstart.i, align 4
  %add.ptr93.i = getelementptr i8, ptr %36, i32 102776
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i, i32 0) #9, !srcloc !96
  call void @csio_set_reg_field(ptr noundef %hw, i32 noundef 4104, i32 noundef 7168, i32 noundef 2048) #9
  call void @csio_hw_tp_wr_bits_indirect(ptr noundef %hw, i32 noundef 321, i32 noundef 1024, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %csio_wr_fixup_host_params.exit, %if.then.if.end_crit_edge
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %and3 = and i32 %38, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @csio_wr_get_sge(ptr noundef %hw)
  br label %if.end8

if.else:                                          ; preds = %if.end
  %sge2.i15 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6
  call void @csio_set_reg_field(ptr noundef %hw, i32 noundef 4104, i32 noundef 262144, i32 noundef 262144) #9
  %regstart.i16 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %39 = ptrtoint ptr %regstart.i16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regstart.i16, align 4
  %add.ptr.i17 = getelementptr i8, ptr %40, i32 4104
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #9, !srcloc !107
  %42 = call i32 @llvm.bswap.i32(i32 %41) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  %sge_control.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 1
  %43 = ptrtoint ptr %sge_control.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %sge_control.i, align 4
  call void @csio_set_reg_field(ptr noundef %hw, i32 noundef 4260, i32 noundef 1073479680, i32 noundef 2621440) #9
  call void @csio_set_reg_field(ptr noundef %hw, i32 noundef 4376, i32 noundef 4193280, i32 noundef 10240) #9
  call void @csio_set_reg_field(ptr noundef %hw, i32 noundef 4264, i32 noundef 8192, i32 noundef 8192) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !113
  call void @arm_heavy_mb() #9
  %44 = ptrtoint ptr %regstart.i16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regstart.i16, align 4
  %add.ptr5.i = getelementptr i8, ptr %45, i32 4168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 256) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %sge2.i15 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sge2.i15, align 4
  %sub.i = add i32 %47, 1535
  %neg.i18 = sub i32 0, %47
  %and.i = and i32 %sub.i, %neg.i18
  %48 = call i32 @llvm.bswap.i32(i32 %and.i) #9
  %49 = ptrtoint ptr %regstart.i16 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regstart.i16, align 4
  %add.ptr12.i = getelementptr i8, ptr %50, i32 4172
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %48) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  call void @arm_heavy_mb() #9
  %51 = ptrtoint ptr %sge2.i15 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sge2.i15, align 4
  %sub18.i = add i32 %52, 9023
  %neg21.i = sub i32 0, %52
  %and22.i = and i32 %sub18.i, %neg21.i
  %53 = call i32 @llvm.bswap.i32(i32 %and22.i) #9
  %54 = ptrtoint ptr %regstart.i16 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regstart.i16, align 4
  %add.ptr24.i = getelementptr i8, ptr %55, i32 4176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %53) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %56 = ptrtoint ptr %regstart.i16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regstart.i16, align 4
  %add.ptr29.i = getelementptr i8, ptr %57, i32 4180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 2359296) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  call void @arm_heavy_mb() #9
  %58 = ptrtoint ptr %regstart.i16 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regstart.i16, align 4
  %add.ptr34.i = getelementptr i8, ptr %59, i32 4184
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 524288) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !118
  call void @arm_heavy_mb() #9
  %60 = ptrtoint ptr %regstart.i16 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regstart.i16, align 4
  %add.ptr39.i = getelementptr i8, ptr %61, i32 4188
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 -2147483648) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  call void @arm_heavy_mb() #9
  %62 = ptrtoint ptr %regstart.i16 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regstart.i16, align 4
  %add.ptr44.i = getelementptr i8, ptr %63, i32 4192
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 2097152) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  call void @arm_heavy_mb() #9
  %64 = ptrtoint ptr %regstart.i16 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regstart.i16, align 4
  %add.ptr49.i = getelementptr i8, ptr %65, i32 4196
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 4194304) #9, !srcloc !96
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else
  %i.0204.i = phi i32 [ 0, %if.else ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %66 = ptrtoint ptr %regstart.i16 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regstart.i16, align 4
  %mul.i.i = shl i32 %i.0204.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 4164
  %add.ptr.i.i = getelementptr i8, ptr %67, i32 %add.i.i
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !107
  %69 = call i32 @llvm.bswap.i32(i32 %68) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %arrayidx.i.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 3, i32 %i.0204.i
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx.i.i, align 4
  %inc.i = add nuw nsw i32 %i.0204.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %csio_wr_set_sge.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

csio_wr_set_sge.exit:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %timer_val.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 4
  %71 = ptrtoint ptr %timer_val.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 5, ptr %timer_val.i, align 4
  %arrayidx51.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 4, i32 1
  %72 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 10, ptr %arrayidx51.i, align 2
  %arrayidx53.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 4, i32 2
  %73 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 20, ptr %arrayidx53.i, align 4
  %arrayidx55.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 4, i32 3
  %74 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 50, ptr %arrayidx55.i, align 2
  %arrayidx57.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 4, i32 4
  %75 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 100, ptr %arrayidx57.i, align 4
  %arrayidx59.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 4, i32 5
  %76 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 200, ptr %arrayidx59.i, align 2
  %counter_val.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 5
  %77 = ptrtoint ptr %counter_val.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %counter_val.i, align 4
  %arrayidx62.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 5, i32 1
  %78 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 4, ptr %arrayidx62.i, align 1
  %arrayidx64.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 5, i32 2
  %79 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 8, ptr %arrayidx64.i, align 2
  %arrayidx66.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 5, i32 3
  %80 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 16, ptr %arrayidx66.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  call void @arm_heavy_mb() #9
  %81 = ptrtoint ptr %counter_val.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %counter_val.i, align 4
  %conv.i = zext i8 %82 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %83 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx62.i, align 1
  %conv74.i = zext i8 %84 to i32
  %shl75.i = shl nuw nsw i32 %conv74.i, 16
  %or.i = or i32 %shl75.i, %shl.i
  %85 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx64.i, align 2
  %conv78.i = zext i8 %86 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 8
  %or80.i = or i32 %or.i, %shl79.i
  %87 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx66.i, align 1
  %conv83.i = zext i8 %88 to i32
  %or85.i = or i32 %or80.i, %conv83.i
  %89 = call i32 @llvm.bswap.i32(i32 %or85.i) #9
  %90 = ptrtoint ptr %regstart.i16 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regstart.i16, align 4
  %add.ptr87.i19 = getelementptr i8, ptr %91, i32 4256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87.i19, i32 %89) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  call void @arm_heavy_mb() #9
  %92 = ptrtoint ptr %timer_val.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %timer_val.i, align 4
  %conv93.i = zext i16 %93 to i32
  %vpd.i.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 33
  %94 = ptrtoint ptr %vpd.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %vpd.i.i, align 8
  %mul.i188.i = mul i32 %95, %conv93.i
  %div.i.i = udiv i32 %mul.i188.i, 1000
  %shl95.i = shl i32 %div.i.i, 16
  %96 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx51.i, align 2
  %conv98.i = zext i16 %97 to i32
  %mul.i190.i = mul i32 %95, %conv98.i
  %div.i191.i = udiv i32 %mul.i190.i, 1000
  %or101.i = or i32 %div.i191.i, %shl95.i
  %98 = call i32 @llvm.bswap.i32(i32 %or101.i) #9
  %99 = ptrtoint ptr %regstart.i16 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regstart.i16, align 4
  %add.ptr103.i = getelementptr i8, ptr %100, i32 4280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103.i, i32 %98) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  call void @arm_heavy_mb() #9
  %101 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx53.i, align 4
  %conv109.i = zext i16 %102 to i32
  %103 = ptrtoint ptr %vpd.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %vpd.i.i, align 8
  %mul.i193.i = mul i32 %104, %conv109.i
  %div.i194.i = udiv i32 %mul.i193.i, 1000
  %shl111.i = shl i32 %div.i194.i, 16
  %105 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx55.i, align 2
  %conv114.i = zext i16 %106 to i32
  %mul.i196.i = mul i32 %104, %conv114.i
  %div.i197.i = udiv i32 %mul.i196.i, 1000
  %or117.i = or i32 %div.i197.i, %shl111.i
  %107 = call i32 @llvm.bswap.i32(i32 %or117.i) #9
  %108 = ptrtoint ptr %regstart.i16 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regstart.i16, align 4
  %add.ptr119.i = getelementptr i8, ptr %109, i32 4284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119.i, i32 %107) #9, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  call void @arm_heavy_mb() #9
  %110 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx57.i, align 4
  %conv125.i = zext i16 %111 to i32
  %112 = ptrtoint ptr %vpd.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %vpd.i.i, align 8
  %mul.i199.i = mul i32 %113, %conv125.i
  %div.i200.i = udiv i32 %mul.i199.i, 1000
  %shl127.i = shl i32 %div.i200.i, 16
  %114 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx59.i, align 2
  %conv130.i = zext i16 %115 to i32
  %mul.i202.i = mul i32 %113, %conv130.i
  %div.i203.i = udiv i32 %mul.i202.i, 1000
  %or133.i = or i32 %div.i203.i, %shl127.i
  %116 = call i32 @llvm.bswap.i32(i32 %or133.i) #9
  %117 = ptrtoint ptr %regstart.i16 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regstart.i16, align 4
  %add.ptr135.i = getelementptr i8, ptr %118, i32 4288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135.i, i32 %116) #9, !srcloc !96
  call fastcc void @csio_init_intr_coalesce_parms(ptr noundef %hw) #9
  br label %if.end8

if.else7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @csio_wr_get_sge(ptr noundef %hw)
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %csio_wr_set_sge.exit, %if.then5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_wr_get_sge(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sge2 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4104
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !107
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  %sge_control = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 1
  %4 = ptrtoint ptr %sge_control to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %sge_control, align 4
  %shr = lshr i32 %3, 4
  %and = and i32 %shr, 7
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.csio_wr_get_sge, i32 0, i32 %and
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %6 = ptrtoint ptr %sge2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %switch.load, ptr %sge2, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0167 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regstart, align 4
  %mul.i = shl i32 %i.0167, 2
  %add.i = add nuw nsw i32 %mul.i, 4164
  %add.ptr.i = getelementptr i8, ptr %8, i32 %add.i
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !107
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %arrayidx.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 3, i32 %i.0167
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx.i, align 4
  %inc = add nuw nsw i32 %i.0167, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regstart, align 4
  %add.ptr22 = getelementptr i8, ptr %13, i32 4280
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #9, !srcloc !107
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  %16 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regstart, align 4
  %add.ptr29 = getelementptr i8, ptr %17, i32 4284
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #9, !srcloc !107
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  %20 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regstart, align 4
  %add.ptr36 = getelementptr i8, ptr %21, i32 4288
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #9, !srcloc !107
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  %shr40 = lshr i32 %15, 16
  %mul.i140 = mul nuw nsw i32 %shr40, 1000
  %vpd.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 33
  %24 = ptrtoint ptr %vpd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vpd.i, align 8
  %div5.i = lshr i32 %25, 1
  %add.i141 = add nuw i32 %div5.i, %mul.i140
  %div3.i = udiv i32 %add.i141, %25
  %conv = trunc i32 %div3.i to i16
  %timer_val = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 4
  %26 = ptrtoint ptr %timer_val to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv, ptr %timer_val, align 4
  %and44 = and i32 %15, 65535
  %mul.i142 = mul nuw nsw i32 %and44, 1000
  %add.i145 = add nuw i32 %div5.i, %mul.i142
  %div3.i146 = udiv i32 %add.i145, %25
  %conv46 = trunc i32 %div3.i146 to i16
  %arrayidx48 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 4, i32 1
  %27 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv46, ptr %arrayidx48, align 2
  %shr49 = lshr i32 %19, 16
  %mul.i147 = mul nuw nsw i32 %shr49, 1000
  %add.i150 = add nuw i32 %div5.i, %mul.i147
  %div3.i151 = udiv i32 %add.i150, %25
  %conv52 = trunc i32 %div3.i151 to i16
  %arrayidx54 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 4, i32 2
  %28 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv52, ptr %arrayidx54, align 4
  %and56 = and i32 %19, 65535
  %mul.i152 = mul nuw nsw i32 %and56, 1000
  %add.i155 = add nuw i32 %div5.i, %mul.i152
  %div3.i156 = udiv i32 %add.i155, %25
  %conv58 = trunc i32 %div3.i156 to i16
  %arrayidx60 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 4, i32 3
  %29 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv58, ptr %arrayidx60, align 2
  %shr61 = lshr i32 %23, 16
  %mul.i157 = mul nuw nsw i32 %shr61, 1000
  %add.i160 = add nuw i32 %div5.i, %mul.i157
  %div3.i161 = udiv i32 %add.i160, %25
  %conv64 = trunc i32 %div3.i161 to i16
  %arrayidx66 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 4, i32 4
  %30 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv64, ptr %arrayidx66, align 4
  %and68 = and i32 %23, 65535
  %mul.i162 = mul nuw nsw i32 %and68, 1000
  %add.i165 = add nuw i32 %div5.i, %mul.i162
  %div3.i166 = udiv i32 %add.i165, %25
  %conv70 = trunc i32 %div3.i166 to i16
  %arrayidx72 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 4, i32 5
  %31 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv70, ptr %arrayidx72, align 2
  %32 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regstart, align 4
  %add.ptr76 = getelementptr i8, ptr %33, i32 4256
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #9, !srcloc !107
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  %shr80 = lshr i32 %35, 24
  %36 = trunc i32 %shr80 to i8
  %conv82 = and i8 %36, 63
  %counter_val = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 5
  %37 = ptrtoint ptr %counter_val to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv82, ptr %counter_val, align 4
  %shr84 = lshr i32 %35, 16
  %38 = trunc i32 %shr84 to i8
  %conv86 = and i8 %38, 63
  %arrayidx88 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 5, i32 1
  %39 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv86, ptr %arrayidx88, align 1
  %shr89 = lshr i32 %35, 8
  %40 = trunc i32 %shr89 to i8
  %conv91 = and i8 %40, 63
  %arrayidx93 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 5, i32 2
  %41 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv91, ptr %arrayidx93, align 2
  %42 = trunc i32 %35 to i8
  %conv96 = and i8 %42, 63
  %arrayidx98 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 5, i32 3
  %43 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv96, ptr %arrayidx98, align 1
  tail call fastcc void @csio_init_intr_coalesce_parms(ptr noundef %hw)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_wrm_init(ptr nocapture noundef %wrm, ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wrm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wrm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #9
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !93

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %q_arr33 = getelementptr inbounds %struct.csio_wrm, ptr %wrm, i32 0, i32 1
  %6 = ptrtoint ptr %q_arr33 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %q_arr33, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #13
  %q_arr = getelementptr inbounds %struct.csio_wrm, ptr %wrm, i32 0, i32 1
  %8 = ptrtoint ptr %q_arr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %q_arr, align 4
  %tobool3.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool3.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  %9 = ptrtoint ptr %wrm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wrm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp36 = icmp sgt i32 %10, 0
  br i1 %cmp36, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 640) #14
  %12 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %q_arr, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %i.037
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %15 = load ptr, ptr %q_arr, align 4
  %arrayidx10 = getelementptr ptr, ptr %15, i32 %i.037
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %17, null
  br i1 %tobool11.not, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.037)
  %cmp1339.not = icmp eq i32 %i.037, 0
  br i1 %cmp1339.not, label %while.cond.preheader.err_free_arr_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.err_free_arr_crit_edge:      ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_arr

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec40.in = phi i32 [ %dec40, %while.body.while.body_crit_edge ], [ %i.037, %while.cond.preheader.while.body_crit_edge ]
  %dec40 = add nsw i32 %dec40.in, -1
  %18 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %q_arr, align 4
  %arrayidx15 = getelementptr ptr, ptr %19, i32 %dec40
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx15, align 4
  tail call void @kfree(ptr noundef %21) #9
  %cmp13 = icmp sgt i32 %dec40.in, 1
  br i1 %cmp13, label %while.body.while.body_crit_edge, label %while.body.err_free_arr_crit_edge

while.body.err_free_arr_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_arr

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.037, 1
  %22 = ptrtoint ptr %wrm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wrm, align 4
  %cmp = icmp slt i32 %inc, %23
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %free_qidx = getelementptr inbounds %struct.csio_wrm, ptr %wrm, i32 0, i32 5
  %24 = ptrtoint ptr %free_qidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %free_qidx, align 4
  br label %cleanup

err_free_arr:                                     ; preds = %while.body.err_free_arr_crit_edge, %while.cond.preheader.err_free_arr_crit_edge
  %25 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %q_arr, align 4
  tail call void @kfree(ptr noundef %26) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free_arr, %for.end, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %do.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %do.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %err_free_arr ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_wrm_exit(ptr nocapture noundef readonly %wrm, ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wrm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wrm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp55 = icmp sgt i32 %1, 0
  br i1 %cmp55, label %for.body.lr.ph, label %entry.for.end27_crit_edge

entry.for.end27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end27

for.body.lr.ph:                                   ; preds = %entry
  %q_arr = getelementptr inbounds %struct.csio_wrm, ptr %wrm, i32 0, i32 1
  %free_qidx = getelementptr inbounds %struct.csio_wrm, ptr %wrm, i32 0, i32 5
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc25.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc26, %for.inc25.for.body_crit_edge ]
  %2 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q_arr, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.056
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %free_qidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %free_qidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.056, i32 %7)
  %cmp2 = icmp slt i32 %i.056, %7
  %or.cond = select i1 %tobool.not, i1 %cmp2, i1 false
  br i1 %or.cond, label %if.then, label %for.body.if.end24_crit_edge

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then:                                          ; preds = %for.body
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %5, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %9)
  %cmp3 = icmp eq i16 %9, 3
  br i1 %cmp3, label %if.then5, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then5:                                         ; preds = %if.then
  %bufs = getelementptr inbounds %struct.csio_q, ptr %5, i32 0, i32 9, i32 0, i32 4
  %10 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bufs, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.then5.for.inc25_crit_edge, label %for.cond8.preheader

if.then5.for.inc25_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc25

for.cond8.preheader:                              ; preds = %if.then5
  %credits = getelementptr inbounds %struct.csio_q, ptr %5, i32 0, i32 7
  %12 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp952.not = icmp eq i32 %13, 0
  br i1 %cmp952.not, label %for.cond8.preheader.for.end_crit_edge, label %for.cond8.preheader.for.body11_crit_edge

for.cond8.preheader.for.body11_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body11

for.cond8.preheader.for.end_crit_edge:            ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %for.cond8.preheader.for.body11_crit_edge
  %j.053 = phi i32 [ %inc, %for.inc.for.body11_crit_edge ], [ 0, %for.cond8.preheader.for.body11_crit_edge ]
  %14 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bufs, align 4
  %vaddr = getelementptr %struct.csio_dma_buf, ptr %15, i32 %j.053, i32 1
  %16 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vaddr, align 4
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %for.body11.for.inc_crit_edge, label %if.end17

for.body11.for.inc_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end17:                                         ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %len = getelementptr %struct.csio_dma_buf, ptr %15, i32 %j.053, i32 3
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %paddr = getelementptr %struct.csio_dma_buf, ptr %15, i32 %j.053, i32 2
  %22 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %21, ptr noundef nonnull %17, i32 noundef %23, i32 noundef 0) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %for.body11.for.inc_crit_edge
  %inc = add nuw i32 %j.053, 1
  %24 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %credits, align 4
  %cmp9 = icmp ult i32 %inc, %25
  br i1 %cmp9, label %for.inc.for.body11_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond8.preheader.for.end_crit_edge
  %26 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bufs, align 4
  tail call void @kfree(ptr noundef %27) #9
  br label %if.end21

if.end21:                                         ; preds = %for.end, %if.then.if.end21_crit_edge
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %size = getelementptr inbounds %struct.csio_q, ptr %5, i32 0, i32 12
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 8
  %vstart = getelementptr inbounds %struct.csio_q, ptr %5, i32 0, i32 5
  %32 = ptrtoint ptr %vstart to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vstart, align 4
  %pstart = getelementptr inbounds %struct.csio_q, ptr %5, i32 0, i32 10
  %34 = ptrtoint ptr %pstart to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pstart, align 32
  tail call void @dma_free_attrs(ptr noundef %dev23, i32 noundef %31, ptr noundef %33, i32 noundef %35, i32 noundef 0) #9
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %for.body.if.end24_crit_edge
  tail call void @kfree(ptr noundef %5) #9
  br label %for.inc25

for.inc25:                                        ; preds = %if.end24, %if.then5.for.inc25_crit_edge
  %inc26 = add nuw nsw i32 %i.056, 1
  %36 = ptrtoint ptr %wrm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wrm, align 4
  %cmp = icmp slt i32 %inc26, %37
  br i1 %cmp, label %for.inc25.for.body_crit_edge, label %for.inc25.for.end27_crit_edge

for.inc25.for.end27_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end27

for.inc25.for.body_crit_edge:                     ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end27:                                        ; preds = %for.inc25.for.end27_crit_edge, %entry.for.end27_crit_edge
  %flags = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %and = and i32 %39, -9
  store i32 %and, ptr %flags, align 4
  %q_arr28 = getelementptr inbounds %struct.csio_wrm, ptr %wrm, i32 0, i32 1
  %40 = ptrtoint ptr %q_arr28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %q_arr28, align 4
  tail call void @kfree(ptr noundef %41) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_iq_alloc_write_rsp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_eq_ofld_alloc_write_rsp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_eq_ofld_free(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_mb_fw_retval(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_mb_iq_free(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_set_reg_field(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_hw_tp_wr_bits_indirect(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @csio_init_intr_coalesce_parms(ptr nocapture noundef readonly %hw) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @csio_intr_coalesce_cnt, align 4
  %arrayidx.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 5
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %2 to i32
  %sub.i = sub i32 %0, %conv.i
  %3 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #9
  %arrayidx.1.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %5 to i32
  %sub.1.i = sub i32 %0, %conv.1.i
  %6 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp4.1.i = icmp slt i32 %6, %3
  %match.1.1.i = zext i1 %cmp4.1.i to i32
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 %3) #9
  %arrayidx.2.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 5, i32 2
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %9 to i32
  %sub.2.i = sub i32 %0, %conv.2.i
  %10 = tail call i32 @llvm.abs.i32(i32 %sub.2.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %7)
  %cmp4.2.i = icmp slt i32 %10, %7
  %match.1.2.i = select i1 %cmp4.2.i, i32 2, i32 %match.1.1.i
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %7) #9
  %arrayidx.3.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 5, i32 3
  %12 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %13 to i32
  %sub.3.i = sub i32 %0, %conv.3.i
  %14 = tail call i32 @llvm.abs.i32(i32 %sub.3.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %11)
  %cmp4.3.i = icmp slt i32 %14, %11
  %match.1.3.i = select i1 %cmp4.3.i, i32 3, i32 %match.1.2.i
  store i32 %match.1.3.i, ptr @csio_sge_thresh_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i32 0, ptr @csio_sge_thresh_reg, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %15 = load i32, ptr @csio_intr_coalesce_time, align 4
  %arrayidx.i6 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 4
  %16 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i6, align 2
  %conv.i7 = zext i16 %17 to i32
  %sub.i8 = sub i32 %15, %conv.i7
  %18 = tail call i32 @llvm.abs.i32(i32 %sub.i8, i1 false) #9
  %arrayidx.1.i9 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 4, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i9 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.1.i9, align 2
  %conv.1.i10 = zext i16 %20 to i32
  %sub.1.i11 = sub i32 %15, %conv.1.i10
  %21 = tail call i32 @llvm.abs.i32(i32 %sub.1.i11, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %18)
  %cmp4.1.i12 = icmp slt i32 %21, %18
  %match.1.1.i13 = zext i1 %cmp4.1.i12 to i32
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 %18) #9
  %arrayidx.2.i14 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 4, i32 2
  %23 = ptrtoint ptr %arrayidx.2.i14 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.2.i14, align 2
  %conv.2.i15 = zext i16 %24 to i32
  %sub.2.i16 = sub i32 %15, %conv.2.i15
  %25 = tail call i32 @llvm.abs.i32(i32 %sub.2.i16, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %22)
  %cmp4.2.i17 = icmp slt i32 %25, %22
  %match.1.2.i18 = select i1 %cmp4.2.i17, i32 2, i32 %match.1.1.i13
  %26 = tail call i32 @llvm.smin.i32(i32 %25, i32 %22) #9
  %arrayidx.3.i19 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 4, i32 3
  %27 = ptrtoint ptr %arrayidx.3.i19 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.3.i19, align 2
  %conv.3.i20 = zext i16 %28 to i32
  %sub.3.i21 = sub i32 %15, %conv.3.i20
  %29 = tail call i32 @llvm.abs.i32(i32 %sub.3.i21, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %26)
  %cmp4.3.i22 = icmp slt i32 %29, %26
  %match.1.3.i23 = select i1 %cmp4.3.i22, i32 3, i32 %match.1.2.i18
  %30 = tail call i32 @llvm.smin.i32(i32 %29, i32 %26) #9
  %arrayidx.4.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 4, i32 4
  %31 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx.4.i, align 2
  %conv.4.i = zext i16 %32 to i32
  %sub.4.i = sub i32 %15, %conv.4.i
  %33 = tail call i32 @llvm.abs.i32(i32 %sub.4.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %30)
  %cmp4.4.i = icmp slt i32 %33, %30
  %match.1.4.i = select i1 %cmp4.4.i, i32 4, i32 %match.1.3.i23
  %34 = tail call i32 @llvm.smin.i32(i32 %33, i32 %30) #9
  %arrayidx.5.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 6, i32 4, i32 5
  %35 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.5.i, align 2
  %conv.5.i = zext i16 %36 to i32
  %sub.5.i = sub i32 %15, %conv.5.i
  %37 = tail call i32 @llvm.abs.i32(i32 %sub.5.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %34)
  %cmp4.5.i = icmp slt i32 %37, %34
  %match.1.5.i = select i1 %cmp4.5.i, i32 5, i32 %match.1.4.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %storemerge = phi i32 [ %match.1.5.i, %if.end ], [ 6, %if.then ]
  store i32 %storemerge, ptr @csio_sge_timer_reg, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !54, !56, !57, !58, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @csio_intr_coalesce_time, !1, !"csio_intr_coalesce_time", i1 false, i1 false}
!1 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 51, i32 5}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 198, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @csio_wr_alloc_q._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @csio_wr_alloc_q._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 214, i32 4}
!12 = !{ptr @csio_wr_alloc_q._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @csio_wr_alloc_q._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 230, i32 3}
!16 = !{ptr @csio_wr_alloc_q._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @csio_wr_alloc_q._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 239, i32 3}
!20 = !{ptr @csio_wr_alloc_q._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @csio_wr_alloc_q._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 271, i32 5}
!24 = !{ptr @csio_wr_alloc_q._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @csio_wr_alloc_q._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 285, i32 5}
!28 = !{ptr @csio_wr_alloc_q._entry.17, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @csio_wr_alloc_q._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 429, i32 3}
!32 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @csio_wr_iq_create._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @csio_wr_iq_create._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 500, i32 3}
!37 = !{ptr @csio_wr_iq_create._entry.22, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @csio_wr_iq_create._entry_ptr.24, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 568, i32 3}
!41 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @csio_wr_eq_create._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @csio_wr_eq_create._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 588, i32 3}
!46 = !{ptr @csio_wr_eq_create._entry.27, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @csio_wr_eq_create._entry_ptr.29, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 1193, i32 4}
!50 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.32, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @csio_wr_process_iq._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @csio_wr_process_iq._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 1651, i32 3}
!56 = !{ptr @.str.34, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @csio_wrm_init._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @csio_wrm_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @csio_intr_coalesce_cnt, !60, !"csio_intr_coalesce_cnt", i1 false, i1 false}
!60 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 48, i32 5}
!61 = !{ptr @csio_sge_thresh_reg, !62, !"csio_sge_thresh_reg", i1 false, i1 false}
!62 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 49, i32 12}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 130, i32 4}
!65 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @csio_wr_fill_fl._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @csio_wr_fill_fl._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 350, i32 3}
!70 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @csio_wr_iq_create_rsp._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @csio_wr_iq_create_rsp._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 365, i32 3}
!75 = !{ptr @csio_wr_iq_create_rsp._entry.39, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @csio_wr_iq_create_rsp._entry_ptr.41, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 530, i32 3}
!79 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @csio_wr_eq_cfg_rsp._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @csio_wr_eq_cfg_rsp._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @csio_sge_timer_reg, !83, !"csio_sge_timer_reg", i1 false, i1 false}
!83 = !{!"../drivers/scsi/csiostor/csio_wr.c", i32 52, i32 12}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{!"auto-init"}
!95 = !{i64 2156114393}
!96 = !{i64 5443233}
!97 = !{i64 2156113288}
!98 = !{i64 2156147123}
!99 = !{i64 2156147866}
!100 = !{i64 2156150890}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i64 2156154040}
!103 = !{i64 2156156433}
!104 = !{i32 0, i32 33}
!105 = !{i64 2156157863}
!106 = !{i64 2156159762}
!107 = !{i64 5443651}
!108 = !{i64 2156160835}
!109 = !{i64 2156162523}
!110 = !{i64 2156163596}
!111 = !{i64 2156164068}
!112 = !{i64 2156169523}
!113 = !{i64 2156170361}
!114 = !{i64 2156171153}
!115 = !{i64 2156172118}
!116 = !{i64 2156173084}
!117 = !{i64 2156173877}
!118 = !{i64 2156174670}
!119 = !{i64 2156175463}
!120 = !{i64 2156176256}
!121 = !{i64 2156111960}
!122 = !{i64 2156177334}
!123 = !{i64 2156178662}
!124 = !{i64 2156179933}
!125 = !{i64 2156181204}
!126 = !{i64 2156165228}
!127 = !{i64 2156165986}
!128 = !{i64 2156166657}
!129 = !{i64 2156167328}
!130 = !{i64 2156168428}
