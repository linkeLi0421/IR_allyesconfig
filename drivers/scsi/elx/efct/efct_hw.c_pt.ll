; ModuleID = '/llk/IR_all_yes/drivers/scsi/elx/efct/efct_hw.c_pt.bc'
source_filename = "../drivers/scsi/elx/efct/efct_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.atomic_t = type { i32 }
%struct.efct_hw = type { ptr, %struct.sli4, i16, i16, i32, i32, i8, i8, i16, %struct.efct_hw_config, [5 x i32], [32 x %struct.sli4_queue], [32 x %struct.sli4_queue], [32 x i16], [1 x %struct.sli4_queue], [97 x %struct.sli4_queue], [16 x %struct.sli4_queue], i32, i32, i32, i32, i32, i32, %struct.list_head, [128 x %struct.efct_queue_hash], [128 x %struct.efct_queue_hash], [128 x %struct.efct_queue_hash], [32 x ptr], [32 x ptr], [1 x ptr], [97 x ptr], [16 x ptr], i32, i32, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, %struct.sli4_link_event, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.efc_dma, %struct.efc_dma, %struct.efc_dma, %struct.atomic_t, [32 x i32], [32 x i32], %struct.atomic_t, ptr }
%struct.sli4 = type { ptr, ptr, [6 x ptr], i32, i32, i32, i16, i16, i16, i16, %struct.sli4_queue_info, i16, i8, i8, [2 x i8], i16, i32, i8, [8 x i8], [8 x i8], [2 x i32], [2 x [16 x i8]], [16 x i8], [3 x i32], [64 x i8], [32 x i8], i32, i32, [5 x %struct.sli4_extent], i32, %struct.sli4_params, i32, i32, i32, ptr, ptr, %struct.efc_dma, ptr, %struct.efc_dma }
%struct.sli4_queue_info = type { [5 x i16], [5 x i32], [5 x i16], [5 x i16], [5 x i32] }
%struct.sli4_extent = type { i32, i32, i32, ptr, ptr, i32 }
%struct.sli4_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.efct_hw_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [4 x i32] }
%struct.sli4_queue = type { %struct.efc_dma, %struct.spinlock, i32, i16, i16, i16, i16, i8, ptr, i16, i32, i32, i32, i64, %union.anon.79 }
%union.anon.79 = type { i32 }
%struct.efct_queue_hash = type { i8, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sli4_link_event = type { i32, i32, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.efc_dma = type { ptr, ptr, i32, i32, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.78 = type { ptr }
%struct.efct = type { ptr, [6 x ptr], i32, i8, i8, i8, [16 x %struct.efct_intr_context], i32, [32 x i8], i32, %struct.list_head, %struct.efct_scsi_tgt, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.efct_hw, i32, ptr, i32, %struct.xarray, i32, i32, ptr }
%struct.efct_intr_context = type { ptr, i32 }
%struct.efct_scsi_tgt = type { i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, ptr, %struct.list_head, %struct.spinlock, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.efc_domain_record = type { i32, i32, [6 x i8], [8 x i8], %union.anon.85, i32, i32, i8, i8 }
%union.anon.85 = type { [512 x i8] }
%struct.efc = type { ptr, ptr, ptr, i32, i64, i64, i64, i64, i64, ptr, ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.libefc_function_template, %struct.spinlock, i8, i8, i32, ptr, ptr, ptr, i64, i64, i8, i32, i32, ptr, %struct.atomic_t, i8, %struct.spinlock, %struct.list_head, i32 }
%struct.libefc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sli4_cmd_rq_cfg = type { i16, i8, i8, i8, i8 }
%struct.sli4_rqst_cmn_set_features_set_fdt_xfer_hint = type { i32 }
%struct.hw_rq = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sli4_cmd_reg_fcfi = type { %struct.sli4_mbox_command_header, i16, i16, i16, i16, i16, i16, [4 x %struct.sli4_cmd_reg_fcfi_rq_cfg], i32 }
%struct.sli4_mbox_command_header = type { i8, i8, i16 }
%struct.sli4_cmd_reg_fcfi_rq_cfg = type { i8, i8, i8, i8 }
%struct.efct_hw_io = type { %struct.kref, i32, ptr, %struct.list_head, %struct.efct_hw_wqe, ptr, %struct.efc_dma, i16, i8, i32, i8, i8, i16, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.efc_dma, ptr, i32, i32, i32 }
%struct.efct_hw_wqe = type { %struct.list_head, i8, i8, i32, i32, ptr }
%struct.reqtag_pool = type { %struct.spinlock, [65535 x ptr], %struct.list_head }
%struct.hw_cq = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, %struct.list_head, i32 }
%struct.hw_wq = type { %struct.list_head, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, %struct.list_head, ptr, i32, i32 }
%struct.efc_hw_rq_buffer = type { i16, %struct.efc_dma }
%struct.sli4_rqst_cmn_set_features_health_check = type { i32 }
%struct.efc_hw_sequence = type { %struct.list_head, ptr, i8, ptr, ptr, ptr }
%struct.sli4_cmd_reg_fcfi_mrq = type { %struct.sli4_mbox_command_header, i16, i16, i16, i16, i16, i16, [4 x %struct.sli4_cmd_reg_fcfi_rq_cfg], i32, i32 }
%struct.hw_wq_callback = type { i16, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.efct_command_ctx = type { %struct.list_head, ptr, ptr, [256 x i8], ptr }
%struct.efct_mbox_rqst_ctx = type { ptr, ptr }
%struct.sli4_sge = type { i32, i32, i32, i32 }
%struct.sli4_abort_wqe = type { i32, i32, i32, i8, i8, i16, i32, i32, i16, i16, i8, i8, i8, i8, i32, i16, i16, i16, i8, i8, i8, i8, i16 }
%struct.sli4_generic_wqe = type { [6 x i32], i16, i16, i8, i8, i8, i8, i32, i16, i16, i16, i8, i8, i8, i8, i16 }
%struct.hw_eq = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, %struct.list_head, i32 }
%struct.sli_bls_payload = type { i32, i16, i16, %union.anon.87 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i8, i8, i8, i8, i16, i16, i16, i16 }
%struct.sli_bls_params = type { i32, i32, i16, i16, i32, i32, i8, [12 x i8], i16, i16 }
%struct.sli_els_params = type { i32, i32, i16, i32, i32, i8, i32, i32, i8, i8, i16, i16 }
%struct.sli_ct_params = type { i8, i8, i8, i8, i16, i32, i32, i32, i8, i32, i32, i16, i16 }
%struct.efc_disc_io = type { %struct.efc_dma, %struct.efc_dma, i32, i16, i16, i32, i32, i32, i32, i8, %union.efc_disc_io_param }
%union.efc_disc_io_param = type { %struct.efc_io_els_params }
%struct.efc_io_els_params = type { i32, i16, i8 }
%struct.efc_io_ct_params = type { i8, i8, i8, i8, i16 }
%struct.sli_fcp_tgt_params = type { i32, i32, i32, i32, i32, i16, i16, i8, i8, i32, i32, i16, i16 }
%struct.fcp_txrdy = type { i32, i32, [4 x i8] }
%struct.efct_hw_send_frame_context = type { ptr, ptr, %struct.efct_hw_wqe, ptr, ptr, ptr, %struct.efc_dma }
%struct.efct_hw_link_stat_cb_arg = type { ptr, ptr }
%struct.efct_hw_link_stat_counts = type { i8, i32 }
%struct.sli4_cmd_read_link_stats = type { %struct.sli4_mbox_command_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.efct_hw_host_stat_cb_arg = type { ptr, ptr }
%struct.efct_hw_host_stat_counts = type { i32 }
%struct.sli4_cmd_read_status = type { %struct.sli4_mbox_command_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.efct_hw_async_call_ctx = type { ptr, ptr, [256 x i8] }
%struct.efct_hw_fw_wr_cb_arg = type { ptr, ptr }
%struct.sli4_cmd_sli_config = type { %struct.sli4_mbox_command_header, i32, i32, [3 x i32], %union.anon.93 }
%union.anon.93 = type { %struct.sli4_bufptr, [220 x i8] }
%struct.sli4_bufptr = type { %struct.sli4_dmaaddr, i32 }
%struct.sli4_dmaaddr = type { i32, i32 }
%struct.sli4_cmd_read_topology = type { %struct.sli4_mbox_command_header, i32, i32, i8, i8, i8, i8, %struct.sli4_bde, i32, i32, i8, i8, i8, i8, i16, i16, i8, i8, i16, i32 }
%struct.sli4_bde = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.sli4_dmaaddr }
%struct.sli4_fc_wcqe = type { i8, i8, i16, i32, i32, i8, i8, i8, i8 }

@efct_hw_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&hw->bmbx_lock\00", [17 x i8] zeroinitializer }, align 32
@efct_hw_setup.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&hw->cmd_lock\00", [18 x i8] zeroinitializer }, align 32
@efct_hw_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 258, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to allocate mailbox buffer pool\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"efct_hw_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/elx/efct/efct_hw.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@efct_hw_setup._entry_ptr = internal global ptr @efct_hw_setup._entry, section ".printk_index", align 4
@efct_hw_setup._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 266, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to allocate mbox request pool\0A\00", [58 x i8] zeroinitializer }, align 32
@efct_hw_setup._entry_ptr.10 = internal global ptr @efct_hw_setup._entry.8, section ".printk_index", align 4
@efct_hw_setup.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&hw->io_lock\00", [19 x i8] zeroinitializer }, align 32
@efct_hw_setup._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 279, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SLI setup failed\0A\00", [46 x i8] zeroinitializer }, align 32
@efct_hw_setup._entry_ptr.15 = internal global ptr @efct_hw_setup._entry.13, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@efct_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 901, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"command found on cmd list\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"efct_hw_init\00", [19 x i8] zeroinitializer }, align 32
@efct_hw_init._entry_ptr = internal global ptr @efct_hw_init._entry, section ".printk_index", align 4
@efct_hw_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.5, i32 906, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"command found on pending list\0A\00", [33 x i8] zeroinitializer }, align 32
@efct_hw_init._entry_ptr.20 = internal global ptr @efct_hw_init._entry.18, section ".printk_index", align 4
@efct_hw_init.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.17, ptr @.str.5, ptr @.str.22, i8 0, i8 -23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"efct\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rmvd %d items from io_wait_free list\0A\00", [58 x i8] zeroinitializer }, align 32
@efct_hw_init.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.17, ptr @.str.5, ptr @.str.23, i8 0, i8 -20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rmvd %d items from io_inuse list\0A\00", [62 x i8] zeroinitializer }, align 32
@efct_hw_init.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.17, ptr @.str.5, ptr @.str.24, i8 0, i8 -18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rmvd %d items from io_free list\0A\00", [63 x i8] zeroinitializer }, align 32
@efct_hw_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.17, ptr @.str.5, i32 962, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SLI failed to initialize\0A\00", [38 x i8] zeroinitializer }, align 32
@efct_hw_init._entry_ptr.27 = internal global ptr @efct_hw_init._entry.25, section ".printk_index", align 4
@efct_hw_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.17, ptr @.str.5, i32 969, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Enable port Health check fail\0A\00", [33 x i8] zeroinitializer }, align 32
@efct_hw_init._entry_ptr.30 = internal global ptr @efct_hw_init._entry.28, section ".printk_index", align 4
@efct_hw_init.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.17, ptr @.str.5, ptr @.str.31, i8 0, i8 -9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Max CQs %d, hash size = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@efct_hw_init.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.17, ptr @.str.5, ptr @.str.32, i8 0, i8 -8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Max RQs %d, hash size = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@efct_hw_init.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.17, ptr @.str.5, ptr @.str.33, i8 0, i8 -7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Max WQs %d, hash size = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@efct_hw_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.17, ptr @.str.5, i32 1010, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_allocate failed\0A\00", [44 x i8] zeroinitializer }, align 32
@efct_hw_init._entry_ptr.36 = internal global ptr @efct_hw_init._entry.34, section ".printk_index", align 4
@efct_hw_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.17, ptr @.str.5, i32 1016, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"WARNING - error posting RQ buffers\0A\00", [60 x i8] zeroinitializer }, align 32
@efct_hw_init._entry_ptr.39 = internal global ptr @efct_hw_init._entry.37, section ".printk_index", align 4
@efct_hw_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.17, ptr @.str.5, i32 1023, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"config rq failed %d\0A\00", [43 x i8] zeroinitializer }, align 32
@efct_hw_init._entry_ptr.42 = internal global ptr @efct_hw_init._entry.40, section ".printk_index", align 4
@efct_hw_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.17, ptr @.str.5, i32 1029, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"REG_FCFI_MRQ FCFI reg failed\0A\00", [34 x i8] zeroinitializer }, align 32
@efct_hw_init._entry_ptr.45 = internal global ptr @efct_hw_init._entry.43, section ".printk_index", align 4
@efct_hw_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.17, ptr @.str.5, i32 1035, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"REG_FCFI_MRQ MRQ reg failed\0A\00", [35 x i8] zeroinitializer }, align 32
@efct_hw_init._entry_ptr.48 = internal global ptr @efct_hw_init._entry.46, section ".printk_index", align 4
@efct_hw_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.17, ptr @.str.5, i32 1047, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"efct_hw_reqtag_pool_alloc failed\0A\00", [62 x i8] zeroinitializer }, align 32
@efct_hw_init._entry_ptr.51 = internal global ptr @efct_hw_init._entry.49, section ".printk_index", align 4
@efct_hw_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.17, ptr @.str.5, i32 1053, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IO allocation failure\0A\00", [41 x i8] zeroinitializer }, align 32
@efct_hw_init._entry_ptr.54 = internal global ptr @efct_hw_init._entry.52, section ".printk_index", align 4
@efct_hw_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.17, ptr @.str.5, i32 1059, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IO initialization failure\0A\00", [37 x i8] zeroinitializer }, align 32
@efct_hw_init._entry_ptr.57 = internal global ptr @efct_hw_init._entry.55, section ".printk_index", align 4
@efct_hw_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.17, ptr @.str.5, i32 1111, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"alloc for send_frame_io failed\0A\00", [32 x i8] zeroinitializer }, align 32
@efct_hw_init._entry_ptr.60 = internal global ptr @efct_hw_init._entry.58, section ".printk_index", align 4
@efct_hw_parse_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.5, i32 1132, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"p is NULL\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"efct_hw_parse_filter\00", [43 x i8] zeroinitializer }, align 32
@efct_hw_parse_filter._entry_ptr = internal global ptr @efct_hw_parse_filter._entry, section ".printk_index", align 4
@.str.63 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@efct_hw_parse_filter._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.62, ptr @.str.5, i32 1139, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kstrtoint failed\0A\00", [46 x i8] zeroinitializer }, align 32
@efct_hw_parse_filter._entry_ptr.66 = internal global ptr @efct_hw_parse_filter._entry.64, section ".printk_index", align 4
@efct_hw_rx_allocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.5, i32 1246, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rx_buffer_alloc hdr_buf failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efct_hw_rx_allocate\00", [44 x i8] zeroinitializer }, align 32
@efct_hw_rx_allocate._entry_ptr = internal global ptr @efct_hw_rx_allocate._entry, section ".printk_index", align 4
@efct_hw_rx_allocate.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.68, ptr @.str.5, ptr @.str.69, i8 1, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rq[%2d] rq_id %02d header  %4d by %4d bytes\0A\00", [51 x i8] zeroinitializer }, align 32
@efct_hw_rx_allocate._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.68, ptr @.str.5, i32 1262, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rx_buffer_alloc fb_buf failed\0A\00", [33 x i8] zeroinitializer }, align 32
@efct_hw_rx_allocate._entry_ptr.72 = internal global ptr @efct_hw_rx_allocate._entry.70, section ".printk_index", align 4
@efct_hw_rx_allocate.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.68, ptr @.str.5, ptr @.str.73, i8 1, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rq[%2d] rq_id %02d default %4d by %4d bytes\0A\00", [51 x i8] zeroinitializer }, align 32
@efct_hw_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.5, i32 1386, ptr @.str.76, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Chip in an error state - reset needed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efct_hw_command\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@efct_hw_command._entry_ptr = internal global ptr @efct_hw_command._entry, section ".printk_index", align 4
@efct_hw_command._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.75, ptr @.str.5, i32 1390, ptr @.str.76, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"status=%#x error1=%#x error2=%#x\0A\00", [62 x i8] zeroinitializer }, align 32
@efct_hw_command._entry_ptr.79 = internal global ptr @efct_hw_command._entry.77, section ".printk_index", align 4
@efct_hw_command._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.75, ptr @.str.5, i32 1418, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't send command, HW state=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@efct_hw_command._entry_ptr.82 = internal global ptr @efct_hw_command._entry.80, section ".printk_index", align 4
@efct_issue_mbox_rqst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.5, i32 1569, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"issue mbox rqst failure rc:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"efct_issue_mbox_rqst\00", [43 x i8] zeroinitializer }, align 32
@efct_issue_mbox_rqst._entry_ptr = internal global ptr @efct_issue_mbox_rqst._entry, section ".printk_index", align 4
@efct_hw_io_init_sges._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.5, i32 1698, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad parameter hw=%p io=%p\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"efct_hw_io_init_sges\00", [43 x i8] zeroinitializer }, align 32
@efct_hw_io_init_sges._entry_ptr = internal global ptr @efct_hw_io_init_sges._entry, section ".printk_index", align 4
@efct_hw_io_init_sges._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.5, i32 1750, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unsupported IO type %#x\0A\00", [39 x i8] zeroinitializer }, align 32
@efct_hw_io_init_sges._entry_ptr.89 = internal global ptr @efct_hw_io_init_sges._entry.87, section ".printk_index", align 4
@efct_hw_io_add_sge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.5, i32 1787, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"bad parameter hw=%p io=%p addr=%lx length=%u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_hw_io_add_sge\00", [45 x i8] zeroinitializer }, align 32
@efct_hw_io_add_sge._entry_ptr = internal global ptr @efct_hw_io_add_sge._entry, section ".printk_index", align 4
@efct_hw_io_add_sge._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.5, i32 1794, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"length of SGE %d bigger than allowed %d\0A\00", [55 x i8] zeroinitializer }, align 32
@efct_hw_io_add_sge._entry_ptr.94 = internal global ptr @efct_hw_io_add_sge._entry.92, section ".printk_index", align 4
@efct_hw_io_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.95, ptr @.str.5, i32 1939, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"efct_hw_io_abort\00", [47 x i8] zeroinitializer }, align 32
@efct_hw_io_abort._entry_ptr = internal global ptr @efct_hw_io_abort._entry, section ".printk_index", align 4
@efct_hw_io_abort._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.5, i32 1945, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot send IO abort, HW state=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@efct_hw_io_abort._entry_ptr.98 = internal global ptr @efct_hw_io_abort._entry.96, section ".printk_index", align 4
@efct_hw_io_abort.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.95, ptr @.str.5, ptr @.str.99, i8 1, i8 -24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"io not active xri=0x%x tag=0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@efct_hw_io_abort.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.95, ptr @.str.5, ptr @.str.100, i8 1, i8 -22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"io_to_abort xri=0x%x not active on WQ\0A\00", [57 x i8] zeroinitializer }, align 32
@efct_hw_io_abort.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.95, ptr @.str.5, ptr @.str.101, i8 1, i8 -18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"io already being aborted xri=0x%x tag=0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@efct_hw_io_abort._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.95, ptr @.str.5, i32 2000, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't allocate request tag\0A\00", [36 x i8] zeroinitializer }, align 32
@efct_hw_io_abort._entry_ptr.104 = internal global ptr @efct_hw_io_abort._entry.102, section ".printk_index", align 4
@efct_hw_reqtag_pool_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&reqtag_pool->lock\00", [45 x i8] zeroinitializer }, align 32
@efct_hw_reqtag_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.5, i32 2128, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WQCB is already freed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efct_hw_reqtag_free\00", [44 x i8] zeroinitializer }, align 32
@efct_hw_reqtag_free._entry_ptr = internal global ptr @efct_hw_reqtag_free._entry, section ".printk_index", align 4
@efct_hw_reqtag_get_instance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.5, i32 2146, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wqcb for instance %d is null\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"efct_hw_reqtag_get_instance\00", [36 x i8] zeroinitializer }, align 32
@efct_hw_reqtag_get_instance._entry_ptr = internal global ptr @efct_hw_reqtag_get_instance._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@efct_hw_eq_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.5, i32 2242, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad CQ_ID %#06x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_hw_eq_process\00", [45 x i8] zeroinitializer }, align 32
@efct_hw_eq_process._entry_ptr = internal global ptr @efct_hw_eq_process._entry, section ".printk_index", align 4
@efct_hw_cq_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.5, i32 2373, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad WQ_ID %#06x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_hw_cq_process\00", [45 x i8] zeroinitializer }, align 32
@efct_hw_cq_process._entry_ptr = internal global ptr @efct_hw_cq_process._entry, section ".printk_index", align 4
@efct_hw_cq_process.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.113, ptr @.str.5, ptr @.str.114, i8 2, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unhandled ctype=%#x rid=%#x\0A\00", [35 x i8] zeroinitializer }, align 32
@efct_hw_wq_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.5, i32 2421, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"reque xri failed, status = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_hw_wq_process\00", [45 x i8] zeroinitializer }, align 32
@efct_hw_wq_process._entry_ptr = internal global ptr @efct_hw_wq_process._entry, section ".printk_index", align 4
@efct_hw_wq_process._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.5, i32 2427, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid request tag: x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@efct_hw_wq_process._entry_ptr.119 = internal global ptr @efct_hw_wq_process._entry.117, section ".printk_index", align 4
@efct_hw_wq_process._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.5, i32 2432, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wqcb callback is NULL\0A\00", [41 x i8] zeroinitializer }, align 32
@efct_hw_wq_process._entry_ptr.122 = internal global ptr @efct_hw_wq_process._entry.120, section ".printk_index", align 4
@efct_hw_xabt_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.5, i32 2450, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"xabt io lookup failed rid=%#x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"efct_hw_xabt_process\00", [43 x i8] zeroinitializer }, align 32
@efct_hw_xabt_process._entry_ptr = internal global ptr @efct_hw_xabt_process._entry, section ".printk_index", align 4
@efct_hw_xabt_process.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.124, ptr @.str.5, ptr @.str.125, i8 2, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xabt io not busy rid=%#x\0A\00", [38 x i8] zeroinitializer }, align 32
@efct_hw_bls_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.5, i32 2579, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot send BLS, HW state=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"efct_hw_bls_send\00", [47 x i8] zeroinitializer }, align 32
@efct_hw_bls_send._entry_ptr = internal global ptr @efct_hw_bls_send._entry, section ".printk_index", align 4
@efct_hw_bls_send._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.5, i32 2585, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HIO allocation failed\0A\00", [41 x i8] zeroinitializer }, align 32
@efct_hw_bls_send._entry_ptr.130 = internal global ptr @efct_hw_bls_send._entry.128, section ".printk_index", align 4
@efct_hw_bls_send._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.127, ptr @.str.5, i32 2610, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"XMIT_BLS_RSP64 WQE error\0A\00", [38 x i8] zeroinitializer }, align 32
@efct_hw_bls_send._entry_ptr.133 = internal global ptr @efct_hw_bls_send._entry.131, section ".printk_index", align 4
@efct_hw_bls_send._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.127, ptr @.str.5, i32 2628, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sli_queue_write failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@efct_hw_bls_send._entry_ptr.136 = internal global ptr @efct_hw_bls_send._entry.134, section ".printk_index", align 4
@efct_els_hw_srrs_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.5, i32 2710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013HIO alloc failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"efct_els_hw_srrs_send\00", [42 x i8] zeroinitializer }, align 32
@efct_els_hw_srrs_send._entry_ptr = internal global ptr @efct_els_hw_srrs_send._entry, section ".printk_index", align 4
@efct_els_hw_srrs_send.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.138, ptr @.str.5, ptr @.str.139, i8 2, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot send SRRS, HW state=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@efct_els_hw_srrs_send._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.138, ptr @.str.5, i32 2770, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"REQ WQE error\0A\00", [17 x i8] zeroinitializer }, align 32
@efct_els_hw_srrs_send._entry_ptr.142 = internal global ptr @efct_els_hw_srrs_send._entry.140, section ".printk_index", align 4
@efct_els_hw_srrs_send._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.138, ptr @.str.5, i32 2784, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RSP WQE error\0A\00", [17 x i8] zeroinitializer }, align 32
@efct_els_hw_srrs_send._entry_ptr.145 = internal global ptr @efct_els_hw_srrs_send._entry.143, section ".printk_index", align 4
@efct_els_hw_srrs_send._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.138, ptr @.str.5, i32 2798, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GEN WQE error\0A\00", [17 x i8] zeroinitializer }, align 32
@efct_els_hw_srrs_send._entry_ptr.148 = internal global ptr @efct_els_hw_srrs_send._entry.146, section ".printk_index", align 4
@efct_els_hw_srrs_send._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.138, ptr @.str.5, i32 2812, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"XMIT SEQ WQE error\0A\00", [44 x i8] zeroinitializer }, align 32
@efct_els_hw_srrs_send._entry_ptr.151 = internal global ptr @efct_els_hw_srrs_send._entry.149, section ".printk_index", align 4
@efct_els_hw_srrs_send._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.138, ptr @.str.5, i32 2818, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bad SRRS type %#x\0A\00", [45 x i8] zeroinitializer }, align 32
@efct_els_hw_srrs_send._entry_ptr.154 = internal global ptr @efct_els_hw_srrs_send._entry.152, section ".printk_index", align 4
@efct_els_hw_srrs_send._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.138, ptr @.str.5, i32 2837, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@efct_els_hw_srrs_send._entry_ptr.156 = internal global ptr @efct_els_hw_srrs_send._entry.155, section ".printk_index", align 4
@efct_hw_io_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.5, i32 2854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013bad parm hw=%p io=%p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efct_hw_io_send\00", [16 x i8] zeroinitializer }, align 32
@efct_hw_io_send._entry_ptr = internal global ptr @efct_hw_io_send._entry, section ".printk_index", align 4
@efct_hw_io_send._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.158, ptr @.str.5, i32 2859, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot send IO, HW state=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@efct_hw_io_send._entry_ptr.161 = internal global ptr @efct_hw_io_send._entry.159, section ".printk_index", align 4
@efct_hw_io_send._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.158, ptr @.str.5, i32 2895, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TRECEIVE WQE error\0A\00", [44 x i8] zeroinitializer }, align 32
@efct_hw_io_send._entry_ptr.164 = internal global ptr @efct_hw_io_send._entry.162, section ".printk_index", align 4
@efct_hw_io_send._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.158, ptr @.str.5, i32 2915, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TSEND WQE error\0A\00", [47 x i8] zeroinitializer }, align 32
@efct_hw_io_send._entry_ptr.167 = internal global ptr @efct_hw_io_send._entry.165, section ".printk_index", align 4
@efct_hw_io_send._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.158, ptr @.str.5, i32 2934, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TRSP WQE error\0A\00", [16 x i8] zeroinitializer }, align 32
@efct_hw_io_send._entry_ptr.170 = internal global ptr @efct_hw_io_send._entry.168, section ".printk_index", align 4
@efct_hw_io_send._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.158, ptr @.str.5, i32 2941, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@efct_hw_io_send._entry_ptr.172 = internal global ptr @efct_hw_io_send._entry.171, section ".printk_index", align 4
@efct_hw_io_send._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.158, ptr @.str.5, i32 2961, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@efct_hw_io_send._entry_ptr.174 = internal global ptr @efct_hw_io_send._entry.173, section ".printk_index", align 4
@efct_hw_send_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.175, ptr @.str.5, i32 2989, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_hw_send_frame\00", [45 x i8] zeroinitializer }, align 32
@efct_hw_send_frame._entry_ptr = internal global ptr @efct_hw_send_frame._entry, section ".printk_index", align 4
@efct_hw_send_frame._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.5, i32 3006, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sli_send_frame_wqe failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@efct_hw_send_frame._entry_ptr.178 = internal global ptr @efct_hw_send_frame._entry.176, section ".printk_index", align 4
@efct_hw_send_frame._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.175, ptr @.str.5, i32 3013, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"efct_hw_wq_write failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@efct_hw_send_frame._entry_ptr.181 = internal global ptr @efct_hw_send_frame._entry.179, section ".printk_index", align 4
@efct_hw_get_host_stats.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.182, ptr @.str.5, ptr @.str.183, i8 3, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.182 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efct_hw_get_host_stats\00", [41 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"READ_HOST_STATS failed\0A\00", [40 x i8] zeroinitializer }, align 32
@efct_hw_async_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.5, i32 3251, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"COMMON_NOP format failure\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_hw_async_call\00", [45 x i8] zeroinitializer }, align 32
@efct_hw_async_call._entry_ptr = internal global ptr @efct_hw_async_call._entry, section ".printk_index", align 4
@efct_hw_async_call._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.185, ptr @.str.5, i32 3259, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"COMMON_NOP command failure, rc=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@efct_hw_async_call._entry_ptr.188 = internal global ptr @efct_hw_async_call._entry.186, section ".printk_index", align 4
@.str.189 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"/prg/\00", [26 x i8] zeroinitializer }, align 32
@efct_hw_firmware_write.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.190, ptr @.str.5, ptr @.str.191, i8 3, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.190 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efct_hw_firmware_write\00", [41 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"COMMON_WRITE_OBJECT failed\0A\00", [36 x i8] zeroinitializer }, align 32
@efct_hw_port_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.5, i32 3357, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CONFIG_LINK failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"efct_hw_port_control\00", [43 x i8] zeroinitializer }, align 32
@efct_hw_port_control._entry_ptr = internal global ptr @efct_hw_port_control._entry, section ".printk_index", align 4
@efct_hw_port_control._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.193, ptr @.str.5, i32 3369, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"INIT_LINK failed\0A\00", [46 x i8] zeroinitializer }, align 32
@efct_hw_port_control._entry_ptr.196 = internal global ptr @efct_hw_port_control._entry.194, section ".printk_index", align 4
@efct_hw_port_control._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.193, ptr @.str.5, i32 3378, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DOWN_LINK failed\0A\00", [46 x i8] zeroinitializer }, align 32
@efct_hw_port_control._entry_ptr.199 = internal global ptr @efct_hw_port_control._entry.197, section ".printk_index", align 4
@efct_hw_port_control.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.193, ptr @.str.5, ptr @.str.200, i8 3, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.200 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unhandled control %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@efct_hw_teardown.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.201, ptr @.str.5, ptr @.str.202, i8 3, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.201 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"efct_hw_teardown\00", [47 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"All commands completed on MQ queue\0A\00", [60 x i8] zeroinitializer }, align 32
@efct_hw_teardown.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.201, ptr @.str.5, ptr @.str.203, i8 3, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.203 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Some cmds still pending on MQ queue\0A\00", [59 x i8] zeroinitializer }, align 32
@efct_hw_reset.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.204, ptr @.str.5, ptr @.str.205, i8 3, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.204 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"efct_hw_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HW state %d is not active\0A\00", [37 x i8] zeroinitializer }, align 32
@efct_hw_reset.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.204, ptr @.str.5, ptr @.str.202, i8 3, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@efct_hw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.204, ptr @.str.5, i32 3572, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Some commands still pending on MQ queue\0A\00", [55 x i8] zeroinitializer }, align 32
@efct_hw_reset._entry_ptr = internal global ptr @efct_hw_reset._entry, section ".printk_index", align 4
@efct_hw_cb_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.5, i32 184, ptr @.str.209, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Link Up, NPORT, speed is %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efct_hw_cb_link\00", [16 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@efct_hw_cb_link._entry_ptr = internal global ptr @efct_hw_cb_link._entry, section ".printk_index", align 4
@efct_hw_cb_link._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.208, ptr @.str.5, i32 194, ptr @.str.209, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Link Up, LOOP, speed is %d\0A\00", [36 x i8] zeroinitializer }, align 32
@efct_hw_cb_link._entry_ptr.212 = internal global ptr @efct_hw_cb_link._entry.210, section ".printk_index", align 4
@efct_hw_cb_link.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.208, ptr @.str.5, ptr @.str.213, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.213 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"READ_TOPOLOGY failed\0A\00", [42 x i8] zeroinitializer }, align 32
@efct_hw_cb_link._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.208, ptr @.str.5, i32 207, ptr @.str.209, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(%#x), speed is %d\0A\00", [42 x i8] zeroinitializer }, align 32
@efct_hw_cb_link._entry_ptr.216 = internal global ptr @efct_hw_cb_link._entry.214, section ".printk_index", align 4
@.str.217 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Link Up, unsupported topology \00", [33 x i8] zeroinitializer }, align 32
@efct_hw_cb_link._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.208, ptr @.str.5, i32 211, ptr @.str.209, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Link down\0A\00", [21 x i8] zeroinitializer }, align 32
@efct_hw_cb_link._entry_ptr.220 = internal global ptr @efct_hw_cb_link._entry.218, section ".printk_index", align 4
@efct_hw_cb_link.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.208, ptr @.str.5, ptr @.str.221, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.221 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unhandled link status %#x\0A\00", [37 x i8] zeroinitializer }, align 32
@__efct_read_topology_cb.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.222, ptr @.str.5, ptr @.str.223, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.222 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__efct_read_topology_cb\00", [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bad status cqe=%#x mqe=%#x\0A\00", [36 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@sli_get_max_sgl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.225, ptr @.str.226, i32 3745, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported SGL page sizes %#x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sli_get_max_sgl\00", [16 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/scsi/elx/efct/../libefc/../libefc_sli/sli4.h\00", [43 x i8] zeroinitializer }, align 32
@sli_get_max_sgl._entry_ptr = internal global ptr @sli_get_max_sgl._entry, section ".printk_index", align 4
@efct_hw_read_max_dump_size.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.227, ptr @.str.5, ptr @.str.228, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.227 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"efct_hw_read_max_dump_size\00", [37 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"set dump location cmd failed\0A\00", [34 x i8] zeroinitializer }, align 32
@efct_hw_read_max_dump_size.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.227, ptr @.str.5, ptr @.str.229, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.229 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Dump size %x\0A\00", [18 x i8] zeroinitializer }, align 32
@efct_hw_config_sli_port_health_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.231, ptr @.str.5, i32 874, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"efct_hw_command returns %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"efct_hw_config_sli_port_health_check\00", [59 x i8] zeroinitializer }, align 32
@efct_hw_config_sli_port_health_check._entry_ptr = internal global ptr @efct_hw_config_sli_port_health_check._entry, section ".printk_index", align 4
@efct_hw_config_sli_port_health_check.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.231, ptr @.str.5, ptr @.str.232, i8 0, i8 -37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.232 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SLI Port Health Check is enabled\0A\00", [62 x i8] zeroinitializer }, align 32
@efct_hw_config_set_fdt_xfer_hint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.234, ptr @.str.5, i32 711, ptr @.str.235, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"set FDT hint %d failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"efct_hw_config_set_fdt_xfer_hint\00", [63 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@efct_hw_config_set_fdt_xfer_hint._entry_ptr = internal global ptr @efct_hw_config_set_fdt_xfer_hint._entry, section ".printk_index", align 4
@efct_hw_config_set_fdt_xfer_hint._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.234, ptr @.str.5, i32 714, ptr @.str.209, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Set FTD transfer hint to %d\0A\00", [35 x i8] zeroinitializer }, align 32
@efct_hw_config_set_fdt_xfer_hint._entry_ptr.238 = internal global ptr @efct_hw_config_set_fdt_xfer_hint._entry.236, section ".printk_index", align 4
@efct_hw_config_rq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.240, ptr @.str.5, i32 726, ptr @.str.209, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"using REG_FCFI standard\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efct_hw_config_rq\00", [46 x i8] zeroinitializer }, align 32
@efct_hw_config_rq._entry_ptr = internal global ptr @efct_hw_config_rq._entry, section ".printk_index", align 4
@efct_hw_config_rq._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.240, ptr @.str.5, i32 768, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FCFI registration failed\0A\00", [38 x i8] zeroinitializer }, align 32
@efct_hw_config_rq._entry_ptr.243 = internal global ptr @efct_hw_config_rq._entry.241, section ".printk_index", align 4
@efct_logfcfi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.245, ptr @.str.5, i32 323, ptr @.str.209, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"REG_FCFI: filter[%d] %08X -> RQ[%d] id=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"efct_logfcfi\00", [19 x i8] zeroinitializer }, align 32
@efct_logfcfi._entry_ptr = internal global ptr @efct_logfcfi._entry, section ".printk_index", align 4
@efct_hw_config_mrq.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.246, ptr @.str.5, ptr @.str.247, i8 0, i8 -55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.246 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_hw_config_mrq\00", [45 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Issue reg_fcfi_mrq count:%d policy:%d mode:%d\0A\00", [49 x i8] zeroinitializer }, align 32
@efct_hw_config_mrq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.246, ptr @.str.5, i32 811, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sli_cmd_reg_fcfi_mrq() failed\0A\00", [33 x i8] zeroinitializer }, align 32
@efct_hw_config_mrq._entry_ptr = internal global ptr @efct_hw_config_mrq._entry, section ".printk_index", align 4
@efct_hw_config_mrq._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.246, ptr @.str.5, i32 821, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"FCFI MRQ reg failed. cmd=%x status=%x\0A\00", [57 x i8] zeroinitializer }, align 32
@efct_hw_config_mrq._entry_ptr.251 = internal global ptr @efct_hw_config_mrq._entry.249, section ".printk_index", align 4
@efct_hw_setup_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.252, ptr @.str.5, i32 541, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"efct_hw_setup_io\00", [47 x i8] zeroinitializer }, align 32
@efct_hw_setup_io._entry_ptr = internal global ptr @efct_hw_setup_io._entry, section ".printk_index", align 4
@efct_hw_setup_io._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.252, ptr @.str.5, i32 555, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sli_resource_alloc failed @ %d\0A\00", [32 x i8] zeroinitializer }, align 32
@efct_hw_setup_io._entry_ptr.255 = internal global ptr @efct_hw_setup_io._entry.253, section ".printk_index", align 4
@efct_hw_setup_io._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.252, ptr @.str.5, i32 567, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dma_alloc fail %d\0A\00", [45 x i8] zeroinitializer }, align 32
@efct_hw_setup_io._entry_ptr.258 = internal global ptr @efct_hw_setup_io._entry.256, section ".printk_index", align 4
@efct_hw_wq_process_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.260, ptr @.str.5, i32 402, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unhandled io type %#x for XRI 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"efct_hw_wq_process_io\00", [42 x i8] zeroinitializer }, align 32
@efct_hw_wq_process_io._entry_ptr = internal global ptr @efct_hw_wq_process_io._entry, section ".printk_index", align 4
@efct_hw_wq_process_io.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.260, ptr @.str.5, ptr @.str.261, i8 0, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.261 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"aborting xri=%#x tag=%#x\0A\00", [38 x i8] zeroinitializer }, align 32
@efct_hw_wq_process_io.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.260, ptr @.str.5, ptr @.str.262, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.262 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s%#x tag=%#x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"abort in progress xri=\00", [41 x i8] zeroinitializer }, align 32
@efct_hw_wq_process_io.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.260, ptr @.str.5, ptr @.str.264, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.264 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s%#x tag=%#x rc=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to abort xri=\00", [43 x i8] zeroinitializer }, align 32
@efct_hw_init_prereg_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.267, ptr @.str.5, i32 652, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SGL post failed, rc=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efct_hw_init_prereg_io\00", [41 x i8] zeroinitializer }, align 32
@efct_hw_init_prereg_io._entry_ptr = internal global ptr @efct_hw_init_prereg_io._entry, section ".printk_index", align 4
@efct_hw_rx_buffer_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.269, ptr @.str.5, i32 1197, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DMA allocation failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"efct_hw_rx_buffer_alloc\00", [40 x i8] zeroinitializer }, align 32
@efct_hw_rx_buffer_alloc._entry_ptr = internal global ptr @efct_hw_rx_buffer_alloc._entry, section ".printk_index", align 4
@efct_hw_cmd_submit_pending.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.270, ptr @.str.5, ptr @.str.135, i8 1, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.270 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"efct_hw_cmd_submit_pending\00", [37 x i8] zeroinitializer }, align 32
@_efct_hw_io_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.272, ptr @.str.5, i32 1595, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WQ not assigned for cpu:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_efct_hw_io_alloc\00", [46 x i8] zeroinitializer }, align 32
@_efct_hw_io_alloc._entry_ptr = internal global ptr @_efct_hw_io_alloc._entry, section ".printk_index", align 4
@efct_hw_wq_process_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.274, ptr @.str.5, i32 1894, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HW IO already freed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"efct_hw_wq_process_abort\00", [39 x i8] zeroinitializer }, align 32
@efct_hw_wq_process_abort._entry_ptr = internal global ptr @efct_hw_wq_process_abort._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@efct_hw_command_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.276, ptr @.str.5, i32 1465, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no command context\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"efct_hw_command_process\00", [40 x i8] zeroinitializer }, align 32
@efct_hw_command_process._entry_ptr = internal global ptr @efct_hw_command_process._entry, section ".printk_index", align 4
@efct_hw_command_cancel.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.277, ptr @.str.5, ptr @.str.278, i8 1, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.277 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efct_hw_command_cancel\00", [41 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hung command %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@efct_hw_sli_reset.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.279, ptr @.str.5, ptr @.str.280, i8 3, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.279 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efct_hw_sli_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"issuing function level reset\0A\00", [34 x i8] zeroinitializer }, align 32
@efct_hw_sli_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.279, ptr @.str.5, i32 3514, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sli_reset failed\0A\00", [46 x i8] zeroinitializer }, align 32
@efct_hw_sli_reset._entry_ptr = internal global ptr @efct_hw_sli_reset._entry, section ".printk_index", align 4
@efct_hw_sli_reset.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.279, ptr @.str.5, ptr @.str.282, i8 3, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.282 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"issuing firmware reset\0A\00", [40 x i8] zeroinitializer }, align 32
@efct_hw_sli_reset._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @.str.279, ptr @.str.5, i32 3521, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sli_soft_reset failed\0A\00", [41 x i8] zeroinitializer }, align 32
@efct_hw_sli_reset._entry_ptr.285 = internal global ptr @efct_hw_sli_reset._entry.283, section ".printk_index", align 4
@efct_hw_sli_reset.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.279, ptr @.str.5, ptr @.str.280, i8 3, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@efct_hw_sli_reset._entry.286 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.279, ptr @.str.5, i32 3530, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@efct_hw_sli_reset._entry_ptr.287 = internal global ptr @efct_hw_sli_reset._entry.286, section ".printk_index", align 4
@efct_hw_sli_reset._entry.288 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.289, ptr @.str.279, ptr @.str.5, i32 3535, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unknown type - no reset performed\0A\00", [61 x i8] zeroinitializer }, align 32
@efct_hw_sli_reset._entry_ptr.290 = internal global ptr @efct_hw_sli_reset._entry.288, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.291 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.292 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.293 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.294 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.295 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.296 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.297 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.298 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.299 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.300 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.301 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.302 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.303 = internal global [10 x i64] [i64 8, i64 8, i64 4, i64 8, i64 16, i64 32, i64 128, i64 144, i64 160, i64 176]
@__sancov_gen_cov_switch_values.304 = internal global [12 x i64] [i64 10, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.305 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 248, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 249, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 258, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 266, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 270, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 279, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 901, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 906, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 932, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 943, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 954, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 962, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 969, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 988, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 992, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 996, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1010, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1016, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1023, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1029, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1035, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1047, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1053, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1059, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1111, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1132, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1137, i32 29 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1139, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1246, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1251, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1262, i32 4 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1266, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1386, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1387, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1417, i32 4 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1569, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1698, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1750, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1785, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1792, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1938, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1944, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1952, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1960, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1974, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2000, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2073, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2128, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2145, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2242, i32 5 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2373, i32 5 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2390, i32 4 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2420, i32 4 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2427, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2432, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2450, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2455, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2578, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2585, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2610, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2627, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2710, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2715, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2770, i32 4 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2784, i32 4 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2798, i32 4 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2812, i32 4 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2818, i32 3 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2836, i32 4 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2854, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2859, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2895, i32 4 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2915, i32 4 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2934, i32 4 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2941, i32 3 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2960, i32 4 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 2989, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3006, i32 3 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3013, i32 3 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3205, i32 3 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3251, i32 3 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3259, i32 3 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3319, i32 32 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3325, i32 3 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3357, i32 4 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3369, i32 4 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3378, i32 4 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3382, i32 3 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3413, i32 4 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3416, i32 4 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3551, i32 3 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3571, i32 4 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 183, i32 4 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 193, i32 4 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 203, i32 5 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 205, i32 4 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 211, i32 3 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 221, i32 3 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 88, i32 3 }
@___asan_gen_.922 = private unnamed_addr constant [46 x i8] c"../drivers/scsi/elx/efct/../libefc_sli/sli4.h\00", align 1
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.922, i32 3744, i32 3 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 66, i32 3 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 73, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 874, i32 3 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 876, i32 3 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 710, i32 3 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 713, i32 3 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 726, i32 2 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 768, i32 3 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 321, i32 2 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 804, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 811, i32 3 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 820, i32 3 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 541, i32 4 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 554, i32 4 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 567, i32 5 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 401, i32 3 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 415, i32 4 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 440, i32 5 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 448, i32 5 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 652, i32 4 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1197, i32 4 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1365, i32 4 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1594, i32 4 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1894, i32 3 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1465, i32 3 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 1521, i32 3 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3512, i32 3 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3514, i32 4 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3519, i32 3 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3521, i32 4 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3530, i32 4 }
@___asan_gen_.1125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1129 = private constant [35 x i8] c"../drivers/scsi/elx/efct/efct_hw.c\00", align 1
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1129, i32 3535, i32 3 }
@llvm.compiler.used = appending global [367 x ptr] [ptr @_efct_hw_io_alloc._entry, ptr @_efct_hw_io_alloc._entry_ptr, ptr @efct_els_hw_srrs_send._entry, ptr @efct_els_hw_srrs_send._entry.140, ptr @efct_els_hw_srrs_send._entry.143, ptr @efct_els_hw_srrs_send._entry.146, ptr @efct_els_hw_srrs_send._entry.149, ptr @efct_els_hw_srrs_send._entry.152, ptr @efct_els_hw_srrs_send._entry.155, ptr @efct_els_hw_srrs_send._entry_ptr, ptr @efct_els_hw_srrs_send._entry_ptr.142, ptr @efct_els_hw_srrs_send._entry_ptr.145, ptr @efct_els_hw_srrs_send._entry_ptr.148, ptr @efct_els_hw_srrs_send._entry_ptr.151, ptr @efct_els_hw_srrs_send._entry_ptr.154, ptr @efct_els_hw_srrs_send._entry_ptr.156, ptr @efct_hw_async_call._entry, ptr @efct_hw_async_call._entry.186, ptr @efct_hw_async_call._entry_ptr, ptr @efct_hw_async_call._entry_ptr.188, ptr @efct_hw_bls_send._entry, ptr @efct_hw_bls_send._entry.128, ptr @efct_hw_bls_send._entry.131, ptr @efct_hw_bls_send._entry.134, ptr @efct_hw_bls_send._entry_ptr, ptr @efct_hw_bls_send._entry_ptr.130, ptr @efct_hw_bls_send._entry_ptr.133, ptr @efct_hw_bls_send._entry_ptr.136, ptr @efct_hw_cb_link._entry, ptr @efct_hw_cb_link._entry.210, ptr @efct_hw_cb_link._entry.214, ptr @efct_hw_cb_link._entry.218, ptr @efct_hw_cb_link._entry_ptr, ptr @efct_hw_cb_link._entry_ptr.212, ptr @efct_hw_cb_link._entry_ptr.216, ptr @efct_hw_cb_link._entry_ptr.220, ptr @efct_hw_command._entry, ptr @efct_hw_command._entry.77, ptr @efct_hw_command._entry.80, ptr @efct_hw_command._entry_ptr, ptr @efct_hw_command._entry_ptr.79, ptr @efct_hw_command._entry_ptr.82, ptr @efct_hw_command_process._entry, ptr @efct_hw_command_process._entry_ptr, ptr @efct_hw_config_mrq._entry, ptr @efct_hw_config_mrq._entry.249, ptr @efct_hw_config_mrq._entry_ptr, ptr @efct_hw_config_mrq._entry_ptr.251, ptr @efct_hw_config_rq._entry, ptr @efct_hw_config_rq._entry.241, ptr @efct_hw_config_rq._entry_ptr, ptr @efct_hw_config_rq._entry_ptr.243, ptr @efct_hw_config_set_fdt_xfer_hint._entry, ptr @efct_hw_config_set_fdt_xfer_hint._entry.236, ptr @efct_hw_config_set_fdt_xfer_hint._entry_ptr, ptr @efct_hw_config_set_fdt_xfer_hint._entry_ptr.238, ptr @efct_hw_config_sli_port_health_check._entry, ptr @efct_hw_config_sli_port_health_check._entry_ptr, ptr @efct_hw_cq_process._entry, ptr @efct_hw_cq_process._entry_ptr, ptr @efct_hw_eq_process._entry, ptr @efct_hw_eq_process._entry_ptr, ptr @efct_hw_init._entry, ptr @efct_hw_init._entry.18, ptr @efct_hw_init._entry.25, ptr @efct_hw_init._entry.28, ptr @efct_hw_init._entry.34, ptr @efct_hw_init._entry.37, ptr @efct_hw_init._entry.40, ptr @efct_hw_init._entry.43, ptr @efct_hw_init._entry.46, ptr @efct_hw_init._entry.49, ptr @efct_hw_init._entry.52, ptr @efct_hw_init._entry.55, ptr @efct_hw_init._entry.58, ptr @efct_hw_init._entry_ptr, ptr @efct_hw_init._entry_ptr.20, ptr @efct_hw_init._entry_ptr.27, ptr @efct_hw_init._entry_ptr.30, ptr @efct_hw_init._entry_ptr.36, ptr @efct_hw_init._entry_ptr.39, ptr @efct_hw_init._entry_ptr.42, ptr @efct_hw_init._entry_ptr.45, ptr @efct_hw_init._entry_ptr.48, ptr @efct_hw_init._entry_ptr.51, ptr @efct_hw_init._entry_ptr.54, ptr @efct_hw_init._entry_ptr.57, ptr @efct_hw_init._entry_ptr.60, ptr @efct_hw_init_prereg_io._entry, ptr @efct_hw_init_prereg_io._entry_ptr, ptr @efct_hw_io_abort._entry, ptr @efct_hw_io_abort._entry.102, ptr @efct_hw_io_abort._entry.96, ptr @efct_hw_io_abort._entry_ptr, ptr @efct_hw_io_abort._entry_ptr.104, ptr @efct_hw_io_abort._entry_ptr.98, ptr @efct_hw_io_add_sge._entry, ptr @efct_hw_io_add_sge._entry.92, ptr @efct_hw_io_add_sge._entry_ptr, ptr @efct_hw_io_add_sge._entry_ptr.94, ptr @efct_hw_io_init_sges._entry, ptr @efct_hw_io_init_sges._entry.87, ptr @efct_hw_io_init_sges._entry_ptr, ptr @efct_hw_io_init_sges._entry_ptr.89, ptr @efct_hw_io_send._entry, ptr @efct_hw_io_send._entry.159, ptr @efct_hw_io_send._entry.162, ptr @efct_hw_io_send._entry.165, ptr @efct_hw_io_send._entry.168, ptr @efct_hw_io_send._entry.171, ptr @efct_hw_io_send._entry.173, ptr @efct_hw_io_send._entry_ptr, ptr @efct_hw_io_send._entry_ptr.161, ptr @efct_hw_io_send._entry_ptr.164, ptr @efct_hw_io_send._entry_ptr.167, ptr @efct_hw_io_send._entry_ptr.170, ptr @efct_hw_io_send._entry_ptr.172, ptr @efct_hw_io_send._entry_ptr.174, ptr @efct_hw_parse_filter._entry, ptr @efct_hw_parse_filter._entry.64, ptr @efct_hw_parse_filter._entry_ptr, ptr @efct_hw_parse_filter._entry_ptr.66, ptr @efct_hw_port_control._entry, ptr @efct_hw_port_control._entry.194, ptr @efct_hw_port_control._entry.197, ptr @efct_hw_port_control._entry_ptr, ptr @efct_hw_port_control._entry_ptr.196, ptr @efct_hw_port_control._entry_ptr.199, ptr @efct_hw_reqtag_free._entry, ptr @efct_hw_reqtag_free._entry_ptr, ptr @efct_hw_reqtag_get_instance._entry, ptr @efct_hw_reqtag_get_instance._entry_ptr, ptr @efct_hw_reset._entry, ptr @efct_hw_reset._entry_ptr, ptr @efct_hw_rx_allocate._entry, ptr @efct_hw_rx_allocate._entry.70, ptr @efct_hw_rx_allocate._entry_ptr, ptr @efct_hw_rx_allocate._entry_ptr.72, ptr @efct_hw_rx_buffer_alloc._entry, ptr @efct_hw_rx_buffer_alloc._entry_ptr, ptr @efct_hw_send_frame._entry, ptr @efct_hw_send_frame._entry.176, ptr @efct_hw_send_frame._entry.179, ptr @efct_hw_send_frame._entry_ptr, ptr @efct_hw_send_frame._entry_ptr.178, ptr @efct_hw_send_frame._entry_ptr.181, ptr @efct_hw_setup._entry, ptr @efct_hw_setup._entry.13, ptr @efct_hw_setup._entry.8, ptr @efct_hw_setup._entry_ptr, ptr @efct_hw_setup._entry_ptr.10, ptr @efct_hw_setup._entry_ptr.15, ptr @efct_hw_setup_io._entry, ptr @efct_hw_setup_io._entry.253, ptr @efct_hw_setup_io._entry.256, ptr @efct_hw_setup_io._entry_ptr, ptr @efct_hw_setup_io._entry_ptr.255, ptr @efct_hw_setup_io._entry_ptr.258, ptr @efct_hw_sli_reset._entry, ptr @efct_hw_sli_reset._entry.283, ptr @efct_hw_sli_reset._entry.286, ptr @efct_hw_sli_reset._entry.288, ptr @efct_hw_sli_reset._entry_ptr, ptr @efct_hw_sli_reset._entry_ptr.285, ptr @efct_hw_sli_reset._entry_ptr.287, ptr @efct_hw_sli_reset._entry_ptr.290, ptr @efct_hw_wq_process._entry, ptr @efct_hw_wq_process._entry.117, ptr @efct_hw_wq_process._entry.120, ptr @efct_hw_wq_process._entry_ptr, ptr @efct_hw_wq_process._entry_ptr.119, ptr @efct_hw_wq_process._entry_ptr.122, ptr @efct_hw_wq_process_abort._entry, ptr @efct_hw_wq_process_abort._entry_ptr, ptr @efct_hw_wq_process_io._entry, ptr @efct_hw_wq_process_io._entry_ptr, ptr @efct_hw_xabt_process._entry, ptr @efct_hw_xabt_process._entry_ptr, ptr @efct_issue_mbox_rqst._entry, ptr @efct_issue_mbox_rqst._entry_ptr, ptr @efct_logfcfi._entry, ptr @efct_logfcfi._entry_ptr, ptr @sli_get_max_sgl._entry, ptr @sli_get_max_sgl._entry_ptr, ptr @efct_hw_setup.__key, ptr @.str, ptr @efct_hw_setup.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @efct_hw_setup.__key.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @efct_hw_reqtag_pool_alloc.__key, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.157, ptr @.str.158, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.175, ptr @.str.177, ptr @.str.180, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.187, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.195, ptr @.str.198, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.211, ptr @.str.213, ptr @.str.215, ptr @.str.217, ptr @.str.219, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.237, ptr @.str.239, ptr @.str.240, ptr @.str.242, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.250, ptr @.str.252, ptr @.str.254, ptr @.str.257, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.284, ptr @.str.289], section "llvm.metadata"
@0 = internal global [275 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_setup.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_setup._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_setup.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_setup._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_parse_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_parse_filter._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_rx_allocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_rx_allocate._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_command._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_command._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_issue_mbox_rqst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_io_init_sges._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_io_init_sges._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_io_add_sge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_io_add_sge._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_io_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_io_abort._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_io_abort._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_reqtag_pool_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_reqtag_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_reqtag_get_instance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_eq_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_cq_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_wq_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_wq_process._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_wq_process._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_xabt_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_bls_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_bls_send._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_bls_send._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_bls_send._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_els_hw_srrs_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_els_hw_srrs_send._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_els_hw_srrs_send._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_els_hw_srrs_send._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_els_hw_srrs_send._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_els_hw_srrs_send._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_els_hw_srrs_send._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_io_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_io_send._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_io_send._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_io_send._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_io_send._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_io_send._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_io_send._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_send_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_send_frame._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_send_frame._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_async_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_async_call._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_port_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_port_control._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_port_control._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_cb_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_cb_link._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_cb_link._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_cb_link._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sli_get_max_sgl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_config_sli_port_health_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_config_set_fdt_xfer_hint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_config_set_fdt_xfer_hint._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_config_rq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_config_rq._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_logfcfi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_config_mrq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_config_mrq._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_setup_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_setup_io._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_setup_io._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_wq_process_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_init_prereg_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_rx_buffer_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_efct_hw_io_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_wq_process_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_command_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_sli_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_sli_reset._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_sli_reset._entry.286 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_hw_sli_reset._entry.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_setup(ptr noundef %hw, ptr noundef %os, ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_setup_called = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %hw_setup_called to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_setup_called, align 4, !range !547
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %hw, i32 0, i32 25728)
  %3 = ptrtoint ptr %hw_setup_called to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %hw_setup_called, align 4
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %os, ptr %hw, align 8
  %bmbx_lock = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 36
  tail call void @__mutex_init(ptr noundef %bmbx_lock, ptr noundef nonnull @.str, ptr noundef nonnull @efct_hw_setup.__key) #13
  %cmd_lock = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 37
  tail call void @__raw_spin_lock_init(ptr noundef %cmd_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @efct_hw_setup.__key.1, i16 noundef signext 3) #13
  %cmd_head = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 38
  %5 = ptrtoint ptr %cmd_head to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %cmd_head, ptr %cmd_head, align 4
  %prev.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 38, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cmd_head, ptr %prev.i, align 4
  %cmd_pending = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 39
  %7 = ptrtoint ptr %cmd_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %cmd_pending, ptr %cmd_pending, align 4
  %prev.i113 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 39, i32 1
  %8 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cmd_pending, ptr %prev.i113, align 4
  %cmd_head_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 22
  %9 = ptrtoint ptr %cmd_head_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cmd_head_count, align 4
  %call.i = tail call ptr @mempool_create(i32 noundef 32, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 276 to ptr)) #13
  %cmd_ctx_pool = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 40
  %10 = ptrtoint ptr %cmd_ctx_pool to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %cmd_ctx_pool, align 8
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #16
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call.i114 = tail call ptr @mempool_create(i32 noundef 32, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 8 to ptr)) #13
  %mbox_rqst_pool = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 41
  %15 = ptrtoint ptr %mbox_rqst_pool to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i114, ptr %mbox_rqst_pool, align 4
  %tobool17.not = icmp eq ptr %call.i114, null
  br i1 %tobool17.not, label %do.end21, label %do.body26

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.9) #16
  br label %cleanup

do.body26:                                        ; preds = %if.end14
  %io_lock = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 45
  tail call void @__raw_spin_lock_init(ptr noundef %io_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @efct_hw_setup.__key.11, i16 noundef signext 3) #13
  %io_inuse = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 46
  %20 = ptrtoint ptr %io_inuse to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %io_inuse, ptr %io_inuse, align 4
  %prev.i115 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 46, i32 1
  %21 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %io_inuse, ptr %prev.i115, align 4
  %io_free = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 48
  %22 = ptrtoint ptr %io_free to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %io_free, ptr %io_free, align 4
  %prev.i116 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 48, i32 1
  %23 = ptrtoint ptr %prev.i116 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %io_free, ptr %prev.i116, align 4
  %io_wait_free = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 47
  %24 = ptrtoint ptr %io_wait_free to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %io_wait_free, ptr %io_wait_free, align 4
  %prev.i117 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 47, i32 1
  %25 = ptrtoint ptr %prev.i117 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %io_wait_free, ptr %prev.i117, align 4
  %io_alloc_failed_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 52
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_alloc_failed_count, i32 noundef 4) #13
  %26 = ptrtoint ptr %io_alloc_failed_count to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %io_alloc_failed_count, align 4
  %speed = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 7
  %27 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 17, ptr %speed, align 4
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 8
  %reg = getelementptr inbounds %struct.efct, ptr %os, i32 0, i32 1
  %call31 = tail call i32 @sli_setup(ptr noundef %sli, ptr noundef %29, ptr noundef %pdev, ptr noundef %reg) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end40, label %do.end36

do.end36:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.14) #16
  br label %cleanup

if.end40:                                         ; preds = %do.body26
  %config = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 9
  %link.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 42
  %34 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %link.i, align 8
  %topology.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 42, i32 1
  %35 = ptrtoint ptr %topology.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 5, ptr %topology.i, align 4
  %medium.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 42, i32 2
  %36 = ptrtoint ptr %medium.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %medium.i, align 8
  %speed.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 42, i32 3
  %37 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %speed.i, align 4
  %loop_map.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 42, i32 4
  %38 = ptrtoint ptr %loop_map.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %loop_map.i, align 8
  %fc_id.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 42, i32 5
  %39 = ptrtoint ptr %fc_id.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %fc_id.i, align 4
  %call43 = tail call i32 @sli_callback(ptr noundef %sli, i32 noundef 0, ptr noundef nonnull @efct_hw_cb_link, ptr noundef %hw) #13
  %arrayidx = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 10, i32 1, i32 0
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %arrayidx45 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 10, i32 0
  %42 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx45, align 4
  %arrayidx.1 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 10, i32 1, i32 1
  %43 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.1, align 4
  %arrayidx45.1 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx45.1, align 4
  %arrayidx.2 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 10, i32 1, i32 2
  %46 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.2, align 4
  %arrayidx45.2 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 10, i32 2
  %48 = ptrtoint ptr %arrayidx45.2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx45.2, align 4
  %arrayidx45.3 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 10, i32 3
  %arrayidx.4 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 10, i32 1, i32 4
  %49 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.4, align 4
  %arrayidx45.4 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 10, i32 4
  %51 = ptrtoint ptr %arrayidx45.4 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx45.4, align 4
  %div112 = lshr i32 %44, 1
  %52 = ptrtoint ptr %arrayidx45.3 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %div112, ptr %arrayidx45.3, align 4
  %rq_default_buffer_size = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 9
  %53 = ptrtoint ptr %rq_default_buffer_size to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1024, ptr %rq_default_buffer_size, align 4
  %size = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 28, i32 3, i32 1
  %54 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size, align 4
  %n_io = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 5
  %56 = ptrtoint ptr %n_io to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %n_io, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %57 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %57) #13
  %58 = tail call i32 @llvm.umin.i32(i32 %call4.i.i, i32 16)
  %59 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %config, align 8
  %sgl_page_sizes.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 32
  %60 = ptrtoint ptr %sgl_page_sizes.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sgl_page_sizes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp.not.i = icmp eq i32 %61, 1
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %pci.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.224, i32 noundef %61) #16
  br label %sli_get_max_sgl.exit

if.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %max_sgl_pages.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 33
  %64 = ptrtoint ptr %max_sgl_pages.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_sgl_pages.i, align 4
  %66 = shl i32 %65, 8
  %div5.i = and i32 %66, 268435200
  %phi.bo = add nsw i32 %div5.i, -3
  br label %sli_get_max_sgl.exit

sli_get_max_sgl.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ -3, %do.end.i ], [ %phi.bo, %if.end.i ]
  %67 = tail call i32 @llvm.umin.i32(i32 %retval.0.i, i32 64)
  %n_sgl = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 6
  %68 = ptrtoint ptr %n_sgl to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %n_sgl, align 8
  tail call fastcc void @efct_hw_read_max_dump_size(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %sli_get_max_sgl.exit, %do.end36, %do.end21, %do.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end36 ], [ 0, %sli_get_max_sgl.exit ], [ -5, %do.end21 ], [ -5, %do.end12 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_setup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_callback(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_hw_cb_link(ptr noundef %ctx, ptr nocapture noundef readonly %e) #0 align 64 {
entry:
  %drec = alloca %struct.efc_domain_record, align 4
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %link.i = getelementptr inbounds %struct.efct_hw, ptr %ctx, i32 0, i32 42
  %2 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %link.i, align 8
  %topology.i = getelementptr inbounds %struct.efct_hw, ptr %ctx, i32 0, i32 42, i32 1
  %3 = ptrtoint ptr %topology.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %topology.i, align 4
  %medium.i = getelementptr inbounds %struct.efct_hw, ptr %ctx, i32 0, i32 42, i32 2
  %4 = ptrtoint ptr %medium.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %medium.i, align 8
  %speed.i = getelementptr inbounds %struct.efct_hw, ptr %ctx, i32 0, i32 42, i32 3
  %5 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %speed.i, align 4
  %loop_map.i = getelementptr inbounds %struct.efct_hw, ptr %ctx, i32 0, i32 42, i32 4
  %6 = ptrtoint ptr %loop_map.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %loop_map.i, align 8
  %fc_id.i = getelementptr inbounds %struct.efct_hw, ptr %ctx, i32 0, i32 42, i32 5
  %7 = ptrtoint ptr %fc_id.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %fc_id.i, align 4
  %8 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %e, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.body65 [
    i32 0, label %sw.bb
    i32 1, label %do.end50
  ]

sw.bb:                                            ; preds = %entry
  %11 = call ptr @memcpy(ptr %link.i, ptr %e, i32 24)
  %efcport = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %efcport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %efcport, align 4
  %link_status = getelementptr inbounds %struct.efc, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %link_status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %link_status, align 4
  %topology = getelementptr inbounds %struct.sli4_link_event, ptr %e, i32 0, i32 1
  %15 = ptrtoint ptr %topology to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %topology, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.291)
  switch i32 %16, label %do.end39 [
    i32 1, label %if.then
    i32 2, label %if.then9
  ]

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 548, ptr nonnull %drec) #13
  %18 = call ptr @memset(ptr %drec, i32 0, i32 548)
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %speed = getelementptr inbounds %struct.sli4_link_event, ptr %e, i32 0, i32 3
  %23 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %speed, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.207, i32 noundef %24) #16
  %25 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %speed, align 4
  %speed3 = getelementptr inbounds %struct.efc_domain_record, ptr %drec, i32 0, i32 5
  %27 = ptrtoint ptr %speed3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %speed3, align 4
  %fc_id = getelementptr inbounds %struct.sli4_link_event, ptr %e, i32 0, i32 5
  %28 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fc_id, align 4
  %fc_id4 = getelementptr inbounds %struct.efc_domain_record, ptr %drec, i32 0, i32 6
  %30 = ptrtoint ptr %fc_id4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %fc_id4, align 4
  %is_nport = getelementptr inbounds %struct.efc_domain_record, ptr %drec, i32 0, i32 8
  %31 = ptrtoint ptr %is_nport to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %is_nport, align 1
  %32 = ptrtoint ptr %efcport to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %efcport, align 4
  %call6 = call i32 @efc_domain_cb(ptr noundef %33, i32 noundef 7, ptr noundef nonnull %drec) #13
  call void @llvm.lifetime.end.p0(i64 548, ptr nonnull %drec) #13
  br label %sw.epilog

if.then9:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #13
  %34 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %35 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %speed16 = getelementptr inbounds %struct.sli4_link_event, ptr %e, i32 0, i32 3
  %39 = ptrtoint ptr %speed16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %speed16, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15, ptr noundef nonnull @.str.211, i32 noundef %40) #16
  %sli = getelementptr inbounds %struct.efct_hw, ptr %ctx, i32 0, i32 1
  %loop_map = getelementptr inbounds %struct.efct_hw, ptr %ctx, i32 0, i32 49
  %call17 = call i32 @sli_cmd_read_topology(ptr noundef %sli, ptr noundef nonnull %buf, ptr noundef %loop_map) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.then18, label %if.then9.if.end35_crit_edge

if.then9.if.end35_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then18:                                        ; preds = %if.then9
  %call20 = call i32 @efct_hw_command(ptr noundef %ctx, ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull @__efct_read_topology_cb, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %phi.cmp = icmp eq i32 %call20, 0
  br i1 %phi.cmp, label %if.then18.if.end35_crit_edge, label %do.body23

if.then18.if.end35_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.body23:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_cb_link.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_cb_link, %if.then28)) #13
          to label %if.end35 [label %if.then28], !srcloc !548

if.then28:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctx, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_cb_link.__UNIQUE_ID_ddebug316, ptr noundef %dev31, ptr noundef nonnull @.str.213) #13
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %do.body23, %if.then18.if.end35_crit_edge, %if.then9.if.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #13
  br label %sw.epilog

do.end39:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %speed44 = getelementptr inbounds %struct.sli4_link_event, ptr %e, i32 0, i32 3
  %49 = ptrtoint ptr %speed44 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %speed44, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev42, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.217, i32 noundef %16, i32 noundef %50) #16
  br label %sw.epilog

do.end50:                                         ; preds = %entry
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 8
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev53, ptr noundef nonnull @.str.219) #16
  %53 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %e, align 4
  %55 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %link.i, align 8
  %efcport57 = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 13
  %56 = ptrtoint ptr %efcport57 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %efcport57, align 4
  %link_status58 = getelementptr inbounds %struct.efc, ptr %57, i32 0, i32 12
  %58 = ptrtoint ptr %link_status58 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %link_status58, align 4
  %59 = load ptr, ptr %efcport57, align 4
  %domain = getelementptr inbounds %struct.efc, ptr %59, i32 0, i32 20
  %60 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %domain, align 8
  %tobool60.not = icmp eq ptr %61, null
  br i1 %tobool60.not, label %do.end50.sw.epilog_crit_edge, label %if.then61

do.end50.sw.epilog_crit_edge:                     ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then61:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #15
  %call63 = tail call i32 @efc_domain_cb(ptr noundef %59, i32 noundef 6, ptr noundef nonnull %61) #13
  br label %sw.epilog

do.body65:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_cb_link.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_cb_link, %if.then77)) #13
          to label %sw.epilog [label %if.then77], !srcloc !548

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctx, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %dev80 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %66 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %e, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_cb_link.__UNIQUE_ID_ddebug317, ptr noundef %dev80, ptr noundef nonnull @.str.221, i32 noundef %67) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then77, %do.body65, %if.then61, %do.end50.sw.epilog_crit_edge, %do.end39, %if.end35, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efct_hw_read_max_dump_size(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #13
  %0 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devfn, align 4
  %and = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %call = call i32 @sli_cmd_common_set_dump_location(ptr noundef %sli, ptr noundef nonnull %buf, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef null, i8 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call5 = call i32 @efct_hw_command(ptr noundef %hw, ptr noundef nonnull %buf, i32 noundef 0, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end16, label %do.body

do.body:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_read_max_dump_size.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_read_max_dump_size, %if.then12)) #13
          to label %cleanup [label %if.then12], !srcloc !548

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_read_max_dump_size.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.228) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  %buffer_length_dword = getelementptr inbounds i8, ptr %buf, i32 40
  %11 = ptrtoint ptr %buffer_length_dword to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buffer_length_dword, align 4
  %13 = and i32 %12, -256
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %dump_size = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 4
  %15 = ptrtoint ptr %dump_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dump_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_read_max_dump_size.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_read_max_dump_size, %if.then30)) #13
          to label %cleanup [label %if.then30], !srcloc !548

if.then30:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %dump_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dump_size, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_read_max_dump_size.__UNIQUE_ID_ddebug314, ptr noundef %dev33, ptr noundef nonnull @.str.229, i32 noundef %21) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end16, %if.then12, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_init(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i.i = alloca [256 x i8], align 1
  %req.i.i = alloca %struct.efc_dma, align 4
  %index.i = alloca i32, align 4
  %rq_cfg.i = alloca [4 x %struct.sli4_cmd_rq_cfg], align 2
  %buf.i563 = alloca [256 x i8], align 1
  %buf.i = alloca [256 x i8], align 1
  %param.i = alloca %struct.sli4_rqst_cmn_set_features_set_fdt_xfer_hint, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_lock = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 37
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #13
  %cmd_head = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 38
  %0 = ptrtoint ptr %cmd_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cmd_head, align 4
  %cmp.i.not = icmp eq ptr %1, %cmd_head
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call2) #13
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_pending = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 39
  %6 = ptrtoint ptr %cmd_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %cmd_pending, align 4
  %cmp.i542.not = icmp eq ptr %7, %cmd_pending
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call2) #13
  br i1 %cmp.i542.not, label %if.end20, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.19) #16
  br label %cleanup

if.end20:                                         ; preds = %if.end
  tail call void @efct_hw_rx_free(ptr noundef %hw)
  %io_wait_free = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 47
  %12 = ptrtoint ptr %io_wait_free to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %io_wait_free, align 4
  %cmp.i544.not653 = icmp eq ptr %13, %io_wait_free
  br i1 %cmp.i544.not653, label %if.end20.if.end43_crit_edge, label %if.end20.while.body_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  br label %while.body

if.end20.if.end43_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %if.end20.while.body_crit_edge
  %14 = phi ptr [ %24, %list_del_init.exit.while.body_crit_edge ], [ %13, %if.end20.while.body_crit_edge ]
  %rem_count.0654 = phi i32 [ %inc, %list_del_init.exit.while.body_crit_edge ], [ 0, %if.end20.while.body_crit_edge ]
  %inc = add i32 %rem_count.0654, 1
  %call.i.i546 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #13
  br i1 %call.i.i546, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %14, ptr %14, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %14, ptr %prev.i3.i, align 4
  %23 = ptrtoint ptr %io_wait_free to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %io_wait_free, align 4
  %cmp.i544.not = icmp eq ptr %24, %io_wait_free
  br i1 %cmp.i544.not, label %while.end, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %rem_count.0654)
  %cmp26 = icmp ult i32 %rem_count.0654, 2147483647
  br i1 %cmp26, label %do.body29, label %while.end.if.end43_crit_edge

while.end.if.end43_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

do.body29:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_init.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_init, %if.then36)) #13
          to label %if.end43 [label %if.then36], !srcloc !548

if.then36:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_init.__UNIQUE_ID_ddebug323, ptr noundef %dev39, ptr noundef nonnull @.str.22, i32 noundef %inc) #13
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %do.body29, %while.end.if.end43_crit_edge, %if.end20.if.end43_crit_edge
  %io_inuse = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 46
  %29 = ptrtoint ptr %io_inuse to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %io_inuse, align 4
  %cmp.i547.not655 = icmp eq ptr %30, %io_inuse
  br i1 %cmp.i547.not655, label %if.end43.if.end80_crit_edge, label %if.end43.while.body49_crit_edge

if.end43.while.body49_crit_edge:                  ; preds = %if.end43
  br label %while.body49

if.end43.if.end80_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

while.body49:                                     ; preds = %list_del_init.exit554.while.body49_crit_edge, %if.end43.while.body49_crit_edge
  %31 = phi ptr [ %41, %list_del_init.exit554.while.body49_crit_edge ], [ %30, %if.end43.while.body49_crit_edge ]
  %rem_count.1656 = phi i32 [ %inc50, %list_del_init.exit554.while.body49_crit_edge ], [ 0, %if.end43.while.body49_crit_edge ]
  %inc50 = add i32 %rem_count.1656, 1
  %call.i.i549 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %31) #13
  br i1 %call.i.i549, label %if.end.i.i552, label %while.body49.list_del_init.exit554_crit_edge

while.body49.list_del_init.exit554_crit_edge:     ; preds = %while.body49
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit554

if.end.i.i552:                                    ; preds = %while.body49
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i550 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i550 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i550, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %prev1.i.i.i551 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i551 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i551, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del_init.exit554

list_del_init.exit554:                            ; preds = %if.end.i.i552, %while.body49.list_del_init.exit554_crit_edge
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %31, ptr %31, align 4
  %prev.i3.i553 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i3.i553 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %31, ptr %prev.i3.i553, align 4
  %40 = ptrtoint ptr %io_inuse to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %io_inuse, align 4
  %cmp.i547.not = icmp eq ptr %41, %io_inuse
  br i1 %cmp.i547.not, label %while.end57, label %list_del_init.exit554.while.body49_crit_edge

list_del_init.exit554.while.body49_crit_edge:     ; preds = %list_del_init.exit554
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body49

while.end57:                                      ; preds = %list_del_init.exit554
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %rem_count.1656)
  %cmp58 = icmp ult i32 %rem_count.1656, 2147483647
  br i1 %cmp58, label %do.body61, label %while.end57.if.end80_crit_edge

while.end57.if.end80_crit_edge:                   ; preds = %while.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

do.body61:                                        ; preds = %while.end57
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_init.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_init, %if.then73)) #13
          to label %if.end80 [label %if.then73], !srcloc !548

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %dev76 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_init.__UNIQUE_ID_ddebug324, ptr noundef %dev76, ptr noundef nonnull @.str.23, i32 noundef %inc50) #13
  br label %if.end80

if.end80:                                         ; preds = %if.then73, %do.body61, %while.end57.if.end80_crit_edge, %if.end43.if.end80_crit_edge
  %io_free = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 48
  %46 = ptrtoint ptr %io_free to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %io_free, align 4
  %cmp.i555.not658 = icmp eq ptr %47, %io_free
  br i1 %cmp.i555.not658, label %if.end80.if.end117_crit_edge, label %if.end80.while.body86_crit_edge

if.end80.while.body86_crit_edge:                  ; preds = %if.end80
  br label %while.body86

if.end80.if.end117_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117

while.body86:                                     ; preds = %list_del_init.exit562.while.body86_crit_edge, %if.end80.while.body86_crit_edge
  %48 = phi ptr [ %58, %list_del_init.exit562.while.body86_crit_edge ], [ %47, %if.end80.while.body86_crit_edge ]
  %rem_count.2659 = phi i32 [ %inc87, %list_del_init.exit562.while.body86_crit_edge ], [ 0, %if.end80.while.body86_crit_edge ]
  %inc87 = add i32 %rem_count.2659, 1
  %call.i.i557 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %48) #13
  br i1 %call.i.i557, label %if.end.i.i560, label %while.body86.list_del_init.exit562_crit_edge

while.body86.list_del_init.exit562_crit_edge:     ; preds = %while.body86
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit562

if.end.i.i560:                                    ; preds = %while.body86
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i558 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i558 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i558, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %48, align 4
  %prev1.i.i.i559 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i559 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i559, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del_init.exit562

list_del_init.exit562:                            ; preds = %if.end.i.i560, %while.body86.list_del_init.exit562_crit_edge
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %48, ptr %48, align 4
  %prev.i3.i561 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i3.i561 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %48, ptr %prev.i3.i561, align 4
  %57 = ptrtoint ptr %io_free to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %io_free, align 4
  %cmp.i555.not = icmp eq ptr %58, %io_free
  br i1 %cmp.i555.not, label %while.end94, label %list_del_init.exit562.while.body86_crit_edge

list_del_init.exit562.while.body86_crit_edge:     ; preds = %list_del_init.exit562
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body86

while.end94:                                      ; preds = %list_del_init.exit562
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %rem_count.2659)
  %cmp95 = icmp ult i32 %rem_count.2659, 2147483647
  br i1 %cmp95, label %do.body98, label %while.end94.if.end117_crit_edge

while.end94.if.end117_crit_edge:                  ; preds = %while.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117

do.body98:                                        ; preds = %while.end94
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_init.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_init, %if.then110)) #13
          to label %if.end117 [label %if.then110], !srcloc !548

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %dev113 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_init.__UNIQUE_ID_ddebug325, ptr noundef %dev113, ptr noundef nonnull @.str.24, i32 noundef %inc87) #13
  br label %if.end117

if.end117:                                        ; preds = %if.then110, %do.body98, %while.end94.if.end117_crit_edge, %if.end80.if.end117_crit_edge
  %config = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 9
  %n_rq = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 3
  %63 = ptrtoint ptr %n_rq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %n_rq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp118 = icmp eq i32 %64, 1
  br i1 %cmp118, label %if.then120, label %if.end117.if.end121_crit_edge

if.end117.if.end121_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end121

if.then120:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  %features = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 29
  %65 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %features, align 4
  %and = and i32 %66, -65537
  store i32 %and, ptr %features, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then120, %if.end117.if.end121_crit_edge
  %sli122 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %call123 = tail call i32 @sli_init(ptr noundef %sli122) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end132, label %do.end128

do.end128:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #15
  %67 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %dev131 = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev131, ptr noundef nonnull @.str.26) #16
  br label %cleanup

if.end132:                                        ; preds = %if.end121
  %sliport_healthcheck = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 7
  %71 = ptrtoint ptr %sliport_healthcheck to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %sliport_healthcheck, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool133.not = icmp eq i8 %72, 0
  br i1 %tobool133.not, label %if.end132.if.end146_crit_edge, label %if.then134

if.end132.if.end146_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end146

if.then134:                                       ; preds = %if.end132
  %call135 = tail call fastcc i32 @efct_hw_config_sli_port_health_check(ptr noundef %hw, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp136.not = icmp eq i32 %call135, 0
  br i1 %cmp136.not, label %if.then134.if.end146_crit_edge, label %do.end141

if.then134.if.end146_crit_edge:                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end146

do.end141:                                        ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  %dev144 = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev144, ptr noundef nonnull @.str.29) #16
  br label %cleanup

if.end146:                                        ; preds = %if.then134.if.end146_crit_edge, %if.end132.if.end146_crit_edge
  %if_type = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 5
  %77 = ptrtoint ptr %if_type to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %if_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %78)
  %cmp148 = icmp eq i32 %78, 8192
  br i1 %cmp148, label %if.then150, label %if.end146.if.end152_crit_edge

if.end146.if.end152_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

if.then150:                                       ; preds = %if.end146
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf.i) #13
  %79 = call ptr @memset(ptr %buf.i, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #13
  %80 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2097152, ptr %param.i, align 4
  %call.i = call i32 @sli_cmd_common_set_features(ptr noundef %sli122, ptr noundef nonnull %buf.i, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %param.i) #13
  %call3.i = call i32 @efct_hw_command(ptr noundef %hw, ptr noundef nonnull %buf.i, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  %81 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 8
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  br i1 %tobool.not.i, label %do.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9.i, ptr noundef nonnull @.str.233, i32 noundef 8192, i32 noundef %call3.i) #16
  br label %efct_hw_config_set_fdt_xfer_hint.exit

do.end6.i:                                        ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #15
  %85 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %param.i, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86) #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9.i, ptr noundef nonnull @.str.237, i32 noundef %87) #16
  br label %efct_hw_config_set_fdt_xfer_hint.exit

efct_hw_config_set_fdt_xfer_hint.exit:            ; preds = %do.end6.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf.i) #13
  br label %if.end152

if.end152:                                        ; preds = %efct_hw_config_set_fdt_xfer_hint.exit, %if.end146.if.end152_crit_edge
  %cq_hash = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 24
  %88 = call ptr @memset(ptr %cq_hash, i32 0, i32 768)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_init.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_init, %if.then165)) #13
          to label %do.end171 [label %if.then165], !srcloc !548

if.then165:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  %89 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 8
  %dev168 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_init.__UNIQUE_ID_ddebug326, ptr noundef %dev168, ptr noundef nonnull @.str.31, i32 noundef 97, i32 noundef 128) #13
  br label %do.end171

do.end171:                                        ; preds = %if.then165, %if.end152
  %rq_hash = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 25
  %93 = call ptr @memset(ptr %rq_hash, i32 0, i32 768)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_init.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_init, %if.then185)) #13
          to label %do.end191 [label %if.then185], !srcloc !548

if.then185:                                       ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #15
  %94 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 8
  %dev188 = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_init.__UNIQUE_ID_ddebug327, ptr noundef %dev188, ptr noundef nonnull @.str.32, i32 noundef 32, i32 noundef 128) #13
  br label %do.end191

do.end191:                                        ; preds = %if.then185, %do.end171
  %wq_hash = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 26
  %98 = call ptr @memset(ptr %wq_hash, i32 0, i32 768)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_init.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_init, %if.then205)) #13
          to label %do.end211 [label %if.then205], !srcloc !548

if.then205:                                       ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #15
  %99 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hw, align 8
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 8
  %dev208 = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_init.__UNIQUE_ID_ddebug328, ptr noundef %dev208, ptr noundef nonnull @.str.33, i32 noundef 32, i32 noundef 128) #13
  br label %do.end211

do.end211:                                        ; preds = %if.then205, %do.end191
  %call212 = call i32 @efct_hw_init_queues(ptr noundef %hw) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %if.end215, label %do.end211.cleanup_crit_edge

do.end211.cleanup_crit_edge:                      ; preds = %do.end211
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end215:                                        ; preds = %do.end211
  %call216 = call i32 @efct_hw_map_wq_cpu(ptr noundef %hw) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %if.end219, label %if.end215.cleanup_crit_edge

if.end215.cleanup_crit_edge:                      ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end219:                                        ; preds = %if.end215
  %call220 = call i32 @efct_hw_rx_allocate(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %if.end229, label %do.end225

do.end225:                                        ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #15
  %103 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 8
  %dev228 = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev228, ptr noundef nonnull @.str.35) #16
  br label %cleanup

if.end229:                                        ; preds = %if.end219
  %call230 = call i32 @efct_hw_rx_post(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %if.end239, label %do.end235

do.end235:                                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 8
  %dev238 = getelementptr inbounds %struct.pci_dev, ptr %110, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev238, ptr noundef nonnull @.str.38) #16
  br label %cleanup

if.end239:                                        ; preds = %if.end229
  %111 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %config, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp241 = icmp eq i32 %112, 1
  br i1 %cmp241, label %if.then243, label %if.else

if.then243:                                       ; preds = %if.end239
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rq_cfg.i) #13
  %113 = getelementptr inbounds %struct.sli4_cmd_rq_cfg, ptr %rq_cfg.i, i32 0, i32 1
  %114 = getelementptr inbounds %struct.sli4_cmd_rq_cfg, ptr %rq_cfg.i, i32 0, i32 2
  %115 = getelementptr inbounds %struct.sli4_cmd_rq_cfg, ptr %rq_cfg.i, i32 0, i32 3
  %116 = getelementptr inbounds %struct.sli4_cmd_rq_cfg, ptr %rq_cfg.i, i32 0, i32 4
  %117 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_cfg.i, i32 0, i32 1
  %118 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_cfg.i, i32 0, i32 1, i32 1
  %119 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_cfg.i, i32 0, i32 1, i32 2
  %120 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_cfg.i, i32 0, i32 1, i32 3
  %121 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_cfg.i, i32 0, i32 1, i32 4
  %122 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_cfg.i, i32 0, i32 2
  %123 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_cfg.i, i32 0, i32 2, i32 1
  %124 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_cfg.i, i32 0, i32 2, i32 2
  %125 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_cfg.i, i32 0, i32 2, i32 3
  %126 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_cfg.i, i32 0, i32 2, i32 4
  %127 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_cfg.i, i32 0, i32 3
  %128 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_cfg.i, i32 0, i32 3, i32 1
  %129 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_cfg.i, i32 0, i32 3, i32 2
  %130 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_cfg.i, i32 0, i32 3, i32 3
  %131 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_cfg.i, i32 0, i32 3, i32 4
  %132 = call ptr @memset(ptr %rq_cfg.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf.i563) #13
  %133 = call ptr @memset(ptr %buf.i563, i32 255, i32 256)
  %134 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hw, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %137, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.239) #16
  %138 = ptrtoint ptr %rq_cfg.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 -1, ptr %rq_cfg.i, align 2
  %arrayidx1.i = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 13, i32 0
  %139 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx1.i, align 4
  %conv.i564 = trunc i32 %140 to i8
  %141 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv.i564, ptr %113, align 2
  %shr.i = lshr i32 %140, 8
  %conv6.i = trunc i32 %shr.i to i8
  %142 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv6.i, ptr %114, align 1
  %shr11.i = lshr i32 %140, 16
  %conv12.i = trunc i32 %shr11.i to i8
  %143 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv12.i, ptr %115, align 2
  %shr17.i = lshr i32 %140, 24
  %conv18.i = trunc i32 %shr17.i to i8
  %144 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %conv18.i, ptr %116, align 1
  %145 = ptrtoint ptr %117 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 -1, ptr %117, align 2
  %arrayidx1.1.i = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 13, i32 1
  %146 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx1.1.i, align 4
  %conv.1.i = trunc i32 %147 to i8
  %148 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv.1.i, ptr %118, align 2
  %shr.1.i = lshr i32 %147, 8
  %conv6.1.i = trunc i32 %shr.1.i to i8
  %149 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv6.1.i, ptr %119, align 1
  %shr11.1.i = lshr i32 %147, 16
  %conv12.1.i = trunc i32 %shr11.1.i to i8
  %150 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv12.1.i, ptr %120, align 2
  %shr17.1.i = lshr i32 %147, 24
  %conv18.1.i = trunc i32 %shr17.1.i to i8
  %151 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv18.1.i, ptr %121, align 1
  %152 = ptrtoint ptr %122 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 -1, ptr %122, align 2
  %arrayidx1.2.i = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 13, i32 2
  %153 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx1.2.i, align 4
  %conv.2.i = trunc i32 %154 to i8
  %155 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv.2.i, ptr %123, align 2
  %shr.2.i = lshr i32 %154, 8
  %conv6.2.i = trunc i32 %shr.2.i to i8
  %156 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv6.2.i, ptr %124, align 1
  %shr11.2.i = lshr i32 %154, 16
  %conv12.2.i = trunc i32 %shr11.2.i to i8
  %157 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv12.2.i, ptr %125, align 2
  %shr17.2.i = lshr i32 %154, 24
  %conv18.2.i = trunc i32 %shr17.2.i to i8
  %158 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv18.2.i, ptr %126, align 1
  %159 = ptrtoint ptr %127 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 -1, ptr %127, align 2
  %arrayidx1.3.i = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 13, i32 3
  %160 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx1.3.i, align 4
  %conv.3.i = trunc i32 %161 to i8
  %162 = ptrtoint ptr %128 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv.3.i, ptr %128, align 2
  %shr.3.i = lshr i32 %161, 8
  %conv6.3.i = trunc i32 %shr.3.i to i8
  %163 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %conv6.3.i, ptr %129, align 1
  %shr11.3.i = lshr i32 %161, 16
  %conv12.3.i = trunc i32 %shr11.3.i to i8
  %164 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %conv12.3.i, ptr %130, align 2
  %shr17.3.i = lshr i32 %161, 24
  %conv18.3.i = trunc i32 %shr17.3.i to i8
  %165 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv18.3.i, ptr %131, align 1
  %hw_rq_count.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 32
  %166 = ptrtoint ptr %hw_rq_count.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %hw_rq_count.i, align 8
  %168 = call i32 @llvm.umin.i32(i32 %167, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp24117.not.i = icmp eq i32 %168, 0
  br i1 %cmp24117.not.i, label %if.then243.for.end51.i_crit_edge, label %if.then243.for.body26.i_crit_edge

if.then243.for.body26.i_crit_edge:                ; preds = %if.then243
  br label %for.body26.i

if.then243.for.end51.i_crit_edge:                 ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end51.i

for.body26.i:                                     ; preds = %cleanup.3.i.for.body26.i_crit_edge, %if.then243.for.body26.i_crit_edge
  %i.1118.i = phi i32 [ %inc50.i, %cleanup.3.i.for.body26.i_crit_edge ], [ 0, %if.then243.for.body26.i_crit_edge ]
  %arrayidx27.i = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 28, i32 %i.1118.i
  %169 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx27.i, align 4
  %filter_mask.i = getelementptr inbounds %struct.hw_rq, ptr %170, i32 0, i32 11
  %hdr.i = getelementptr inbounds %struct.hw_rq, ptr %170, i32 0, i32 12
  %arrayidx41.i = getelementptr [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_cfg.i, i32 0, i32 %i.1118.i
  %171 = ptrtoint ptr %filter_mask.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %filter_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %cmp33.not.i = icmp ne i8 %172, 0
  %.op.i = and i8 %172, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.op.i)
  %tobool.not119.i = icmp eq i8 %.op.i, 0
  %tobool.not.i565 = and i1 %cmp33.not.i, %tobool.not119.i
  br i1 %tobool.not.i565, label %for.body26.i.cleanup.i_crit_edge, label %if.end.i

for.body26.i.cleanup.i_crit_edge:                 ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #15
  %173 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %hdr.i, align 4
  %id.i = getelementptr inbounds %struct.sli4_queue, ptr %174, i32 0, i32 6
  %175 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %id.i, align 2
  %177 = call i16 @llvm.bswap.i16(i16 %176) #13
  %178 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %177, ptr %arrayidx41.i, align 2
  %179 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %hdr.i, align 4
  %id44.i = getelementptr inbounds %struct.sli4_queue, ptr %180, i32 0, i32 6
  %181 = ptrtoint ptr %id44.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %id44.i, align 2
  %conv45.i = zext i16 %182 to i32
  %183 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %hw, align 8
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %184, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %186, i32 0, i32 44
  %187 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx1.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.244, i32 noundef 0, i32 noundef %188, i32 noundef %i.1118.i, i32 noundef %conv45.i) #16
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body26.i.cleanup.i_crit_edge
  %189 = ptrtoint ptr %filter_mask.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %filter_mask.i, align 4
  %191 = and i8 %190, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool.not.1.i = icmp eq i8 %191, 0
  br i1 %tobool.not.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %if.end.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.1.i

if.end.1.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  %192 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %hdr.i, align 4
  %id.1.i = getelementptr inbounds %struct.sli4_queue, ptr %193, i32 0, i32 6
  %194 = ptrtoint ptr %id.1.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %id.1.i, align 2
  %196 = call i16 @llvm.bswap.i16(i16 %195) #13
  %197 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %196, ptr %arrayidx41.i, align 2
  %198 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %hdr.i, align 4
  %id44.1.i = getelementptr inbounds %struct.sli4_queue, ptr %199, i32 0, i32 6
  %200 = ptrtoint ptr %id44.1.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %id44.1.i, align 2
  %conv45.1.i = zext i16 %201 to i32
  %202 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %hw, align 8
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %203, align 8
  %dev.i.1.i = getelementptr inbounds %struct.pci_dev, ptr %205, i32 0, i32 44
  %206 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx1.1.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.1.i, ptr noundef nonnull @.str.244, i32 noundef 1, i32 noundef %207, i32 noundef %i.1118.i, i32 noundef %conv45.1.i) #16
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.end.1.i, %cleanup.i.cleanup.1.i_crit_edge
  %208 = ptrtoint ptr %filter_mask.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %filter_mask.i, align 4
  %210 = and i8 %209, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool.not.2.i = icmp eq i8 %210, 0
  br i1 %tobool.not.2.i, label %cleanup.1.i.cleanup.2.i_crit_edge, label %if.end.2.i

cleanup.1.i.cleanup.2.i_crit_edge:                ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.2.i

if.end.2.i:                                       ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %211 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %hdr.i, align 4
  %id.2.i = getelementptr inbounds %struct.sli4_queue, ptr %212, i32 0, i32 6
  %213 = ptrtoint ptr %id.2.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %id.2.i, align 2
  %215 = call i16 @llvm.bswap.i16(i16 %214) #13
  %216 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %215, ptr %arrayidx41.i, align 2
  %217 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %hdr.i, align 4
  %id44.2.i = getelementptr inbounds %struct.sli4_queue, ptr %218, i32 0, i32 6
  %219 = ptrtoint ptr %id44.2.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %id44.2.i, align 2
  %conv45.2.i = zext i16 %220 to i32
  %221 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %hw, align 8
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %222, align 8
  %dev.i.2.i = getelementptr inbounds %struct.pci_dev, ptr %224, i32 0, i32 44
  %225 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx1.2.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.2.i, ptr noundef nonnull @.str.244, i32 noundef 2, i32 noundef %226, i32 noundef %i.1118.i, i32 noundef %conv45.2.i) #16
  br label %cleanup.2.i

cleanup.2.i:                                      ; preds = %if.end.2.i, %cleanup.1.i.cleanup.2.i_crit_edge
  %227 = ptrtoint ptr %filter_mask.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %filter_mask.i, align 4
  %229 = and i8 %228, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool.not.3.i = icmp eq i8 %229, 0
  br i1 %tobool.not.3.i, label %cleanup.2.i.cleanup.3.i_crit_edge, label %if.end.3.i

cleanup.2.i.cleanup.3.i_crit_edge:                ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.3.i

if.end.3.i:                                       ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %230 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %hdr.i, align 4
  %id.3.i = getelementptr inbounds %struct.sli4_queue, ptr %231, i32 0, i32 6
  %232 = ptrtoint ptr %id.3.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %id.3.i, align 2
  %234 = call i16 @llvm.bswap.i16(i16 %233) #13
  %235 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 %234, ptr %arrayidx41.i, align 2
  %236 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %hdr.i, align 4
  %id44.3.i = getelementptr inbounds %struct.sli4_queue, ptr %237, i32 0, i32 6
  %238 = ptrtoint ptr %id44.3.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %id44.3.i, align 2
  %conv45.3.i = zext i16 %239 to i32
  %240 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %hw, align 8
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %241, align 8
  %dev.i.3.i = getelementptr inbounds %struct.pci_dev, ptr %243, i32 0, i32 44
  %244 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx1.3.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.3.i, ptr noundef nonnull @.str.244, i32 noundef 3, i32 noundef %245, i32 noundef %i.1118.i, i32 noundef %conv45.3.i) #16
  br label %cleanup.3.i

cleanup.3.i:                                      ; preds = %if.end.3.i, %cleanup.2.i.cleanup.3.i_crit_edge
  %inc50.i = add nuw nsw i32 %i.1118.i, 1
  %exitcond.not.i = icmp eq i32 %inc50.i, %168
  br i1 %exitcond.not.i, label %cleanup.3.i.for.end51.i_crit_edge, label %cleanup.3.i.for.body26.i_crit_edge

cleanup.3.i.for.body26.i_crit_edge:               ; preds = %cleanup.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body26.i

cleanup.3.i.for.end51.i_crit_edge:                ; preds = %cleanup.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end51.i

for.end51.i:                                      ; preds = %cleanup.3.i.for.end51.i_crit_edge, %if.then243.for.end51.i_crit_edge
  %call.i567 = call i32 @sli_cmd_reg_fcfi(ptr noundef %sli122, ptr noundef nonnull %buf.i563, i16 noundef zeroext 0, ptr noundef nonnull %rq_cfg.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i567)
  %tobool53.not.i = icmp eq i32 %call.i567, 0
  br i1 %tobool53.not.i, label %if.end57.i, label %for.end51.i.do.end249_crit_edge

for.end51.i.do.end249_crit_edge:                  ; preds = %for.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end249

if.end57.i:                                       ; preds = %for.end51.i
  %call56.i = call i32 @efct_hw_command(ptr noundef %hw, ptr noundef nonnull %buf.i563, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %cmp58.not.i = icmp eq i32 %call56.i, 0
  br i1 %cmp58.not.i, label %efct_hw_config_rq.exit.thread, label %if.end57.i.do.end249_crit_edge

if.end57.i.do.end249_crit_edge:                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end249

efct_hw_config_rq.exit.thread:                    ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #15
  %fcfi.i = getelementptr inbounds %struct.sli4_cmd_reg_fcfi, ptr %buf.i563, i32 0, i32 2
  %246 = ptrtoint ptr %fcfi.i to i32
  call void @__asan_loadN_noabort(i32 %246, i32 2)
  %247 = load i16, ptr %fcfi.i, align 1
  %248 = call i16 @llvm.bswap.i16(i16 %247) #13
  %fcf_indicator.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 8
  %249 = ptrtoint ptr %fcf_indicator.i to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 %248, ptr %fcf_indicator.i, align 2
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf.i563) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rq_cfg.i) #13
  br label %if.end276

do.end249:                                        ; preds = %if.end57.i.do.end249_crit_edge, %for.end51.i.do.end249_crit_edge
  %rc.0113.i = phi i32 [ %call56.i, %if.end57.i.do.end249_crit_edge ], [ -5, %for.end51.i.do.end249_crit_edge ]
  %250 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %hw, align 8
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 8
  %dev66.i = getelementptr inbounds %struct.pci_dev, ptr %253, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev66.i, ptr noundef nonnull @.str.242) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf.i563) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rq_cfg.i) #13
  %254 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %hw, align 8
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %255, align 8
  %dev252 = getelementptr inbounds %struct.pci_dev, ptr %257, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev252, ptr noundef nonnull @.str.41, i32 noundef %rc.0113.i) #16
  br label %cleanup

if.else:                                          ; preds = %if.end239
  %call254 = call fastcc i32 @efct_hw_config_mrq(ptr noundef %hw, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %cmp255.not = icmp eq i32 %call254, 0
  br i1 %cmp255.not, label %if.end264, label %do.end260

do.end260:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %258 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %hw, align 8
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %259, align 8
  %dev263 = getelementptr inbounds %struct.pci_dev, ptr %261, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev263, ptr noundef nonnull @.str.44) #16
  br label %cleanup

if.end264:                                        ; preds = %if.else
  %call265 = call fastcc i32 @efct_hw_config_mrq(ptr noundef %hw, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %cmp266.not = icmp eq i32 %call265, 0
  br i1 %cmp266.not, label %if.end264.if.end276_crit_edge, label %do.end271

if.end264.if.end276_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end276

do.end271:                                        ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #15
  %262 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %hw, align 8
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %263, align 8
  %dev274 = getelementptr inbounds %struct.pci_dev, ptr %265, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev274, ptr noundef nonnull @.str.47) #16
  br label %cleanup

if.end276:                                        ; preds = %if.end264.if.end276_crit_edge, %efct_hw_config_rq.exit.thread
  %call277 = call ptr @efct_hw_reqtag_pool_alloc(ptr undef)
  %wq_reqtag_pool = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 56
  %266 = ptrtoint ptr %wq_reqtag_pool to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %call277, ptr %wq_reqtag_pool, align 4
  %tobool279.not = icmp eq ptr %call277, null
  br i1 %tobool279.not, label %do.end283, label %if.end287

do.end283:                                        ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #15
  %267 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %hw, align 8
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %268, align 8
  %dev286 = getelementptr inbounds %struct.pci_dev, ptr %270, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev286, ptr noundef nonnull @.str.50) #16
  br label %cleanup

if.end287:                                        ; preds = %if.end276
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #13
  %271 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 -1, ptr %index.i, align 4, !annotation !549
  %272 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %hw, align 8
  %io1.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 43
  %274 = ptrtoint ptr %io1.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %io1.i, align 8
  %tobool.not.i568 = icmp eq ptr %275, null
  br i1 %tobool.not.i568, label %if.then.i, label %if.end287.if.end39.i_crit_edge

if.end287.if.end39.i_crit_edge:                   ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.i

if.then.i:                                        ; preds = %if.end287
  %n_io.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 5
  %276 = ptrtoint ptr %n_io.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %n_io.i, align 4
  %278 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %277, i32 4) #13
  %279 = extractvalue { i32, i1 } %278, 1
  br i1 %279, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !550

kmalloc_array.exit.thread.i:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %280 = ptrtoint ptr %io1.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr null, ptr %io1.i, align 8
  br label %do.end293

if.end7.i.i:                                      ; preds = %if.then.i
  %281 = extractvalue { i32, i1 } %278, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %281, i32 noundef 3264) #17
  %282 = ptrtoint ptr %io1.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %call8.i.i, ptr %io1.i, align 8
  %tobool4.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool4.not.i, label %if.end7.i.i.do.end293_crit_edge, label %if.end.i570

if.end7.i.i.do.end293_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end293

if.end.i570:                                      ; preds = %if.end7.i.i
  %283 = ptrtoint ptr %n_io.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %n_io.i, align 4
  %mul.i = shl i32 %284, 2
  %285 = call ptr @memset(ptr %call8.i.i, i32 0, i32 %mul.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %cmp286.not.i = icmp eq i32 %284, 0
  br i1 %cmp286.not.i, label %if.end.i570.if.end8.i.i258.i_crit_edge, label %if.end.i570.for.body.i_crit_edge

if.end.i570.for.body.i_crit_edge:                 ; preds = %if.end.i570
  br label %for.body.i

if.end.i570.if.end8.i.i258.i_crit_edge:           ; preds = %if.end.i570
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i258.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.0287.i, 1
  %286 = ptrtoint ptr %n_io.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %n_io.i, align 4
  %cmp.i571 = icmp ult i32 %inc.i, %287
  br i1 %cmp.i571, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end8.i.i258.i_crit_edge

for.cond.i.if.end8.i.i258.i_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i258.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i570.for.body.i_crit_edge
  %i.0287.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.i570.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %288 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i231.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %288, i32 noundef 3520, i32 noundef 180) #18
  %289 = ptrtoint ptr %io1.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %io1.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %290, i32 %i.0287.i
  %291 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %call7.i.i231.i, ptr %arrayidx.i, align 4
  %292 = load ptr, ptr %io1.i, align 8
  %arrayidx14.i = getelementptr ptr, ptr %292, i32 %i.0287.i
  %293 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %arrayidx14.i, align 4
  %tobool15.not.i = icmp eq ptr %294, null
  br i1 %tobool15.not.i, label %for.cond117.preheader.i, label %for.cond.i

for.cond117.preheader.i:                          ; preds = %for.body.i
  %295 = ptrtoint ptr %n_io.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %n_io.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %296)
  %cmp120293.not.i = icmp eq i32 %296, 0
  br i1 %cmp120293.not.i, label %for.cond117.preheader.i.for.end131.i_crit_edge, label %for.cond117.preheader.i.land.rhs.i_crit_edge

for.cond117.preheader.i.land.rhs.i_crit_edge:     ; preds = %for.cond117.preheader.i
  br label %land.rhs.i

for.cond117.preheader.i.for.end131.i_crit_edge:   ; preds = %for.cond117.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end131.i

if.end8.i.i258.i:                                 ; preds = %for.cond.i.if.end8.i.i258.i_crit_edge, %if.end.i570.if.end8.i.i258.i_crit_edge
  %.lcssa284.i = phi i32 [ 0, %if.end.i570.if.end8.i.i258.i_crit_edge ], [ %287, %for.cond.i.if.end8.i.i258.i_crit_edge ]
  %wqe_size.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 26
  %297 = ptrtoint ptr %wqe_size.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %wqe_size.i, align 4
  %mul20.i = mul i32 %298, %.lcssa284.i
  %call9.i.i257.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul20.i, i32 noundef 3520) #17
  %wqe_buffs.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 44
  %299 = ptrtoint ptr %wqe_buffs.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %call9.i.i257.i, ptr %wqe_buffs.i, align 4
  %tobool23.not.i = icmp eq ptr %call9.i.i257.i, null
  br i1 %tobool23.not.i, label %if.then24.i, label %if.then29.i

if.then24.i:                                      ; preds = %if.end8.i.i258.i
  call void @__sanitizer_cov_trace_pc() #15
  %300 = ptrtoint ptr %io1.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %io1.i, align 8
  call void @kfree(ptr noundef %301) #13
  br label %do.end293

if.then29.i:                                      ; preds = %if.end8.i.i258.i
  %xfer_rdy.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 50
  %302 = ptrtoint ptr %n_io.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %n_io.i, align 4
  %mul32.i = mul i32 %303, 12
  %size.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 50, i32 3
  %304 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %mul32.i, ptr %size.i, align 4
  %305 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %273, align 8
  %dev.i572 = getelementptr inbounds %struct.pci_dev, ptr %306, i32 0, i32 44
  %phys.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 50, i32 2
  %call.i.i573 = call ptr @dma_alloc_attrs(ptr noundef %dev.i572, i32 noundef %mul32.i, ptr noundef %phys.i, i32 noundef 3264, i32 noundef 0) #13
  %307 = ptrtoint ptr %xfer_rdy.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %call.i.i573, ptr %xfer_rdy.i, align 4
  %tobool36.not.i = icmp eq ptr %call.i.i573, null
  br i1 %tobool36.not.i, label %if.then29.i.do.end293_crit_edge, label %if.then29.i.if.end39.i_crit_edge

if.then29.i.if.end39.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.i

if.then29.i.do.end293_crit_edge:                  ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end293

if.end39.i:                                       ; preds = %if.then29.i.if.end39.i_crit_edge, %if.end287.if.end39.i_crit_edge
  %n_io46.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 5
  %308 = ptrtoint ptr %n_io46.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %n_io46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %309)
  %cmp47288.not.i = icmp eq i32 %309, 0
  br i1 %cmp47288.not.i, label %if.end39.i.if.end297_crit_edge, label %for.body48.lr.ph.i

if.end39.i.if.end297_crit_edge:                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end297

for.body48.lr.ph.i:                               ; preds = %if.end39.i
  %phys43.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 50, i32 2
  %310 = ptrtoint ptr %phys43.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %phys43.i, align 4
  %xfer_rdy40.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 50
  %312 = ptrtoint ptr %xfer_rdy40.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %xfer_rdy40.i, align 4
  %314 = ptrtoint ptr %313 to i32
  %wqe_buffs52.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 44
  %wqe_size54.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 26
  %n_sgl.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 6
  %size103.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 50, i32 3
  br label %for.body48.i

for.body48.i:                                     ; preds = %for.inc114.i.for.body48.i_crit_edge, %for.body48.lr.ph.i
  %xfer_phys.0292.i = phi i32 [ %311, %for.body48.lr.ph.i ], [ %xfer_phys.2.i, %for.inc114.i.for.body48.i_crit_edge ]
  %xfer_virt.0291.i = phi i32 [ %314, %for.body48.lr.ph.i ], [ %xfer_virt.2.i, %for.inc114.i.for.body48.i_crit_edge ]
  %i.1289.i = phi i32 [ 0, %for.body48.lr.ph.i ], [ %inc115.i, %for.inc114.i.for.body48.i_crit_edge ]
  %315 = ptrtoint ptr %io1.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %io1.i, align 8
  %arrayidx50.i = getelementptr ptr, ptr %316, i32 %i.1289.i
  %317 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %arrayidx50.i, align 4
  %hw51.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 5
  %319 = ptrtoint ptr %hw51.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %hw, ptr %hw51.i, align 4
  %320 = ptrtoint ptr %wqe_buffs52.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %wqe_buffs52.i, align 4
  %322 = ptrtoint ptr %wqe_size54.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %wqe_size54.i, align 4
  %mul55.i = mul i32 %323, %i.1289.i
  %arrayidx56.i = getelementptr i8, ptr %321, i32 %mul55.i
  %wqebuf.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 4, i32 5
  %324 = ptrtoint ptr %wqebuf.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %arrayidx56.i, ptr %wqebuf.i, align 4
  %325 = ptrtoint ptr %wq_reqtag_pool to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %wq_reqtag_pool, align 4
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %326) #13
  %freelist.i.i = getelementptr inbounds %struct.reqtag_pool, ptr %326, i32 0, i32 2
  %327 = ptrtoint ptr %freelist.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load volatile ptr, ptr %freelist.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %328, %freelist.i.i
  br i1 %cmp.i.not.i.i, label %for.body48.i.do.end.i574_crit_edge, label %if.end10.i.i

for.body48.i.do.end.i574_crit_edge:               ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i574

if.end10.i.i:                                     ; preds = %for.body48.i
  %add.ptr.i.i = getelementptr i8, ptr %328, i32 -12
  %tobool11.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool11.not.i.i, label %if.end10.i.i.do.end.i574_crit_edge, label %if.then12.i.i

if.end10.i.i.do.end.i574_crit_edge:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i574

if.then12.i.i:                                    ; preds = %if.end10.i.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %328) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i259.i, label %if.then12.i.i.if.end63.i_crit_edge

if.then12.i.i.if.end63.i_crit_edge:               ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63.i

if.end.i.i.i259.i:                                ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %328, i32 0, i32 1
  %329 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %prev.i.i.i.i, align 4
  %331 = ptrtoint ptr %328 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %328, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %332, i32 0, i32 1
  %333 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %330, ptr %prev1.i.i.i.i.i, align 4
  %334 = ptrtoint ptr %330 to i32
  call void @__asan_store4_noabort(i32 %334)
  store volatile ptr %332, ptr %330, align 4
  br label %if.end63.i

do.end.i574:                                      ; preds = %if.end10.i.i.do.end.i574_crit_edge, %for.body48.i.do.end.i574_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %326, i32 noundef %call2.i.i) #13
  %335 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %hw, align 8
  %337 = ptrtoint ptr %336 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %336, align 8
  %dev62.i = getelementptr inbounds %struct.pci_dev, ptr %338, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev62.i, ptr noundef nonnull @.str.103) #16
  br label %do.end293

if.end63.i:                                       ; preds = %if.end.i.i.i259.i, %if.then12.i.i.if.end63.i_crit_edge
  %339 = ptrtoint ptr %328 to i32
  call void @__asan_store4_noabort(i32 %339)
  store volatile ptr %328, ptr %328, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %328, i32 0, i32 1
  %340 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store ptr %328, ptr %prev.i3.i.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %326, i32 noundef %call2.i.i) #13
  %callback14.i.i = getelementptr i8, ptr %328, i32 -8
  %341 = ptrtoint ptr %callback14.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr @efct_hw_wq_process_io, ptr %callback14.i.i, align 4
  %arg15.i.i = getelementptr i8, ptr %328, i32 -4
  %342 = ptrtoint ptr %arg15.i.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store ptr %318, ptr %arg15.i.i, align 4
  %343 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %343)
  %344 = load i16, ptr %add.ptr.i.i, align 4
  %reqtag.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 12
  %345 = ptrtoint ptr %reqtag.i to i32
  call void @__asan_store2_noabort(i32 %345)
  store i16 %344, ptr %reqtag.i, align 2
  %done.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 14
  %346 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr null, ptr %done.i.i, align 4
  %abort_done.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 16
  %347 = ptrtoint ptr %abort_done.i.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr null, ptr %abort_done.i.i, align 4
  %status_saved.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 10
  %348 = ptrtoint ptr %status_saved.i.i to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 0, ptr %status_saved.i.i, align 4
  %abort_in_progress.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 9
  %349 = ptrtoint ptr %abort_in_progress.i.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 0, ptr %abort_in_progress.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 7
  %350 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store2_noabort(i32 %350)
  store i16 -1, ptr %type.i.i, align 4
  %wq.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 13
  %351 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr null, ptr %wq.i.i, align 4
  %xbusy.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 8
  %352 = ptrtoint ptr %xbusy.i to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 0, ptr %xbusy.i, align 2
  %indicator.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 26
  %call65.i = call i32 @sli_resource_alloc(ptr noundef %sli122, i32 noundef 3, ptr noundef %indicator.i, ptr noundef nonnull %index.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end74.i, label %do.end70.i

do.end70.i:                                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  %353 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %hw, align 8
  %355 = ptrtoint ptr %354 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %354, align 8
  %dev73.i = getelementptr inbounds %struct.pci_dev, ptr %356, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev73.i, ptr noundef nonnull @.str.254, i32 noundef %i.1289.i) #16
  br label %do.end293

if.end74.i:                                       ; preds = %if.end63.i
  br i1 %tobool.not.i568, label %if.then76.i, label %if.end74.i.if.end97.i_crit_edge

if.end74.i.if.end97.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97.i

if.then76.i:                                      ; preds = %if.end74.i
  %def_sgl.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 27
  %357 = ptrtoint ptr %n_sgl.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %n_sgl.i, align 8
  %mul78.i = shl i32 %358, 4
  %size79.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 27, i32 3
  %359 = ptrtoint ptr %size79.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %mul78.i, ptr %size79.i, align 4
  %360 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %273, align 8
  %dev81.i = getelementptr inbounds %struct.pci_dev, ptr %361, i32 0, i32 44
  %phys83.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 27, i32 2
  %call.i261.i = call ptr @dma_alloc_attrs(ptr noundef %dev81.i, i32 noundef %mul78.i, ptr noundef %phys83.i, i32 noundef 3264, i32 noundef 0) #13
  %362 = ptrtoint ptr %def_sgl.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store ptr %call.i261.i, ptr %def_sgl.i, align 4
  %tobool87.not.i = icmp eq ptr %call.i261.i, null
  br i1 %tobool87.not.i, label %do.end91.i, label %if.then76.i.if.end97.i_crit_edge

if.then76.i.if.end97.i_crit_edge:                 ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97.i

do.end91.i:                                       ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #15
  %363 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %hw, align 8
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %364, align 8
  %dev94.i = getelementptr inbounds %struct.pci_dev, ptr %366, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94.i, ptr noundef nonnull @.str.257, i32 noundef %i.1289.i) #16
  %367 = call ptr @memset(ptr %def_sgl.i, i32 0, i32 24)
  br label %do.end293

if.end97.i:                                       ; preds = %if.then76.i.if.end97.i_crit_edge, %if.end74.i.if.end97.i_crit_edge
  %368 = ptrtoint ptr %n_sgl.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %n_sgl.i, align 8
  %def_sgl_count.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 24
  %370 = ptrtoint ptr %def_sgl_count.i to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 %369, ptr %def_sgl_count.i, align 4
  %def_sgl100.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 27
  %sgl.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 28
  %371 = ptrtoint ptr %sgl.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %def_sgl100.i, ptr %sgl.i, align 4
  %sgl_count.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 29
  %372 = ptrtoint ptr %sgl_count.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %369, ptr %sgl_count.i, align 4
  %373 = ptrtoint ptr %size103.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %size103.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %374)
  %tobool104.not.i = icmp eq i32 %374, 0
  br i1 %tobool104.not.i, label %if.end97.i.for.inc114.i_crit_edge, label %if.then105.i

if.end97.i.for.inc114.i_crit_edge:                ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc114.i

if.then105.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #15
  %375 = inttoptr i32 %xfer_virt.0291.i to ptr
  %xfer_rdy106.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 6
  %376 = ptrtoint ptr %xfer_rdy106.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store ptr %375, ptr %xfer_rdy106.i, align 4
  %phys109.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 6, i32 2
  %377 = ptrtoint ptr %phys109.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %xfer_phys.0292.i, ptr %phys109.i, align 4
  %size111.i = getelementptr inbounds %struct.efct_hw_io, ptr %318, i32 0, i32 6, i32 3
  %378 = ptrtoint ptr %size111.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 12, ptr %size111.i, align 4
  %add.i = add i32 %xfer_virt.0291.i, 12
  %add112.i = add i32 %xfer_phys.0292.i, 12
  br label %for.inc114.i

for.inc114.i:                                     ; preds = %if.then105.i, %if.end97.i.for.inc114.i_crit_edge
  %xfer_virt.2.i = phi i32 [ %add.i, %if.then105.i ], [ %xfer_virt.0291.i, %if.end97.i.for.inc114.i_crit_edge ]
  %xfer_phys.2.i = phi i32 [ %add112.i, %if.then105.i ], [ %xfer_phys.0292.i, %if.end97.i.for.inc114.i_crit_edge ]
  %inc115.i = add nuw i32 %i.1289.i, 1
  %379 = ptrtoint ptr %n_io46.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %n_io46.i, align 4
  %cmp47.i = icmp ult i32 %inc115.i, %380
  br i1 %cmp47.i, label %for.inc114.i.for.body48.i_crit_edge, label %for.inc114.i.if.end297_crit_edge

for.inc114.i.if.end297_crit_edge:                 ; preds = %for.inc114.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end297

for.inc114.i.for.body48.i_crit_edge:              ; preds = %for.inc114.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body48.i

land.rhs.i:                                       ; preds = %for.body124.i.land.rhs.i_crit_edge, %for.cond117.preheader.i.land.rhs.i_crit_edge
  %i.2294.i = phi i32 [ %inc130.i, %for.body124.i.land.rhs.i_crit_edge ], [ 0, %for.cond117.preheader.i.land.rhs.i_crit_edge ]
  %381 = ptrtoint ptr %io1.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %io1.i, align 8
  %arrayidx122.i = getelementptr ptr, ptr %382, i32 %i.2294.i
  %383 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %arrayidx122.i, align 4
  %tobool123.not.i = icmp eq ptr %384, null
  br i1 %tobool123.not.i, label %land.rhs.i.for.end131.i_crit_edge, label %for.body124.i

land.rhs.i.for.end131.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end131.i

for.body124.i:                                    ; preds = %land.rhs.i
  call void @kfree(ptr noundef nonnull %384) #13
  %385 = ptrtoint ptr %io1.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %io1.i, align 8
  %arrayidx128.i = getelementptr ptr, ptr %386, i32 %i.2294.i
  %387 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr null, ptr %arrayidx128.i, align 4
  %inc130.i = add nuw i32 %i.2294.i, 1
  %388 = ptrtoint ptr %n_io.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %n_io.i, align 4
  %cmp120.i = icmp ult i32 %inc130.i, %389
  br i1 %cmp120.i, label %for.body124.i.land.rhs.i_crit_edge, label %for.body124.i.for.end131.i_crit_edge

for.body124.i.for.end131.i_crit_edge:             ; preds = %for.body124.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end131.i

for.body124.i.land.rhs.i_crit_edge:               ; preds = %for.body124.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

for.end131.i:                                     ; preds = %for.body124.i.for.end131.i_crit_edge, %land.rhs.i.for.end131.i_crit_edge, %for.cond117.preheader.i.for.end131.i_crit_edge
  %390 = ptrtoint ptr %io1.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %io1.i, align 8
  call void @kfree(ptr noundef %391) #13
  %392 = ptrtoint ptr %io1.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr null, ptr %io1.i, align 8
  br label %do.end293

do.end293:                                        ; preds = %for.end131.i, %do.end91.i, %do.end70.i, %do.end.i574, %if.then29.i.do.end293_crit_edge, %if.then24.i, %if.end7.i.i.do.end293_crit_edge, %kmalloc_array.exit.thread.i
  %retval.2.i.ph = phi i32 [ -12, %do.end70.i ], [ -12, %do.end91.i ], [ -28, %do.end.i574 ], [ -12, %kmalloc_array.exit.thread.i ], [ -12, %if.then29.i.do.end293_crit_edge ], [ -12, %if.end7.i.i.do.end293_crit_edge ], [ -12, %if.then24.i ], [ -12, %for.end131.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #13
  %393 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %hw, align 8
  %395 = ptrtoint ptr %394 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %394, align 8
  %dev296 = getelementptr inbounds %struct.pci_dev, ptr %396, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev296, ptr noundef nonnull @.str.53) #16
  br label %cleanup

if.end297:                                        ; preds = %for.inc114.i.if.end297_crit_edge, %if.end39.i.if.end297_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #13
  %sgl_pre_registered.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 30, i32 9
  %397 = ptrtoint ptr %sgl_pre_registered.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %sgl_pre_registered.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %398)
  %tobool.not.i575 = icmp eq i8 %398, 0
  br i1 %tobool.not.i575, label %for.cond.preheader.i, label %if.then.i577

for.cond.preheader.i:                             ; preds = %if.end297
  %399 = ptrtoint ptr %n_io46.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %n_io46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %400)
  %cmp19.not.i = icmp eq i32 %400, 0
  br i1 %cmp19.not.i, label %for.cond.preheader.i.if.end307_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end307_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end307

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %prev.i17.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 48, i32 1
  br label %for.body.i586

if.then.i577:                                     ; preds = %if.end297
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %cmd.i.i) #13
  %401 = call ptr @memset(ptr %cmd.i.i, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req.i.i) #13
  %402 = getelementptr inbounds %struct.efc_dma, ptr %req.i.i, i32 0, i32 2
  %403 = getelementptr inbounds %struct.efc_dma, ptr %req.i.i, i32 0, i32 3
  %404 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %hw, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %406 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %406, i32 noundef 3264, i32 noundef 1024) #18
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %efct_hw_init_io.exit.thread636, label %if.end.i.i579

efct_hw_init_io.exit.thread636:                   ; preds = %if.then.i577
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i.i) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %cmd.i.i) #13
  br label %do.end303

if.end.i.i579:                                    ; preds = %if.then.i577
  %407 = call ptr @memset(ptr %req.i.i, i32 0, i32 24)
  %408 = ptrtoint ptr %403 to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 4128, ptr %403, align 4
  %409 = ptrtoint ptr %405 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %405, align 8
  %dev.i.i578 = getelementptr inbounds %struct.pci_dev, ptr %410, i32 0, i32 44
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i578, i32 noundef 4128, ptr noundef %402, i32 noundef 3264, i32 noundef 0) #13
  %411 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr %call.i.i.i, ptr %req.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool4.not.i.i, label %efct_hw_init_io.exit.thread640, label %if.end6.i.i

efct_hw_init_io.exit.thread640:                   ; preds = %if.end.i.i579
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i.i) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %cmd.i.i) #13
  br label %do.end303

if.end6.i.i:                                      ; preds = %if.end.i.i579
  %412 = ptrtoint ptr %n_io46.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %n_io46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %413)
  %tobool7.not126.i.i = icmp eq i32 %413, 0
  br i1 %tobool7.not126.i.i, label %if.end6.i.i.efct_hw_init_io.exit_crit_edge, label %for.body.lr.ph.i.i

if.end6.i.i.efct_hw_init_io.exit_crit_edge:       ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_init_io.exit

for.body.lr.ph.i.i:                               ; preds = %if.end6.i.i
  %prev.i113.i.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 48, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc54.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %n_rem.0128.i.i = phi i32 [ %413, %for.body.lr.ph.i.i ], [ %sub55.i.i, %for.inc54.i.i.for.body.i.i_crit_edge ]
  %idx.0127.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %idx.1.lcssa.i.i, %for.inc54.i.i.for.body.i.i_crit_edge ]
  %414 = call i32 @llvm.umin.i32(i32 %n_rem.0128.i.i, i32 256) #13
  br label %for.body10.i.i

for.body10.i.i:                                   ; preds = %if.end23.i.i.for.body10.i.i_crit_edge, %for.body.i.i
  %n.0119.i.i = phi i32 [ %inc.i.i, %if.end23.i.i.for.body10.i.i_crit_edge ], [ 0, %for.body.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0119.i.i)
  %cmp11.not.i.i = icmp eq i32 %n.0119.i.i, 0
  br i1 %cmp11.not.i.i, label %for.body10.i.i.if.end23.i.i_crit_edge, label %if.then12.i.i580

for.body10.i.i.if.end23.i.i_crit_edge:            ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i.i

if.then12.i.i580:                                 ; preds = %for.body10.i.i
  %415 = ptrtoint ptr %io1.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %io1.i, align 8
  %add14.i.i = add i32 %n.0119.i.i, %idx.0127.i.i
  %arrayidx.i.i = getelementptr ptr, ptr %416, i32 %add14.i.i
  %417 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %arrayidx.i.i, align 4
  %indicator.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %418, i32 0, i32 26
  %419 = ptrtoint ptr %indicator.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %indicator.i.i, align 4
  %sub.i.i = add i32 %add14.i.i, -1
  %arrayidx17.i.i = getelementptr ptr, ptr %416, i32 %sub.i.i
  %421 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %arrayidx17.i.i, align 4
  %indicator18.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %422, i32 0, i32 26
  %423 = ptrtoint ptr %indicator18.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %indicator18.i.i, align 4
  %add19.i.i = add i32 %424, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %420, i32 %add19.i.i)
  %cmp20.not.i.i = icmp eq i32 %420, %add19.i.i
  br i1 %cmp20.not.i.i, label %if.then12.i.i580.if.end23.i.i_crit_edge, label %if.then12.i.i580.for.end.i.i_crit_edge

if.then12.i.i580.for.end.i.i_crit_edge:           ; preds = %if.then12.i.i580
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

if.then12.i.i580.if.end23.i.i_crit_edge:          ; preds = %if.then12.i.i580
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then12.i.i580.if.end23.i.i_crit_edge, %for.body10.i.i.if.end23.i.i_crit_edge
  %add25.pre-phi.i.i = phi i32 [ %add14.i.i, %if.then12.i.i580.if.end23.i.i_crit_edge ], [ %idx.0127.i.i, %for.body10.i.i.if.end23.i.i_crit_edge ]
  %425 = ptrtoint ptr %io1.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %io1.i, align 8
  %arrayidx26.i.i = getelementptr ptr, ptr %426, i32 %add25.pre-phi.i.i
  %427 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %arrayidx26.i.i, align 4
  %sgl.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %428, i32 0, i32 28
  %429 = ptrtoint ptr %sgl.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %sgl.i.i, align 4
  %arrayidx27.i.i = getelementptr ptr, ptr %call7.i.i.i.i, i32 %n.0119.i.i
  %431 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store4_noabort(i32 %431)
  store ptr %430, ptr %arrayidx27.i.i, align 4
  %inc.i.i = add nuw nsw i32 %n.0119.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %414
  br i1 %exitcond.not.i.i, label %if.end23.i.i.for.end.i.i_crit_edge, label %if.end23.i.i.for.body10.i.i_crit_edge

if.end23.i.i.for.body10.i.i_crit_edge:            ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body10.i.i

if.end23.i.i.for.end.i.i_crit_edge:               ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end23.i.i.for.end.i.i_crit_edge, %if.then12.i.i580.for.end.i.i_crit_edge
  %n.0.lcssa.ph.i.i = phi i32 [ %n.0119.i.i, %if.then12.i.i580.for.end.i.i_crit_edge ], [ %414, %if.end23.i.i.for.end.i.i_crit_edge ]
  %432 = ptrtoint ptr %io1.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %io1.i, align 8
  %arrayidx29.i.i = getelementptr ptr, ptr %433, i32 %idx.0127.i.i
  %434 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %arrayidx29.i.i, align 4
  %indicator30.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %435, i32 0, i32 26
  %436 = ptrtoint ptr %indicator30.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %indicator30.i.i, align 4
  %conv.i.i = trunc i32 %437 to i16
  %call31.i.i = call i32 @sli_cmd_post_sgl_pages(ptr noundef %sli122, ptr noundef nonnull %cmd.i.i, i16 noundef zeroext %conv.i.i, i32 noundef %n.0.lcssa.ph.i.i, ptr noundef nonnull %call7.i.i.i.i, ptr noundef null, ptr noundef nonnull %req.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end34.i.i, label %for.end.i.i.efct_hw_init_io.exit_crit_edge

for.end.i.i.efct_hw_init_io.exit_crit_edge:       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_init_io.exit

if.end34.i.i:                                     ; preds = %for.end.i.i
  %call36.i.i = call i32 @efct_hw_command(ptr noundef %hw, ptr noundef nonnull %cmd.i.i, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %tobool37.not.i.i = icmp eq i32 %call36.i.i, 0
  br i1 %tobool37.not.i.i, label %for.cond43.preheader.i.i, label %do.end.i.i

for.cond43.preheader.i.i:                         ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0.lcssa.ph.i.i)
  %cmp44122.not.i.i = icmp eq i32 %n.0.lcssa.ph.i.i, 0
  br i1 %cmp44122.not.i.i, label %for.cond43.preheader.i.i.for.inc54.i.i_crit_edge, label %for.body46.preheader.i.i

for.cond43.preheader.i.i.for.inc54.i.i_crit_edge: ; preds = %for.cond43.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc54.i.i

for.body46.preheader.i.i:                         ; preds = %for.cond43.preheader.i.i
  %438 = add i32 %n.0.lcssa.ph.i.i, %idx.0127.i.i
  br label %for.body46.i.i

do.end.i.i:                                       ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %439 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %hw, align 8
  %441 = ptrtoint ptr %440 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %440, align 8
  %dev41.i.i = getelementptr inbounds %struct.pci_dev, ptr %442, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41.i.i, ptr noundef nonnull @.str.266, i32 noundef %call36.i.i) #16
  br label %efct_hw_init_io.exit

for.body46.i.i:                                   ; preds = %list_add_tail.exit.i.i.for.body46.i.i_crit_edge, %for.body46.preheader.i.i
  %idx.1124.i.i = phi i32 [ %inc52.i.i, %list_add_tail.exit.i.i.for.body46.i.i_crit_edge ], [ %idx.0127.i.i, %for.body46.preheader.i.i ]
  %443 = ptrtoint ptr %io1.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %io1.i, align 8
  %arrayidx48.i.i = getelementptr ptr, ptr %444, i32 %idx.1124.i.i
  %445 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %arrayidx48.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %446, i32 0, i32 1
  %447 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %447)
  store i32 0, ptr %state.i.i, align 4
  %list_entry.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %446, i32 0, i32 3
  %448 = ptrtoint ptr %list_entry.i.i to i32
  call void @__asan_store4_noabort(i32 %448)
  store volatile ptr %list_entry.i.i, ptr %list_entry.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %446, i32 0, i32 3, i32 1
  %449 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %449)
  store ptr %list_entry.i.i, ptr %prev.i.i.i, align 4
  %450 = ptrtoint ptr %prev.i113.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %prev.i113.i.i, align 4
  %call.i.i.i.i581 = call zeroext i1 @__list_add_valid(ptr noundef %list_entry.i.i, ptr noundef %451, ptr noundef %io_free) #13
  br i1 %call.i.i.i.i581, label %if.end.i.i.i.i582, label %for.body46.i.i.list_add_tail.exit.i.i_crit_edge

for.body46.i.i.list_add_tail.exit.i.i_crit_edge:  ; preds = %for.body46.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i582:                                ; preds = %for.body46.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %452 = ptrtoint ptr %prev.i113.i.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store ptr %list_entry.i.i, ptr %prev.i113.i.i, align 4
  %453 = ptrtoint ptr %list_entry.i.i to i32
  call void @__asan_store4_noabort(i32 %453)
  store ptr %io_free, ptr %list_entry.i.i, align 4
  %454 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %454)
  store ptr %451, ptr %prev.i.i.i, align 4
  %455 = ptrtoint ptr %451 to i32
  call void @__asan_store4_noabort(i32 %455)
  store volatile ptr %list_entry.i.i, ptr %451, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i582, %for.body46.i.i.list_add_tail.exit.i.i_crit_edge
  %inc52.i.i = add i32 %idx.1124.i.i, 1
  %exitcond131.not.i.i = icmp eq i32 %inc52.i.i, %438
  br i1 %exitcond131.not.i.i, label %list_add_tail.exit.i.i.for.inc54.i.i_crit_edge, label %list_add_tail.exit.i.i.for.body46.i.i_crit_edge

list_add_tail.exit.i.i.for.body46.i.i_crit_edge:  ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body46.i.i

list_add_tail.exit.i.i.for.inc54.i.i_crit_edge:   ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc54.i.i

for.inc54.i.i:                                    ; preds = %list_add_tail.exit.i.i.for.inc54.i.i_crit_edge, %for.cond43.preheader.i.i.for.inc54.i.i_crit_edge
  %idx.1.lcssa.i.i = phi i32 [ %idx.0127.i.i, %for.cond43.preheader.i.i.for.inc54.i.i_crit_edge ], [ %438, %list_add_tail.exit.i.i.for.inc54.i.i_crit_edge ]
  %sub55.i.i = sub i32 %n_rem.0128.i.i, %n.0.lcssa.ph.i.i
  %tobool7.not.i.i = icmp eq i32 %sub55.i.i, 0
  br i1 %tobool7.not.i.i, label %for.inc54.i.i.efct_hw_init_io.exit_crit_edge, label %for.inc54.i.i.for.body.i.i_crit_edge

for.inc54.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc54.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc54.i.i.efct_hw_init_io.exit_crit_edge:     ; preds = %for.inc54.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_init_io.exit

for.body.i586:                                    ; preds = %list_add_tail.exit.i.for.body.i586_crit_edge, %for.body.lr.ph.i
  %idx.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc4.i, %list_add_tail.exit.i.for.body.i586_crit_edge ]
  %456 = ptrtoint ptr %io1.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %io1.i, align 8
  %arrayidx.i584 = getelementptr ptr, ptr %457, i32 %idx.021.i
  %458 = ptrtoint ptr %arrayidx.i584 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %arrayidx.i584, align 4
  %state.i = getelementptr inbounds %struct.efct_hw_io, ptr %459, i32 0, i32 1
  %460 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 0, ptr %state.i, align 4
  %list_entry.i = getelementptr inbounds %struct.efct_hw_io, ptr %459, i32 0, i32 3
  %461 = ptrtoint ptr %list_entry.i to i32
  call void @__asan_store4_noabort(i32 %461)
  store volatile ptr %list_entry.i, ptr %list_entry.i, align 4
  %prev.i.i585 = getelementptr inbounds %struct.efct_hw_io, ptr %459, i32 0, i32 3, i32 1
  %462 = ptrtoint ptr %prev.i.i585 to i32
  call void @__asan_store4_noabort(i32 %462)
  store ptr %list_entry.i, ptr %prev.i.i585, align 4
  %463 = ptrtoint ptr %prev.i17.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %prev.i17.i, align 4
  %call.i.i18.i = call zeroext i1 @__list_add_valid(ptr noundef %list_entry.i, ptr noundef %464, ptr noundef %io_free) #13
  br i1 %call.i.i18.i, label %if.end.i.i.i587, label %for.body.i586.list_add_tail.exit.i_crit_edge

for.body.i586.list_add_tail.exit.i_crit_edge:     ; preds = %for.body.i586
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i

if.end.i.i.i587:                                  ; preds = %for.body.i586
  call void @__sanitizer_cov_trace_pc() #15
  %465 = ptrtoint ptr %prev.i17.i to i32
  call void @__asan_store4_noabort(i32 %465)
  store ptr %list_entry.i, ptr %prev.i17.i, align 4
  %466 = ptrtoint ptr %list_entry.i to i32
  call void @__asan_store4_noabort(i32 %466)
  store ptr %io_free, ptr %list_entry.i, align 4
  %467 = ptrtoint ptr %prev.i.i585 to i32
  call void @__asan_store4_noabort(i32 %467)
  store ptr %464, ptr %prev.i.i585, align 4
  %468 = ptrtoint ptr %464 to i32
  call void @__asan_store4_noabort(i32 %468)
  store volatile ptr %list_entry.i, ptr %464, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i587, %for.body.i586.list_add_tail.exit.i_crit_edge
  %inc4.i = add nuw i32 %idx.021.i, 1
  %469 = ptrtoint ptr %n_io46.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %n_io46.i, align 4
  %cmp.i588 = icmp ult i32 %inc4.i, %470
  br i1 %cmp.i588, label %list_add_tail.exit.i.for.body.i586_crit_edge, label %list_add_tail.exit.i.if.end307_crit_edge

list_add_tail.exit.i.if.end307_crit_edge:         ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end307

list_add_tail.exit.i.for.body.i586_crit_edge:     ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i586

efct_hw_init_io.exit:                             ; preds = %for.inc54.i.i.efct_hw_init_io.exit_crit_edge, %do.end.i.i, %for.end.i.i.efct_hw_init_io.exit_crit_edge, %if.end6.i.i.efct_hw_init_io.exit_crit_edge
  %rc.2.i.i = phi i32 [ %call36.i.i, %do.end.i.i ], [ 0, %if.end6.i.i.efct_hw_init_io.exit_crit_edge ], [ 0, %for.inc54.i.i.efct_hw_init_io.exit_crit_edge ], [ -5, %for.end.i.i.efct_hw_init_io.exit_crit_edge ]
  %471 = ptrtoint ptr %405 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %405, align 8
  %dev58.i.i = getelementptr inbounds %struct.pci_dev, ptr %472, i32 0, i32 44
  %473 = ptrtoint ptr %403 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %403, align 4
  %475 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %req.i.i, align 4
  %477 = ptrtoint ptr %402 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %402, align 4
  call void @dma_free_attrs(ptr noundef %dev58.i.i, i32 noundef %474, ptr noundef %476, i32 noundef %478, i32 noundef 0) #13
  %479 = call ptr @memset(ptr %req.i.i, i32 0, i32 24)
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i.i) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %cmd.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2.i.i)
  %tobool299.not = icmp eq i32 %rc.2.i.i, 0
  br i1 %tobool299.not, label %efct_hw_init_io.exit.if.end307_crit_edge, label %efct_hw_init_io.exit.do.end303_crit_edge

efct_hw_init_io.exit.do.end303_crit_edge:         ; preds = %efct_hw_init_io.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end303

efct_hw_init_io.exit.if.end307_crit_edge:         ; preds = %efct_hw_init_io.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end307

do.end303:                                        ; preds = %efct_hw_init_io.exit.do.end303_crit_edge, %efct_hw_init_io.exit.thread640, %efct_hw_init_io.exit.thread636
  %retval.0.i.i583639 = phi i32 [ -12, %efct_hw_init_io.exit.thread636 ], [ %rc.2.i.i, %efct_hw_init_io.exit.do.end303_crit_edge ], [ -12, %efct_hw_init_io.exit.thread640 ]
  %480 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %hw, align 8
  %482 = ptrtoint ptr %481 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %481, align 8
  %dev306 = getelementptr inbounds %struct.pci_dev, ptr %483, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev306, ptr noundef nonnull @.str.56) #16
  br label %cleanup

if.end307:                                        ; preds = %efct_hw_init_io.exit.if.end307_crit_edge, %list_add_tail.exit.i.if.end307_crit_edge, %for.cond.preheader.i.if.end307_crit_edge
  %loop_map = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 49
  %size = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 49, i32 3
  %484 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %484)
  store i32 128, ptr %size, align 4
  %485 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %hw, align 8
  %487 = ptrtoint ptr %486 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %486, align 8
  %dev310 = getelementptr inbounds %struct.pci_dev, ptr %488, i32 0, i32 44
  %phys = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 49, i32 2
  %call.i591 = call ptr @dma_alloc_attrs(ptr noundef %dev310, i32 noundef 128, ptr noundef %phys, i32 noundef 3264, i32 noundef 0) #13
  %489 = ptrtoint ptr %loop_map to i32
  call void @__asan_store4_noabort(i32 %489)
  store ptr %call.i591, ptr %loop_map, align 4
  %tobool314.not = icmp eq ptr %call.i591, null
  br i1 %tobool314.not, label %if.end307.cleanup_crit_edge, label %for.cond.preheader

if.end307.cleanup_crit_edge:                      ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end307
  %eq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 17
  %490 = ptrtoint ptr %eq_count to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %eq_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %491)
  %cmp317662.not = icmp eq i32 %491, 0
  br i1 %cmp317662.not, label %for.cond.preheader.for.cond322.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond322.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond322.preheader

for.cond322.preheader:                            ; preds = %for.body.for.cond322.preheader_crit_edge, %for.cond.preheader.for.cond322.preheader_crit_edge
  %rq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 21
  %492 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %rq_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %493)
  %cmp323664.not = icmp eq i32 %493, 0
  br i1 %cmp323664.not, label %for.cond322.preheader.for.cond333.preheader_crit_edge, label %for.body325.preheader

for.cond322.preheader.for.cond333.preheader_crit_edge: ; preds = %for.cond322.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond333.preheader

for.body325.preheader:                            ; preds = %for.cond322.preheader
  %494 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %rq_count, align 8
  br label %for.body325

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0663 = phi i32 [ %inc321, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 16, i32 %i.0663
  %call320 = call i32 @sli_queue_arm(ptr noundef %sli122, ptr noundef %arrayidx, i1 noundef zeroext true) #13
  %inc321 = add nuw i32 %i.0663, 1
  %496 = ptrtoint ptr %eq_count to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %eq_count, align 8
  %cmp317 = icmp ult i32 %inc321, %497
  br i1 %cmp317, label %for.body.for.body_crit_edge, label %for.body.for.cond322.preheader_crit_edge

for.body.for.cond322.preheader_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond322.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond333.preheader:                            ; preds = %efct_hw_queue_hash_add.exit.for.cond333.preheader_crit_edge, %for.cond322.preheader.for.cond333.preheader_crit_edge
  %wq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 20
  %498 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %wq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %499)
  %cmp334666.not = icmp eq i32 %499, 0
  br i1 %cmp334666.not, label %for.cond333.preheader.for.cond345.preheader_crit_edge, label %for.body336.preheader

for.cond333.preheader.for.cond345.preheader_crit_edge: ; preds = %for.cond333.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond345.preheader

for.body336.preheader:                            ; preds = %for.cond333.preheader
  %500 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %wq_count, align 4
  br label %for.body336

for.body325:                                      ; preds = %efct_hw_queue_hash_add.exit.for.body325_crit_edge, %for.body325.preheader
  %i.1665 = phi i32 [ %inc331, %efct_hw_queue_hash_add.exit.for.body325_crit_edge ], [ 0, %for.body325.preheader ]
  %id = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 12, i32 %i.1665, i32 6
  %502 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %502)
  %503 = load i16, ptr %id, align 2
  %conv329 = trunc i32 %i.1665 to i16
  %504 = and i16 %503, 127
  %and.i = zext i16 %504 to i32
  %arrayidx16.i = getelementptr %struct.efct_queue_hash, ptr %rq_hash, i32 %and.i
  %505 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %arrayidx16.i, align 2, !range !547
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %506)
  %tobool.not17.i = icmp eq i8 %506, 0
  br i1 %tobool.not17.i, label %for.body325.efct_hw_queue_hash_add.exit_crit_edge, label %for.body325.while.body.i_crit_edge

for.body325.while.body.i_crit_edge:               ; preds = %for.body325
  br label %while.body.i

for.body325.efct_hw_queue_hash_add.exit_crit_edge: ; preds = %for.body325
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_queue_hash_add.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body325.while.body.i_crit_edge
  %hash_index.018.i = phi i32 [ %and1.i, %while.body.i.while.body.i_crit_edge ], [ %and.i, %for.body325.while.body.i_crit_edge ]
  %add.i592 = add nuw nsw i32 %hash_index.018.i, 1
  %and1.i = and i32 %add.i592, 127
  %arrayidx.i593 = getelementptr %struct.efct_queue_hash, ptr %rq_hash, i32 %and1.i
  %507 = ptrtoint ptr %arrayidx.i593 to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %arrayidx.i593, align 2, !range !547
  %tobool.not.i594 = icmp eq i8 %508, 0
  br i1 %tobool.not.i594, label %while.body.i.efct_hw_queue_hash_add.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.efct_hw_queue_hash_add.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_queue_hash_add.exit

efct_hw_queue_hash_add.exit:                      ; preds = %while.body.i.efct_hw_queue_hash_add.exit_crit_edge, %for.body325.efct_hw_queue_hash_add.exit_crit_edge
  %hash_index.0.lcssa.i = phi i32 [ %and.i, %for.body325.efct_hw_queue_hash_add.exit_crit_edge ], [ %and1.i, %while.body.i.efct_hw_queue_hash_add.exit_crit_edge ]
  %arrayidx.lcssa.i = phi ptr [ %arrayidx16.i, %for.body325.efct_hw_queue_hash_add.exit_crit_edge ], [ %arrayidx.i593, %while.body.i.efct_hw_queue_hash_add.exit_crit_edge ]
  %id3.i = getelementptr %struct.efct_queue_hash, ptr %rq_hash, i32 %hash_index.0.lcssa.i, i32 1
  %509 = ptrtoint ptr %id3.i to i32
  call void @__asan_store2_noabort(i32 %509)
  store i16 %503, ptr %id3.i, align 2
  %510 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %510)
  store i8 1, ptr %arrayidx.lcssa.i, align 2
  %index7.i = getelementptr %struct.efct_queue_hash, ptr %rq_hash, i32 %hash_index.0.lcssa.i, i32 2
  %511 = ptrtoint ptr %index7.i to i32
  call void @__asan_store2_noabort(i32 %511)
  store i16 %conv329, ptr %index7.i, align 2
  %inc331 = add nuw i32 %i.1665, 1
  %cmp323 = icmp ult i32 %inc331, %495
  br i1 %cmp323, label %efct_hw_queue_hash_add.exit.for.body325_crit_edge, label %efct_hw_queue_hash_add.exit.for.cond333.preheader_crit_edge

efct_hw_queue_hash_add.exit.for.cond333.preheader_crit_edge: ; preds = %efct_hw_queue_hash_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond333.preheader

efct_hw_queue_hash_add.exit.for.body325_crit_edge: ; preds = %efct_hw_queue_hash_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body325

for.cond345.preheader:                            ; preds = %efct_hw_queue_hash_add.exit608.for.cond345.preheader_crit_edge, %for.cond333.preheader.for.cond345.preheader_crit_edge
  %cq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 18
  %512 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %cq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %513)
  %cmp346668.not = icmp eq i32 %513, 0
  br i1 %cmp346668.not, label %for.cond345.preheader.for.cond361.preheader_crit_edge, label %for.cond345.preheader.for.body348_crit_edge

for.cond345.preheader.for.body348_crit_edge:      ; preds = %for.cond345.preheader
  br label %for.body348

for.cond345.preheader.for.cond361.preheader_crit_edge: ; preds = %for.cond345.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond361.preheader

for.body336:                                      ; preds = %efct_hw_queue_hash_add.exit608.for.body336_crit_edge, %for.body336.preheader
  %i.2667 = phi i32 [ %inc343, %efct_hw_queue_hash_add.exit608.for.body336_crit_edge ], [ 0, %for.body336.preheader ]
  %id340 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 11, i32 %i.2667, i32 6
  %514 = ptrtoint ptr %id340 to i32
  call void @__asan_load2_noabort(i32 %514)
  %515 = load i16, ptr %id340, align 2
  %conv341 = trunc i32 %i.2667 to i16
  %516 = and i16 %515, 127
  %and.i595 = zext i16 %516 to i32
  %arrayidx16.i596 = getelementptr %struct.efct_queue_hash, ptr %wq_hash, i32 %and.i595
  %517 = ptrtoint ptr %arrayidx16.i596 to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %arrayidx16.i596, align 2, !range !547
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %518)
  %tobool.not17.i597 = icmp eq i8 %518, 0
  br i1 %tobool.not17.i597, label %for.body336.efct_hw_queue_hash_add.exit608_crit_edge, label %for.body336.while.body.i603_crit_edge

for.body336.while.body.i603_crit_edge:            ; preds = %for.body336
  br label %while.body.i603

for.body336.efct_hw_queue_hash_add.exit608_crit_edge: ; preds = %for.body336
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_queue_hash_add.exit608

while.body.i603:                                  ; preds = %while.body.i603.while.body.i603_crit_edge, %for.body336.while.body.i603_crit_edge
  %hash_index.018.i598 = phi i32 [ %and1.i600, %while.body.i603.while.body.i603_crit_edge ], [ %and.i595, %for.body336.while.body.i603_crit_edge ]
  %add.i599 = add nuw nsw i32 %hash_index.018.i598, 1
  %and1.i600 = and i32 %add.i599, 127
  %arrayidx.i601 = getelementptr %struct.efct_queue_hash, ptr %wq_hash, i32 %and1.i600
  %519 = ptrtoint ptr %arrayidx.i601 to i32
  call void @__asan_load1_noabort(i32 %519)
  %520 = load i8, ptr %arrayidx.i601, align 2, !range !547
  %tobool.not.i602 = icmp eq i8 %520, 0
  br i1 %tobool.not.i602, label %while.body.i603.efct_hw_queue_hash_add.exit608_crit_edge, label %while.body.i603.while.body.i603_crit_edge

while.body.i603.while.body.i603_crit_edge:        ; preds = %while.body.i603
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i603

while.body.i603.efct_hw_queue_hash_add.exit608_crit_edge: ; preds = %while.body.i603
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_queue_hash_add.exit608

efct_hw_queue_hash_add.exit608:                   ; preds = %while.body.i603.efct_hw_queue_hash_add.exit608_crit_edge, %for.body336.efct_hw_queue_hash_add.exit608_crit_edge
  %hash_index.0.lcssa.i604 = phi i32 [ %and.i595, %for.body336.efct_hw_queue_hash_add.exit608_crit_edge ], [ %and1.i600, %while.body.i603.efct_hw_queue_hash_add.exit608_crit_edge ]
  %arrayidx.lcssa.i605 = phi ptr [ %arrayidx16.i596, %for.body336.efct_hw_queue_hash_add.exit608_crit_edge ], [ %arrayidx.i601, %while.body.i603.efct_hw_queue_hash_add.exit608_crit_edge ]
  %id3.i606 = getelementptr %struct.efct_queue_hash, ptr %wq_hash, i32 %hash_index.0.lcssa.i604, i32 1
  %521 = ptrtoint ptr %id3.i606 to i32
  call void @__asan_store2_noabort(i32 %521)
  store i16 %515, ptr %id3.i606, align 2
  %522 = ptrtoint ptr %arrayidx.lcssa.i605 to i32
  call void @__asan_store1_noabort(i32 %522)
  store i8 1, ptr %arrayidx.lcssa.i605, align 2
  %index7.i607 = getelementptr %struct.efct_queue_hash, ptr %wq_hash, i32 %hash_index.0.lcssa.i604, i32 2
  %523 = ptrtoint ptr %index7.i607 to i32
  call void @__asan_store2_noabort(i32 %523)
  store i16 %conv341, ptr %index7.i607, align 2
  %inc343 = add nuw i32 %i.2667, 1
  %cmp334 = icmp ult i32 %inc343, %501
  br i1 %cmp334, label %efct_hw_queue_hash_add.exit608.for.body336_crit_edge, label %efct_hw_queue_hash_add.exit608.for.cond345.preheader_crit_edge

efct_hw_queue_hash_add.exit608.for.cond345.preheader_crit_edge: ; preds = %efct_hw_queue_hash_add.exit608
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond345.preheader

efct_hw_queue_hash_add.exit608.for.body336_crit_edge: ; preds = %efct_hw_queue_hash_add.exit608
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body336

for.cond361.preheader:                            ; preds = %efct_hw_queue_hash_add.exit622.for.cond361.preheader_crit_edge, %for.cond345.preheader.for.cond361.preheader_crit_edge
  %hw_rq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 32
  %524 = ptrtoint ptr %hw_rq_count to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %hw_rq_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %525)
  %cmp362670.not = icmp eq i32 %525, 0
  br i1 %cmp362670.not, label %for.cond361.preheader.for.end373_crit_edge, label %for.cond361.preheader.for.body364_crit_edge

for.cond361.preheader.for.body364_crit_edge:      ; preds = %for.cond361.preheader
  br label %for.body364

for.cond361.preheader.for.end373_crit_edge:       ; preds = %for.cond361.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end373

for.body348:                                      ; preds = %efct_hw_queue_hash_add.exit622.for.body348_crit_edge, %for.cond345.preheader.for.body348_crit_edge
  %i.3669 = phi i32 [ %inc359, %efct_hw_queue_hash_add.exit622.for.body348_crit_edge ], [ 0, %for.cond345.preheader.for.body348_crit_edge ]
  %arrayidx351 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 15, i32 %i.3669
  %id352 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 15, i32 %i.3669, i32 6
  %526 = ptrtoint ptr %id352 to i32
  call void @__asan_load2_noabort(i32 %526)
  %527 = load i16, ptr %id352, align 2
  %conv353 = trunc i32 %i.3669 to i16
  %528 = and i16 %527, 127
  %and.i609 = zext i16 %528 to i32
  %arrayidx16.i610 = getelementptr %struct.efct_queue_hash, ptr %cq_hash, i32 %and.i609
  %529 = ptrtoint ptr %arrayidx16.i610 to i32
  call void @__asan_load1_noabort(i32 %529)
  %530 = load i8, ptr %arrayidx16.i610, align 2, !range !547
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %530)
  %tobool.not17.i611 = icmp eq i8 %530, 0
  br i1 %tobool.not17.i611, label %for.body348.efct_hw_queue_hash_add.exit622_crit_edge, label %for.body348.while.body.i617_crit_edge

for.body348.while.body.i617_crit_edge:            ; preds = %for.body348
  br label %while.body.i617

for.body348.efct_hw_queue_hash_add.exit622_crit_edge: ; preds = %for.body348
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_queue_hash_add.exit622

while.body.i617:                                  ; preds = %while.body.i617.while.body.i617_crit_edge, %for.body348.while.body.i617_crit_edge
  %hash_index.018.i612 = phi i32 [ %and1.i614, %while.body.i617.while.body.i617_crit_edge ], [ %and.i609, %for.body348.while.body.i617_crit_edge ]
  %add.i613 = add nuw nsw i32 %hash_index.018.i612, 1
  %and1.i614 = and i32 %add.i613, 127
  %arrayidx.i615 = getelementptr %struct.efct_queue_hash, ptr %cq_hash, i32 %and1.i614
  %531 = ptrtoint ptr %arrayidx.i615 to i32
  call void @__asan_load1_noabort(i32 %531)
  %532 = load i8, ptr %arrayidx.i615, align 2, !range !547
  %tobool.not.i616 = icmp eq i8 %532, 0
  br i1 %tobool.not.i616, label %while.body.i617.efct_hw_queue_hash_add.exit622_crit_edge, label %while.body.i617.while.body.i617_crit_edge

while.body.i617.while.body.i617_crit_edge:        ; preds = %while.body.i617
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i617

while.body.i617.efct_hw_queue_hash_add.exit622_crit_edge: ; preds = %while.body.i617
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_queue_hash_add.exit622

efct_hw_queue_hash_add.exit622:                   ; preds = %while.body.i617.efct_hw_queue_hash_add.exit622_crit_edge, %for.body348.efct_hw_queue_hash_add.exit622_crit_edge
  %hash_index.0.lcssa.i618 = phi i32 [ %and.i609, %for.body348.efct_hw_queue_hash_add.exit622_crit_edge ], [ %and1.i614, %while.body.i617.efct_hw_queue_hash_add.exit622_crit_edge ]
  %arrayidx.lcssa.i619 = phi ptr [ %arrayidx16.i610, %for.body348.efct_hw_queue_hash_add.exit622_crit_edge ], [ %arrayidx.i615, %while.body.i617.efct_hw_queue_hash_add.exit622_crit_edge ]
  %id3.i620 = getelementptr %struct.efct_queue_hash, ptr %cq_hash, i32 %hash_index.0.lcssa.i618, i32 1
  %533 = ptrtoint ptr %id3.i620 to i32
  call void @__asan_store2_noabort(i32 %533)
  store i16 %527, ptr %id3.i620, align 2
  %534 = ptrtoint ptr %arrayidx.lcssa.i619 to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 1, ptr %arrayidx.lcssa.i619, align 2
  %index7.i621 = getelementptr %struct.efct_queue_hash, ptr %cq_hash, i32 %hash_index.0.lcssa.i618, i32 2
  %535 = ptrtoint ptr %index7.i621 to i32
  call void @__asan_store2_noabort(i32 %535)
  store i16 %conv353, ptr %index7.i621, align 2
  %call357 = call i32 @sli_queue_arm(ptr noundef %sli122, ptr noundef %arrayidx351, i1 noundef zeroext true) #13
  %inc359 = add nuw i32 %i.3669, 1
  %536 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %cq_count, align 4
  %cmp346 = icmp ult i32 %inc359, %537
  br i1 %cmp346, label %efct_hw_queue_hash_add.exit622.for.body348_crit_edge, label %efct_hw_queue_hash_add.exit622.for.cond361.preheader_crit_edge

efct_hw_queue_hash_add.exit622.for.cond361.preheader_crit_edge: ; preds = %efct_hw_queue_hash_add.exit622
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond361.preheader

efct_hw_queue_hash_add.exit622.for.body348_crit_edge: ; preds = %efct_hw_queue_hash_add.exit622
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body348

for.body364:                                      ; preds = %for.body364.for.body364_crit_edge, %for.cond361.preheader.for.body364_crit_edge
  %i.4671 = phi i32 [ %inc372, %for.body364.for.body364_crit_edge ], [ 0, %for.cond361.preheader.for.body364_crit_edge ]
  %arrayidx366 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 28, i32 %i.4671
  %538 = ptrtoint ptr %arrayidx366 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %arrayidx366, align 4
  %540 = ptrtoint ptr %n_io46.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %n_io46.i, align 4
  %div526 = lshr i32 %541, 1
  %cq369 = getelementptr inbounds %struct.hw_rq, ptr %539, i32 0, i32 10
  %542 = ptrtoint ptr %cq369 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %cq369, align 4
  %instance = getelementptr inbounds %struct.hw_cq, ptr %543, i32 0, i32 2
  %544 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %instance, align 4
  %proc_limit = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 15, i32 %545, i32 10
  %546 = ptrtoint ptr %proc_limit to i32
  call void @__asan_store4_noabort(i32 %546)
  store i32 %div526, ptr %proc_limit, align 4
  %inc372 = add nuw i32 %i.4671, 1
  %exitcond.not = icmp eq i32 %inc372, %525
  br i1 %exitcond.not, label %for.body364.for.end373_crit_edge, label %for.body364.for.body364_crit_edge

for.body364.for.body364_crit_edge:                ; preds = %for.body364
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body364

for.body364.for.end373_crit_edge:                 ; preds = %for.body364
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end373

for.end373:                                       ; preds = %for.body364.for.end373_crit_edge, %for.cond361.preheader.for.end373_crit_edge
  %state = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 5
  %547 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %547)
  store i32 2, ptr %state, align 8
  %call374 = call ptr @efct_hw_io_alloc(ptr noundef %hw)
  %hw_wq = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 27
  %548 = ptrtoint ptr %hw_wq to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %hw_wq, align 8
  %send_frame_io = getelementptr inbounds %struct.hw_wq, ptr %549, i32 0, i32 14
  %550 = ptrtoint ptr %send_frame_io to i32
  call void @__asan_store4_noabort(i32 %550)
  store ptr %call374, ptr %send_frame_io, align 4
  %551 = load ptr, ptr %hw_wq, align 8
  %send_frame_io378 = getelementptr inbounds %struct.hw_wq, ptr %551, i32 0, i32 14
  %552 = ptrtoint ptr %send_frame_io378 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %send_frame_io378, align 4
  %tobool379.not = icmp eq ptr %553, null
  br i1 %tobool379.not, label %do.end383, label %for.end373.if.end387_crit_edge

for.end373.if.end387_crit_edge:                   ; preds = %for.end373
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end387

do.end383:                                        ; preds = %for.end373
  call void @__sanitizer_cov_trace_pc() #15
  %554 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %hw, align 8
  %556 = ptrtoint ptr %555 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %555, align 8
  %dev386 = getelementptr inbounds %struct.pci_dev, ptr %557, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev386, ptr noundef nonnull @.str.59) #16
  br label %if.end387

if.end387:                                        ; preds = %do.end383, %for.end373.if.end387_crit_edge
  %send_frame_seq_id = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 55
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %send_frame_seq_id, i32 noundef 4) #13
  %558 = ptrtoint ptr %send_frame_seq_id to i32
  call void @__asan_store4_noabort(i32 %558)
  store volatile i32 0, ptr %send_frame_seq_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end387, %if.end307.cleanup_crit_edge, %do.end303, %do.end293, %do.end283, %do.end271, %do.end260, %do.end249, %do.end235, %do.end225, %if.end215.cleanup_crit_edge, %do.end211.cleanup_crit_edge, %do.end141, %do.end128, %if.then12, %if.then
  %retval.0 = phi i32 [ -5, %do.end128 ], [ %call135, %do.end141 ], [ %call220, %do.end225 ], [ %call230, %do.end235 ], [ %rc.0113.i, %do.end249 ], [ %retval.2.i.ph, %do.end293 ], [ %retval.0.i.i583639, %do.end303 ], [ 0, %if.end387 ], [ -12, %do.end283 ], [ %call254, %do.end260 ], [ %call265, %do.end271 ], [ -5, %if.then12 ], [ -5, %if.then ], [ %call212, %do.end211.cleanup_crit_edge ], [ %call216, %if.end215.cleanup_crit_edge ], [ -5, %if.end307.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_hw_rx_free(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_rq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 32
  %0 = ptrtoint ptr %hw_rq_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_rq_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp30.not = icmp eq i32 %1, 0
  br i1 %cmp30.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 28, i32 %i.031
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.body
  %hdr_buf = getelementptr inbounds %struct.hw_rq, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %hdr_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdr_buf, align 4
  %entry_count = getelementptr inbounds %struct.hw_rq, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entry_count, align 4
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.efct_hw_rx_buffer_free.exit_crit_edge, label %for.cond.preheader.i

if.then.efct_hw_rx_buffer_free.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_rx_buffer_free.exit

for.cond.preheader.i:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11.not.i = icmp eq i32 %7, 0
  br i1 %cmp11.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %prq.013.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %5, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %dma.i = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %prq.013.i, i32 0, i32 1
  %size.i = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %prq.013.i, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  %14 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma.i, align 4
  %phys.i = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %prq.013.i, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef 0) #13
  %18 = call ptr @memset(ptr %dma.i, i32 0, i32 24)
  %inc.i = add nuw i32 %i.012.i, 1
  %incdec.ptr.i = getelementptr %struct.efc_hw_rq_buffer, ptr %prq.013.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %5) #13
  %19 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %entry_count, align 4
  br label %efct_hw_rx_buffer_free.exit

efct_hw_rx_buffer_free.exit:                      ; preds = %for.end.i, %if.then.efct_hw_rx_buffer_free.exit_crit_edge
  %20 = phi i32 [ %7, %if.then.efct_hw_rx_buffer_free.exit_crit_edge ], [ %.pr, %for.end.i ]
  %21 = ptrtoint ptr %hdr_buf to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %hdr_buf, align 4
  %payload_buf = getelementptr inbounds %struct.hw_rq, ptr %3, i32 0, i32 17
  %22 = ptrtoint ptr %payload_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %payload_buf, align 4
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 8
  %tobool.not.i15 = icmp eq ptr %23, null
  br i1 %tobool.not.i15, label %efct_hw_rx_buffer_free.exit.efct_hw_rx_buffer_free.exit29_crit_edge, label %for.cond.preheader.i17

efct_hw_rx_buffer_free.exit.efct_hw_rx_buffer_free.exit29_crit_edge: ; preds = %efct_hw_rx_buffer_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_rx_buffer_free.exit29

for.cond.preheader.i17:                           ; preds = %efct_hw_rx_buffer_free.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp11.not.i16 = icmp eq i32 %20, 0
  br i1 %cmp11.not.i16, label %for.cond.preheader.i17.for.end.i28_crit_edge, label %for.cond.preheader.i17.for.body.i27_crit_edge

for.cond.preheader.i17.for.body.i27_crit_edge:    ; preds = %for.cond.preheader.i17
  br label %for.body.i27

for.cond.preheader.i17.for.end.i28_crit_edge:     ; preds = %for.cond.preheader.i17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i28

for.body.i27:                                     ; preds = %for.body.i27.for.body.i27_crit_edge, %for.cond.preheader.i17.for.body.i27_crit_edge
  %prq.013.i18 = phi ptr [ %incdec.ptr.i25, %for.body.i27.for.body.i27_crit_edge ], [ %23, %for.cond.preheader.i17.for.body.i27_crit_edge ]
  %i.012.i19 = phi i32 [ %inc.i24, %for.body.i27.for.body.i27_crit_edge ], [ 0, %for.cond.preheader.i17.for.body.i27_crit_edge ]
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %dev.i20 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %dma.i21 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %prq.013.i18, i32 0, i32 1
  %size.i22 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %prq.013.i18, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %size.i22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i22, align 4
  %30 = ptrtoint ptr %dma.i21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma.i21, align 4
  %phys.i23 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %prq.013.i18, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %phys.i23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %phys.i23, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i20, i32 noundef %29, ptr noundef %31, i32 noundef %33, i32 noundef 0) #13
  %34 = call ptr @memset(ptr %dma.i21, i32 0, i32 24)
  %inc.i24 = add nuw i32 %i.012.i19, 1
  %incdec.ptr.i25 = getelementptr %struct.efc_hw_rq_buffer, ptr %prq.013.i18, i32 1
  %exitcond.not.i26 = icmp eq i32 %inc.i24, %20
  br i1 %exitcond.not.i26, label %for.body.i27.for.end.i28_crit_edge, label %for.body.i27.for.body.i27_crit_edge

for.body.i27.for.body.i27_crit_edge:              ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i27

for.body.i27.for.end.i28_crit_edge:               ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i28

for.end.i28:                                      ; preds = %for.body.i27.for.end.i28_crit_edge, %for.cond.preheader.i17.for.end.i28_crit_edge
  tail call void @kfree(ptr noundef nonnull %23) #13
  br label %efct_hw_rx_buffer_free.exit29

efct_hw_rx_buffer_free.exit29:                    ; preds = %for.end.i28, %efct_hw_rx_buffer_free.exit.efct_hw_rx_buffer_free.exit29_crit_edge
  %35 = ptrtoint ptr %payload_buf to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %payload_buf, align 4
  br label %if.end

if.end:                                           ; preds = %efct_hw_rx_buffer_free.exit29, %for.body.if.end_crit_edge
  %inc = add nuw i32 %i.031, 1
  %36 = ptrtoint ptr %hw_rq_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hw_rq_count, align 8
  %cmp = icmp ult i32 %inc, %37
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efct_hw_config_sli_port_health_check(ptr noundef %hw, i8 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  %param = alloca %struct.sli4_rqst_cmn_set_features_health_check, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #13
  %0 = call ptr @memset(ptr %buf, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 16777216
  %1 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.select, ptr %param, align 4
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %call = call i32 @sli_cmd_common_set_features(ptr noundef %sli, ptr noundef nonnull %buf, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %param) #13
  %call6 = call i32 @efct_hw_command(ptr noundef %hw, ptr noundef nonnull %buf, i32 noundef 0, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body9, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.230, i32 noundef %call6) #16
  br label %if.end21

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_config_sli_port_health_check.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_config_sli_port_health_check, %if.then14)) #13
          to label %if.end21 [label %if.then14], !srcloc !548

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_config_sli_port_health_check.__UNIQUE_ID_ddebug322, ptr noundef %dev17, ptr noundef nonnull @.str.232) #13
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %do.body9, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #13
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_init_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_map_wq_cpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_rx_allocate(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %rq_default_buffer_size = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 9
  %2 = ptrtoint ptr %rq_default_buffer_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rq_default_buffer_size, align 4
  %hw_rq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 32
  %4 = ptrtoint ptr %hw_rq_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_rq_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp167.not = icmp eq i32 %5, 0
  br i1 %cmp167.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0169 = phi i32 [ %inc49, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %rqindex.0168 = phi i32 [ %inc48, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 28, i32 %i.0169
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %entry_count = getelementptr inbounds %struct.hw_rq, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %entry_count, align 4
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %for.body.efct_hw_rx_buffer_alloc.exit.thread_crit_edge, label %if.end.i

for.body.efct_hw_rx_buffer_alloc.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_rx_buffer_alloc.exit.thread

if.end.i:                                         ; preds = %for.body
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 28) #13
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  br i1 %13, label %if.end.i.efct_hw_rx_buffer_alloc.exit.thread_crit_edge, label %if.end7.i.i, !prof !550

if.end.i.efct_hw_rx_buffer_alloc.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_rx_buffer_alloc.exit.thread

if.end7.i.i:                                      ; preds = %if.end.i
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #17
  %tobool1.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool1.not.i, label %if.end7.i.i.efct_hw_rx_buffer_alloc.exit.thread_crit_edge, label %for.body.preheader.i

if.end7.i.i.efct_hw_rx_buffer_alloc.exit.thread_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_rx_buffer_alloc.exit.thread

for.body.preheader.i:                             ; preds = %if.end7.i.i
  %15 = call ptr @memset(ptr %call8.i.i, i32 0, i32 %14)
  %conv.i = trunc i32 %rqindex.0168 to i16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.045.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %prq.044.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %call8.i.i, %for.body.preheader.i ]
  %16 = ptrtoint ptr %prq.044.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %prq.044.i, align 4
  %dma.i = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %prq.044.i, i32 0, i32 1
  %size5.i = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %prq.044.i, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %size5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 128, ptr %size5.i, align 4
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %phys.i = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %prq.044.i, i32 0, i32 1, i32 2
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 128, ptr noundef %phys.i, i32 noundef 3264, i32 noundef 0) #13
  %20 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %dma.i, align 4
  %tobool13.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool13.not.i, label %do.end.i, label %for.inc.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %dev17.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.268) #16
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #13
  br label %efct_hw_rx_buffer_alloc.exit.thread

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.045.i, 1
  %incdec.ptr.i = getelementptr %struct.efc_hw_rq_buffer, ptr %prq.044.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %efct_hw_rx_buffer_alloc.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

efct_hw_rx_buffer_alloc.exit.thread:              ; preds = %do.end.i, %if.end7.i.i.efct_hw_rx_buffer_alloc.exit.thread_crit_edge, %if.end.i.efct_hw_rx_buffer_alloc.exit.thread_crit_edge, %for.body.efct_hw_rx_buffer_alloc.exit.thread_crit_edge
  %hdr_buf144 = getelementptr inbounds %struct.hw_rq, ptr %7, i32 0, i32 15
  br label %for.end.sink.split.sink.split

efct_hw_rx_buffer_alloc.exit:                     ; preds = %for.inc.i
  %hdr_buf = getelementptr inbounds %struct.hw_rq, ptr %7, i32 0, i32 15
  %25 = ptrtoint ptr %hdr_buf to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i.i, ptr %hdr_buf, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_rx_allocate.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_rx_allocate, %if.then7)) #13
          to label %do.end14 [label %if.then7], !srcloc !548

if.then7:                                         ; preds = %efct_hw_rx_buffer_alloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %hdr = getelementptr inbounds %struct.hw_rq, ptr %7, i32 0, i32 12
  %30 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hdr, align 4
  %id = getelementptr inbounds %struct.sli4_queue, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %id, align 2
  %conv = zext i16 %33 to i32
  %34 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %entry_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_rx_allocate.__UNIQUE_ID_ddebug329, ptr noundef %dev10, ptr noundef nonnull @.str.69, i32 noundef %i.0169, i32 noundef %conv, i32 noundef %35, i32 noundef 128) #13
  br label %do.end14

do.end14:                                         ; preds = %if.then7, %efct_hw_rx_buffer_alloc.exit
  %36 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %entry_count, align 4
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i87 = icmp eq i32 %37, 0
  br i1 %tobool.not.i87, label %do.end14.efct_hw_rx_buffer_alloc.exit142.thread_crit_edge, label %if.end.i88

do.end14.efct_hw_rx_buffer_alloc.exit142.thread_crit_edge: ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_rx_buffer_alloc.exit142.thread

if.end.i88:                                       ; preds = %do.end14
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %37, i32 28) #13
  %41 = extractvalue { i32, i1 } %40, 1
  %42 = extractvalue { i32, i1 } %40, 0
  br i1 %41, label %if.end.i88.efct_hw_rx_buffer_alloc.exit142.thread_crit_edge, label %if.end7.i.i119, !prof !550

if.end.i88.efct_hw_rx_buffer_alloc.exit142.thread_crit_edge: ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_rx_buffer_alloc.exit142.thread

if.end7.i.i119:                                   ; preds = %if.end.i88
  %call8.i.i118 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %42, i32 noundef 3264) #17
  %tobool1.not.i121 = icmp eq ptr %call8.i.i118, null
  br i1 %tobool1.not.i121, label %if.end7.i.i119.efct_hw_rx_buffer_alloc.exit142.thread_crit_edge, label %for.body.preheader.i125

if.end7.i.i119.efct_hw_rx_buffer_alloc.exit142.thread_crit_edge: ; preds = %if.end7.i.i119
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_rx_buffer_alloc.exit142.thread

for.body.preheader.i125:                          ; preds = %if.end7.i.i119
  %43 = call ptr @memset(ptr %call8.i.i118, i32 0, i32 %42)
  %conv.i124 = or i16 %conv.i, 1
  br label %for.body.i134

for.body.i134:                                    ; preds = %for.inc.i140.for.body.i134_crit_edge, %for.body.preheader.i125
  %i.045.i126 = phi i32 [ %inc.i137, %for.inc.i140.for.body.i134_crit_edge ], [ 0, %for.body.preheader.i125 ]
  %prq.044.i127 = phi ptr [ %incdec.ptr.i138, %for.inc.i140.for.body.i134_crit_edge ], [ %call8.i.i118, %for.body.preheader.i125 ]
  %44 = ptrtoint ptr %prq.044.i127 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i124, ptr %prq.044.i127, align 4
  %dma.i128 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %prq.044.i127, i32 0, i32 1
  %size5.i129 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %prq.044.i127, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %size5.i129 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %3, ptr %size5.i129, align 4
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %39, align 8
  %dev.i130 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %phys.i131 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %prq.044.i127, i32 0, i32 1, i32 2
  %call.i.i132 = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i130, i32 noundef %3, ptr noundef %phys.i131, i32 noundef 3264, i32 noundef 0) #13
  %48 = ptrtoint ptr %dma.i128 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i.i132, ptr %dma.i128, align 4
  %tobool13.not.i133 = icmp eq ptr %call.i.i132, null
  br i1 %tobool13.not.i133, label %do.end.i136, label %for.inc.i140

do.end.i136:                                      ; preds = %for.body.i134
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %dev17.i135 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i135, ptr noundef nonnull @.str.268) #16
  tail call void @kfree(ptr noundef nonnull %call8.i.i118) #13
  br label %efct_hw_rx_buffer_alloc.exit142.thread

for.inc.i140:                                     ; preds = %for.body.i134
  %inc.i137 = add nuw i32 %i.045.i126, 1
  %incdec.ptr.i138 = getelementptr %struct.efc_hw_rq_buffer, ptr %prq.044.i127, i32 1
  %exitcond.not.i139 = icmp eq i32 %inc.i137, %37
  br i1 %exitcond.not.i139, label %efct_hw_rx_buffer_alloc.exit142, label %for.inc.i140.for.body.i134_crit_edge

for.inc.i140.for.body.i134_crit_edge:             ; preds = %for.inc.i140
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i134

efct_hw_rx_buffer_alloc.exit142.thread:           ; preds = %do.end.i136, %if.end7.i.i119.efct_hw_rx_buffer_alloc.exit142.thread_crit_edge, %if.end.i88.efct_hw_rx_buffer_alloc.exit142.thread_crit_edge, %do.end14.efct_hw_rx_buffer_alloc.exit142.thread_crit_edge
  %payload_buf148 = getelementptr inbounds %struct.hw_rq, ptr %7, i32 0, i32 17
  br label %for.end.sink.split.sink.split

efct_hw_rx_buffer_alloc.exit142:                  ; preds = %for.inc.i140
  %payload_buf = getelementptr inbounds %struct.hw_rq, ptr %7, i32 0, i32 17
  %53 = ptrtoint ptr %payload_buf to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call8.i.i118, ptr %payload_buf, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_rx_allocate.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_rx_allocate, %if.then38)) #13
          to label %for.inc [label %if.then38], !srcloc !548

if.then38:                                        ; preds = %efct_hw_rx_buffer_alloc.exit142
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %data = getelementptr inbounds %struct.hw_rq, ptr %7, i32 0, i32 14
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %id42 = getelementptr inbounds %struct.sli4_queue, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %id42 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %id42, align 2
  %conv43 = zext i16 %61 to i32
  %62 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %entry_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_rx_allocate.__UNIQUE_ID_ddebug330, ptr noundef %dev41, ptr noundef nonnull @.str.73, i32 noundef %i.0169, i32 noundef %conv43, i32 noundef %63, i32 noundef %3) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then38, %efct_hw_rx_buffer_alloc.exit142
  %inc48 = add i32 %rqindex.0168, 2
  %inc49 = add nuw i32 %i.0169, 1
  %64 = ptrtoint ptr %hw_rq_count to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %hw_rq_count, align 8
  %cmp = icmp ult i32 %inc49, %65
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end.sink.split.sink.split:                    ; preds = %efct_hw_rx_buffer_alloc.exit142.thread, %efct_hw_rx_buffer_alloc.exit.thread
  %payload_buf148.sink = phi ptr [ %payload_buf148, %efct_hw_rx_buffer_alloc.exit142.thread ], [ %hdr_buf144, %efct_hw_rx_buffer_alloc.exit.thread ]
  %.str.67.sink.ph = phi ptr [ @.str.71, %efct_hw_rx_buffer_alloc.exit142.thread ], [ @.str.67, %efct_hw_rx_buffer_alloc.exit.thread ]
  %66 = ptrtoint ptr %payload_buf148.sink to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %payload_buf148.sink, align 4
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.67.sink.ph) #16
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split.sink.split, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %69 = phi i32 [ 0, %entry.for.end_crit_edge ], [ -5, %for.end.sink.split.sink.split ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_rx_post(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %seq_pool = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 35
  %0 = ptrtoint ptr %seq_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %seq_pool, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.cond.preheader, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

for.cond.preheader:                               ; preds = %entry
  %hw_rq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 32
  %2 = ptrtoint ptr %hw_rq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_rq_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp92.not = icmp eq i32 %3, 0
  br i1 %cmp92.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %count.094 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.093 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 28, i32 %i.093
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %entry_count = getelementptr inbounds %struct.hw_rq, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entry_count, align 4
  %add = add i32 %7, %count.094
  %inc = add nuw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count.0.lcssa, i32 28) #13
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !550

kmalloc_array.exit.thread:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %seq_pool to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %seq_pool, align 4
  br label %cleanup45

if.end7.i:                                        ; preds = %for.end
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #17
  %12 = ptrtoint ptr %seq_pool to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i, ptr %seq_pool, align 4
  %tobool3.not = icmp eq ptr %call8.i, null
  br i1 %tobool3.not, label %if.end7.i.cleanup45_crit_edge, label %if.end7.i.if.end5_crit_edge

if.end7.i.if.end5_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.end7.i.cleanup45_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup45

if.end5:                                          ; preds = %if.end7.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %hw_rq_count7 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 32
  %13 = ptrtoint ptr %hw_rq_count7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_rq_count7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp8100.not = icmp eq i32 %14, 0
  br i1 %cmp8100.not, label %if.end5.cleanup45_crit_edge, label %if.end5.for.body9_crit_edge

if.end5.for.body9_crit_edge:                      ; preds = %if.end5
  br label %for.body9

if.end5.cleanup45_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup45

for.body9:                                        ; preds = %for.inc36.for.body9_crit_edge, %if.end5.for.body9_crit_edge
  %rq_idx.0102 = phi i32 [ %inc37, %for.inc36.for.body9_crit_edge ], [ 0, %if.end5.for.body9_crit_edge ]
  %idx.0101 = phi i32 [ %idx.1.lcssa, %for.inc36.for.body9_crit_edge ], [ 0, %if.end5.for.body9_crit_edge ]
  %arrayidx11 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 28, i32 %rq_idx.0102
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx11, align 4
  %entry_count13 = getelementptr inbounds %struct.hw_rq, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %entry_count13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %entry_count13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp1496.not = icmp eq i32 %18, 1
  br i1 %cmp1496.not, label %for.body9.for.inc36_crit_edge, label %for.body15.lr.ph

for.body9.for.inc36_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc36

for.body15.lr.ph:                                 ; preds = %for.body9
  %hdr_buf = getelementptr inbounds %struct.hw_rq, ptr %16, i32 0, i32 15
  %payload_buf = getelementptr inbounds %struct.hw_rq, ptr %16, i32 0, i32 17
  br label %for.body15

for.body15:                                       ; preds = %for.inc27.for.body15_crit_edge, %for.body15.lr.ph
  %idx.198 = phi i32 [ %idx.0101, %for.body15.lr.ph ], [ %inc17, %for.inc27.for.body15_crit_edge ]
  %i.197 = phi i32 [ 0, %for.body15.lr.ph ], [ %inc28, %for.inc27.for.body15_crit_edge ]
  %19 = ptrtoint ptr %seq_pool to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %seq_pool, align 4
  %add.ptr = getelementptr %struct.efc_hw_sequence, ptr %20, i32 %idx.198
  %21 = ptrtoint ptr %hdr_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hdr_buf, align 4
  %arrayidx18 = getelementptr %struct.efc_hw_rq_buffer, ptr %22, i32 %i.197
  %header = getelementptr %struct.efc_hw_sequence, ptr %20, i32 %idx.198, i32 3
  %23 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx18, ptr %header, align 4
  %24 = ptrtoint ptr %payload_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %payload_buf, align 4
  %arrayidx19 = getelementptr %struct.efc_hw_rq_buffer, ptr %25, i32 %i.197
  %payload = getelementptr %struct.efc_hw_sequence, ptr %20, i32 %idx.198, i32 4
  %26 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx19, ptr %payload, align 4
  %call.i = tail call i32 @efct_hw_rqpair_sequence_free(ptr noundef %hw, ptr noundef %add.ptr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  br i1 %tobool21.not, label %for.inc27, label %land.lhs.true

for.inc27:                                        ; preds = %for.body15
  %inc17 = add i32 %idx.198, 1
  %inc28 = add nuw i32 %i.197, 1
  %27 = ptrtoint ptr %entry_count13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %entry_count13, align 4
  %sub = add i32 %28, -1
  %cmp14 = icmp ult i32 %inc28, %sub
  br i1 %cmp14, label %for.inc27.for.body15_crit_edge, label %for.inc27.for.inc36_crit_edge

for.inc27.for.inc36_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc36

for.inc27.for.body15_crit_edge:                   ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body15

for.inc36:                                        ; preds = %for.inc27.for.inc36_crit_edge, %for.body9.for.inc36_crit_edge
  %idx.1.lcssa = phi i32 [ %idx.0101, %for.body9.for.inc36_crit_edge ], [ %inc17, %for.inc27.for.inc36_crit_edge ]
  %inc37 = add nuw i32 %rq_idx.0102, 1
  %29 = ptrtoint ptr %hw_rq_count7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hw_rq_count7, align 8
  %cmp8 = icmp ult i32 %inc37, %30
  br i1 %cmp8, label %for.inc36.for.body9_crit_edge, label %for.inc36.cleanup45_crit_edge

for.inc36.cleanup45_crit_edge:                    ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup45

for.inc36.for.body9_crit_edge:                    ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body9

land.lhs.true:                                    ; preds = %for.body15
  %31 = ptrtoint ptr %seq_pool to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %seq_pool, align 4
  %tobool41.not = icmp eq ptr %32, null
  br i1 %tobool41.not, label %land.lhs.true.cleanup45_crit_edge, label %if.then42

land.lhs.true.cleanup45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup45

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %32) #13
  br label %cleanup45

cleanup45:                                        ; preds = %if.then42, %land.lhs.true.cleanup45_crit_edge, %for.inc36.cleanup45_crit_edge, %if.end5.cleanup45_crit_edge, %if.end7.i.cleanup45_crit_edge, %kmalloc_array.exit.thread
  %retval.1 = phi i32 [ -12, %if.end7.i.cleanup45_crit_edge ], [ %call.i, %if.then42 ], [ %call.i, %land.lhs.true.cleanup45_crit_edge ], [ -12, %kmalloc_array.exit.thread ], [ 0, %if.end5.cleanup45_crit_edge ], [ 0, %for.inc36.cleanup45_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efct_hw_config_mrq(ptr noundef %hw, i8 noundef zeroext %mode) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  %rq_filter = alloca [4 x %struct.sli4_cmd_rq_cfg], align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #13
  %0 = call ptr @memset(ptr %buf, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rq_filter) #13
  %conv = zext i8 %mode to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mode)
  %cmp = icmp eq i8 %mode, 0
  %1 = call ptr @memset(ptr %rq_filter, i32 255, i32 24)
  br i1 %cmp, label %entry.do.body_crit_edge, label %for.body.preheader

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_filter, i32 0, i32 3, i32 4
  %3 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_filter, i32 0, i32 3, i32 3
  %4 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_filter, i32 0, i32 3, i32 2
  %5 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_filter, i32 0, i32 3, i32 1
  %6 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_filter, i32 0, i32 2, i32 4
  %7 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_filter, i32 0, i32 2, i32 3
  %8 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_filter, i32 0, i32 2, i32 2
  %9 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_filter, i32 0, i32 2, i32 1
  %10 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_filter, i32 0, i32 1, i32 4
  %11 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_filter, i32 0, i32 1, i32 3
  %12 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_filter, i32 0, i32 1, i32 2
  %13 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_filter, i32 0, i32 1, i32 1
  %14 = getelementptr inbounds [4 x %struct.sli4_cmd_rq_cfg], ptr %rq_filter, i32 0, i32 1
  %15 = getelementptr inbounds %struct.sli4_cmd_rq_cfg, ptr %rq_filter, i32 0, i32 4
  %16 = getelementptr inbounds %struct.sli4_cmd_rq_cfg, ptr %rq_filter, i32 0, i32 3
  %17 = getelementptr inbounds %struct.sli4_cmd_rq_cfg, ptr %rq_filter, i32 0, i32 2
  %18 = getelementptr inbounds %struct.sli4_cmd_rq_cfg, ptr %rq_filter, i32 0, i32 1
  %arrayidx4 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 13, i32 0
  %19 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx4, align 4
  %conv5 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv5, ptr %16, align 2
  %shr = lshr i32 %20, 8
  %conv10 = trunc i32 %shr to i8
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv10, ptr %15, align 1
  %shr15 = lshr i32 %20, 16
  %conv16 = trunc i32 %shr15 to i8
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv16, ptr %18, align 2
  %shr21 = lshr i32 %20, 24
  %conv22 = trunc i32 %shr21 to i8
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv22, ptr %17, align 1
  %arrayidx4.1 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 13, i32 1
  %25 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx4.1, align 4
  %conv5.1 = trunc i32 %26 to i8
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv5.1, ptr %11, align 2
  %shr.1 = lshr i32 %26, 8
  %conv10.1 = trunc i32 %shr.1 to i8
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv10.1, ptr %10, align 1
  %shr15.1 = lshr i32 %26, 16
  %conv16.1 = trunc i32 %shr15.1 to i8
  %29 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv16.1, ptr %13, align 2
  %shr21.1 = lshr i32 %26, 24
  %conv22.1 = trunc i32 %shr21.1 to i8
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv22.1, ptr %12, align 1
  %arrayidx4.2 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 13, i32 2
  %31 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx4.2, align 4
  %conv5.2 = trunc i32 %32 to i8
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv5.2, ptr %7, align 2
  %shr.2 = lshr i32 %32, 8
  %conv10.2 = trunc i32 %shr.2 to i8
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv10.2, ptr %6, align 1
  %shr15.2 = lshr i32 %32, 16
  %conv16.2 = trunc i32 %shr15.2 to i8
  %35 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv16.2, ptr %9, align 2
  %shr21.2 = lshr i32 %32, 24
  %conv22.2 = trunc i32 %shr21.2 to i8
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv22.2, ptr %8, align 1
  %arrayidx4.3 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 13, i32 3
  %37 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx4.3, align 4
  %conv5.3 = trunc i32 %38 to i8
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv5.3, ptr %3, align 2
  %shr.3 = lshr i32 %38, 8
  %conv10.3 = trunc i32 %shr.3 to i8
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv10.3, ptr %2, align 1
  %shr15.3 = lshr i32 %38, 16
  %conv16.3 = trunc i32 %shr15.3 to i8
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv16.3, ptr %5, align 2
  %shr21.3 = lshr i32 %38, 24
  %conv22.3 = trunc i32 %shr21.3 to i8
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv22.3, ptr %4, align 1
  %hw_rq = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 28
  %43 = ptrtoint ptr %hw_rq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_rq, align 8
  %hdr = getelementptr inbounds %struct.hw_rq, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hdr, align 4
  %id = getelementptr inbounds %struct.sli4_queue, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %id, align 2
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %50 = ptrtoint ptr %rq_filter to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %rq_filter, align 2
  %51 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %49, ptr %14, align 2
  br label %do.body

do.body:                                          ; preds = %for.body.preheader, %entry.do.body_crit_edge
  %mrq_bitmask.0 = phi i8 [ 0, %entry.do.body_crit_edge ], [ 2, %for.body.preheader ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_config_mrq.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_config_mrq, %if.then33)) #13
          to label %do.end [label %if.then33], !srcloc !548

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %hw_rq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 32
  %56 = ptrtoint ptr %hw_rq_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hw_rq_count, align 8
  %rq_selection_policy = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 11
  %58 = ptrtoint ptr %rq_selection_policy to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %rq_selection_policy, align 1
  %conv35 = zext i8 %59 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_config_mrq.__UNIQUE_ID_ddebug321, ptr noundef %dev, ptr noundef nonnull @.str.247, i32 noundef %57, i32 noundef %conv35, i32 noundef %conv) #13
  br label %do.end

do.end:                                           ; preds = %if.then33, %do.body
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %rq_selection_policy39 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 11
  %60 = ptrtoint ptr %rq_selection_policy39 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %rq_selection_policy39, align 1
  %hw_mrq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 33
  %62 = ptrtoint ptr %hw_mrq_count to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hw_mrq_count, align 4
  %conv40 = trunc i32 %63 to i16
  %call42 = call i32 @sli_cmd_reg_fcfi_mrq(ptr noundef %sli, ptr noundef nonnull %buf, i8 noundef zeroext %mode, i16 noundef zeroext 0, i8 noundef zeroext %61, i8 noundef zeroext %mrq_bitmask.0, i16 noundef zeroext %conv40, ptr noundef nonnull %rq_filter) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end51, label %do.end47

do.end47:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.248) #16
  br label %cleanup

if.end51:                                         ; preds = %do.end
  %call53 = call i32 @efct_hw_command(ptr noundef %hw, ptr noundef nonnull %buf, i32 noundef 0, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool55.not = icmp eq i32 %call53, 0
  br i1 %tobool55.not, label %lor.lhs.false, label %if.end51.do.end62_crit_edge

if.end51.do.end62_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end62

lor.lhs.false:                                    ; preds = %if.end51
  %status = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %buf, i32 0, i32 2
  %68 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool58.not = icmp eq i16 %69, 0
  br i1 %tobool58.not, label %if.end71, label %lor.lhs.false.do.end62_crit_edge

lor.lhs.false.do.end62_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end62

do.end62:                                         ; preds = %lor.lhs.false.do.end62_crit_edge, %if.end51.do.end62_crit_edge
  %70 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %command = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %buf, i32 0, i32 1
  %74 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %command, align 1
  %conv67 = zext i8 %75 to i32
  %status69 = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %buf, i32 0, i32 2
  %76 = ptrtoint ptr %status69 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %status69, align 2
  %78 = call i16 @llvm.bswap.i16(i16 %77)
  %conv70 = zext i16 %78 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull @.str.250, i32 noundef %conv67, i32 noundef %conv70) #16
  br label %cleanup

if.end71:                                         ; preds = %lor.lhs.false
  br i1 %cmp, label %if.then75, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  %fcfi = getelementptr inbounds %struct.sli4_cmd_reg_fcfi_mrq, ptr %buf, i32 0, i32 2
  %79 = ptrtoint ptr %fcfi to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %fcfi, align 2
  %81 = call i16 @llvm.bswap.i16(i16 %80)
  %fcf_indicator = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 8
  %82 = ptrtoint ptr %fcf_indicator to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %fcf_indicator, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %if.end71.cleanup_crit_edge, %do.end62, %do.end47
  %retval.0 = phi i32 [ -5, %do.end47 ], [ -5, %do.end62 ], [ 0, %if.then75 ], [ 0, %if.end71.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rq_filter) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efct_hw_reqtag_pool_alloc(ptr nocapture readnone %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 262192, i32 noundef 3520, i32 noundef 7) #17
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %freelist = getelementptr inbounds %struct.reqtag_pool, ptr %call1.i.i.i, i32 0, i32 2
  %0 = ptrtoint ptr %freelist to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %freelist, ptr %freelist, align 8
  %prev.i = getelementptr inbounds %struct.reqtag_pool, ptr %call1.i.i.i, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %freelist, ptr %prev.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call1.i.i.i, ptr noundef nonnull @.str.105, ptr noundef nonnull @efct_hw_reqtag_pool_alloc.__key, i16 noundef signext 3) #13
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end
  %i.026 = phi i32 [ 0, %if.end ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 20) #18
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %for.body.cleanup_crit_edge, label %if.end5

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.reqtag_pool, ptr %call1.i.i.i, i32 0, i32 1, i32 %i.026
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %arrayidx, align 4
  %conv = trunc i32 %i.026 to i16
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %call7.i, align 8
  %callback = getelementptr inbounds %struct.hw_wq_callback, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %callback, align 4
  %arg = getelementptr inbounds %struct.hw_wq_callback, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arg, align 8
  %list_entry = getelementptr inbounds %struct.hw_wq_callback, ptr %call7.i, i32 0, i32 3
  %7 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list_entry, ptr %list_entry, align 4
  %prev.i24 = getelementptr inbounds %struct.hw_wq_callback, ptr %call7.i, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i24 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list_entry, ptr %prev.i24, align 8
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_entry, ptr noundef %10, ptr noundef %freelist) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_add_tail.exit_crit_edge

if.end5.list_add_tail.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list_entry, ptr %prev.i, align 4
  %12 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %freelist, ptr %list_entry, align 4
  %13 = ptrtoint ptr %prev.i24 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev.i24, align 8
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %list_entry, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end5.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, 65535
  br i1 %exitcond.not, label %list_add_tail.exit.cleanup_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call1.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_queue_arm(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efct_hw_io_alloc(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %io_lock = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 45
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_lock) #13
  %io_free.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 48
  %0 = ptrtoint ptr %io_free.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %io_free.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %io_free.i
  br i1 %cmp.i.not.i, label %entry.if.else.i_crit_edge, label %if.then.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then.i:                                        ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -12
  %call.i.i33.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #13
  br i1 %call.i.i33.i, label %if.end.i.i.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.i, %if.then.i.if.end.i_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tobool2.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.else.i_crit_edge, label %if.then3.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then3.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %1, ptr %1, align 4
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %prev.i.i, align 4
  %io_inuse.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 46
  %prev.i35.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 46, i32 1
  %12 = ptrtoint ptr %prev.i35.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i35.i, align 4
  %call.i.i36.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %13, ptr noundef %io_inuse.i) #13
  br i1 %call.i.i36.i, label %if.end.i.i37.i, label %if.then3.i.list_add_tail.exit.i_crit_edge

if.then3.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i

if.end.i.i37.i:                                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %prev.i35.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %prev.i35.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %io_inuse.i, ptr %1, align 4
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %1, ptr %13, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i37.i, %if.then3.i.list_add_tail.exit.i_crit_edge
  %state.i = getelementptr i8, ptr %1, i32 -8
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %state.i, align 4
  %abort_reqtag.i = getelementptr i8, ptr %1, i32 120
  %19 = ptrtoint ptr %abort_reqtag.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %abort_reqtag.i, align 4
  %wq_cpu_array.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 34
  %20 = ptrtoint ptr %wq_cpu_array.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wq_cpu_array.i, align 8
  %22 = tail call i32 @llvm.read_register.i32(metadata !537) #13
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %21, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %wq.i = getelementptr i8, ptr %1, i32 72
  %28 = ptrtoint ptr %wq.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %wq.i, align 4
  %tobool8.not.i = icmp eq ptr %27, null
  br i1 %tobool8.not.i, label %do.end.i, label %list_add_tail.exit.i.if.end14.i_crit_edge

list_add_tail.exit.i.if.end14.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

do.end.i:                                         ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.271, i32 noundef %34) #16
  %hw_wq.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 27
  %35 = ptrtoint ptr %hw_wq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_wq.i, align 8
  %37 = ptrtoint ptr %wq.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %wq.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end.i, %list_add_tail.exit.i.if.end14.i_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i, i32 noundef 4) #13
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 1, ptr %add.ptr.i, align 4
  %release.i = getelementptr i8, ptr %1, i32 -4
  %39 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @efct_hw_io_free_internal, ptr %release.i, align 4
  br label %_efct_hw_io_alloc.exit

if.else.i:                                        ; preds = %if.end.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %io_alloc_failed_count.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 52
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_alloc_failed_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %io_alloc_failed_count.i, i32 1, i32 3, i32 1) #13
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_alloc_failed_count.i, ptr %io_alloc_failed_count.i, i32 1, ptr elementtype(i32) %io_alloc_failed_count.i) #13, !srcloc !551
  br label %_efct_hw_io_alloc.exit

_efct_hw_io_alloc.exit:                           ; preds = %if.else.i, %if.end14.i
  %io.040.i = phi ptr [ null, %if.else.i ], [ %add.ptr.i, %if.end14.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_lock, i32 noundef %call2) #13
  ret ptr %io.040.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_parse_filter(ptr noundef %hw, ptr noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #13
  %uglygep = getelementptr i8, ptr %hw, i32 604
  %0 = call ptr @memset(ptr %uglygep, i32 0, i32 16)
  %call = tail call noalias ptr @kstrdup(ptr noundef %value, i32 noundef 3264) #13
  %1 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %p, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %while.cond

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61) #16
  br label %cleanup

while.cond:                                       ; preds = %lor.lhs.false
  %call2 = call ptr @strsep(ptr noundef nonnull %p, ptr noundef nonnull @.str.63) #13
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %8 = ptrtoint ptr %call2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %arrayidx8 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 13, i32 0
  %call.i = call i32 @kstrtouint(ptr noundef nonnull %call2, i32 noundef 0, ptr noundef %arrayidx8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %while.body.if.end18_crit_edge, label %do.end14

while.body.if.end18_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

do.end14:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.65) #16
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %while.body.if.end18_crit_edge
  %14 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p, align 4
  %tobool19.not = icmp eq ptr %15, null
  br i1 %tobool19.not, label %if.end18.while.end_crit_edge, label %lor.lhs.false20

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

lor.lhs.false20:                                  ; preds = %if.end18
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool21.not = icmp eq i8 %17, 0
  br i1 %tobool21.not, label %lor.lhs.false20.while.end_crit_edge, label %while.cond.1

lor.lhs.false20.while.end_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond.1:                                     ; preds = %lor.lhs.false20
  %call2.1 = call ptr @strsep(ptr noundef nonnull %p, ptr noundef nonnull @.str.63) #13
  %tobool3.not.1 = icmp eq ptr %call2.1, null
  br i1 %tobool3.not.1, label %while.cond.1.while.end_crit_edge, label %land.rhs.1

while.cond.1.while.end_crit_edge:                 ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

land.rhs.1:                                       ; preds = %while.cond.1
  %18 = ptrtoint ptr %call2.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call2.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool4.not.1 = icmp eq i8 %19, 0
  br i1 %tobool4.not.1, label %land.rhs.1.while.end_crit_edge, label %while.body.1

land.rhs.1.while.end_crit_edge:                   ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.1:                                     ; preds = %land.rhs.1
  %arrayidx8.1 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 13, i32 1
  %call.i.1 = call i32 @kstrtouint(ptr noundef nonnull %call2.1, i32 noundef 0, ptr noundef %arrayidx8.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool10.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool10.not.1, label %while.body.1.if.end18.1_crit_edge, label %do.end14.1

while.body.1.if.end18.1_crit_edge:                ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.1

do.end14.1:                                       ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %dev17.1 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.1, ptr noundef nonnull @.str.65) #16
  br label %if.end18.1

if.end18.1:                                       ; preds = %do.end14.1, %while.body.1.if.end18.1_crit_edge
  %24 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p, align 4
  %tobool19.not.1 = icmp eq ptr %25, null
  br i1 %tobool19.not.1, label %if.end18.1.while.end_crit_edge, label %lor.lhs.false20.1

if.end18.1.while.end_crit_edge:                   ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

lor.lhs.false20.1:                                ; preds = %if.end18.1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool21.not.1 = icmp eq i8 %27, 0
  br i1 %tobool21.not.1, label %lor.lhs.false20.1.while.end_crit_edge, label %while.cond.2

lor.lhs.false20.1.while.end_crit_edge:            ; preds = %lor.lhs.false20.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond.2:                                     ; preds = %lor.lhs.false20.1
  %call2.2 = call ptr @strsep(ptr noundef nonnull %p, ptr noundef nonnull @.str.63) #13
  %tobool3.not.2 = icmp eq ptr %call2.2, null
  br i1 %tobool3.not.2, label %while.cond.2.while.end_crit_edge, label %land.rhs.2

while.cond.2.while.end_crit_edge:                 ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

land.rhs.2:                                       ; preds = %while.cond.2
  %28 = ptrtoint ptr %call2.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %call2.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool4.not.2 = icmp eq i8 %29, 0
  br i1 %tobool4.not.2, label %land.rhs.2.while.end_crit_edge, label %while.body.2

land.rhs.2.while.end_crit_edge:                   ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.2:                                     ; preds = %land.rhs.2
  %arrayidx8.2 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 13, i32 2
  %call.i.2 = call i32 @kstrtouint(ptr noundef nonnull %call2.2, i32 noundef 0, ptr noundef %arrayidx8.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool10.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool10.not.2, label %while.body.2.if.end18.2_crit_edge, label %do.end14.2

while.body.2.if.end18.2_crit_edge:                ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.2

do.end14.2:                                       ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %dev17.2 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.2, ptr noundef nonnull @.str.65) #16
  br label %if.end18.2

if.end18.2:                                       ; preds = %do.end14.2, %while.body.2.if.end18.2_crit_edge
  %34 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %p, align 4
  %tobool19.not.2 = icmp eq ptr %35, null
  br i1 %tobool19.not.2, label %if.end18.2.while.end_crit_edge, label %lor.lhs.false20.2

if.end18.2.while.end_crit_edge:                   ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

lor.lhs.false20.2:                                ; preds = %if.end18.2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool21.not.2 = icmp eq i8 %37, 0
  br i1 %tobool21.not.2, label %lor.lhs.false20.2.while.end_crit_edge, label %while.cond.3

lor.lhs.false20.2.while.end_crit_edge:            ; preds = %lor.lhs.false20.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond.3:                                     ; preds = %lor.lhs.false20.2
  %call2.3 = call ptr @strsep(ptr noundef nonnull %p, ptr noundef nonnull @.str.63) #13
  %tobool3.not.3 = icmp eq ptr %call2.3, null
  br i1 %tobool3.not.3, label %while.cond.3.while.end_crit_edge, label %land.rhs.3

while.cond.3.while.end_crit_edge:                 ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

land.rhs.3:                                       ; preds = %while.cond.3
  %38 = ptrtoint ptr %call2.3 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %call2.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool4.not.3 = icmp eq i8 %39, 0
  br i1 %tobool4.not.3, label %land.rhs.3.while.end_crit_edge, label %while.body.3

land.rhs.3.while.end_crit_edge:                   ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.3:                                     ; preds = %land.rhs.3
  %arrayidx8.3 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 13, i32 3
  %call.i.3 = call i32 @kstrtouint(ptr noundef nonnull %call2.3, i32 noundef 0, ptr noundef %arrayidx8.3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool10.not.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool10.not.3, label %while.body.3.while.end_crit_edge, label %do.end14.3

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end14.3:                                       ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %dev17.3 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.3, ptr noundef nonnull @.str.65) #16
  br label %while.end

while.end:                                        ; preds = %do.end14.3, %while.body.3.while.end_crit_edge, %land.rhs.3.while.end_crit_edge, %while.cond.3.while.end_crit_edge, %lor.lhs.false20.2.while.end_crit_edge, %if.end18.2.while.end_crit_edge, %land.rhs.2.while.end_crit_edge, %while.cond.2.while.end_crit_edge, %lor.lhs.false20.1.while.end_crit_edge, %if.end18.1.while.end_crit_edge, %land.rhs.1.while.end_crit_edge, %while.cond.1.while.end_crit_edge, %lor.lhs.false20.while.end_crit_edge, %if.end18.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %44 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %p, align 4
  call void @kfree(ptr noundef %45) #13
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  %retval.0 = phi i32 [ 0, %while.end ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @efct_get_wwnn(ptr nocapture noundef readonly %hw) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wwnn = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 19
  %0 = ptrtoint ptr %wwnn to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %wwnn, align 1
  ret i64 %1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @efct_get_wwpn(ptr nocapture noundef readonly %hw) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wwpn = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 18
  %0 = ptrtoint ptr %wwpn to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %wwpn, align 1
  ret i64 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_command(ptr noundef %hw, ptr nocapture noundef %cmd, i32 noundef %opts, ptr noundef %cb, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %reg.i.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1028
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !553
  %3 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev, ptr noundef nonnull @.str.74) #16
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 1028
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !552
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !553
  %16 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %17, i32 1036
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93) #13, !srcloc !552
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !554
  %20 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %21, i32 1040
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #13, !srcloc !552
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !555
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev6, ptr noundef nonnull @.str.78, i32 noundef %15, i32 noundef %19, i32 noundef %23) #16
  br label %cleanup58

if.end:                                           ; preds = %entry
  %24 = zext i32 %opts to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.292)
  switch i32 %opts, label %if.end.cleanup58_crit_edge [
    i32 0, label %if.then14
    i32 1, label %if.then24
  ]

if.end.cleanup58_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup58

if.then14:                                        ; preds = %if.end
  %bmbx_lock = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 36
  tail call void @mutex_lock_nested(ptr noundef %bmbx_lock, i32 noundef 0) #13
  %bmbx16 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 36
  %25 = ptrtoint ptr %bmbx16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bmbx16, align 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 256)
  %28 = call ptr @memcpy(ptr %26, ptr %cmd, i32 256)
  %call18 = tail call i32 @sli_bmbx_command(ptr noundef %sli) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.then14.if.end21_crit_edge

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then20:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %29 = call ptr @memcpy(ptr %cmd, ptr %26, i32 256)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then14.if.end21_crit_edge
  %rc.0 = phi i32 [ 0, %if.then20 ], [ -5, %if.then14.if.end21_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bmbx_lock) #13
  br label %cleanup58

if.then24:                                        ; preds = %if.end
  %state = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 5
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp25.not = icmp eq i32 %31, 2
  br i1 %cmp25.not, label %if.end34, label %do.end29

do.end29:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.81, i32 noundef %31) #16
  br label %cleanup58

if.end34:                                         ; preds = %if.then24
  %cmd_ctx_pool = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 40
  %36 = ptrtoint ptr %cmd_ctx_pool to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cmd_ctx_pool, align 8
  %call35 = tail call noalias ptr @mempool_alloc(ptr noundef %37, i32 noundef 2592) #13
  %tobool.not = icmp eq ptr %call35, null
  br i1 %tobool.not, label %if.end34.cleanup58_crit_edge, label %if.end37

if.end34.cleanup58_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup58

if.end37:                                         ; preds = %if.end34
  %38 = call ptr @memset(ptr %call35, i32 0, i32 276)
  %tobool38.not = icmp eq ptr %cb, null
  br i1 %tobool38.not, label %if.end37.if.end42_crit_edge, label %if.then39

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %cb40 = getelementptr inbounds %struct.efct_command_ctx, ptr %call35, i32 0, i32 1
  %39 = ptrtoint ptr %cb40 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %cb, ptr %cb40, align 4
  %arg41 = getelementptr inbounds %struct.efct_command_ctx, ptr %call35, i32 0, i32 2
  %40 = ptrtoint ptr %arg41 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arg, ptr %arg41, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end37.if.end42_crit_edge
  %buf = getelementptr inbounds %struct.efct_command_ctx, ptr %call35, i32 0, i32 3
  %41 = call ptr @memcpy(ptr %buf, ptr %cmd, i32 256)
  %ctx43 = getelementptr inbounds %struct.efct_command_ctx, ptr %call35, i32 0, i32 4
  %42 = ptrtoint ptr %ctx43 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %hw, ptr %ctx43, align 4
  %cmd_lock = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 37
  %call48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #13
  %43 = ptrtoint ptr %call35 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %call35, ptr %call35, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call35, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call35, ptr %prev.i, align 4
  %cmd_pending = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 39
  %prev.i96 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 39, i32 1
  %45 = ptrtoint ptr %prev.i96 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i96, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call35, ptr noundef %46, ptr noundef %cmd_pending) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %prev.i96 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call35, ptr %prev.i96, align 4
  %48 = ptrtoint ptr %call35 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %cmd_pending, ptr %call35, align 4
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %call35, ptr %46, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end42.cleanup_crit_edge
  %call54 = tail call fastcc i32 @efct_hw_cmd_submit_pending(ptr noundef %hw)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call48) #13
  br label %cleanup58

cleanup58:                                        ; preds = %cleanup, %if.end34.cleanup58_crit_edge, %do.end29, %if.end21, %if.end.cleanup58_crit_edge, %do.end
  %retval.1 = phi i32 [ -5, %do.end ], [ %rc.0, %if.end21 ], [ %call54, %cleanup ], [ -5, %if.end.cleanup58_crit_edge ], [ -28, %if.end34.cleanup58_crit_edge ], [ -5, %do.end29 ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_bmbx_command(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efct_hw_cmd_submit_pending(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_head_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 22
  %cmd_pending = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 39
  %cmd_head = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 38
  %prev.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 38, i32 1
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %mq = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 14
  br label %while.cond

while.cond:                                       ; preds = %cleanup.while.cond_crit_edge, %entry
  %rc.0 = phi i32 [ 0, %entry ], [ %rc.1, %cleanup.while.cond_crit_edge ]
  %0 = ptrtoint ptr %cmd_head_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_head_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %1)
  %cmp = icmp ult i32 %1, 127
  br i1 %cmp, label %land.rhs, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %2 = ptrtoint ptr %cmd_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %cmd_pending, align 4
  %cmp.i = icmp eq ptr %3, %cmd_pending
  %tobool2.not = icmp eq ptr %3, null
  %or.cond = or i1 %cmp.i, %tobool2.not
  br i1 %or.cond, label %land.rhs.while.end_crit_edge, label %if.end

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %land.rhs
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %3) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %prev.i3.i, align 4
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i30 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %3, ptr noundef %13, ptr noundef %cmd_head) #13
  br i1 %call.i.i30, label %if.end.i.i31, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i31:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %3, ptr %prev.i, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cmd_head, ptr %3, align 4
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev.i3.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %3, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i31, %list_del_init.exit.list_add_tail.exit_crit_edge
  %18 = ptrtoint ptr %cmd_head_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd_head_count, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %cmd_head_count, align 4
  %buf = getelementptr inbounds %struct.efct_command_ctx, ptr %3, i32 0, i32 3
  %call6 = tail call i32 @sli_mq_write(ptr noundef %sli, ptr noundef %mq, ptr noundef %buf) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.body, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_cmd_submit_pending.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_cmd_submit_pending, %if.then15)) #13
          to label %cleanup [label %if.then15], !srcloc !548

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_cmd_submit_pending.__UNIQUE_ID_ddebug331, ptr noundef %dev, ptr noundef nonnull @.str.135, i32 noundef %rc.0) #13
  br label %while.end

cleanup:                                          ; preds = %do.body, %list_add_tail.exit.cleanup_crit_edge
  %rc.1 = phi i32 [ %rc.0, %list_add_tail.exit.cleanup_crit_edge ], [ -5, %do.body ]
  br i1 %cmp7, label %cleanup.while.end_crit_edge, label %cleanup.while.cond_crit_edge

cleanup.while.cond_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then15, %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %rc.2 = phi i32 [ -5, %if.then15 ], [ %rc.0, %while.cond.while.end_crit_edge ], [ %rc.0, %land.rhs.while.end_crit_edge ], [ %rc.1, %cleanup.while.end_crit_edge ]
  ret i32 %rc.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_issue_mbox_rqst(ptr noundef %base, ptr nocapture noundef %cmd, ptr noundef %cb, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_rqst_pool = getelementptr inbounds %struct.efct, ptr %base, i32 0, i32 19, i32 41
  %0 = ptrtoint ptr %mbox_rqst_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_rqst_pool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %1, i32 noundef 2592) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw1 = getelementptr inbounds %struct.efct, ptr %base, i32 0, i32 19
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cb, ptr %call, align 4
  %arg2 = getelementptr inbounds %struct.efct_mbox_rqst_ctx, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %arg2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arg, ptr %arg2, align 4
  %call3 = tail call i32 @efct_hw_command(ptr noundef %hw1, ptr noundef %cmd, i32 noundef 1, ptr noundef nonnull @efct_mbox_rsp_cb, ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.83, i32 noundef %call3) #16
  %6 = ptrtoint ptr %mbox_rqst_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mbox_rqst_pool, align 4
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %7) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_mbox_rsp_cb(ptr nocapture noundef readonly %hw, i32 noundef %status, ptr noundef %mqe, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %efcport = getelementptr inbounds %struct.efct, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %efcport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %efcport, align 4
  %arg4 = getelementptr inbounds %struct.efct_mbox_rqst_ctx, ptr %arg, i32 0, i32 1
  %6 = ptrtoint ptr %arg4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arg4, align 4
  %call = tail call i32 %1(ptr noundef %5, i32 noundef %status, ptr noundef %mqe, ptr noundef %7) #13
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %mbox_rqst_pool = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 41
  %8 = ptrtoint ptr %mbox_rqst_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mbox_rqst_pool, align 4
  tail call void @mempool_free(ptr noundef nonnull %arg, ptr noundef %9) #13
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_hw_io_free_internal(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %done.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 14
  %2 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %done.i.i, align 4
  %abort_done.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 16
  %3 = ptrtoint ptr %abort_done.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %abort_done.i.i, align 4
  %status_saved.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 10
  %4 = ptrtoint ptr %status_saved.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %status_saved.i.i, align 4
  %abort_in_progress.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 9
  %5 = ptrtoint ptr %abort_in_progress.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %abort_in_progress.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 7
  %6 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %type.i.i, align 4
  %wq.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 13
  %7 = ptrtoint ptr %wq.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %wq.i.i, align 4
  %def_sgl.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 27
  %sgl.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 28
  %8 = ptrtoint ptr %sgl.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %def_sgl.i.i, ptr %sgl.i.i, align 4
  %def_sgl_count.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 24
  %9 = ptrtoint ptr %def_sgl_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %def_sgl_count.i.i, align 4
  %sgl_count.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 29
  %11 = ptrtoint ptr %sgl_count.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sgl_count.i.i, align 4
  %io_lock = getelementptr inbounds %struct.efct_hw, ptr %1, i32 0, i32 45
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_lock) #13
  %list_entry = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 3
  %12 = ptrtoint ptr %list_entry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %list_entry, align 4
  %cmp.i.not = icmp eq ptr %13, %list_entry
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %io_inuse = getelementptr inbounds %struct.efct_hw, ptr %1, i32 0, i32 46
  %14 = ptrtoint ptr %io_inuse to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %io_inuse, align 4
  %cmp.i20.not = icmp eq ptr %15, %io_inuse
  br i1 %cmp.i20.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_entry) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %list_entry to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %list_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %list_entry, ptr %list_entry, align 4
  %prev.i3.i = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 3, i32 1
  %xbusy.i = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 8
  %23 = ptrtoint ptr %xbusy.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %xbusy.i, align 2, !range !547
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  %25 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %list_entry, ptr %list_entry, align 4
  %26 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list_entry, ptr %prev.i3.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %list_del_init.exit
  %io_wait_free.i = getelementptr inbounds %struct.efct_hw, ptr %1, i32 0, i32 47
  %prev.i12.i = getelementptr inbounds %struct.efct_hw, ptr %1, i32 0, i32 47, i32 1
  %27 = ptrtoint ptr %prev.i12.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i12.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_entry, ptr noundef %28, ptr noundef %io_wait_free.i) #13
  br i1 %call.i.i.i, label %if.then.i.if.end.sink.split.i_crit_edge, label %if.then.i.efct_hw_io_free_move_correct_list.exit_crit_edge

if.then.i.efct_hw_io_free_move_correct_list.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_io_free_move_correct_list.exit

if.then.i.if.end.sink.split.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.sink.split.i

if.else.i:                                        ; preds = %list_del_init.exit
  %io_free.i = getelementptr inbounds %struct.efct_hw, ptr %1, i32 0, i32 48
  %prev.i14.i = getelementptr inbounds %struct.efct_hw, ptr %1, i32 0, i32 48, i32 1
  %29 = ptrtoint ptr %prev.i14.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i14.i, align 4
  %call.i.i15.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_entry, ptr noundef %30, ptr noundef %io_free.i) #13
  br i1 %call.i.i15.i, label %if.else.i.if.end.sink.split.i_crit_edge, label %if.else.i.efct_hw_io_free_move_correct_list.exit_crit_edge

if.else.i.efct_hw_io_free_move_correct_list.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_io_free_move_correct_list.exit

if.else.i.if.end.sink.split.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %if.else.i.if.end.sink.split.i_crit_edge, %if.then.i.if.end.sink.split.i_crit_edge
  %prev.i14.sink.i = phi ptr [ %prev.i12.i, %if.then.i.if.end.sink.split.i_crit_edge ], [ %prev.i14.i, %if.else.i.if.end.sink.split.i_crit_edge ]
  %io_free.sink.i = phi ptr [ %io_wait_free.i, %if.then.i.if.end.sink.split.i_crit_edge ], [ %io_free.i, %if.else.i.if.end.sink.split.i_crit_edge ]
  %.sink20.i = phi ptr [ %28, %if.then.i.if.end.sink.split.i_crit_edge ], [ %30, %if.else.i.if.end.sink.split.i_crit_edge ]
  %.sink.ph.i = phi i32 [ 2, %if.then.i.if.end.sink.split.i_crit_edge ], [ 0, %if.else.i.if.end.sink.split.i_crit_edge ]
  %31 = ptrtoint ptr %prev.i14.sink.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list_entry, ptr %prev.i14.sink.i, align 4
  %32 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %io_free.sink.i, ptr %list_entry, align 4
  %33 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %.sink20.i, ptr %prev.i3.i, align 4
  %34 = ptrtoint ptr %.sink20.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %list_entry, ptr %.sink20.i, align 4
  br label %efct_hw_io_free_move_correct_list.exit

efct_hw_io_free_move_correct_list.exit:           ; preds = %if.end.sink.split.i, %if.else.i.efct_hw_io_free_move_correct_list.exit_crit_edge, %if.then.i.efct_hw_io_free_move_correct_list.exit_crit_edge
  %.sink.i = phi i32 [ 2, %if.then.i.efct_hw_io_free_move_correct_list.exit_crit_edge ], [ 0, %if.else.i.efct_hw_io_free_move_correct_list.exit_crit_edge ], [ %.sink.ph.i, %if.end.sink.split.i ]
  %state4.i = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 1
  %35 = ptrtoint ptr %state4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink.i, ptr %state4.i, align 4
  br label %if.end

if.end:                                           ; preds = %efct_hw_io_free_move_correct_list.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_lock, i32 noundef %call4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_io_free(ptr nocapture readnone %hw, ptr noundef %io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %release = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 2
  %0 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %release, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !556
  tail call void @llvm.prefetch.p0(ptr %io, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io, ptr %io, i32 1, ptr elementtype(i32) %io) #13, !srcloc !557
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !558

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %io, i32 noundef 3) #13
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !559
  tail call void %1(ptr noundef %io) #13
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.then.i ], [ 0, %if.end5.i.i.i.i.kref_put.exit_crit_edge ], [ 0, %if.then10.i.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @efct_hw_io_lookup(ptr nocapture noundef readonly %hw, i32 noundef %xri) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 28, i32 3, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %sub = sub i32 %xri, %3
  %io = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 43
  %4 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io, align 8
  %arrayidx2 = getelementptr ptr, ptr %5, i32 %sub
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_io_init_sges(ptr noundef %hw, ptr noundef %io, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %io, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85, ptr noundef %hw, ptr noundef null) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %def_sgl = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 27
  %sgl = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 28
  %4 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %def_sgl, ptr %sgl, align 4
  %def_sgl_count = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 24
  %5 = ptrtoint ptr %def_sgl_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %def_sgl_count, align 4
  %sgl_count = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 29
  %7 = ptrtoint ptr %sgl_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %sgl_count, align 4
  %first_data_sge = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 30
  %8 = ptrtoint ptr %first_data_sge to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %first_data_sge, align 4
  %9 = ptrtoint ptr %def_sgl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %def_sgl, align 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 32)
  %n_sge = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 31
  %12 = ptrtoint ptr %n_sge to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %n_sge, align 4
  %sge_offset = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 23
  %13 = ptrtoint ptr %sge_offset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %sge_offset, align 4
  %conv = trunc i32 %type to i16
  %type2 = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 7
  %14 = ptrtoint ptr %type2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %type2, align 4
  %15 = load ptr, ptr %sgl, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.293)
  switch i32 %type, label %do.end15 [
    i32 7, label %sw.bb
    i32 6, label %if.end.for.body_crit_edge
    i32 8, label %if.end.for.end_crit_edge
  ]

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dw2_flags = getelementptr inbounds %struct.sli4_sge, ptr %17, i32 0, i32 2
  %19 = ptrtoint ptr %dw2_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dw2_flags, align 4
  %21 = and i32 %20, -121
  %phys = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 6, i32 2
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %17, align 4
  %23 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phys, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %buffer_address_low = getelementptr inbounds %struct.sli4_sge, ptr %17, i32 0, i32 1
  %26 = ptrtoint ptr %buffer_address_low to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %buffer_address_low, align 4
  %size = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 6, i32 3
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %buffer_length = getelementptr inbounds %struct.sli4_sge, ptr %17, i32 0, i32 3
  %30 = ptrtoint ptr %buffer_length to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %buffer_length, align 4
  %31 = ptrtoint ptr %dw2_flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %21, ptr %dw2_flags, align 4
  %incdec.ptr = getelementptr %struct.sli4_sge, ptr %17, i32 1
  %32 = ptrtoint ptr %n_sge to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %n_sge, align 4
  br label %for.body

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.88, i32 noundef %type) #16
  br label %cleanup

for.body:                                         ; preds = %sw.bb, %if.end.for.body_crit_edge
  %data.0.ph = phi ptr [ %incdec.ptr, %sw.bb ], [ %17, %if.end.for.body_crit_edge ]
  %exitcond.not = phi i1 [ true, %sw.bb ], [ false, %if.end.for.body_crit_edge ]
  %skips.0.ph = phi i32 [ 1, %sw.bb ], [ 2, %if.end.for.body_crit_edge ]
  %dw2_flags20 = getelementptr inbounds %struct.sli4_sge, ptr %data.0.ph, i32 0, i32 2
  %37 = ptrtoint ptr %dw2_flags20 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dw2_flags20, align 4
  %39 = and i32 %38, -121
  %40 = or i32 %39, 96
  store i32 %40, ptr %dw2_flags20, align 4
  %incdec.ptr24 = getelementptr %struct.sli4_sge, ptr %data.0.ph, i32 1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.1:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %dw2_flags20.1 = getelementptr %struct.sli4_sge, ptr %data.0.ph, i32 1, i32 2
  %41 = ptrtoint ptr %dw2_flags20.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dw2_flags20.1, align 4
  %43 = and i32 %42, -121
  %44 = or i32 %43, 96
  store i32 %44, ptr %dw2_flags20.1, align 4
  %incdec.ptr24.1 = getelementptr %struct.sli4_sge, ptr %data.0.ph, i32 2
  br label %for.end

for.end:                                          ; preds = %for.body.1, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %skips.078 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %skips.0.ph, %for.body.1 ], [ %skips.0.ph, %for.body.for.end_crit_edge ]
  %data.1.lcssa = phi ptr [ %17, %if.end.for.end_crit_edge ], [ %incdec.ptr24, %for.body.for.end_crit_edge ], [ %incdec.ptr24.1, %for.body.1 ]
  %45 = ptrtoint ptr %n_sge to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %n_sge, align 4
  %add = add i32 %46, %skips.078
  store i32 %add, ptr %n_sge, align 4
  %dw2_flags26 = getelementptr inbounds %struct.sli4_sge, ptr %data.1.lcssa, i32 0, i32 2
  %47 = ptrtoint ptr %dw2_flags26 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dw2_flags26, align 4
  %49 = or i32 %48, 128
  store i32 %49, ptr %dw2_flags26, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end15, %do.end
  %retval.0 = phi i32 [ -5, %do.end15 ], [ 0, %for.end ], [ -5, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_io_add_sge(ptr noundef %hw, ptr noundef %io, i32 noundef %addr, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %io, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %tobool1.not = icmp eq i32 %addr, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool3.not = icmp eq i32 %length, 0
  %or.cond73 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond73, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.90, ptr noundef %hw, ptr noundef %io, i32 noundef %addr, i32 noundef %length) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %sge_supported_length = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 31
  %4 = ptrtoint ptr %sge_supported_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sge_supported_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %length)
  %cmp = icmp ult i32 %5, %length
  br i1 %cmp, label %do.end7, label %if.end13

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.93, i32 noundef %length, i32 noundef %5) #16
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %sgl = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 28
  %10 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sgl, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %n_sge = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 31
  %14 = ptrtoint ptr %n_sge to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_sge, align 4
  %add.ptr = getelementptr %struct.sli4_sge, ptr %13, i32 %15
  %dw2_flags = getelementptr %struct.sli4_sge, ptr %13, i32 %15, i32 2
  %sge_offset = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 23
  %16 = ptrtoint ptr %sge_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sge_offset, align 4
  %and15 = and i32 %17, 134217727
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %add.ptr, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %buffer_address_low = getelementptr %struct.sli4_sge, ptr %13, i32 %15, i32 1
  %20 = ptrtoint ptr %buffer_address_low to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %buffer_address_low, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %length)
  %buffer_length = getelementptr %struct.sli4_sge, ptr %13, i32 %15, i32 3
  %22 = ptrtoint ptr %buffer_length to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %buffer_length, align 4
  %or19 = or i32 %and15, -2147483648
  %23 = tail call i32 @llvm.bswap.i32(i32 %or19)
  %24 = ptrtoint ptr %dw2_flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %dw2_flags, align 4
  %25 = ptrtoint ptr %n_sge to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool22.not = icmp eq i32 %26, 0
  br i1 %tobool22.not, label %if.end13.if.end28_crit_edge, label %if.then23

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then23:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.sli4_sge, ptr %add.ptr, i32 -1
  %dw2_flags24 = getelementptr inbounds %struct.sli4_sge, ptr %arrayidx, i32 0, i32 2
  %27 = ptrtoint ptr %dw2_flags24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dw2_flags24, align 4
  %29 = and i32 %28, -129
  store i32 %29, ptr %dw2_flags24, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end13.if.end28_crit_edge
  %first_data_sge = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 30
  %30 = ptrtoint ptr %first_data_sge to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %first_data_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp29 = icmp eq i32 %31, 0
  br i1 %cmp29, label %if.then30, label %if.end28.if.end33_crit_edge

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %n_sge to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n_sge, align 4
  %34 = ptrtoint ptr %first_data_sge to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %first_data_sge, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end28.if.end33_crit_edge
  %35 = ptrtoint ptr %sge_offset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sge_offset, align 4
  %add = add i32 %36, %length
  store i32 %add, ptr %sge_offset, align 4
  %37 = ptrtoint ptr %n_sge to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_sge, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %n_sge, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end7, %do.end
  %retval.0 = phi i32 [ -5, %do.end7 ], [ 0, %if.end33 ], [ -5, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_hw_io_abort_all(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %io_inuse = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 46
  %0 = ptrtoint ptr %io_inuse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_inuse, align 4
  %cmp.not18 = icmp eq ptr %1, %io_inuse
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in19 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %io_to_abort.0 = getelementptr i8, ptr %.pn.in19, i32 -12
  %2 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in19, align 4
  %call = tail call i32 @efct_hw_io_abort(ptr noundef %hw, ptr noundef %io_to_abort.0, i1 noundef zeroext true, ptr noundef null, ptr noundef null)
  %cmp.not = icmp eq ptr %.pn, %io_inuse
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_io_abort(ptr noundef %hw, ptr noundef %io_to_abort, i1 noundef zeroext %send_abts, ptr noundef %cb, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %send_abts to i8
  %tobool.not = icmp eq ptr %io_to_abort, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85, ptr noundef %hw, ptr noundef null) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end9, label %do.end4

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.97, i32 noundef %5) #16
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %io_to_abort, i32 noundef 4) #13
  %10 = ptrtoint ptr %io_to_abort to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %io_to_abort, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end9
  %12 = phi i32 [ %11, %if.end9 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %12, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %io_to_abort, i32 noundef 4) #13
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #13
  %14 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %io_to_abort, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %16 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %io_to_abort, ptr %io_to_abort, i32 %15, i32 %add.i.i.i.i, ptr elementtype(i32) %io_to_abort) #13, !srcloc !560
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %15
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !558

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %17 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %18, 1
  %19 = or i32 %add5.i.i.i.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !558

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %io_to_abort, i32 noundef 0) #13
  %20 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %21 = phi i32 [ %18, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.i.i.i.i.not = icmp eq i32 %21, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  br i1 %tobool12.i.i.i.i.not, label %do.body12, label %if.end25

do.body12:                                        ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_io_abort.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_io_abort, %if.then18)) #13
          to label %cleanup [label %if.then18], !srcloc !548

if.then18:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %indicator = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 26
  %26 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %indicator, align 4
  %reqtag = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 12
  %28 = ptrtoint ptr %reqtag to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %reqtag, align 2
  %conv = zext i16 %29 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_io_abort.__UNIQUE_ID_ddebug333, ptr noundef %dev21, ptr noundef nonnull @.str.99, i32 noundef %27, i32 noundef %conv) #13
  br label %cleanup

if.end25:                                         ; preds = %kref_get_unless_zero.exit
  %wq = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 13
  %30 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wq, align 4
  %tobool26.not = icmp eq ptr %31, null
  br i1 %tobool26.not, label %do.body28, label %if.end50

do.body28:                                        ; preds = %if.end25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_io_abort.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_io_abort, %if.then40)) #13
          to label %do.end47 [label %if.then40], !srcloc !548

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %indicator44 = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 26
  %36 = ptrtoint ptr %indicator44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %indicator44, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_io_abort.__UNIQUE_ID_ddebug334, ptr noundef %dev43, ptr noundef nonnull @.str.100, i32 noundef %37) #13
  br label %do.end47

do.end47:                                         ; preds = %if.then40, %do.body28
  %release = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 2
  %38 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %release, align 4
  %call.i.i.i.i.i.i209 = call zeroext i1 @__kasan_check_write(ptr noundef %io_to_abort, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !556
  call void @llvm.prefetch.p0(ptr %io_to_abort, i32 1, i32 3, i32 1) #13
  %40 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_to_abort, ptr %io_to_abort, i32 1, ptr elementtype(i32) %io_to_abort) #13, !srcloc !557
  %asmresult.i.i.i.i.i.i.i210 = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i210)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i210, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i210)
  %.not.i.i.i.i211 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i210, 0
  br i1 %.not.i.i.i.i211, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i212, !prof !558

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i212:                             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %io_to_abort, i32 noundef 3) #13
  br label %cleanup

if.then.i:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !559
  call void %39(ptr noundef %io_to_abort) #13
  br label %cleanup

if.end50:                                         ; preds = %if.end25
  %abort_in_progress = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 9
  %call.i = call zeroext i1 @__kasan_check_write(ptr noundef %abort_in_progress, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !561
  call void @llvm.prefetch.p0(ptr %abort_in_progress, i32 1, i32 3, i32 1) #13
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end50
  %41 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %abort_in_progress, i32 0, i32 1) #13, !srcloc !562
  %asmresult.i = extractvalue { i32, i32 } %41, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %41, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !563
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool70.not = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool70.not, label %if.end97, label %if.then71

if.then71:                                        ; preds = %__cmpxchg.exit
  %release73 = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 2
  %42 = ptrtoint ptr %release73 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %release73, align 4
  %call.i.i.i.i.i.i214 = call zeroext i1 @__kasan_check_write(ptr noundef %io_to_abort, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !556
  call void @llvm.prefetch.p0(ptr %io_to_abort, i32 1, i32 3, i32 1) #13
  %44 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_to_abort, ptr %io_to_abort, i32 1, ptr elementtype(i32) %io_to_abort) #13, !srcloc !557
  %asmresult.i.i.i.i.i.i.i215 = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i215)
  %cmp.i.i.i.i216 = icmp eq i32 %asmresult.i.i.i.i.i.i.i215, 1
  br i1 %cmp.i.i.i.i216, label %if.then.i220, label %if.end5.i.i.i.i218

if.end5.i.i.i.i218:                               ; preds = %if.then71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i215)
  %.not.i.i.i.i217 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i215, 0
  br i1 %.not.i.i.i.i217, label %if.end5.i.i.i.i218.kref_put.exit222_crit_edge, label %if.then10.i.i.i.i219, !prof !558

if.end5.i.i.i.i218.kref_put.exit222_crit_edge:    ; preds = %if.end5.i.i.i.i218
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_put.exit222

if.then10.i.i.i.i219:                             ; preds = %if.end5.i.i.i.i218
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %io_to_abort, i32 noundef 3) #13
  br label %kref_put.exit222

if.then.i220:                                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !559
  call void %43(ptr noundef %io_to_abort) #13
  br label %kref_put.exit222

kref_put.exit222:                                 ; preds = %if.then.i220, %if.then10.i.i.i.i219, %if.end5.i.i.i.i218.kref_put.exit222_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_io_abort.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_io_abort, %if.then87)) #13
          to label %cleanup [label %if.then87], !srcloc !548

if.then87:                                        ; preds = %kref_put.exit222
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %dev90 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %indicator91 = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 26
  %49 = ptrtoint ptr %indicator91 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %indicator91, align 4
  %reqtag92 = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 12
  %51 = ptrtoint ptr %reqtag92 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %reqtag92, align 2
  %conv93 = zext i16 %52 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_io_abort.__UNIQUE_ID_ddebug335, ptr noundef %dev90, ptr noundef nonnull @.str.101, i32 noundef %50, i32 noundef %conv93) #13
  br label %cleanup

if.end97:                                         ; preds = %__cmpxchg.exit
  %abort_done = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 16
  %53 = ptrtoint ptr %abort_done to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %cb, ptr %abort_done, align 4
  %abort_arg = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 17
  %54 = ptrtoint ptr %abort_arg to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arg, ptr %abort_arg, align 4
  %wq_reqtag_pool.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 56
  %55 = ptrtoint ptr %wq_reqtag_pool.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wq_reqtag_pool.i, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %56) #13
  %freelist.i = getelementptr inbounds %struct.reqtag_pool, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %freelist.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %freelist.i, align 4
  %cmp.i.not.i = icmp eq ptr %58, %freelist.i
  br i1 %cmp.i.not.i, label %if.end97.do.end103_crit_edge, label %if.end10.i

if.end97.do.end103_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end103

if.end10.i:                                       ; preds = %if.end97
  %add.ptr.i = getelementptr i8, ptr %58, i32 -12
  %tobool11.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool11.not.i, label %if.end10.i.do.end103_crit_edge, label %if.then12.i

if.end10.i.do.end103_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end103

if.then12.i:                                      ; preds = %if.end10.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %58) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then12.i.if.end107_crit_edge

if.then12.i.if.end107_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

if.end.i.i.i:                                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i.i, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %58, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %if.end107

do.end103:                                        ; preds = %if.end10.i.do.end103_crit_edge, %if.end97.do.end103_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %56, i32 noundef %call2.i) #13
  %65 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  %dev106 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev106, ptr noundef nonnull @.str.103) #16
  br label %cleanup

if.end107:                                        ; preds = %if.end.i.i.i, %if.then12.i.if.end107_crit_edge
  %69 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %58, ptr %58, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %58, ptr %prev.i3.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %56, i32 noundef %call2.i) #13
  %callback14.i = getelementptr i8, ptr %58, i32 -8
  %71 = ptrtoint ptr %callback14.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @efct_hw_wq_process_abort, ptr %callback14.i, align 4
  %arg15.i = getelementptr i8, ptr %58, i32 -4
  %72 = ptrtoint ptr %arg15.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %io_to_abort, ptr %arg15.i, align 4
  %73 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %add.ptr.i, align 4
  %conv108 = zext i16 %74 to i32
  %abort_reqtag = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 25
  %75 = ptrtoint ptr %abort_reqtag to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv108, ptr %abort_reqtag, align 4
  %wqe = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 4
  %send_abts110 = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 4, i32 2
  %76 = ptrtoint ptr %send_abts110 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %frombool, ptr %send_abts110, align 1
  %indicator112 = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 26
  %77 = ptrtoint ptr %indicator112 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %indicator112, align 4
  %id = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 4, i32 3
  %79 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %id, align 4
  %abort_reqtag116 = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 4, i32 4
  %80 = ptrtoint ptr %abort_reqtag116 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv108, ptr %abort_reqtag116, align 4
  %81 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wq, align 4
  %tobool118.not = icmp eq ptr %82, null
  br i1 %tobool118.not, label %if.end107.if.end143_crit_edge, label %do.body121

if.end107.if.end143_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end143

do.body121:                                       ; preds = %if.end107
  %queue = getelementptr inbounds %struct.hw_wq, ptr %82, i32 0, i32 7
  %83 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %queue, align 4
  %lock = getelementptr inbounds %struct.sli4_queue, ptr %84, i32 0, i32 1
  %call127 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %85 = ptrtoint ptr %wqe to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %wqe, align 4
  %tobool133.not = icmp eq ptr %86, null
  br i1 %tobool133.not, label %if.end139, label %if.then134

if.then134:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #15
  %abort_wqe_submit_needed = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 4, i32 1
  %87 = ptrtoint ptr %abort_wqe_submit_needed to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %abort_wqe_submit_needed, align 4
  %88 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %wq, align 4
  %queue137 = getelementptr inbounds %struct.hw_wq, ptr %89, i32 0, i32 7
  %90 = ptrtoint ptr %queue137 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %queue137, align 4
  %lock138 = getelementptr inbounds %struct.sli4_queue, ptr %91, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock138, i32 noundef %call127) #13
  br label %cleanup

if.end139:                                        ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #15
  %92 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %wq, align 4
  %queue141 = getelementptr inbounds %struct.hw_wq, ptr %93, i32 0, i32 7
  %94 = ptrtoint ptr %queue141 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %queue141, align 4
  %lock142 = getelementptr inbounds %struct.sli4_queue, ptr %95, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock142, i32 noundef %call127) #13
  br label %if.end143

if.end143:                                        ; preds = %if.end139, %if.end107.if.end143_crit_edge
  %wqebuf.i = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 4, i32 5
  %96 = ptrtoint ptr %wqebuf.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wqebuf.i, align 4
  %wqe_size.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 26
  %98 = ptrtoint ptr %wqe_size.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %wqe_size.i, align 4
  %100 = call ptr @memset(ptr %97, i32 0, i32 %99)
  %criteria.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %97, i32 0, i32 4
  %101 = ptrtoint ptr %criteria.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %criteria.i, align 1
  %102 = ptrtoint ptr %send_abts110 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %send_abts110, align 1, !range !547
  %ia_ir_byte.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %97, i32 0, i32 3
  %104 = ptrtoint ptr %ia_ir_byte.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %ia_ir_byte.i, align 4
  %or18.i = xor i8 %103, 3
  %106 = or i8 %or18.i, %105
  store i8 %106, ptr %ia_ir_byte.i, align 4
  %107 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %id, align 4
  %109 = call i32 @llvm.bswap.i32(i32 %108) #13
  %t_tag.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %97, i32 0, i32 14
  %110 = ptrtoint ptr %t_tag.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %t_tag.i, align 4
  %command.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %97, i32 0, i32 11
  %111 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 15, ptr %command.i, align 1
  %112 = ptrtoint ptr %abort_reqtag116 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %abort_reqtag116, align 4
  %conv6.i = trunc i32 %113 to i16
  %114 = call i16 @llvm.bswap.i16(i16 %conv6.i) #13
  %request_tag.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %97, i32 0, i32 15
  %115 = ptrtoint ptr %request_tag.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %request_tag.i, align 4
  %dw10w0_flags.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %97, i32 0, i32 17
  %116 = ptrtoint ptr %dw10w0_flags.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 2, ptr %dw10w0_flags.i, align 4
  %cq_id.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %97, i32 0, i32 22
  %117 = ptrtoint ptr %cq_id.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 -1, ptr %cq_id.i, align 2
  %118 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %wq, align 4
  %call147 = call i32 @efct_hw_wq_write(ptr noundef %119, ptr noundef %wqe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end143.cleanup_crit_edge, label %if.then149

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then149:                                       ; preds = %if.end143
  %120 = ptrtoint ptr %abort_in_progress to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %abort_in_progress, align 4
  %release152 = getelementptr inbounds %struct.efct_hw_io, ptr %io_to_abort, i32 0, i32 2
  %121 = ptrtoint ptr %release152 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %release152, align 4
  %call.i.i.i.i.i.i224 = call zeroext i1 @__kasan_check_write(ptr noundef %io_to_abort, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !556
  call void @llvm.prefetch.p0(ptr %io_to_abort, i32 1, i32 3, i32 1) #13
  %123 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_to_abort, ptr %io_to_abort, i32 1, ptr elementtype(i32) %io_to_abort) #13, !srcloc !557
  %asmresult.i.i.i.i.i.i.i225 = extractvalue { i32, i32, i32 } %123, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i225)
  %cmp.i.i.i.i226 = icmp eq i32 %asmresult.i.i.i.i.i.i.i225, 1
  br i1 %cmp.i.i.i.i226, label %if.then.i230, label %if.end5.i.i.i.i228

if.end5.i.i.i.i228:                               ; preds = %if.then149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i225)
  %.not.i.i.i.i227 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i225, 0
  br i1 %.not.i.i.i.i227, label %if.end5.i.i.i.i228.cleanup_crit_edge, label %if.then10.i.i.i.i229, !prof !558

if.end5.i.i.i.i228.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i228
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i229:                             ; preds = %if.end5.i.i.i.i228
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %io_to_abort, i32 noundef 3) #13
  br label %cleanup

if.then.i230:                                     ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !559
  call void %122(ptr noundef %io_to_abort) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i230, %if.then10.i.i.i.i229, %if.end5.i.i.i.i228.cleanup_crit_edge, %if.end143.cleanup_crit_edge, %if.then134, %do.end103, %if.then87, %kref_put.exit222, %if.then.i, %if.then10.i.i.i.i212, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then18, %do.body12, %do.end4, %do.end
  %retval.0 = phi i32 [ -5, %do.end4 ], [ 0, %if.then134 ], [ -28, %do.end103 ], [ -5, %do.end ], [ -2, %if.then18 ], [ -115, %if.then87 ], [ 0, %if.end143.cleanup_crit_edge ], [ -2, %do.body12 ], [ -2, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -2, %if.then10.i.i.i.i212 ], [ -2, %if.then.i ], [ -115, %kref_put.exit222 ], [ -5, %if.end5.i.i.i.i228.cleanup_crit_edge ], [ -5, %if.then10.i.i.i.i229 ], [ -5, %if.then.i230 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efct_hw_reqtag_alloc(ptr nocapture noundef readonly %hw, ptr noundef %callback, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_reqtag_pool = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 56
  %0 = ptrtoint ptr %wq_reqtag_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq_reqtag_pool, align 4
  %tobool.not = icmp eq ptr %callback, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #13
  %freelist = getelementptr inbounds %struct.reqtag_pool, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %freelist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %freelist, align 4
  %cmp.i.not = icmp eq ptr %3, %freelist
  br i1 %cmp.i.not, label %do.body1.if.else_crit_edge, label %if.end10

do.body1.if.else_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end10:                                         ; preds = %do.body1
  %add.ptr = getelementptr i8, ptr %3, i32 -12
  %tobool11.not = icmp eq ptr %add.ptr, null
  br i1 %tobool11.not, label %if.end10.if.else_crit_edge, label %if.then12

if.end10.if.else_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then12:                                        ; preds = %if.end10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then12.list_del_init.exit_crit_edge

if.then12.list_del_init.exit_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then12.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #13
  %callback14 = getelementptr i8, ptr %3, i32 -8
  %12 = ptrtoint ptr %callback14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %callback, ptr %callback14, align 4
  %arg15 = getelementptr i8, ptr %3, i32 -4
  %13 = ptrtoint ptr %arg15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arg, ptr %arg15, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end10.if.else_crit_edge, %do.body1.if.else_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %list_del_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.else ], [ %add.ptr, %list_del_init.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_hw_wq_process_abort(ptr noundef %arg, ptr noundef %cqe, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %sli = getelementptr inbounds %struct.efct_hw, ptr %1, i32 0, i32 1
  %call = tail call i32 @sli_fc_ext_status(ptr noundef %sli, ptr noundef %cqe) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %status)
  %cmp = icmp eq i32 %status, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp2 = icmp eq i32 %call, 5
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %done = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 14
  %2 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %done, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true3.if.end_crit_edge, label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %done, align 4
  %saved_status = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 19
  %5 = ptrtoint ptr %saved_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %saved_status, align 4
  %saved_len = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 20
  %7 = ptrtoint ptr %saved_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %saved_len, align 4
  %saved_ext = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 21
  %9 = ptrtoint ptr %saved_ext to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %saved_ext, align 4
  %status_saved = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 10
  %11 = ptrtoint ptr %status_saved to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %status_saved, align 4
  %arg7 = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 15
  %12 = ptrtoint ptr %arg7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arg7, align 4
  %call8 = tail call i32 %3(ptr noundef %arg, i32 noundef %8, i32 noundef %6, i32 noundef %10, ptr noundef %13) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ext.0 = phi i32 [ %10, %if.then ], [ 5, %land.lhs.true3.if.end_crit_edge ], [ %call, %land.lhs.true.if.end_crit_edge ], [ %call, %entry.if.end_crit_edge ]
  %len.0 = phi i32 [ %8, %if.then ], [ 0, %land.lhs.true3.if.end_crit_edge ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %status.addr.0 = phi i32 [ %6, %if.then ], [ 3, %land.lhs.true3.if.end_crit_edge ], [ 3, %land.lhs.true.if.end_crit_edge ], [ %status, %entry.if.end_crit_edge ]
  %abort_done = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 16
  %14 = ptrtoint ptr %abort_done to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %abort_done, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %if.end.if.end15_crit_edge, label %if.then10

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %abort_done to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %abort_done, align 4
  %abort_arg = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 17
  %17 = ptrtoint ptr %abort_arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %abort_arg, align 4
  %call14 = tail call i32 %15(ptr noundef %arg, i32 noundef %len.0, i32 noundef %status.addr.0, i32 noundef %ext.0, ptr noundef %18) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end.if.end15_crit_edge
  %abort_in_progress = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 9
  %19 = ptrtoint ptr %abort_in_progress to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %abort_in_progress, align 4
  %abort_reqtag = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 25
  %20 = ptrtoint ptr %abort_reqtag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %abort_reqtag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp16 = icmp eq i32 %21, -1
  br i1 %cmp16, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.273) #16
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %wq_reqtag_pool.i = getelementptr inbounds %struct.efct_hw, ptr %1, i32 0, i32 56
  %26 = ptrtoint ptr %wq_reqtag_pool.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wq_reqtag_pool.i, align 4
  %arrayidx.i = getelementptr %struct.reqtag_pool, ptr %27, i32 0, i32 1, i32 %21
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end18.efct_hw_reqtag_get_instance.exit_crit_edge

if.end18.efct_hw_reqtag_get_instance.exit_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_reqtag_get_instance.exit

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.108, i32 noundef %21) #16
  br label %efct_hw_reqtag_get_instance.exit

efct_hw_reqtag_get_instance.exit:                 ; preds = %do.end.i, %if.end18.efct_hw_reqtag_get_instance.exit_crit_edge
  %34 = ptrtoint ptr %wq_reqtag_pool.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wq_reqtag_pool.i, align 4
  %callback.i = getelementptr inbounds %struct.hw_wq_callback, ptr %29, i32 0, i32 1
  %36 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %callback.i, align 4
  %tobool.not.i56 = icmp eq ptr %37, null
  br i1 %tobool.not.i56, label %do.end.i58, label %efct_hw_reqtag_get_instance.exit.do.body2.i_crit_edge

efct_hw_reqtag_get_instance.exit.do.body2.i_crit_edge: ; preds = %efct_hw_reqtag_get_instance.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

do.end.i58:                                       ; preds = %efct_hw_reqtag_get_instance.exit
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %dev.i57 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i57, ptr noundef nonnull @.str.106) #16
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.end.i58, %efct_hw_reqtag_get_instance.exit.do.body2.i_crit_edge
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %35) #13
  %42 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %callback.i, align 4
  %arg.i = getelementptr inbounds %struct.hw_wq_callback, ptr %29, i32 0, i32 2
  %43 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arg.i, align 4
  %list_entry.i = getelementptr inbounds %struct.hw_wq_callback, ptr %29, i32 0, i32 3
  %44 = ptrtoint ptr %list_entry.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %list_entry.i, ptr %list_entry.i, align 4
  %prev.i.i = getelementptr inbounds %struct.hw_wq_callback, ptr %29, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %list_entry.i, ptr %prev.i.i, align 4
  %46 = ptrtoint ptr %wq_reqtag_pool.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wq_reqtag_pool.i, align 4
  %freelist.i = getelementptr inbounds %struct.reqtag_pool, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %freelist.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %freelist.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_entry.i, ptr noundef %freelist.i, ptr noundef %49) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body2.i.efct_hw_reqtag_free.exit_crit_edge

do.body2.i.efct_hw_reqtag_free.exit_crit_edge:    ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_reqtag_free.exit

if.end.i.i.i:                                     ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %list_entry.i, ptr %prev1.i.i.i, align 4
  %51 = ptrtoint ptr %list_entry.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %49, ptr %list_entry.i, align 4
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %freelist.i, ptr %prev.i.i, align 4
  %53 = ptrtoint ptr %freelist.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %list_entry.i, ptr %freelist.i, align 4
  br label %efct_hw_reqtag_free.exit

efct_hw_reqtag_free.exit:                         ; preds = %if.end.i.i.i, %do.body2.i.efct_hw_reqtag_free.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %call3.i) #13
  %release.i = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 2
  %54 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %release.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arg, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !556
  tail call void @llvm.prefetch.p0(ptr %arg, i32 1, i32 3, i32 1) #13
  %56 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arg, ptr %arg, i32 1, ptr elementtype(i32) %arg) #13, !srcloc !557
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %efct_hw_reqtag_free.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !558

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %arg, i32 noundef 3) #13
  br label %cleanup

if.then.i.i:                                      ; preds = %efct_hw_reqtag_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !559
  tail call void %55(ptr noundef %arg) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_wq_write(ptr noundef %wq, ptr noundef %wqe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.hw_wq, ptr %wq, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %lock = getelementptr inbounds %struct.sli4_queue, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %pending_list = getelementptr inbounds %struct.hw_wq, ptr %wq, i32 0, i32 13
  %2 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not = icmp eq ptr %3, %pending_list
  br i1 %cmp.i.not, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %free_count = getelementptr inbounds %struct.hw_wq, ptr %wq, i32 0, i32 11
  %4 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %free_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6.not = icmp eq i32 %5, 0
  br i1 %cmp6.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then
  %wqec_count.i = getelementptr inbounds %struct.hw_wq, ptr %wq, i32 0, i32 10
  %6 = ptrtoint ptr %wqec_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wqec_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then8.if.then3.i_crit_edge, label %if.end.i

if.then8.if.then3.i_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i

if.end.i:                                         ; preds = %if.then8
  %dec.i = add i32 %7, -1
  %8 = ptrtoint ptr %wqec_count.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dec.i, ptr %wqec_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i75 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i75, label %if.end.i.if.then3.i_crit_edge, label %if.end.i._efct_hw_wq_write.exit_crit_edge

if.end.i._efct_hw_wq_write.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_efct_hw_wq_write.exit

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i.if.then3.i_crit_edge, %if.then8.if.then3.i_crit_edge
  %wqebuf.i = getelementptr inbounds %struct.efct_hw_wqe, ptr %wqe, i32 0, i32 5
  %9 = ptrtoint ptr %wqebuf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wqebuf.i, align 4
  %cmdtype_wqec_byte.i = getelementptr inbounds %struct.sli4_generic_wqe, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %cmdtype_wqec_byte.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cmdtype_wqec_byte.i, align 4
  %13 = or i8 %12, -128
  store i8 %13, ptr %cmdtype_wqec_byte.i, align 4
  %wqec_set_count.i = getelementptr inbounds %struct.hw_wq, ptr %wq, i32 0, i32 9
  %14 = ptrtoint ptr %wqec_set_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wqec_set_count.i, align 4
  %16 = ptrtoint ptr %wqec_count.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %wqec_count.i, align 4
  br label %_efct_hw_wq_write.exit

_efct_hw_wq_write.exit:                           ; preds = %if.then3.i, %if.end.i._efct_hw_wq_write.exit_crit_edge
  %17 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %free_count, align 4
  %dec7.i = add i32 %18, -1
  store i32 %dec7.i, ptr %free_count, align 4
  %hw.i = getelementptr inbounds %struct.hw_wq, ptr %wq, i32 0, i32 3
  %19 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw.i, align 4
  %sli.i = getelementptr inbounds %struct.efct_hw, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %queue, align 4
  %wqebuf8.i = getelementptr inbounds %struct.efct_hw_wqe, ptr %wqe, i32 0, i32 5
  %23 = ptrtoint ptr %wqebuf8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wqebuf8.i, align 4
  %call.i = tail call i32 @sli_wq_write(ptr noundef %sli.i, ptr noundef %22, ptr noundef %24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.i = icmp slt i32 %call.i, 0
  %cond.i = select i1 %cmp9.i, i32 -5, i32 0
  br label %cleanup

if.else:                                          ; preds = %if.then
  %25 = ptrtoint ptr %wqe to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %wqe, ptr %wqe, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %wqe, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %wqe, ptr %prev.i, align 4
  %prev.i76 = getelementptr inbounds %struct.hw_wq, ptr %wq, i32 0, i32 13, i32 1
  %27 = ptrtoint ptr %prev.i76 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i76, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %wqe, ptr noundef %28, ptr noundef %pending_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_add_tail.exit_crit_edge

if.else.list_add_tail.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %prev.i76 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %wqe, ptr %prev.i76, align 4
  %30 = ptrtoint ptr %wqe to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pending_list, ptr %wqe, align 4
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %wqe, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.else.list_add_tail.exit_crit_edge
  %wq_pending_count = getelementptr inbounds %struct.hw_wq, ptr %wq, i32 0, i32 16
  %33 = ptrtoint ptr %wq_pending_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wq_pending_count, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %wq_pending_count, align 4
  br label %cleanup

if.end14:                                         ; preds = %entry
  %35 = ptrtoint ptr %wqe to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %wqe, ptr %wqe, align 4
  %prev.i77 = getelementptr inbounds %struct.list_head, ptr %wqe, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i77 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %wqe, ptr %prev.i77, align 4
  %prev.i78 = getelementptr inbounds %struct.hw_wq, ptr %wq, i32 0, i32 13, i32 1
  %37 = ptrtoint ptr %prev.i78 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i78, align 4
  %call.i.i79 = tail call zeroext i1 @__list_add_valid(ptr noundef %wqe, ptr noundef %38, ptr noundef %pending_list) #13
  br i1 %call.i.i79, label %if.end.i.i81, label %if.end14.list_add_tail.exit82_crit_edge

if.end14.list_add_tail.exit82_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit82

if.end.i.i81:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %prev.i78 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %wqe, ptr %prev.i78, align 4
  %40 = ptrtoint ptr %wqe to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %pending_list, ptr %wqe, align 4
  %41 = ptrtoint ptr %prev.i77 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev.i77, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %wqe, ptr %38, align 4
  br label %list_add_tail.exit82

list_add_tail.exit82:                             ; preds = %if.end.i.i81, %if.end14.list_add_tail.exit82_crit_edge
  %wq_pending_count18 = getelementptr inbounds %struct.hw_wq, ptr %wq, i32 0, i32 16
  %43 = ptrtoint ptr %wq_pending_count18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %wq_pending_count18, align 4
  %inc19 = add i32 %44, 1
  store i32 %inc19, ptr %wq_pending_count18, align 4
  %free_count20 = getelementptr inbounds %struct.hw_wq, ptr %wq, i32 0, i32 11
  %45 = ptrtoint ptr %free_count20 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %free_count20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp21.not111 = icmp eq i32 %46, 0
  br i1 %cmp21.not111, label %list_add_tail.exit82.cleanup_crit_edge, label %while.body.lr.ph

list_add_tail.exit82.cleanup_crit_edge:           ; preds = %list_add_tail.exit82
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.lr.ph:                                 ; preds = %list_add_tail.exit82
  %wqec_count.i85 = getelementptr inbounds %struct.hw_wq, ptr %wq, i32 0, i32 10
  %wqec_set_count.i92 = getelementptr inbounds %struct.hw_wq, ptr %wq, i32 0, i32 9
  %hw.i96 = getelementptr inbounds %struct.hw_wq, ptr %wq, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end41.while.body_crit_edge, %while.body.lr.ph
  %47 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pending_list, align 4
  %tobool25.not = icmp eq ptr %48, null
  br i1 %tobool25.not, label %while.body.cleanup_crit_edge, label %if.end27

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end27:                                         ; preds = %while.body
  %call.i.i83 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %48) #13
  br i1 %call.i.i83, label %if.end.i.i84, label %if.end27.list_del_init.exit_crit_edge

if.end27.list_del_init.exit_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i84:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %48, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i84, %if.end27.list_del_init.exit_crit_edge
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %48, ptr %48, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %48, ptr %prev.i3.i, align 4
  %57 = ptrtoint ptr %wqec_count.i85 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %wqec_count.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i86 = icmp eq i32 %58, 0
  br i1 %tobool.not.i86, label %list_del_init.exit.if.then3.i93_crit_edge, label %if.end.i89

list_del_init.exit.if.then3.i93_crit_edge:        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i93

if.end.i89:                                       ; preds = %list_del_init.exit
  %dec.i87 = add i32 %58, -1
  %59 = ptrtoint ptr %wqec_count.i85 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %dec.i87, ptr %wqec_count.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i87)
  %cmp.i88 = icmp eq i32 %dec.i87, 0
  br i1 %cmp.i88, label %if.end.i89.if.then3.i93_crit_edge, label %if.end.i89._efct_hw_wq_write.exit103_crit_edge

if.end.i89._efct_hw_wq_write.exit103_crit_edge:   ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #15
  br label %_efct_hw_wq_write.exit103

if.end.i89.if.then3.i93_crit_edge:                ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i93

if.then3.i93:                                     ; preds = %if.end.i89.if.then3.i93_crit_edge, %list_del_init.exit.if.then3.i93_crit_edge
  %wqebuf.i90 = getelementptr inbounds %struct.efct_hw_wqe, ptr %48, i32 0, i32 5
  %60 = ptrtoint ptr %wqebuf.i90 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wqebuf.i90, align 4
  %cmdtype_wqec_byte.i91 = getelementptr inbounds %struct.sli4_generic_wqe, ptr %61, i32 0, i32 13
  %62 = ptrtoint ptr %cmdtype_wqec_byte.i91 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %cmdtype_wqec_byte.i91, align 4
  %64 = or i8 %63, -128
  store i8 %64, ptr %cmdtype_wqec_byte.i91, align 4
  %65 = ptrtoint ptr %wqec_set_count.i92 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %wqec_set_count.i92, align 4
  %67 = ptrtoint ptr %wqec_count.i85 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %wqec_count.i85, align 4
  br label %_efct_hw_wq_write.exit103

_efct_hw_wq_write.exit103:                        ; preds = %if.then3.i93, %if.end.i89._efct_hw_wq_write.exit103_crit_edge
  %68 = ptrtoint ptr %free_count20 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %free_count20, align 4
  %dec7.i95 = add i32 %69, -1
  store i32 %dec7.i95, ptr %free_count20, align 4
  %70 = ptrtoint ptr %hw.i96 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw.i96, align 4
  %sli.i97 = getelementptr inbounds %struct.efct_hw, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %queue, align 4
  %wqebuf8.i99 = getelementptr inbounds %struct.efct_hw_wqe, ptr %48, i32 0, i32 5
  %74 = ptrtoint ptr %wqebuf8.i99 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wqebuf8.i99, align 4
  %call.i100 = tail call i32 @sli_wq_write(ptr noundef %sli.i97, ptr noundef %73, ptr noundef %75) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i100)
  %cmp9.i101 = icmp sgt i32 %call.i100, -1
  br i1 %cmp9.i101, label %if.end32, label %_efct_hw_wq_write.exit103.cleanup_crit_edge

_efct_hw_wq_write.exit103.cleanup_crit_edge:      ; preds = %_efct_hw_wq_write.exit103
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end32:                                         ; preds = %_efct_hw_wq_write.exit103
  %abort_wqe_submit_needed = getelementptr inbounds %struct.efct_hw_wqe, ptr %48, i32 0, i32 1
  %76 = ptrtoint ptr %abort_wqe_submit_needed to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %abort_wqe_submit_needed, align 4, !range !547
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool33.not = icmp eq i8 %77, 0
  br i1 %tobool33.not, label %if.end32.if.end41_crit_edge, label %if.then34

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then34:                                        ; preds = %if.end32
  %78 = ptrtoint ptr %abort_wqe_submit_needed to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %abort_wqe_submit_needed, align 4
  %79 = ptrtoint ptr %hw.i96 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw.i96, align 4
  %81 = ptrtoint ptr %wqebuf8.i99 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wqebuf8.i99, align 4
  %wqe_size.i = getelementptr inbounds %struct.efct_hw, ptr %80, i32 0, i32 1, i32 26
  %83 = ptrtoint ptr %wqe_size.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %wqe_size.i, align 4
  %85 = call ptr @memset(ptr %82, i32 0, i32 %84)
  %criteria.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %82, i32 0, i32 4
  %86 = ptrtoint ptr %criteria.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %criteria.i, align 1
  %send_abts.i = getelementptr inbounds %struct.efct_hw_wqe, ptr %48, i32 0, i32 2
  %87 = ptrtoint ptr %send_abts.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %send_abts.i, align 1, !range !547
  %ia_ir_byte.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %82, i32 0, i32 3
  %89 = ptrtoint ptr %ia_ir_byte.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %ia_ir_byte.i, align 4
  %or18.i = xor i8 %88, 3
  %91 = or i8 %or18.i, %90
  store i8 %91, ptr %ia_ir_byte.i, align 4
  %id.i = getelementptr inbounds %struct.efct_hw_wqe, ptr %48, i32 0, i32 3
  %92 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %id.i, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #13
  %t_tag.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %82, i32 0, i32 14
  %95 = ptrtoint ptr %t_tag.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %t_tag.i, align 4
  %command.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %82, i32 0, i32 11
  %96 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 15, ptr %command.i, align 1
  %abort_reqtag.i = getelementptr inbounds %struct.efct_hw_wqe, ptr %48, i32 0, i32 4
  %97 = ptrtoint ptr %abort_reqtag.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %abort_reqtag.i, align 4
  %conv6.i = trunc i32 %98 to i16
  %99 = tail call i16 @llvm.bswap.i16(i16 %conv6.i) #13
  %request_tag.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %82, i32 0, i32 15
  %100 = ptrtoint ptr %request_tag.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %request_tag.i, align 4
  %dw10w0_flags.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %82, i32 0, i32 17
  %101 = ptrtoint ptr %dw10w0_flags.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 2, ptr %dw10w0_flags.i, align 4
  %cq_id.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %82, i32 0, i32 22
  %102 = ptrtoint ptr %cq_id.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 -1, ptr %cq_id.i, align 2
  %103 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %48, ptr %48, align 4
  %104 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %48, ptr %prev.i3.i, align 4
  %105 = ptrtoint ptr %prev.i78 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev.i78, align 4
  %call.i.i107 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %48, ptr noundef %106, ptr noundef %pending_list) #13
  br i1 %call.i.i107, label %if.end.i.i109, label %if.then34.list_add_tail.exit110_crit_edge

if.then34.list_add_tail.exit110_crit_edge:        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit110

if.end.i.i109:                                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %prev.i78 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %48, ptr %prev.i78, align 4
  %108 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %pending_list, ptr %48, align 4
  %109 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %prev.i3.i, align 4
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %48, ptr %106, align 4
  br label %list_add_tail.exit110

list_add_tail.exit110:                            ; preds = %if.end.i.i109, %if.then34.list_add_tail.exit110_crit_edge
  %111 = ptrtoint ptr %wq_pending_count18 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %wq_pending_count18, align 4
  %inc40 = add i32 %112, 1
  store i32 %inc40, ptr %wq_pending_count18, align 4
  br label %if.end41

if.end41:                                         ; preds = %list_add_tail.exit110, %if.end32.if.end41_crit_edge
  %113 = ptrtoint ptr %free_count20 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %free_count20, align 4
  %cmp21.not = icmp eq i32 %114, 0
  br i1 %cmp21.not, label %if.end41.cleanup_crit_edge, label %if.end41.while.body_crit_edge

if.end41.while.body_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end41.cleanup_crit_edge, %_efct_hw_wq_write.exit103.cleanup_crit_edge, %while.body.cleanup_crit_edge, %list_add_tail.exit82.cleanup_crit_edge, %list_add_tail.exit, %_efct_hw_wq_write.exit
  %retval.0 = phi i32 [ %cond.i, %_efct_hw_wq_write.exit ], [ 0, %list_add_tail.exit ], [ 0, %list_add_tail.exit82.cleanup_crit_edge ], [ -5, %_efct_hw_wq_write.exit103.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ]
  %115 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %queue, align 4
  %lock43 = getelementptr inbounds %struct.sli4_queue, ptr %116, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock43, i32 noundef %call2) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_hw_reqtag_pool_free(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_reqtag_pool = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 56
  %0 = ptrtoint ptr %wq_reqtag_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq_reqtag_pool, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.reqtag_pool, ptr %1, i32 0, i32 1, i32 %i.012
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %3) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 65535
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %1) #13
  %4 = ptrtoint ptr %wq_reqtag_pool to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %wq_reqtag_pool, align 4
  br label %if.end4

if.end4:                                          ; preds = %for.end, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_hw_reqtag_free(ptr nocapture noundef readonly %hw, ptr noundef %wqcb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_reqtag_pool = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 56
  %0 = ptrtoint ptr %wq_reqtag_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq_reqtag_pool, align 4
  %callback = getelementptr inbounds %struct.hw_wq_callback, ptr %wqcb, i32 0, i32 1
  %2 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %callback, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.106) #16
  br label %do.body2

do.body2:                                         ; preds = %do.end, %entry.do.body2_crit_edge
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #13
  %8 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %callback, align 4
  %arg = getelementptr inbounds %struct.hw_wq_callback, ptr %wqcb, i32 0, i32 2
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arg, align 4
  %list_entry = getelementptr inbounds %struct.hw_wq_callback, ptr %wqcb, i32 0, i32 3
  %10 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list_entry, ptr %list_entry, align 4
  %prev.i = getelementptr inbounds %struct.hw_wq_callback, ptr %wqcb, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list_entry, ptr %prev.i, align 4
  %12 = ptrtoint ptr %wq_reqtag_pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wq_reqtag_pool, align 4
  %freelist = getelementptr inbounds %struct.reqtag_pool, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %freelist to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %freelist, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_entry, ptr noundef %freelist, ptr noundef %15) #13
  br i1 %call.i.i, label %if.end.i.i, label %do.body2.list_add.exit_crit_edge

do.body2.list_add.exit_crit_edge:                 ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list_entry, ptr %prev1.i.i, align 4
  %17 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %list_entry, align 4
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %freelist, ptr %prev.i, align 4
  %19 = ptrtoint ptr %freelist to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list_entry, ptr %freelist, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.body2.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efct_hw_reqtag_get_instance(ptr nocapture noundef readonly %hw, i32 noundef %instance_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_reqtag_pool = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 56
  %0 = ptrtoint ptr %wq_reqtag_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq_reqtag_pool, align 4
  %arrayidx = getelementptr %struct.reqtag_pool, ptr %1, i32 0, i32 1, i32 %instance_index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.108, i32 noundef %instance_index) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret ptr %3
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_queue_hash_find(ptr nocapture noundef readonly %hash, i16 noundef zeroext %id) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %id, 127
  %and = zext i16 %0 to i32
  br label %do.body

do.body:                                          ; preds = %do.cond.thread.do.body_crit_edge, %entry
  %i.0 = phi i32 [ %and, %entry ], [ %and10, %do.cond.thread.do.body_crit_edge ]
  %arrayidx = getelementptr %struct.efct_queue_hash, ptr %hash, i32 %i.0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 2, !range !547
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.body.do.cond.thread_crit_edge, label %land.lhs.true

do.body.do.cond.thread_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond.thread

land.lhs.true:                                    ; preds = %do.body
  %id3 = getelementptr %struct.efct_queue_hash, ptr %hash, i32 %i.0, i32 1
  %3 = ptrtoint ptr %id3 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %id3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %id)
  %cmp = icmp eq i16 %4, %id
  br i1 %cmp, label %do.cond, label %land.lhs.true.do.cond.thread_crit_edge

land.lhs.true.do.cond.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond.thread

do.cond.thread:                                   ; preds = %land.lhs.true.do.cond.thread_crit_edge, %do.body.do.cond.thread_crit_edge
  %add = add nuw nsw i32 %i.0, 1
  %and10 = and i32 %add, 127
  %arrayidx13 = getelementptr %struct.efct_queue_hash, ptr %hash, i32 %and10
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx13, align 2, !range !547
  %tobool15.not = icmp eq i8 %6, 0
  br i1 %tobool15.not, label %do.cond.thread.do.end_crit_edge, label %do.cond.thread.do.body_crit_edge

do.cond.thread.do.body_crit_edge:                 ; preds = %do.cond.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.cond.thread.do.end_crit_edge:                  ; preds = %do.cond.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.cond:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %index8 = getelementptr %struct.efct_queue_hash, ptr %hash, i32 %i.0, i32 2
  %7 = ptrtoint ptr %index8 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %index8, align 2
  %conv9 = zext i16 %8 to i32
  br label %do.end

do.end:                                           ; preds = %do.cond, %do.cond.thread.do.end_crit_edge
  %index.129 = phi i32 [ %conv9, %do.cond ], [ -1, %do.cond.thread.do.end_crit_edge ]
  ret i32 %index.129
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_process(ptr noundef %hw, i32 noundef %vector, i32 noundef %max_isr_time_msec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 31, i32 %vector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %use_count = getelementptr inbounds %struct.hw_eq, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %use_count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %use_count, align 4
  %call = tail call i32 @efct_hw_eq_process(ptr noundef %hw, ptr noundef nonnull %3, i32 noundef %max_isr_time_msec)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end2 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_eq_process(ptr noundef %hw, ptr nocapture noundef readonly %eq, i32 noundef %max_isr_time_msec) local_unnamed_addr #0 align 64 {
entry:
  %eqe = alloca [4 x i8], align 4
  %cq_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eqe) #13
  %0 = ptrtoint ptr %eqe to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %eqe, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %1) #13
  %conv = zext i32 %call to i64
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %queue = getelementptr inbounds %struct.hw_eq, ptr %eq, i32 0, i32 6
  %cq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 18
  %cq_hash = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 24
  %conv47 = zext i32 %max_isr_time_msec to i64
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %call1103 = call i32 @sli_eq_read(ptr noundef %sli, ptr noundef %3, ptr noundef nonnull %eqe) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1103)
  %tobool2.not104 = icmp eq i32 %call1103, 0
  br i1 %tobool2.not104, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %land.rhs.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %tcheck_count.098105 = phi i32 [ %tcheck_count.098.be, %land.rhs.backedge.while.body_crit_edge ], [ 100, %entry.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cq_id) #13
  %4 = ptrtoint ptr %cq_id to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %cq_id, align 2
  %call5 = call i32 @sli_eq_parse(ptr noundef %sli, ptr noundef nonnull %eqe, ptr noundef nonnull %cq_id) #13
  %5 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.294)
  switch i32 %call5, label %cleanup.thread [
    i32 0, label %if.else14
    i32 2, label %for.cond.preheader
  ], !prof !564

for.cond.preheader:                               ; preds = %while.body
  %6 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1296.not = icmp eq i32 %7, 0
  br i1 %cmp1296.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cq_id) #13
  br label %cleanup57

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.097 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 30, i32 %i.097
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  call void @efct_hw_cq_process(ptr noundef %hw, ptr noundef %9)
  %inc = add nuw i32 %i.097, 1
  %10 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cq_count, align 4
  %cmp12 = icmp ult i32 %inc, %11
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.else14:                                        ; preds = %while.body
  %12 = ptrtoint ptr %cq_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cq_id, align 2
  %14 = and i16 %13, 127
  %and.i = zext i16 %14 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.thread.i.do.body.i_crit_edge, %if.else14
  %i.0.i = phi i32 [ %and.i, %if.else14 ], [ %and10.i, %do.cond.thread.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.efct_queue_hash, ptr %cq_hash, i32 %i.0.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 2, !range !547
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %do.body.i.do.cond.thread.i_crit_edge, label %land.lhs.true.i

do.body.i.do.cond.thread.i_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond.thread.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %id3.i = getelementptr %struct.efct_queue_hash, ptr %cq_hash, i32 %i.0.i, i32 1
  %17 = ptrtoint ptr %id3.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %id3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %13)
  %cmp.i = icmp eq i16 %18, %13
  br i1 %cmp.i, label %if.then25, label %land.lhs.true.i.do.cond.thread.i_crit_edge

land.lhs.true.i.do.cond.thread.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond.thread.i

do.cond.thread.i:                                 ; preds = %land.lhs.true.i.do.cond.thread.i_crit_edge, %do.body.i.do.cond.thread.i_crit_edge
  %add.i = add nuw nsw i32 %i.0.i, 1
  %and10.i = and i32 %add.i, 127
  %arrayidx13.i = getelementptr %struct.efct_queue_hash, ptr %cq_hash, i32 %and10.i
  %19 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx13.i, align 2, !range !547
  %tobool15.not.i = icmp eq i8 %20, 0
  br i1 %tobool15.not.i, label %do.end, label %do.cond.thread.i.do.body.i_crit_edge

do.cond.thread.i.do.body.i_crit_edge:             ; preds = %do.cond.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.then25:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %index8.i = getelementptr %struct.efct_queue_hash, ptr %cq_hash, i32 %i.0.i, i32 2
  %21 = ptrtoint ptr %index8.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %index8.i, align 2
  %conv9.i = zext i16 %22 to i32
  %arrayidx27 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 30, i32 %conv9.i
  %23 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx27, align 4
  call void @efct_hw_cq_process(ptr noundef %hw, ptr noundef %24)
  br label %if.end

do.end:                                           ; preds = %do.cond.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %conv29 = zext i16 %13 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.110, i32 noundef %conv29) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then25
  %29 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %queue, align 4
  %n_posted = getelementptr inbounds %struct.sli4_queue, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %n_posted to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %n_posted, align 4
  %conv32 = zext i16 %32 to i32
  %posted_limit = getelementptr inbounds %struct.sli4_queue, ptr %30, i32 0, i32 11
  %33 = ptrtoint ptr %posted_limit to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %posted_limit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv32)
  %cmp34 = icmp ult i32 %34, %conv32
  br i1 %cmp34, label %if.then36, label %if.end.if.end40_crit_edge

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call39 = call i32 @sli_queue_arm(ptr noundef %sli, ptr noundef %30, i1 noundef zeroext false) #13
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end.if.end40_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tcheck_count.098105)
  %tobool41.not = icmp eq i32 %tcheck_count.098105, 0
  br i1 %tobool41.not, label %if.end40.cleanup_crit_edge, label %land.lhs.true

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end40
  %dec = add i32 %tcheck_count.098105, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp42 = icmp eq i32 %dec, 0
  br i1 %cmp42, label %if.then44, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then44:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %call45 = call i32 @jiffies_to_msecs(i32 noundef %35) #13
  %conv46 = zext i32 %call45 to i64
  %sub = sub nsw i64 %conv46, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv47)
  %cmp48.not.not = icmp ult i64 %sub, %conv47
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cq_id) #13
  br i1 %cmp48.not.not, label %if.then44.land.rhs.backedge_crit_edge, label %if.then44.while.end_crit_edge

if.then44.while.end_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.then44.land.rhs.backedge_crit_edge:            ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.backedge

land.rhs.backedge:                                ; preds = %cleanup, %if.then44.land.rhs.backedge_crit_edge
  %tcheck_count.098.be = phi i32 [ %tcheck_count.2, %cleanup ], [ 100, %if.then44.land.rhs.backedge_crit_edge ]
  %36 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %queue, align 4
  %call1 = call i32 @sli_eq_read(ptr noundef %sli, ptr noundef %37, ptr noundef nonnull %eqe) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.rhs.backedge.while.body_crit_edge, label %land.rhs.backedge.while.end_crit_edge

land.rhs.backedge.while.end_crit_edge:            ; preds = %land.rhs.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

land.rhs.backedge.while.body_crit_edge:           ; preds = %land.rhs.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %tcheck_count.2 = phi i32 [ %dec, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ], [ %tcheck_count.098105, %for.cond.preheader.cleanup_crit_edge ], [ %tcheck_count.098105, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cq_id) #13
  br label %land.rhs.backedge

while.end:                                        ; preds = %land.rhs.backedge.while.end_crit_edge, %if.then44.while.end_crit_edge, %entry.while.end_crit_edge
  %38 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %queue, align 4
  %call56 = call i32 @sli_queue_eq_arm(ptr noundef %sli, ptr noundef %39, i1 noundef zeroext true) #13
  br label %cleanup57

cleanup57:                                        ; preds = %while.end, %cleanup.thread
  %retval.2 = phi i32 [ 0, %while.end ], [ %call5, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eqe) #13
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_eq_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_eq_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_hw_cq_process(ptr noundef %hw, ptr noundef %cq) local_unnamed_addr #0 align 64 {
entry:
  %mqe.i = alloca [256 x i8], align 1
  %cqe = alloca [16 x i8], align 1
  %rid = alloca i16, align 2
  %ctype = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cqe) #13
  %0 = call ptr @memset(ptr %cqe, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rid) #13
  %1 = ptrtoint ptr %rid to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %rid, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctype) #13
  %2 = ptrtoint ptr %ctype to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ctype, align 4, !annotation !549
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %3) #13
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %queue = getelementptr inbounds %struct.hw_cq, ptr %cq, i32 0, i32 6
  %wq_hash = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 26
  %mq = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 14
  %size.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 14, i32 0, i32 3
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %call1143 = call i32 @sli_cq_read(ptr noundef %sli, ptr noundef %5, ptr noundef nonnull %cqe) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1143)
  %tobool.not144 = icmp eq i32 %call1143, 0
  br i1 %tobool.not144, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %cleanup67.while.body_crit_edge, %entry.while.body_crit_edge
  %n_processed.0145 = phi i32 [ %n_processed.1, %cleanup67.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue, align 4
  %call5 = call i32 @sli_cq_parse(ptr noundef %sli, ptr noundef %7, ptr noundef nonnull %cqe, ptr noundef nonnull %ctype, ptr noundef nonnull %rid) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call5)
  %cmp6 = icmp eq i32 %call5, -2
  br i1 %cmp6, label %if.then.cleanup67_crit_edge, label %if.then.while.end_crit_edge

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.then.cleanup67_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup67

if.end8:                                          ; preds = %while.body
  %8 = ptrtoint ptr %ctype to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctype, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.295)
  switch i32 %9, label %do.body35 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 3, label %sw.bb15
    i32 4, label %sw.bb17
    i32 2, label %sw.bb30
    i32 7, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = call i32 @sli_cqe_async(ptr noundef %sli, ptr noundef nonnull %cqe) #13
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %mqe.i) #13
  %11 = call ptr @memset(ptr %mqe.i, i32 255, i32 256)
  %call.i = call i32 @sli_mq_read(ptr noundef %sli, ptr noundef %mq, ptr noundef nonnull %mqe.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb12.efct_hw_mq_process.exit_crit_edge

sw.bb12.efct_hw_mq_process.exit_crit_edge:        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_mq_process.exit

if.then.i:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %size.i, align 8
  %conv.i = zext i16 %13 to i32
  %call2.i = call fastcc i32 @efct_hw_command_process(ptr noundef %hw, i32 noundef %call5, ptr noundef nonnull %mqe.i, i32 noundef %conv.i) #13
  br label %efct_hw_mq_process.exit

efct_hw_mq_process.exit:                          ; preds = %if.then.i, %sw.bb12.efct_hw_mq_process.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %mqe.i) #13
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %rid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rid, align 2
  call void @efct_hw_wq_process(ptr noundef %hw, ptr undef, ptr noundef nonnull %cqe, i32 noundef %call5, i16 noundef zeroext %15)
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end8
  %16 = ptrtoint ptr %rid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rid, align 2
  %18 = and i16 %17, 127
  %and.i = zext i16 %18 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.thread.i.do.body.i_crit_edge, %sw.bb17
  %i.0.i = phi i32 [ %and.i, %sw.bb17 ], [ %and10.i, %do.cond.thread.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.efct_queue_hash, ptr %wq_hash, i32 %i.0.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 2, !range !547
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i124 = icmp eq i8 %20, 0
  br i1 %tobool.not.i124, label %do.body.i.do.cond.thread.i_crit_edge, label %land.lhs.true.i

do.body.i.do.cond.thread.i_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond.thread.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %id3.i = getelementptr %struct.efct_queue_hash, ptr %wq_hash, i32 %i.0.i, i32 1
  %21 = ptrtoint ptr %id3.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %id3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %17)
  %cmp.i = icmp eq i16 %22, %17
  br i1 %cmp.i, label %if.then26, label %land.lhs.true.i.do.cond.thread.i_crit_edge

land.lhs.true.i.do.cond.thread.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond.thread.i

do.cond.thread.i:                                 ; preds = %land.lhs.true.i.do.cond.thread.i_crit_edge, %do.body.i.do.cond.thread.i_crit_edge
  %add.i = add nuw nsw i32 %i.0.i, 1
  %and10.i = and i32 %add.i, 127
  %arrayidx13.i = getelementptr %struct.efct_queue_hash, ptr %wq_hash, i32 %and10.i
  %23 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx13.i, align 2, !range !547
  %tobool15.not.i = icmp eq i8 %24, 0
  br i1 %tobool15.not.i, label %do.end, label %do.cond.thread.i.do.body.i_crit_edge

do.cond.thread.i.do.body.i_crit_edge:             ; preds = %do.cond.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.then26:                                        ; preds = %land.lhs.true.i
  %index8.i = getelementptr %struct.efct_queue_hash, ptr %wq_hash, i32 %i.0.i, i32 2
  %25 = ptrtoint ptr %index8.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %index8.i, align 2
  %conv9.i = zext i16 %26 to i32
  %arrayidx = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 27, i32 %conv9.i
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %wqec_set_count = getelementptr inbounds %struct.hw_wq, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %wqec_set_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wqec_set_count, align 4
  %queue.i = getelementptr inbounds %struct.hw_wq, ptr %28, i32 0, i32 7
  %31 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %queue.i, align 4
  %lock.i = getelementptr inbounds %struct.sli4_queue, ptr %32, i32 0, i32 1
  %call2.i125 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %free_count.i = getelementptr inbounds %struct.hw_wq, ptr %28, i32 0, i32 11
  %33 = ptrtoint ptr %free_count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %free_count.i, align 4
  %add.i126 = add i32 %34, %30
  store i32 %add.i126, ptr %free_count.i, align 4
  %pending_list.i = getelementptr inbounds %struct.hw_wq, ptr %28, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i126)
  %cmp6.not39.i = icmp eq i32 %add.i126, 0
  br i1 %cmp6.not39.i, label %if.then26.hw_wq_submit_pending.exit_crit_edge, label %land.rhs.lr.ph.i

if.then26.hw_wq_submit_pending.exit_crit_edge:    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %hw_wq_submit_pending.exit

land.rhs.lr.ph.i:                                 ; preds = %if.then26
  %wqec_count.i.i = getelementptr inbounds %struct.hw_wq, ptr %28, i32 0, i32 10
  %hw.i.i = getelementptr inbounds %struct.hw_wq, ptr %28, i32 0, i32 3
  %prev.i36.i = getelementptr inbounds %struct.hw_wq, ptr %28, i32 0, i32 13, i32 1
  %wq_pending_count.i = getelementptr inbounds %struct.hw_wq, ptr %28, i32 0, i32 16
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %35 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %pending_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %36, %pending_list.i
  br i1 %cmp.i.not.i, label %land.rhs.i.hw_wq_submit_pending.exit_crit_edge, label %while.body.i

land.rhs.i.hw_wq_submit_pending.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hw_wq_submit_pending.exit

while.body.i:                                     ; preds = %land.rhs.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %36) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %36, ptr %36, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %36, ptr %prev.i3.i.i, align 4
  %45 = ptrtoint ptr %wqec_count.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %wqec_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i, label %list_del_init.exit.i.if.then3.i.i_crit_edge, label %if.end.i.i

list_del_init.exit.i.if.then3.i.i_crit_edge:      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i.i

if.end.i.i:                                       ; preds = %list_del_init.exit.i
  %dec.i.i = add i32 %46, -1
  %47 = ptrtoint ptr %wqec_count.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %dec.i.i, ptr %wqec_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i34.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i34.i, label %if.end.i.i.if.then3.i.i_crit_edge, label %if.end.i.i._efct_hw_wq_write.exit.i_crit_edge

if.end.i.i._efct_hw_wq_write.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_efct_hw_wq_write.exit.i

if.end.i.i.if.then3.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i.if.then3.i.i_crit_edge, %list_del_init.exit.i.if.then3.i.i_crit_edge
  %wqebuf.i.i = getelementptr inbounds %struct.efct_hw_wqe, ptr %36, i32 0, i32 5
  %48 = ptrtoint ptr %wqebuf.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wqebuf.i.i, align 4
  %cmdtype_wqec_byte.i.i = getelementptr inbounds %struct.sli4_generic_wqe, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %cmdtype_wqec_byte.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cmdtype_wqec_byte.i.i, align 4
  %52 = or i8 %51, -128
  store i8 %52, ptr %cmdtype_wqec_byte.i.i, align 4
  %53 = ptrtoint ptr %wqec_set_count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %wqec_set_count, align 4
  %55 = ptrtoint ptr %wqec_count.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %wqec_count.i.i, align 4
  br label %_efct_hw_wq_write.exit.i

_efct_hw_wq_write.exit.i:                         ; preds = %if.then3.i.i, %if.end.i.i._efct_hw_wq_write.exit.i_crit_edge
  %56 = ptrtoint ptr %free_count.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %free_count.i, align 4
  %dec7.i.i = add i32 %57, -1
  store i32 %dec7.i.i, ptr %free_count.i, align 4
  %58 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw.i.i, align 4
  %sli.i.i = getelementptr inbounds %struct.efct_hw, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %queue.i, align 4
  %wqebuf8.i.i = getelementptr inbounds %struct.efct_hw_wqe, ptr %36, i32 0, i32 5
  %62 = ptrtoint ptr %wqebuf8.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wqebuf8.i.i, align 4
  %call.i.i = call i32 @sli_wq_write(ptr noundef %sli.i.i, ptr noundef %61, ptr noundef %63) #13
  %abort_wqe_submit_needed.i = getelementptr inbounds %struct.efct_hw_wqe, ptr %36, i32 0, i32 1
  %64 = ptrtoint ptr %abort_wqe_submit_needed.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %abort_wqe_submit_needed.i, align 4, !range !547
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool12.not.i = icmp eq i8 %65, 0
  br i1 %tobool12.not.i, label %_efct_hw_wq_write.exit.i.if.end.i_crit_edge, label %if.then.i127

_efct_hw_wq_write.exit.i.if.end.i_crit_edge:      ; preds = %_efct_hw_wq_write.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i127:                                     ; preds = %_efct_hw_wq_write.exit.i
  %66 = ptrtoint ptr %abort_wqe_submit_needed.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %abort_wqe_submit_needed.i, align 4
  %67 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw.i.i, align 4
  %69 = ptrtoint ptr %wqebuf8.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wqebuf8.i.i, align 4
  %wqe_size.i.i = getelementptr inbounds %struct.efct_hw, ptr %68, i32 0, i32 1, i32 26
  %71 = ptrtoint ptr %wqe_size.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %wqe_size.i.i, align 4
  %73 = call ptr @memset(ptr %70, i32 0, i32 %72)
  %criteria.i.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %70, i32 0, i32 4
  %74 = ptrtoint ptr %criteria.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %criteria.i.i, align 1
  %send_abts.i.i = getelementptr inbounds %struct.efct_hw_wqe, ptr %36, i32 0, i32 2
  %75 = ptrtoint ptr %send_abts.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %send_abts.i.i, align 1, !range !547
  %ia_ir_byte.i.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %70, i32 0, i32 3
  %77 = ptrtoint ptr %ia_ir_byte.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ia_ir_byte.i.i, align 4
  %or18.i.i = xor i8 %76, 3
  %79 = or i8 %or18.i.i, %78
  store i8 %79, ptr %ia_ir_byte.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.efct_hw_wqe, ptr %36, i32 0, i32 3
  %80 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %id.i.i, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81) #13
  %t_tag.i.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %70, i32 0, i32 14
  %83 = ptrtoint ptr %t_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %t_tag.i.i, align 4
  %command.i.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %70, i32 0, i32 11
  %84 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 15, ptr %command.i.i, align 1
  %abort_reqtag.i.i = getelementptr inbounds %struct.efct_hw_wqe, ptr %36, i32 0, i32 4
  %85 = ptrtoint ptr %abort_reqtag.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %abort_reqtag.i.i, align 4
  %conv6.i.i = trunc i32 %86 to i16
  %87 = call i16 @llvm.bswap.i16(i16 %conv6.i.i) #13
  %request_tag.i.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %70, i32 0, i32 15
  %88 = ptrtoint ptr %request_tag.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %request_tag.i.i, align 4
  %dw10w0_flags.i.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %70, i32 0, i32 17
  %89 = ptrtoint ptr %dw10w0_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 2, ptr %dw10w0_flags.i.i, align 4
  %cq_id.i.i = getelementptr inbounds %struct.sli4_abort_wqe, ptr %70, i32 0, i32 22
  %90 = ptrtoint ptr %cq_id.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 -1, ptr %cq_id.i.i, align 2
  %91 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %36, ptr %36, align 4
  %92 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %36, ptr %prev.i3.i.i, align 4
  %93 = ptrtoint ptr %prev.i36.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i36.i, align 4
  %call.i.i37.i = call zeroext i1 @__list_add_valid(ptr noundef %36, ptr noundef %94, ptr noundef %pending_list.i) #13
  br i1 %call.i.i37.i, label %if.end.i.i38.i, label %if.then.i127.list_add_tail.exit.i_crit_edge

if.then.i127.list_add_tail.exit.i_crit_edge:      ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i

if.end.i.i38.i:                                   ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_pc() #15
  %95 = ptrtoint ptr %prev.i36.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %36, ptr %prev.i36.i, align 4
  %96 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %pending_list.i, ptr %36, align 4
  %97 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev.i3.i.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %36, ptr %94, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i38.i, %if.then.i127.list_add_tail.exit.i_crit_edge
  %99 = ptrtoint ptr %wq_pending_count.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %wq_pending_count.i, align 4
  %inc.i = add i32 %100, 1
  store i32 %inc.i, ptr %wq_pending_count.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %list_add_tail.exit.i, %_efct_hw_wq_write.exit.i.if.end.i_crit_edge
  %101 = ptrtoint ptr %free_count.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pr.i = load i32, ptr %free_count.i, align 4
  %cmp6.not.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp6.not.i, label %if.end.i.hw_wq_submit_pending.exit_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

if.end.i.hw_wq_submit_pending.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hw_wq_submit_pending.exit

hw_wq_submit_pending.exit:                        ; preds = %if.end.i.hw_wq_submit_pending.exit_crit_edge, %land.rhs.i.hw_wq_submit_pending.exit_crit_edge, %if.then26.hw_wq_submit_pending.exit_crit_edge
  %102 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %queue.i, align 4
  %lock18.i = getelementptr inbounds %struct.sli4_queue, ptr %103, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock18.i, i32 noundef %call2.i125) #13
  br label %sw.epilog

do.end:                                           ; preds = %do.cond.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i16 %17 to i32
  %104 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.112, i32 noundef %conv) #16
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %call32 = call i32 @efct_hw_rqpair_process_rq(ptr noundef %hw, ptr noundef %cq, ptr noundef nonnull %cqe) #13
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %108 = ptrtoint ptr %rid to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %rid, align 2
  call void @efct_hw_xabt_process(ptr noundef %hw, ptr undef, ptr undef, i16 noundef zeroext %109)
  br label %sw.epilog

do.body35:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_cq_process.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_cq_process, %if.then44)) #13
          to label %sw.epilog [label %if.then44], !srcloc !548

if.then44:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw, align 8
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 8
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  %114 = ptrtoint ptr %ctype to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ctype, align 4
  %116 = ptrtoint ptr %rid to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %rid, align 2
  %conv48 = zext i16 %117 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_cq_process.__UNIQUE_ID_ddebug336, ptr noundef %dev47, ptr noundef nonnull @.str.114, i32 noundef %115, i32 noundef %conv48) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then44, %do.body35, %sw.bb33, %sw.bb30, %do.end, %hw_wq_submit_pending.exit, %sw.bb15, %efct_hw_mq_process.exit, %sw.bb
  %inc = add i32 %n_processed.0145, 1
  %118 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %queue, align 4
  %proc_limit = getelementptr inbounds %struct.sli4_queue, ptr %119, i32 0, i32 10
  %120 = ptrtoint ptr %proc_limit to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %proc_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %121)
  %cmp53 = icmp eq i32 %inc, %121
  br i1 %cmp53, label %sw.epilog.while.end_crit_edge, label %if.end56

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end56:                                         ; preds = %sw.epilog
  %n_posted = getelementptr inbounds %struct.sli4_queue, ptr %119, i32 0, i32 5
  %122 = ptrtoint ptr %n_posted to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %n_posted, align 4
  %conv58 = zext i16 %123 to i32
  %posted_limit = getelementptr inbounds %struct.sli4_queue, ptr %119, i32 0, i32 11
  %124 = ptrtoint ptr %posted_limit to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %posted_limit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %conv58)
  %cmp60.not = icmp ugt i32 %125, %conv58
  br i1 %cmp60.not, label %if.end56.cleanup67_crit_edge, label %if.then62

if.end56.cleanup67_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup67

if.then62:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  %call65 = call i32 @sli_queue_arm(ptr noundef %sli, ptr noundef %119, i1 noundef zeroext false) #13
  br label %cleanup67

cleanup67:                                        ; preds = %if.then62, %if.end56.cleanup67_crit_edge, %if.then.cleanup67_crit_edge
  %n_processed.1 = phi i32 [ %inc, %if.then62 ], [ %inc, %if.end56.cleanup67_crit_edge ], [ %n_processed.0145, %if.then.cleanup67_crit_edge ]
  %126 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %queue, align 4
  %call1 = call i32 @sli_cq_read(ptr noundef %sli, ptr noundef %127, ptr noundef nonnull %cqe) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup67.while.body_crit_edge, label %cleanup67.while.end_crit_edge

cleanup67.while.end_crit_edge:                    ; preds = %cleanup67
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

cleanup67.while.body_crit_edge:                   ; preds = %cleanup67
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %cleanup67.while.end_crit_edge, %sw.epilog.while.end_crit_edge, %if.then.while.end_crit_edge, %entry.while.end_crit_edge
  %n_processed.2 = phi i32 [ 0, %entry.while.end_crit_edge ], [ %n_processed.1, %cleanup67.while.end_crit_edge ], [ %inc, %sw.epilog.while.end_crit_edge ], [ %n_processed.0145, %if.then.while.end_crit_edge ]
  %128 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %queue, align 4
  %call70 = call i32 @sli_queue_arm(ptr noundef %sli, ptr noundef %129, i1 noundef zeroext true) #13
  %130 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %queue, align 4
  %max_num_processed = getelementptr inbounds %struct.sli4_queue, ptr %131, i32 0, i32 12
  %132 = ptrtoint ptr %max_num_processed to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %max_num_processed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %n_processed.2, i32 %133)
  %cmp72 = icmp ugt i32 %n_processed.2, %133
  br i1 %cmp72, label %if.then74, label %while.end.if.end77_crit_edge

while.end.if.end77_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.then74:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %134 = ptrtoint ptr %max_num_processed to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %n_processed.2, ptr %max_num_processed, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %while.end.if.end77_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %135 = load volatile i32, ptr @jiffies, align 128
  %call78 = call i32 @jiffies_to_msecs(i32 noundef %135) #13
  %sub = sub i32 %call78, %call
  %conv79 = zext i32 %sub to i64
  %136 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %queue, align 4
  %max_process_time = getelementptr inbounds %struct.sli4_queue, ptr %137, i32 0, i32 13
  %138 = ptrtoint ptr %max_process_time to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %max_process_time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %139, i64 %conv79)
  %cmp81 = icmp ult i64 %139, %conv79
  br i1 %cmp81, label %if.then83, label %if.end77.if.end87_crit_edge

if.end77.if.end87_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

if.then83:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  %140 = ptrtoint ptr %max_process_time to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %conv79, ptr %max_process_time, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then83, %if.end77.if.end87_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctype) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rid) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cqe) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_queue_eq_arm(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cq_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cq_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cqe_async(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_hw_wq_process(ptr nocapture noundef readonly %hw, ptr nocapture readnone %cq, ptr noundef %cqe, i32 noundef %status, i16 noundef zeroext %rid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %rid to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %rid)
  %cmp = icmp eq i16 %rid, -2
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not = icmp eq i32 %status, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.115, i32 noundef %status) #16
  br label %cleanup

if.end3:                                          ; preds = %entry
  %wq_reqtag_pool.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 56
  %4 = ptrtoint ptr %wq_reqtag_pool.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wq_reqtag_pool.i, align 4
  %arrayidx.i = getelementptr %struct.reqtag_pool, ptr %5, i32 0, i32 1, i32 %conv
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end9, label %if.end14

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.108, i32 noundef %conv) #16
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.118, i32 noundef %conv) #16
  br label %cleanup

if.end14:                                         ; preds = %if.end3
  %callback = getelementptr inbounds %struct.hw_wq_callback, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %callback, align 4
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %do.end19, label %if.end23

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.121) #16
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %arg = getelementptr inbounds %struct.hw_wq_callback, ptr %7, i32 0, i32 2
  %22 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arg, align 4
  tail call void %17(ptr noundef %23, ptr noundef %cqe, i32 noundef %status) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end19, %do.end9, %do.end, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_rqpair_process_rq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_hw_xabt_process(ptr noundef %hw, ptr nocapture readnone %cq, ptr nocapture readnone %cqe, i16 noundef zeroext %rid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %rid to i32
  %base.i = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 1, i32 28, i32 3, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %sub.i = sub i32 %conv, %3
  %io.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 43
  %4 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io.i, align 8
  %arrayidx2.i = getelementptr ptr, ptr %5, i32 %sub.i
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.123, i32 noundef %conv) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %xbusy = getelementptr inbounds %struct.efct_hw_io, ptr %7, i32 0, i32 8
  %12 = ptrtoint ptr %xbusy to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %xbusy, align 2, !range !547
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not = icmp eq i8 %13, 0
  br i1 %tobool2.not, label %do.body4, label %if.else

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_xabt_process.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_xabt_process, %if.then9)) #13
          to label %if.end18 [label %if.then9], !srcloc !548

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_xabt_process.__UNIQUE_ID_ddebug337, ptr noundef %dev12, ptr noundef nonnull @.str.125, i32 noundef %conv) #13
  br label %if.end18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %xbusy to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %xbusy, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then9, %do.body4
  %done = getelementptr inbounds %struct.efct_hw_io, ptr %7, i32 0, i32 14
  %19 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %done, align 4
  %tobool19.not = icmp eq ptr %20, null
  br i1 %tobool19.not, label %if.end18.do.body28_crit_edge, label %if.then20

if.end18.do.body28_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body28

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %arg23 = getelementptr inbounds %struct.efct_hw_io, ptr %7, i32 0, i32 15
  %21 = ptrtoint ptr %arg23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arg23, align 4
  %saved_status = getelementptr inbounds %struct.efct_hw_io, ptr %7, i32 0, i32 19
  %23 = ptrtoint ptr %saved_status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %saved_status, align 4
  %saved_len = getelementptr inbounds %struct.efct_hw_io, ptr %7, i32 0, i32 20
  %25 = ptrtoint ptr %saved_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %saved_len, align 4
  %saved_ext = getelementptr inbounds %struct.efct_hw_io, ptr %7, i32 0, i32 21
  %27 = ptrtoint ptr %saved_ext to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %saved_ext, align 4
  %29 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %done, align 4
  %status_saved = getelementptr inbounds %struct.efct_hw_io, ptr %7, i32 0, i32 10
  %30 = ptrtoint ptr %status_saved to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %status_saved, align 4
  %call25 = tail call i32 %20(ptr noundef nonnull %7, i32 noundef %26, i32 noundef %24, i32 noundef %28, ptr noundef %22) #13
  br label %do.body28

do.body28:                                        ; preds = %if.then20, %if.end18.do.body28_crit_edge
  %io_lock = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 45
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_lock) #13
  %state = getelementptr inbounds %struct.efct_hw_io, ptr %7, i32 0, i32 1
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %if.then46, label %do.body28.if.end49_crit_edge

do.body28.if.end49_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then46:                                        ; preds = %do.body28
  %34 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %state, align 4
  %list_entry = getelementptr inbounds %struct.efct_hw_io, ptr %7, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_entry) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then46.list_del_init.exit_crit_edge

if.then46.list_del_init.exit_crit_edge:           ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.efct_hw_io, ptr %7, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %list_entry to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %list_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then46.list_del_init.exit_crit_edge
  %41 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %list_entry, ptr %list_entry, align 4
  %prev.i3.i = getelementptr inbounds %struct.efct_hw_io, ptr %7, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %xbusy to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %xbusy, align 2, !range !547
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  %44 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %list_entry, ptr %list_entry, align 4
  %45 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %list_entry, ptr %prev.i3.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %list_del_init.exit
  %io_wait_free.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 47
  %prev.i12.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 47, i32 1
  %46 = ptrtoint ptr %prev.i12.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i12.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_entry, ptr noundef %47, ptr noundef %io_wait_free.i) #13
  br i1 %call.i.i.i, label %if.then.i.if.end.sink.split.i_crit_edge, label %if.then.i.efct_hw_io_free_move_correct_list.exit_crit_edge

if.then.i.efct_hw_io_free_move_correct_list.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_io_free_move_correct_list.exit

if.then.i.if.end.sink.split.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.sink.split.i

if.else.i:                                        ; preds = %list_del_init.exit
  %io_free.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 48
  %prev.i14.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 48, i32 1
  %48 = ptrtoint ptr %prev.i14.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i14.i, align 4
  %call.i.i15.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_entry, ptr noundef %49, ptr noundef %io_free.i) #13
  br i1 %call.i.i15.i, label %if.else.i.if.end.sink.split.i_crit_edge, label %if.else.i.efct_hw_io_free_move_correct_list.exit_crit_edge

if.else.i.efct_hw_io_free_move_correct_list.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_io_free_move_correct_list.exit

if.else.i.if.end.sink.split.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %if.else.i.if.end.sink.split.i_crit_edge, %if.then.i.if.end.sink.split.i_crit_edge
  %prev.i14.sink.i = phi ptr [ %prev.i12.i, %if.then.i.if.end.sink.split.i_crit_edge ], [ %prev.i14.i, %if.else.i.if.end.sink.split.i_crit_edge ]
  %io_free.sink.i = phi ptr [ %io_wait_free.i, %if.then.i.if.end.sink.split.i_crit_edge ], [ %io_free.i, %if.else.i.if.end.sink.split.i_crit_edge ]
  %.sink20.i = phi ptr [ %47, %if.then.i.if.end.sink.split.i_crit_edge ], [ %49, %if.else.i.if.end.sink.split.i_crit_edge ]
  %.sink.ph.i = phi i32 [ 2, %if.then.i.if.end.sink.split.i_crit_edge ], [ 0, %if.else.i.if.end.sink.split.i_crit_edge ]
  %50 = ptrtoint ptr %prev.i14.sink.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %list_entry, ptr %prev.i14.sink.i, align 4
  %51 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %io_free.sink.i, ptr %list_entry, align 4
  %52 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %.sink20.i, ptr %prev.i3.i, align 4
  %53 = ptrtoint ptr %.sink20.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %list_entry, ptr %.sink20.i, align 4
  br label %efct_hw_io_free_move_correct_list.exit

efct_hw_io_free_move_correct_list.exit:           ; preds = %if.end.sink.split.i, %if.else.i.efct_hw_io_free_move_correct_list.exit_crit_edge, %if.then.i.efct_hw_io_free_move_correct_list.exit_crit_edge
  %.sink.i = phi i32 [ 2, %if.then.i.efct_hw_io_free_move_correct_list.exit_crit_edge ], [ 0, %if.else.i.efct_hw_io_free_move_correct_list.exit_crit_edge ], [ %.sink.ph.i, %if.end.sink.split.i ]
  %54 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink.i, ptr %state, align 4
  br label %if.end49

if.end49:                                         ; preds = %efct_hw_io_free_move_correct_list.exit, %do.body28.if.end49_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_lock, i32 noundef %call32) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_efc_bls_send(ptr nocapture noundef readonly %efc, i32 noundef %type, ptr noundef %bls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %efc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efc, align 8
  %call = tail call i32 @efct_hw_bls_send(ptr noundef %1, i32 noundef %type, ptr noundef %bls, ptr noundef null, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_bls_send(ptr noundef %efct, i32 noundef %type, ptr noundef %bls_params, ptr noundef %cb, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %bls = alloca %struct.sli_bls_payload, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %bls) #13
  %0 = getelementptr inbounds %struct.sli_bls_payload, ptr %bls, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sli_bls_payload, ptr %bls, i32 0, i32 2
  %2 = getelementptr inbounds %struct.sli_bls_payload, ptr %bls, i32 0, i32 3
  %state = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 5
  %3 = call ptr @memset(ptr %bls, i32 255, i32 20)
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw1, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.126, i32 noundef %5) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @efct_hw_io_alloc(ptr noundef %hw1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end6, label %if.end10

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw1, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.129) #16
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %done = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 14
  %14 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cb, ptr %done, align 4
  %arg11 = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 15
  %15 = ptrtoint ptr %arg11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arg, ptr %arg11, align 4
  %indicator = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 26
  %16 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %indicator, align 4
  %conv = trunc i32 %17 to i16
  %xri = getelementptr inbounds %struct.sli_bls_params, ptr %bls_params, i32 0, i32 8
  %18 = ptrtoint ptr %xri to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %xri, align 2
  %reqtag = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 12
  %19 = ptrtoint ptr %reqtag to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %reqtag, align 2
  %tag = getelementptr inbounds %struct.sli_bls_params, ptr %bls_params, i32 0, i32 9
  %21 = ptrtoint ptr %tag to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 132, i32 %type)
  %cmp12 = icmp eq i32 %type, 132
  %type15 = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 7
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %type15 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 4, ptr %type15, align 4
  %23 = ptrtoint ptr %bls to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %bls, align 4
  %payload = getelementptr inbounds %struct.sli_bls_params, ptr %bls_params, i32 0, i32 7
  %24 = call ptr @memcpy(ptr %2, ptr %payload, i32 12)
  br label %if.end22

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %type15 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 5, ptr %type15, align 4
  %26 = ptrtoint ptr %bls to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %bls, align 4
  %payload20 = getelementptr inbounds %struct.sli_bls_params, ptr %bls_params, i32 0, i32 7
  %27 = ptrtoint ptr %payload20 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %payload20, align 1
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %2, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then14
  %ox_id = getelementptr inbounds %struct.sli_bls_params, ptr %bls_params, i32 0, i32 2
  %30 = ptrtoint ptr %ox_id to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ox_id, align 4
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %0, align 4
  %rx_id = getelementptr inbounds %struct.sli_bls_params, ptr %bls_params, i32 0, i32 3
  %34 = ptrtoint ptr %rx_id to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rx_id, align 2
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %1, align 2
  %sli = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1
  %wqebuf = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 4, i32 5
  %38 = ptrtoint ptr %wqebuf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wqebuf, align 4
  %call25 = call i32 @sli_xmit_bls_rsp64_wqe(ptr noundef %sli, ptr noundef %39, ptr noundef nonnull %bls, ptr noundef %bls_params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end34, label %do.end30

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw1, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.132) #16
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  %wqe = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 4
  %xbusy = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 8
  %44 = ptrtoint ptr %xbusy to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %xbusy, align 2
  %wq = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 13
  %45 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wq, align 4
  %use_count = getelementptr inbounds %struct.hw_wq, ptr %46, i32 0, i32 15
  %47 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %use_count, align 4
  %inc = add i32 %48, 1
  store i32 %inc, ptr %use_count, align 4
  %49 = load ptr, ptr %wq, align 4
  %call37 = call i32 @efct_hw_wq_write(ptr noundef %49, ptr noundef %wqe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call37)
  %cmp38 = icmp sgt i32 %call37, -1
  br i1 %cmp38, label %if.end34.cleanup_crit_edge, label %do.end44

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end44:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw1, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.135, i32 noundef %call37) #16
  %54 = ptrtoint ptr %xbusy to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %xbusy, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.end34.cleanup_crit_edge, %do.end30, %do.end6, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end30 ], [ -5, %do.end6 ], [ %call37, %do.end44 ], [ 0, %if.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %bls) #13
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_xmit_bls_rsp64_wqe(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_els_hw_srrs_send(ptr nocapture noundef readonly %efc, ptr noundef %io) local_unnamed_addr #0 align 64 {
entry:
  %els_params = alloca %struct.sli_els_params, align 4
  %els_params69 = alloca %struct.sli_els_params, align 4
  %ct_params = alloca %struct.sli_ct_params, align 4
  %ct_params111 = alloca %struct.sli_ct_params, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %efc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efc, align 8
  %hw1 = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19
  %xmit_len = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 3
  %2 = ptrtoint ptr %xmit_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %xmit_len, align 4
  %conv = zext i16 %3 to i32
  %call = tail call ptr @efct_hw_io_alloc(ptr noundef %hw1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end16, label %do.body5

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_els_hw_srrs_send.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_els_hw_srrs_send, %if.then11)) #13
          to label %cleanup [label %if.then11], !srcloc !548

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw1, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_els_hw_srrs_send.__UNIQUE_ID_ddebug338, ptr noundef %dev, ptr noundef nonnull @.str.139, i32 noundef %11) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %done = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 14
  %12 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @efct_els_ssrs_send_cb, ptr %done, align 4
  %arg = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 15
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %io, ptr %arg, align 4
  %sgl = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 28
  %14 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sgl, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 32)
  %dw2_flags = getelementptr inbounds %struct.sli4_sge, ptr %17, i32 0, i32 2
  %arrayidx19 = getelementptr %struct.sli4_sge, ptr %17, i32 1
  %dw2_flags20 = getelementptr %struct.sli4_sge, ptr %17, i32 1, i32 2
  %size = getelementptr inbounds %struct.efc_dma, ptr %io, i32 0, i32 3
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool21.not = icmp eq i32 %20, 0
  br i1 %tobool21.not, label %if.end16.if.end28_crit_edge, label %if.then22

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %phys = getelementptr inbounds %struct.efc_dma, ptr %io, i32 0, i32 2
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %17, align 4
  %22 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %phys, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %buffer_address_low = getelementptr inbounds %struct.sli4_sge, ptr %17, i32 0, i32 1
  %25 = ptrtoint ptr %buffer_address_low to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %buffer_address_low, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %buffer_length = getelementptr inbounds %struct.sli4_sge, ptr %17, i32 0, i32 3
  %27 = ptrtoint ptr %buffer_length to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %buffer_length, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.end16.if.end28_crit_edge
  %io_type = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 2
  %28 = ptrtoint ptr %io_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %io_type, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.296)
  switch i32 %29, label %if.end28.if.end50_crit_edge [
    i32 0, label %if.end28.if.then34_crit_edge
    i32 2, label %if.end28.if.then34_crit_edge295
  ]

if.end28.if.then34_crit_edge295:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34

if.end28.if.then34_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34

if.end28.if.end50_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then34:                                        ; preds = %if.end28.if.then34_crit_edge, %if.end28.if.then34_crit_edge295
  %phys35 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx19, align 4
  %32 = ptrtoint ptr %phys35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %phys35, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %buffer_address_low43 = getelementptr %struct.sli4_sge, ptr %17, i32 1, i32 1
  %35 = ptrtoint ptr %buffer_address_low43 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %buffer_address_low43, align 4
  %size46 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %size46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size46, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %buffer_length48 = getelementptr %struct.sli4_sge, ptr %17, i32 1, i32 3
  %39 = ptrtoint ptr %buffer_length48 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %buffer_length48, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then34, %if.end28.if.end50_crit_edge
  %sge0_flags.1 = phi i32 [ 0, %if.then34 ], [ 128, %if.end28.if.end50_crit_edge ]
  %sge1_flags.0 = phi i32 [ 128, %if.then34 ], [ 0, %if.end28.if.end50_crit_edge ]
  %40 = ptrtoint ptr %dw2_flags to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sge0_flags.1, ptr %dw2_flags, align 4
  %41 = ptrtoint ptr %dw2_flags20 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sge1_flags.0, ptr %dw2_flags20, align 4
  %42 = ptrtoint ptr %io_type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %io_type, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.297)
  switch i32 %43, label %sw.epilog.thread [
    i32 0, label %sw.bb
    i32 1, label %sw.bb68
    i32 2, label %sw.bb89
    i32 3, label %sw.bb110
  ]

sw.bb:                                            ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %els_params) #13
  %45 = getelementptr inbounds i8, ptr %els_params, i32 8
  %46 = call ptr @memset(ptr %45, i32 255, i32 32)
  %type = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 7
  %47 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %type, align 4
  %48 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  %cmd1.i = getelementptr inbounds %struct.sli_els_params, ptr %els_params, i32 0, i32 9
  %52 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %cmd1.i, align 1
  %s_id.i = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 7
  %53 = ptrtoint ptr %s_id.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_id.i, align 4
  %55 = ptrtoint ptr %els_params to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %els_params, align 4
  %d_id.i = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 8
  %56 = ptrtoint ptr %d_id.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %d_id.i, align 4
  %d_id3.i = getelementptr inbounds %struct.sli_els_params, ptr %els_params, i32 0, i32 1
  %58 = ptrtoint ptr %d_id3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %d_id3.i, align 4
  %ox_id.i = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 10, i32 0, i32 1
  %59 = ptrtoint ptr %ox_id.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %ox_id.i, align 4
  %ox_id4.i = getelementptr inbounds %struct.sli_els_params, ptr %els_params, i32 0, i32 2
  %61 = ptrtoint ptr %ox_id4.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %ox_id4.i, align 4
  %rpi.i = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 5
  %62 = ptrtoint ptr %rpi.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rpi.i, align 4
  %rpi5.i = getelementptr inbounds %struct.sli_els_params, ptr %els_params, i32 0, i32 3
  %64 = ptrtoint ptr %rpi5.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %rpi5.i, align 4
  %vpi.i = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 6
  %65 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vpi.i, align 4
  %vpi6.i = getelementptr inbounds %struct.sli_els_params, ptr %els_params, i32 0, i32 4
  %67 = ptrtoint ptr %vpi6.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %vpi6.i, align 4
  %rpi_registered.i = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 9
  %68 = ptrtoint ptr %rpi_registered.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %rpi_registered.i, align 4, !range !547
  %rpi_registered7.i = getelementptr inbounds %struct.sli_els_params, ptr %els_params, i32 0, i32 5
  %70 = ptrtoint ptr %rpi_registered7.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %rpi_registered7.i, align 4
  %71 = ptrtoint ptr %xmit_len to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %xmit_len, align 4
  %conv.i = zext i16 %72 to i32
  %xmit_len8.i = getelementptr inbounds %struct.sli_els_params, ptr %els_params, i32 0, i32 6
  %73 = ptrtoint ptr %xmit_len8.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv.i, ptr %xmit_len8.i, align 4
  %rsp_len.i = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 4
  %74 = ptrtoint ptr %rsp_len.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %rsp_len.i, align 2
  %conv9.i = zext i16 %75 to i32
  %rsp_len10.i = getelementptr inbounds %struct.sli_els_params, ptr %els_params, i32 0, i32 7
  %76 = ptrtoint ptr %rsp_len10.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv9.i, ptr %rsp_len10.i, align 4
  %timeout.i = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 10, i32 0, i32 2
  %77 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %timeout.i, align 2
  %timeout12.i = getelementptr inbounds %struct.sli_els_params, ptr %els_params, i32 0, i32 8
  %79 = ptrtoint ptr %timeout12.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %timeout12.i, align 4
  %indicator = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 26
  %80 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %indicator, align 4
  %conv56 = trunc i32 %81 to i16
  %xri = getelementptr inbounds %struct.sli_els_params, ptr %els_params, i32 0, i32 10
  %82 = ptrtoint ptr %xri to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv56, ptr %xri, align 2
  %reqtag = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 12
  %83 = ptrtoint ptr %reqtag to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %reqtag, align 2
  %tag = getelementptr inbounds %struct.sli_els_params, ptr %els_params, i32 0, i32 11
  %85 = ptrtoint ptr %tag to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %tag, align 4
  %sli = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19, i32 1
  %wqebuf = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 4, i32 5
  %86 = ptrtoint ptr %wqebuf to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wqebuf, align 4
  %88 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sgl, align 4
  %call58 = call i32 @sli_els_request64_wqe(ptr noundef %sli, ptr noundef %87, ptr noundef %89, ptr noundef nonnull %els_params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %sw.bb.if.end67_crit_edge, label %do.end63

sw.bb.if.end67_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

do.end63:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %90 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw1, align 8
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 8
  %dev66 = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev66, ptr noundef nonnull @.str.141) #16
  br label %if.end67

if.end67:                                         ; preds = %do.end63, %sw.bb.if.end67_crit_edge
  %rc.0 = phi i32 [ -5, %do.end63 ], [ 0, %sw.bb.if.end67_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %els_params) #13
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %els_params69) #13
  %94 = getelementptr inbounds i8, ptr %els_params69, i32 8
  %95 = call ptr @memset(ptr %94, i32 255, i32 32)
  %type70 = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 7
  %96 = ptrtoint ptr %type70 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 1, ptr %type70, align 4
  %97 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %io, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %98, align 1
  %cmd1.i240 = getelementptr inbounds %struct.sli_els_params, ptr %els_params69, i32 0, i32 9
  %101 = ptrtoint ptr %cmd1.i240 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %cmd1.i240, align 1
  %s_id.i241 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 7
  %102 = ptrtoint ptr %s_id.i241 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %s_id.i241, align 4
  %104 = ptrtoint ptr %els_params69 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %els_params69, align 4
  %d_id.i242 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 8
  %105 = ptrtoint ptr %d_id.i242 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %d_id.i242, align 4
  %d_id3.i243 = getelementptr inbounds %struct.sli_els_params, ptr %els_params69, i32 0, i32 1
  %107 = ptrtoint ptr %d_id3.i243 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %d_id3.i243, align 4
  %ox_id.i244 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 10, i32 0, i32 1
  %108 = ptrtoint ptr %ox_id.i244 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %ox_id.i244, align 4
  %ox_id4.i245 = getelementptr inbounds %struct.sli_els_params, ptr %els_params69, i32 0, i32 2
  %110 = ptrtoint ptr %ox_id4.i245 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %ox_id4.i245, align 4
  %rpi.i246 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 5
  %111 = ptrtoint ptr %rpi.i246 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rpi.i246, align 4
  %rpi5.i247 = getelementptr inbounds %struct.sli_els_params, ptr %els_params69, i32 0, i32 3
  %113 = ptrtoint ptr %rpi5.i247 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %rpi5.i247, align 4
  %vpi.i248 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 6
  %114 = ptrtoint ptr %vpi.i248 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %vpi.i248, align 4
  %vpi6.i249 = getelementptr inbounds %struct.sli_els_params, ptr %els_params69, i32 0, i32 4
  %116 = ptrtoint ptr %vpi6.i249 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %vpi6.i249, align 4
  %rpi_registered.i250 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 9
  %117 = ptrtoint ptr %rpi_registered.i250 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %rpi_registered.i250, align 4, !range !547
  %rpi_registered7.i251 = getelementptr inbounds %struct.sli_els_params, ptr %els_params69, i32 0, i32 5
  %119 = ptrtoint ptr %rpi_registered7.i251 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %rpi_registered7.i251, align 4
  %120 = ptrtoint ptr %xmit_len to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %xmit_len, align 4
  %conv.i253 = zext i16 %121 to i32
  %xmit_len8.i254 = getelementptr inbounds %struct.sli_els_params, ptr %els_params69, i32 0, i32 6
  %122 = ptrtoint ptr %xmit_len8.i254 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %conv.i253, ptr %xmit_len8.i254, align 4
  %rsp_len.i255 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 4
  %123 = ptrtoint ptr %rsp_len.i255 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %rsp_len.i255, align 2
  %conv9.i256 = zext i16 %124 to i32
  %rsp_len10.i257 = getelementptr inbounds %struct.sli_els_params, ptr %els_params69, i32 0, i32 7
  %125 = ptrtoint ptr %rsp_len10.i257 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %conv9.i256, ptr %rsp_len10.i257, align 4
  %timeout.i258 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 10, i32 0, i32 2
  %126 = ptrtoint ptr %timeout.i258 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %timeout.i258, align 2
  %timeout12.i259 = getelementptr inbounds %struct.sli_els_params, ptr %els_params69, i32 0, i32 8
  %128 = ptrtoint ptr %timeout12.i259 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %timeout12.i259, align 4
  %indicator71 = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 26
  %129 = ptrtoint ptr %indicator71 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %indicator71, align 4
  %conv72 = trunc i32 %130 to i16
  %xri73 = getelementptr inbounds %struct.sli_els_params, ptr %els_params69, i32 0, i32 10
  %131 = ptrtoint ptr %xri73 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv72, ptr %xri73, align 2
  %reqtag74 = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 12
  %132 = ptrtoint ptr %reqtag74 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %reqtag74, align 2
  %tag75 = getelementptr inbounds %struct.sli_els_params, ptr %els_params69, i32 0, i32 11
  %134 = ptrtoint ptr %tag75 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %tag75, align 4
  %sli76 = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19, i32 1
  %wqebuf78 = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 4, i32 5
  %135 = ptrtoint ptr %wqebuf78 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %wqebuf78, align 4
  %call79 = call i32 @sli_xmit_els_rsp64_wqe(ptr noundef %sli76, ptr noundef %136, ptr noundef %io, ptr noundef nonnull %els_params69) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %sw.bb68.if.end88_crit_edge, label %do.end84

sw.bb68.if.end88_crit_edge:                       ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

do.end84:                                         ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #15
  %137 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hw1, align 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 8
  %dev87 = getelementptr inbounds %struct.pci_dev, ptr %140, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev87, ptr noundef nonnull @.str.144) #16
  br label %if.end88

if.end88:                                         ; preds = %do.end84, %sw.bb68.if.end88_crit_edge
  %rc.1 = phi i32 [ -5, %do.end84 ], [ 0, %sw.bb68.if.end88_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %els_params69) #13
  br label %sw.epilog

sw.bb89:                                          ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ct_params) #13
  %141 = getelementptr inbounds i8, ptr %ct_params, i32 4
  %142 = call ptr @memset(ptr %141, i32 255, i32 20)
  %type90 = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 7
  %143 = ptrtoint ptr %type90 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 2, ptr %type90, align 4
  %iparam.i = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 10
  %144 = ptrtoint ptr %iparam.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %iparam.i, align 4
  %146 = ptrtoint ptr %ct_params to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %ct_params, align 4
  %type.i = getelementptr inbounds %struct.efc_io_ct_params, ptr %iparam.i, i32 0, i32 1
  %147 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %type.i, align 1
  %type3.i = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params, i32 0, i32 1
  %149 = ptrtoint ptr %type3.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %type3.i, align 1
  %df_ctl.i = getelementptr inbounds %struct.efc_io_ct_params, ptr %iparam.i, i32 0, i32 2
  %150 = ptrtoint ptr %df_ctl.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %df_ctl.i, align 2
  %df_ctl5.i = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params, i32 0, i32 2
  %152 = ptrtoint ptr %df_ctl5.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %df_ctl5.i, align 2
  %d_id.i260 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 8
  %153 = ptrtoint ptr %d_id.i260 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %d_id.i260, align 4
  %d_id6.i = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params, i32 0, i32 5
  %155 = ptrtoint ptr %d_id6.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %d_id6.i, align 4
  %ox_id.i261 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 10, i32 0, i32 1
  %156 = ptrtoint ptr %ox_id.i261 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %ox_id.i261, align 4
  %ox_id8.i = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params, i32 0, i32 4
  %158 = ptrtoint ptr %ox_id8.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %157, ptr %ox_id8.i, align 4
  %rpi.i262 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 5
  %159 = ptrtoint ptr %rpi.i262 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rpi.i262, align 4
  %rpi9.i = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params, i32 0, i32 6
  %161 = ptrtoint ptr %rpi9.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %rpi9.i, align 4
  %vpi.i263 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 6
  %162 = ptrtoint ptr %vpi.i263 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %vpi.i263, align 4
  %vpi10.i = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params, i32 0, i32 7
  %164 = ptrtoint ptr %vpi10.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %vpi10.i, align 4
  %rpi_registered.i264 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 9
  %165 = ptrtoint ptr %rpi_registered.i264 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %rpi_registered.i264, align 4, !range !547
  %rpi_registered11.i = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params, i32 0, i32 8
  %167 = ptrtoint ptr %rpi_registered11.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %rpi_registered11.i, align 4
  %168 = ptrtoint ptr %xmit_len to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %xmit_len, align 4
  %conv.i266 = zext i16 %169 to i32
  %xmit_len12.i = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params, i32 0, i32 9
  %170 = ptrtoint ptr %xmit_len12.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %conv.i266, ptr %xmit_len12.i, align 4
  %rsp_len.i267 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 4
  %171 = ptrtoint ptr %rsp_len.i267 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %rsp_len.i267, align 2
  %conv13.i = zext i16 %172 to i32
  %rsp_len14.i = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params, i32 0, i32 10
  %173 = ptrtoint ptr %rsp_len14.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %conv13.i, ptr %rsp_len14.i, align 4
  %timeout.i268 = getelementptr inbounds %struct.efc_io_ct_params, ptr %iparam.i, i32 0, i32 3
  %174 = ptrtoint ptr %timeout.i268 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %timeout.i268, align 1
  %timeout16.i = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params, i32 0, i32 3
  %176 = ptrtoint ptr %timeout16.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %timeout16.i, align 1
  %indicator91 = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 26
  %177 = ptrtoint ptr %indicator91 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %indicator91, align 4
  %conv92 = trunc i32 %178 to i16
  %xri93 = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params, i32 0, i32 11
  %179 = ptrtoint ptr %xri93 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %conv92, ptr %xri93, align 4
  %reqtag94 = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 12
  %180 = ptrtoint ptr %reqtag94 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %reqtag94, align 2
  %tag95 = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params, i32 0, i32 12
  %182 = ptrtoint ptr %tag95 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %181, ptr %tag95, align 2
  %sli96 = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19, i32 1
  %wqebuf98 = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 4, i32 5
  %183 = ptrtoint ptr %wqebuf98 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %wqebuf98, align 4
  %185 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %sgl, align 4
  %call100 = call i32 @sli_gen_request64_wqe(ptr noundef %sli96, ptr noundef %184, ptr noundef %186, ptr noundef nonnull %ct_params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %sw.bb89.if.end109_crit_edge, label %do.end105

sw.bb89.if.end109_crit_edge:                      ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

do.end105:                                        ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #15
  %187 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %hw1, align 8
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 8
  %dev108 = getelementptr inbounds %struct.pci_dev, ptr %190, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev108, ptr noundef nonnull @.str.147) #16
  br label %if.end109

if.end109:                                        ; preds = %do.end105, %sw.bb89.if.end109_crit_edge
  %rc.2 = phi i32 [ -5, %do.end105 ], [ 0, %sw.bb89.if.end109_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ct_params) #13
  br label %sw.epilog

sw.bb110:                                         ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ct_params111) #13
  %191 = getelementptr inbounds i8, ptr %ct_params111, i32 4
  %192 = call ptr @memset(ptr %191, i32 255, i32 20)
  %type112 = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 7
  %193 = ptrtoint ptr %type112 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 3, ptr %type112, align 4
  %iparam.i269 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 10
  %194 = ptrtoint ptr %iparam.i269 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %iparam.i269, align 4
  %196 = ptrtoint ptr %ct_params111 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %ct_params111, align 4
  %type.i270 = getelementptr inbounds %struct.efc_io_ct_params, ptr %iparam.i269, i32 0, i32 1
  %197 = ptrtoint ptr %type.i270 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %type.i270, align 1
  %type3.i271 = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params111, i32 0, i32 1
  %199 = ptrtoint ptr %type3.i271 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %198, ptr %type3.i271, align 1
  %df_ctl.i272 = getelementptr inbounds %struct.efc_io_ct_params, ptr %iparam.i269, i32 0, i32 2
  %200 = ptrtoint ptr %df_ctl.i272 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %df_ctl.i272, align 2
  %df_ctl5.i273 = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params111, i32 0, i32 2
  %202 = ptrtoint ptr %df_ctl5.i273 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %201, ptr %df_ctl5.i273, align 2
  %d_id.i274 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 8
  %203 = ptrtoint ptr %d_id.i274 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %d_id.i274, align 4
  %d_id6.i275 = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params111, i32 0, i32 5
  %205 = ptrtoint ptr %d_id6.i275 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %d_id6.i275, align 4
  %ox_id.i276 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 10, i32 0, i32 1
  %206 = ptrtoint ptr %ox_id.i276 to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %ox_id.i276, align 4
  %ox_id8.i277 = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params111, i32 0, i32 4
  %208 = ptrtoint ptr %ox_id8.i277 to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 %207, ptr %ox_id8.i277, align 4
  %rpi.i278 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 5
  %209 = ptrtoint ptr %rpi.i278 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %rpi.i278, align 4
  %rpi9.i279 = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params111, i32 0, i32 6
  %211 = ptrtoint ptr %rpi9.i279 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %rpi9.i279, align 4
  %vpi.i280 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 6
  %212 = ptrtoint ptr %vpi.i280 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %vpi.i280, align 4
  %vpi10.i281 = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params111, i32 0, i32 7
  %214 = ptrtoint ptr %vpi10.i281 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %vpi10.i281, align 4
  %rpi_registered.i282 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 9
  %215 = ptrtoint ptr %rpi_registered.i282 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %rpi_registered.i282, align 4, !range !547
  %rpi_registered11.i283 = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params111, i32 0, i32 8
  %217 = ptrtoint ptr %rpi_registered11.i283 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %216, ptr %rpi_registered11.i283, align 4
  %218 = ptrtoint ptr %xmit_len to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %xmit_len, align 4
  %conv.i285 = zext i16 %219 to i32
  %xmit_len12.i286 = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params111, i32 0, i32 9
  %220 = ptrtoint ptr %xmit_len12.i286 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %conv.i285, ptr %xmit_len12.i286, align 4
  %rsp_len.i287 = getelementptr inbounds %struct.efc_disc_io, ptr %io, i32 0, i32 4
  %221 = ptrtoint ptr %rsp_len.i287 to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %rsp_len.i287, align 2
  %conv13.i288 = zext i16 %222 to i32
  %rsp_len14.i289 = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params111, i32 0, i32 10
  %223 = ptrtoint ptr %rsp_len14.i289 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %conv13.i288, ptr %rsp_len14.i289, align 4
  %timeout.i290 = getelementptr inbounds %struct.efc_io_ct_params, ptr %iparam.i269, i32 0, i32 3
  %224 = ptrtoint ptr %timeout.i290 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %timeout.i290, align 1
  %timeout16.i291 = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params111, i32 0, i32 3
  %226 = ptrtoint ptr %timeout16.i291 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %timeout16.i291, align 1
  %indicator113 = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 26
  %227 = ptrtoint ptr %indicator113 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %indicator113, align 4
  %conv114 = trunc i32 %228 to i16
  %xri115 = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params111, i32 0, i32 11
  %229 = ptrtoint ptr %xri115 to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %conv114, ptr %xri115, align 4
  %reqtag116 = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 12
  %230 = ptrtoint ptr %reqtag116 to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %reqtag116, align 2
  %tag117 = getelementptr inbounds %struct.sli_ct_params, ptr %ct_params111, i32 0, i32 12
  %232 = ptrtoint ptr %tag117 to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %231, ptr %tag117, align 2
  %sli118 = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19, i32 1
  %wqebuf120 = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 4, i32 5
  %233 = ptrtoint ptr %wqebuf120 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %wqebuf120, align 4
  %235 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %sgl, align 4
  %call122 = call i32 @sli_xmit_sequence64_wqe(ptr noundef %sli118, ptr noundef %234, ptr noundef %236, ptr noundef nonnull %ct_params111) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %sw.bb110.if.end131_crit_edge, label %do.end127

sw.bb110.if.end131_crit_edge:                     ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end131

do.end127:                                        ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #15
  %237 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %hw1, align 8
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %238, align 8
  %dev130 = getelementptr inbounds %struct.pci_dev, ptr %240, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev130, ptr noundef nonnull @.str.150) #16
  br label %if.end131

if.end131:                                        ; preds = %do.end127, %sw.bb110.if.end131_crit_edge
  %rc.3 = phi i32 [ -5, %do.end127 ], [ 0, %sw.bb110.if.end131_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ct_params111) #13
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %241 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %hw1, align 8
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %242, align 8
  %dev137 = getelementptr inbounds %struct.pci_dev, ptr %244, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev137, ptr noundef nonnull @.str.153, i32 noundef %43) #16
  br label %cleanup

sw.epilog:                                        ; preds = %if.end131, %if.end109, %if.end88, %if.end67
  %rc.4 = phi i32 [ %rc.3, %if.end131 ], [ %rc.2, %if.end109 ], [ %rc.1, %if.end88 ], [ %rc.0, %if.end67 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.4)
  %cmp139 = icmp eq i32 %rc.4, 0
  br i1 %cmp139, label %if.then141, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then141:                                       ; preds = %sw.epilog
  %xbusy = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 8
  %245 = ptrtoint ptr %xbusy to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 1, ptr %xbusy, align 2
  %wq = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 13
  %246 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %wq, align 4
  %use_count = getelementptr inbounds %struct.hw_wq, ptr %247, i32 0, i32 15
  %248 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %use_count, align 4
  %inc = add i32 %249, 1
  store i32 %inc, ptr %use_count, align 4
  %250 = load ptr, ptr %wq, align 4
  %wqe143 = getelementptr inbounds %struct.efct_hw_io, ptr %call, i32 0, i32 4
  %call144 = call i32 @efct_hw_wq_write(ptr noundef %250, ptr noundef %wqe143)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call144)
  %cmp145 = icmp sgt i32 %call144, -1
  br i1 %cmp145, label %if.then141.cleanup_crit_edge, label %do.end151

if.then141.cleanup_crit_edge:                     ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end151:                                        ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #15
  %251 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %hw1, align 8
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %252, align 8
  %dev154 = getelementptr inbounds %struct.pci_dev, ptr %254, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev154, ptr noundef nonnull @.str.135, i32 noundef %call144) #16
  %255 = ptrtoint ptr %xbusy to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 0, ptr %xbusy, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end151, %if.then141.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread, %if.then11, %do.body5, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %if.then11 ], [ %call144, %do.end151 ], [ %rc.4, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then141.cleanup_crit_edge ], [ -5, %do.body5 ], [ -5, %sw.epilog.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_els_ssrs_send_cb(ptr nocapture noundef readnone %hio, i32 noundef %length, i32 noundef %status, i32 noundef %ext_status, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @efc_disc_io_complete(ptr noundef %arg, i32 noundef %length, i32 noundef %status, i32 noundef %ext_status) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_els_request64_wqe(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_xmit_els_rsp64_wqe(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_gen_request64_wqe(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_xmit_sequence64_wqe(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_io_send(ptr noundef %hw, i32 noundef %type, ptr noundef %io, ptr noundef %iparam, ptr noundef %cb, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %io, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef %hw, ptr noundef null) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end6, label %do.end4

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.160, i32 noundef %1) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %conv = trunc i32 %type to i16
  %type7 = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 7
  %6 = ptrtoint ptr %type7 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %type7, align 4
  %done = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 14
  %7 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cb, ptr %done, align 4
  %arg8 = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 15
  %8 = ptrtoint ptr %arg8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arg, ptr %arg8, align 4
  %9 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.298)
  switch i32 %type, label %do.end97 [
    i32 7, label %sw.bb
    i32 6, label %sw.bb28
    i32 8, label %sw.bb62
  ]

sw.bb:                                            ; preds = %if.end6
  %flags9 = getelementptr inbounds %struct.sli_fcp_tgt_params, ptr %iparam, i32 0, i32 6
  %xfer_rdy = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 6
  %10 = ptrtoint ptr %xfer_rdy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xfer_rdy, align 4
  %offset = getelementptr inbounds %struct.sli_fcp_tgt_params, ptr %iparam, i32 0, i32 4
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %11, align 4
  %xmit_len = getelementptr inbounds %struct.sli_fcp_tgt_params, ptr %iparam, i32 0, i32 10
  %15 = ptrtoint ptr %xmit_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xmit_len, align 4
  %ft_burst_len = getelementptr inbounds %struct.fcp_txrdy, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %ft_burst_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %ft_burst_len, align 4
  %xbusy = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 8
  %18 = ptrtoint ptr %xbusy to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %xbusy, align 2, !range !547
  %20 = ptrtoint ptr %flags9 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags9, align 2
  %22 = and i16 %21, -2
  %23 = zext i8 %19 to i16
  %storemerge189 = or i16 %22, %23
  store i16 %storemerge189, ptr %flags9, align 2
  %indicator = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 26
  %24 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %indicator, align 4
  %conv17 = trunc i32 %25 to i16
  %xri = getelementptr inbounds %struct.sli_fcp_tgt_params, ptr %iparam, i32 0, i32 11
  %26 = ptrtoint ptr %xri to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv17, ptr %xri, align 4
  %reqtag = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 12
  %27 = ptrtoint ptr %reqtag to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %reqtag, align 2
  %tag = getelementptr inbounds %struct.sli_fcp_tgt_params, ptr %iparam, i32 0, i32 12
  %29 = ptrtoint ptr %tag to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %tag, align 2
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %wqebuf = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 4, i32 5
  %30 = ptrtoint ptr %wqebuf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wqebuf, align 4
  %def_sgl = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 27
  %first_data_sge = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 30
  %32 = ptrtoint ptr %first_data_sge to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %first_data_sge, align 4
  %call18 = tail call i32 @sli_fcp_treceive64_wqe(ptr noundef %sli, ptr noundef %31, ptr noundef %def_sgl, i32 noundef %33, i16 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %iparam) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %sw.bb.if.then105_crit_edge, label %do.end23

sw.bb.if.then105_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then105

do.end23:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.163) #16
  br label %cleanup

sw.bb28:                                          ; preds = %if.end6
  %flags30 = getelementptr inbounds %struct.sli_fcp_tgt_params, ptr %iparam, i32 0, i32 6
  %xbusy31 = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 8
  %38 = ptrtoint ptr %xbusy31 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %xbusy31, align 2, !range !547
  %40 = ptrtoint ptr %flags30 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags30, align 2
  %42 = and i16 %41, -2
  %43 = zext i8 %39 to i16
  %storemerge188 = or i16 %42, %43
  store i16 %storemerge188, ptr %flags30, align 2
  %indicator42 = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 26
  %44 = ptrtoint ptr %indicator42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %indicator42, align 4
  %conv43 = trunc i32 %45 to i16
  %xri44 = getelementptr inbounds %struct.sli_fcp_tgt_params, ptr %iparam, i32 0, i32 11
  %46 = ptrtoint ptr %xri44 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv43, ptr %xri44, align 4
  %reqtag45 = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 12
  %47 = ptrtoint ptr %reqtag45 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %reqtag45, align 2
  %tag46 = getelementptr inbounds %struct.sli_fcp_tgt_params, ptr %iparam, i32 0, i32 12
  %49 = ptrtoint ptr %tag46 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %tag46, align 2
  %sli47 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %wqebuf49 = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 4, i32 5
  %50 = ptrtoint ptr %wqebuf49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wqebuf49, align 4
  %def_sgl50 = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 27
  %first_data_sge51 = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 30
  %52 = ptrtoint ptr %first_data_sge51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %first_data_sge51, align 4
  %call52 = tail call i32 @sli_fcp_tsend64_wqe(ptr noundef %sli47, ptr noundef %51, ptr noundef %def_sgl50, i32 noundef %53, i16 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %iparam) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %sw.bb28.if.then105_crit_edge, label %do.end57

sw.bb28.if.then105_crit_edge:                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then105

do.end57:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %dev60 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev60, ptr noundef nonnull @.str.166) #16
  br label %cleanup

sw.bb62:                                          ; preds = %if.end6
  %flags64 = getelementptr inbounds %struct.sli_fcp_tgt_params, ptr %iparam, i32 0, i32 6
  %xbusy65 = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 8
  %58 = ptrtoint ptr %xbusy65 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %xbusy65, align 2, !range !547
  %60 = ptrtoint ptr %flags64 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %flags64, align 2
  %62 = and i16 %61, -2
  %63 = zext i8 %59 to i16
  %storemerge = or i16 %62, %63
  store i16 %storemerge, ptr %flags64, align 2
  %indicator76 = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 26
  %64 = ptrtoint ptr %indicator76 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %indicator76, align 4
  %conv77 = trunc i32 %65 to i16
  %xri78 = getelementptr inbounds %struct.sli_fcp_tgt_params, ptr %iparam, i32 0, i32 11
  %66 = ptrtoint ptr %xri78 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv77, ptr %xri78, align 4
  %reqtag79 = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 12
  %67 = ptrtoint ptr %reqtag79 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %reqtag79, align 2
  %tag80 = getelementptr inbounds %struct.sli_fcp_tgt_params, ptr %iparam, i32 0, i32 12
  %69 = ptrtoint ptr %tag80 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %tag80, align 2
  %sli81 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %wqebuf83 = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 4, i32 5
  %70 = ptrtoint ptr %wqebuf83 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wqebuf83, align 4
  %def_sgl84 = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 27
  %call85 = tail call i32 @sli_fcp_trsp64_wqe(ptr noundef %sli81, ptr noundef %71, ptr noundef %def_sgl84, i16 noundef zeroext -1, i8 noundef zeroext 0, ptr noundef %iparam) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %sw.bb62.if.then105_crit_edge, label %do.end90

sw.bb62.if.then105_crit_edge:                     ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then105

do.end90:                                         ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %dev93 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev93, ptr noundef nonnull @.str.169) #16
  br label %cleanup

do.end97:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 8
  %dev100 = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev100, ptr noundef nonnull @.str.88, i32 noundef %type) #16
  br label %cleanup

if.then105:                                       ; preds = %sw.bb62.if.then105_crit_edge, %sw.bb28.if.then105_crit_edge, %sw.bb.if.then105_crit_edge
  %xbusy106 = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 8
  %80 = ptrtoint ptr %xbusy106 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %xbusy106, align 2
  %wq = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 13
  %81 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wq, align 4
  %instance = getelementptr inbounds %struct.hw_wq, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %instance, align 4
  %arrayidx = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 53, i32 %84
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %86, 1
  store i32 %inc, ptr %arrayidx, align 4
  %87 = load ptr, ptr %wq, align 4
  %use_count = getelementptr inbounds %struct.hw_wq, ptr %87, i32 0, i32 15
  %88 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %use_count, align 4
  %inc108 = add i32 %89, 1
  store i32 %inc108, ptr %use_count, align 4
  %90 = load ptr, ptr %wq, align 4
  %wqe110 = getelementptr inbounds %struct.efct_hw_io, ptr %io, i32 0, i32 4
  %call111 = tail call i32 @efct_hw_wq_write(ptr noundef %90, ptr noundef %wqe110)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call111)
  %cmp112 = icmp sgt i32 %call111, -1
  br i1 %cmp112, label %if.then105.cleanup_crit_edge, label %do.end118

if.then105.cleanup_crit_edge:                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end118:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hw, align 8
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 8
  %dev121 = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev121, ptr noundef nonnull @.str.135, i32 noundef %call111) #16
  %95 = ptrtoint ptr %xbusy106 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %xbusy106, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end118, %if.then105.cleanup_crit_edge, %do.end97, %do.end90, %do.end57, %do.end23, %do.end4, %do.end
  %retval.0 = phi i32 [ -5, %do.end4 ], [ -5, %do.end ], [ %call111, %do.end118 ], [ 0, %if.then105.cleanup_crit_edge ], [ -5, %do.end97 ], [ -5, %do.end23 ], [ -5, %do.end57 ], [ -5, %do.end90 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_fcp_treceive64_wqe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_fcp_tsend64_wqe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_fcp_trsp64_wqe(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_send_frame(ptr noundef %hw, ptr noundef %hdr, i8 noundef zeroext %sof, i8 noundef zeroext %eof, ptr noundef %payload, ptr noundef %ctx, ptr noundef %callback, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wqe1 = getelementptr inbounds %struct.efct_hw_send_frame_context, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %hw, ptr %ctx, align 4
  %wq_reqtag_pool.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 56
  %1 = ptrtoint ptr %wq_reqtag_pool.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wq_reqtag_pool.i, align 4
  %tobool.not.i = icmp eq ptr %callback, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %do.body1.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.body1.i:                                       ; preds = %entry
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #13
  %freelist.i = getelementptr inbounds %struct.reqtag_pool, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %freelist.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %freelist.i, align 4
  %cmp.i.not.i = icmp eq ptr %4, %freelist.i
  br i1 %cmp.i.not.i, label %do.body1.i.if.else.i_crit_edge, label %if.end10.i

do.body1.i.if.else.i_crit_edge:                   ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end10.i:                                       ; preds = %do.body1.i
  %add.ptr.i = getelementptr i8, ptr %4, i32 -12
  %tobool11.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool11.not.i, label %if.end10.i.if.else.i_crit_edge, label %if.then12.i

if.end10.i.if.else.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then12.i:                                      ; preds = %if.end10.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then12.i.if.end_crit_edge

if.then12.i.if.end_crit_edge:                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i.i.i:                                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %if.end

if.else.i:                                        ; preds = %if.end10.i.if.else.i_crit_edge, %do.body1.i.if.else.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call2.i) #13
  br label %do.end

do.end:                                           ; preds = %if.else.i, %entry.do.end_crit_edge
  %wqcb46 = getelementptr inbounds %struct.efct_hw_send_frame_context, ptr %ctx, i32 0, i32 1
  %11 = ptrtoint ptr %wqcb46 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %wqcb46, align 4
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.103) #16
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i.i, %if.then12.i.if.end_crit_edge
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %4, ptr %4, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %4, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call2.i) #13
  %callback14.i = getelementptr i8, ptr %4, i32 -8
  %18 = ptrtoint ptr %callback14.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %callback, ptr %callback14.i, align 4
  %arg15.i = getelementptr i8, ptr %4, i32 -4
  %19 = ptrtoint ptr %arg15.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arg, ptr %arg15.i, align 4
  %wqcb = getelementptr inbounds %struct.efct_hw_send_frame_context, ptr %ctx, i32 0, i32 1
  %20 = ptrtoint ptr %wqcb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i, ptr %wqcb, align 4
  %hw_wq = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 27
  %21 = ptrtoint ptr %hw_wq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_wq, align 8
  %send_frame_io = getelementptr inbounds %struct.hw_wq, ptr %22, i32 0, i32 14
  %23 = ptrtoint ptr %send_frame_io to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %send_frame_io, align 4
  %indicator = getelementptr inbounds %struct.efct_hw_io, ptr %24, i32 0, i32 26
  %25 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %indicator, align 4
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %wqebuf = getelementptr inbounds %struct.efct_hw_send_frame_context, ptr %ctx, i32 0, i32 2, i32 5
  %27 = ptrtoint ptr %wqebuf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wqebuf, align 4
  %len = getelementptr inbounds %struct.efc_dma, ptr %payload, i32 0, i32 4
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %conv = trunc i32 %26 to i16
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i, align 4
  %call5 = tail call i32 @sli_send_frame_wqe(ptr noundef %sli, ptr noundef %28, i8 noundef zeroext %sof, i8 noundef zeroext %eof, ptr noundef %hdr, ptr noundef %payload, i32 noundef %30, i8 noundef zeroext 10, i16 noundef zeroext %conv, i16 noundef zeroext %32) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end14, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.177, i32 noundef %call5) #16
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = tail call i32 @efct_hw_wq_write(ptr noundef %22, ptr noundef %wqe1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end24, label %do.end20

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.180, i32 noundef %call15) #16
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %use_count = getelementptr inbounds %struct.hw_wq, ptr %22, i32 0, i32 15
  %41 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %use_count, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %use_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end20, %do.end10, %do.end
  %retval.0 = phi i32 [ -5, %do.end10 ], [ -5, %do.end20 ], [ 0, %if.end24 ], [ -28, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_send_frame_wqe(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_get_link_stats(ptr noundef %hw, i8 noundef zeroext %req_ext_counters, i8 noundef zeroext %clear_overflow_flags, i8 noundef zeroext %clear_all_counters, ptr noundef %cb, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %mbxdata = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %mbxdata) #13
  %0 = call ptr @memset(ptr %mbxdata, i32 255, i32 256)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 8) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cb, ptr %call7.i.i, align 8
  %arg2 = getelementptr inbounds %struct.efct_hw_link_stat_cb_arg, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %arg2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arg, ptr %arg2, align 4
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %call3 = call i32 @sli_cmd_read_link_stats(ptr noundef %sli, ptr noundef nonnull %mbxdata, i8 noundef zeroext %req_ext_counters, i8 noundef zeroext %clear_overflow_flags, i8 noundef zeroext %clear_all_counters) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end8, label %if.end.if.then10_crit_edge

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

if.end8:                                          ; preds = %if.end
  %call7 = call i32 @efct_hw_command(ptr noundef %hw, ptr noundef nonnull %mbxdata, i32 noundef 1, ptr noundef nonnull @efct_hw_cb_link_stat, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool9.not = icmp eq i32 %call7, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end8.if.then10_crit_edge

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %rc.022 = phi i32 [ %call7, %if.end8.if.then10_crit_edge ], [ -5, %if.end.if.then10_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %rc.022, %if.then10 ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %mbxdata) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_read_link_stats(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_hw_cb_link_stat(ptr nocapture noundef readnone %hw, i32 noundef %status, ptr noundef readonly %mqe, ptr noundef %arg) #0 align 64 {
entry:
  %counts = alloca [20 x %struct.efct_hw_link_stat_counts], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %counts) #13
  %dw1_flags = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 1
  %0 = ptrtoint ptr %dw1_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dw1_flags, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %3 = call ptr @memset(ptr %counts, i32 0, i32 156)
  %4 = trunc i32 %2 to i8
  %conv = and i8 %4, 4
  %5 = ptrtoint ptr %counts to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %counts, align 4
  %6 = trunc i32 %2 to i8
  %conv.1 = and i8 %6, 8
  %arrayidx.1 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.1, ptr %arrayidx.1, align 4
  %8 = trunc i32 %2 to i8
  %conv.2 = and i8 %8, 16
  %arrayidx.2 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.2, ptr %arrayidx.2, align 4
  %10 = trunc i32 %2 to i8
  %conv.3 = and i8 %10, 32
  %arrayidx.3 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.3, ptr %arrayidx.3, align 4
  %12 = trunc i32 %2 to i8
  %conv.4 = and i8 %12, 64
  %arrayidx.4 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.4, ptr %arrayidx.4, align 4
  %14 = trunc i32 %2 to i8
  %conv.5 = and i8 %14, -128
  %arrayidx.5 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.5, ptr %arrayidx.5, align 4
  %arrayidx.7 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 7
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx.7, align 4
  %arrayidx.9 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 9
  %17 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx.9, align 4
  %arrayidx.11 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 11
  %18 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx.11, align 4
  %arrayidx.13 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 13
  %19 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx.13, align 4
  %arrayidx.15 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx.15, align 4
  %arrayidx.17 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 17
  %21 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx.17, align 4
  %arrayidx.19 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 19
  %22 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx.19, align 4
  %cond = select i1 %tobool.not, i32 13, i32 20
  %linkfail_errcnt = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 2
  %23 = ptrtoint ptr %linkfail_errcnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %linkfail_errcnt, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %counter = getelementptr inbounds %struct.efct_hw_link_stat_counts, ptr %counts, i32 0, i32 1
  %26 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %counter, align 4
  %losssync_errcnt = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 3
  %27 = ptrtoint ptr %losssync_errcnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %losssync_errcnt, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %counter4 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %counter4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %counter4, align 4
  %losssignal_errcnt = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 4
  %31 = ptrtoint ptr %losssignal_errcnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %losssignal_errcnt, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %counter6 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %counter6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %counter6, align 4
  %primseq_errcnt = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 5
  %35 = ptrtoint ptr %primseq_errcnt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %primseq_errcnt, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %counter8 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %counter8 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %counter8, align 4
  %inval_txword_errcnt = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 6
  %39 = ptrtoint ptr %inval_txword_errcnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %inval_txword_errcnt, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %counter10 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %counter10 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %counter10, align 4
  %crc_errcnt = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 7
  %43 = ptrtoint ptr %crc_errcnt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %crc_errcnt, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %counter12 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 5, i32 1
  %46 = ptrtoint ptr %counter12 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %counter12, align 4
  %primseq_eventtimeout_cnt = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 8
  %47 = ptrtoint ptr %primseq_eventtimeout_cnt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %primseq_eventtimeout_cnt, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %counter14 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 6, i32 1
  %50 = ptrtoint ptr %counter14 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %counter14, align 4
  %elastic_bufoverrun_errcnt = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 9
  %51 = ptrtoint ptr %elastic_bufoverrun_errcnt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %elastic_bufoverrun_errcnt, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %counter16 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 7, i32 1
  %54 = ptrtoint ptr %counter16 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %counter16, align 4
  %arbit_fc_al_timeout_cnt = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 10
  %55 = ptrtoint ptr %arbit_fc_al_timeout_cnt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arbit_fc_al_timeout_cnt, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %counter18 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 8, i32 1
  %58 = ptrtoint ptr %counter18 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %counter18, align 4
  %adv_rx_buftor_to_buf_credit = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 11
  %59 = ptrtoint ptr %adv_rx_buftor_to_buf_credit to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %adv_rx_buftor_to_buf_credit, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %counter20 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 9, i32 1
  %62 = ptrtoint ptr %counter20 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %counter20, align 4
  %curr_rx_buf_to_buf_credit = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 12
  %63 = ptrtoint ptr %curr_rx_buf_to_buf_credit to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %curr_rx_buf_to_buf_credit, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %counter22 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 10, i32 1
  %66 = ptrtoint ptr %counter22 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %counter22, align 4
  %adv_tx_buf_to_buf_credit = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 13
  %67 = ptrtoint ptr %adv_tx_buf_to_buf_credit to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %adv_tx_buf_to_buf_credit, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %counter24 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 11, i32 1
  %70 = ptrtoint ptr %counter24 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %counter24, align 4
  %curr_tx_buf_to_buf_credit = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 14
  %71 = ptrtoint ptr %curr_tx_buf_to_buf_credit to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %curr_tx_buf_to_buf_credit, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %counter26 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 12, i32 1
  %74 = ptrtoint ptr %counter26 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %counter26, align 4
  %rx_eofa_cnt = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 15
  %75 = ptrtoint ptr %rx_eofa_cnt to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rx_eofa_cnt, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  %counter28 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 13, i32 1
  %78 = ptrtoint ptr %counter28 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %counter28, align 4
  %rx_eofdti_cnt = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 16
  %79 = ptrtoint ptr %rx_eofdti_cnt to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rx_eofdti_cnt, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  %counter30 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 14, i32 1
  %82 = ptrtoint ptr %counter30 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %counter30, align 4
  %rx_eofni_cnt = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 17
  %83 = ptrtoint ptr %rx_eofni_cnt to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rx_eofni_cnt, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %counter32 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 15, i32 1
  %86 = ptrtoint ptr %counter32 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %counter32, align 4
  %rx_soff_cnt = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 18
  %87 = ptrtoint ptr %rx_soff_cnt to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rx_soff_cnt, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %counter34 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 16, i32 1
  %90 = ptrtoint ptr %counter34 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %counter34, align 4
  %rx_dropped_no_aer_cnt = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 19
  %91 = ptrtoint ptr %rx_dropped_no_aer_cnt to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rx_dropped_no_aer_cnt, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  %counter36 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 17, i32 1
  %94 = ptrtoint ptr %counter36 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %counter36, align 4
  %rx_dropped_no_avail_rpi_rescnt = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 20
  %95 = ptrtoint ptr %rx_dropped_no_avail_rpi_rescnt to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_dropped_no_avail_rpi_rescnt, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  %counter38 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 18, i32 1
  %98 = ptrtoint ptr %counter38 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %counter38, align 4
  %rx_dropped_no_avail_xri_rescnt = getelementptr inbounds %struct.sli4_cmd_read_link_stats, ptr %mqe, i32 0, i32 21
  %99 = ptrtoint ptr %rx_dropped_no_avail_xri_rescnt to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rx_dropped_no_avail_xri_rescnt, align 4
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  %counter40 = getelementptr inbounds [20 x %struct.efct_hw_link_stat_counts], ptr %counts, i32 0, i32 19, i32 1
  %102 = ptrtoint ptr %counter40 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %counter40, align 4
  %tobool41.not = icmp eq ptr %arg, null
  br i1 %tobool41.not, label %entry.if.end57_crit_edge, label %if.then

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then:                                          ; preds = %entry
  %103 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arg, align 4
  %tobool42.not = icmp eq ptr %104, null
  br i1 %tobool42.not, label %if.then.if.end56_crit_edge, label %if.then43

if.then.if.end56_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then43:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp44 = icmp eq i32 %status, 0
  br i1 %cmp44, label %land.lhs.true, label %if.then43.if.end_crit_edge

if.then43.if.end_crit_edge:                       ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %if.then43
  %status46 = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %105 = ptrtoint ptr %status46 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %status46, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %tobool48.not = icmp eq i16 %106, 0
  br i1 %tobool48.not, label %land.lhs.true.if.end_crit_edge, label %if.then49

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then49:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %107 = tail call i16 @llvm.bswap.i16(i16 %106)
  %conv47 = zext i16 %107 to i32
  br label %if.end

if.end:                                           ; preds = %if.then49, %land.lhs.true.if.end_crit_edge, %if.then43.if.end_crit_edge
  %status.addr.0 = phi i32 [ %conv47, %if.then49 ], [ 0, %land.lhs.true.if.end_crit_edge ], [ %status, %if.then43.if.end_crit_edge ]
  %arg55 = getelementptr inbounds %struct.efct_hw_link_stat_cb_arg, ptr %arg, i32 0, i32 1
  %108 = ptrtoint ptr %arg55 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arg55, align 4
  call void %104(i32 noundef %status.addr.0, i32 noundef %cond, ptr noundef nonnull %counts, ptr noundef %109) #13
  br label %if.end56

if.end56:                                         ; preds = %if.end, %if.then.if.end56_crit_edge
  call void @kfree(ptr noundef nonnull %arg) #13
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %entry.if.end57_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %counts) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_get_host_stats(ptr noundef %hw, i8 noundef zeroext %cc, ptr noundef %cb, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %mbxdata = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %mbxdata) #13
  %0 = call ptr @memset(ptr %mbxdata, i32 255, i32 256)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 8) #18
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cb, ptr %call7.i, align 8
  %arg2 = getelementptr inbounds %struct.efct_hw_host_stat_cb_arg, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %arg2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arg, ptr %arg2, align 4
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %call3 = call i32 @sli_cmd_read_status(ptr noundef %sli, ptr noundef nonnull %mbxdata, i8 noundef zeroext %cc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end8, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.end8:                                          ; preds = %if.end
  %call7 = call i32 @efct_hw_command(ptr noundef %hw, ptr noundef nonnull %mbxdata, i32 noundef 1, ptr noundef nonnull @efct_hw_cb_host_stat, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool9.not = icmp eq i32 %call7, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end8.do.body_crit_edge

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end8.do.body_crit_edge, %if.end.do.body_crit_edge
  %rc.029 = phi i32 [ %call7, %if.end8.do.body_crit_edge ], [ -5, %if.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_get_host_stats.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_get_host_stats, %if.then15)) #13
          to label %do.end [label %if.then15], !srcloc !548

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_get_host_stats.__UNIQUE_ID_ddebug339, ptr noundef %dev, ptr noundef nonnull @.str.183) #13
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %rc.029, %do.end ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %mbxdata) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_read_status(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_hw_cb_host_stat(ptr nocapture noundef readnone %hw, i32 noundef %status, ptr nocapture noundef readonly %mqe, ptr noundef %arg) #0 align 64 {
entry:
  %counts = alloca [14 x %struct.efct_hw_host_stat_counts], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %counts) #13
  %trans_kbyte_cnt = getelementptr inbounds %struct.sli4_cmd_read_status, ptr %mqe, i32 0, i32 3
  %0 = ptrtoint ptr %trans_kbyte_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trans_kbyte_cnt, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %counts to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %counts, align 4
  %recv_kbyte_cnt = getelementptr inbounds %struct.sli4_cmd_read_status, ptr %mqe, i32 0, i32 4
  %4 = ptrtoint ptr %recv_kbyte_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %recv_kbyte_cnt, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %arrayidx1 = getelementptr inbounds [14 x %struct.efct_hw_host_stat_counts], ptr %counts, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx1, align 4
  %trans_frame_cnt = getelementptr inbounds %struct.sli4_cmd_read_status, ptr %mqe, i32 0, i32 5
  %8 = ptrtoint ptr %trans_frame_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %trans_frame_cnt, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %arrayidx3 = getelementptr inbounds [14 x %struct.efct_hw_host_stat_counts], ptr %counts, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx3, align 4
  %recv_frame_cnt = getelementptr inbounds %struct.sli4_cmd_read_status, ptr %mqe, i32 0, i32 6
  %12 = ptrtoint ptr %recv_frame_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %recv_frame_cnt, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %arrayidx5 = getelementptr inbounds [14 x %struct.efct_hw_host_stat_counts], ptr %counts, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx5, align 4
  %trans_seq_cnt = getelementptr inbounds %struct.sli4_cmd_read_status, ptr %mqe, i32 0, i32 7
  %16 = ptrtoint ptr %trans_seq_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %trans_seq_cnt, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %arrayidx7 = getelementptr inbounds [14 x %struct.efct_hw_host_stat_counts], ptr %counts, i32 0, i32 4
  %19 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx7, align 4
  %recv_seq_cnt = getelementptr inbounds %struct.sli4_cmd_read_status, ptr %mqe, i32 0, i32 8
  %20 = ptrtoint ptr %recv_seq_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %recv_seq_cnt, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %arrayidx9 = getelementptr inbounds [14 x %struct.efct_hw_host_stat_counts], ptr %counts, i32 0, i32 5
  %23 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx9, align 4
  %tot_exchanges_orig = getelementptr inbounds %struct.sli4_cmd_read_status, ptr %mqe, i32 0, i32 9
  %24 = ptrtoint ptr %tot_exchanges_orig to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tot_exchanges_orig, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %arrayidx11 = getelementptr inbounds [14 x %struct.efct_hw_host_stat_counts], ptr %counts, i32 0, i32 6
  %27 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx11, align 4
  %tot_exchanges_resp = getelementptr inbounds %struct.sli4_cmd_read_status, ptr %mqe, i32 0, i32 10
  %28 = ptrtoint ptr %tot_exchanges_resp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tot_exchanges_resp, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %arrayidx13 = getelementptr inbounds [14 x %struct.efct_hw_host_stat_counts], ptr %counts, i32 0, i32 7
  %31 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx13, align 4
  %recv_p_bsy_cnt = getelementptr inbounds %struct.sli4_cmd_read_status, ptr %mqe, i32 0, i32 11
  %32 = ptrtoint ptr %recv_p_bsy_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %recv_p_bsy_cnt, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %arrayidx15 = getelementptr inbounds [14 x %struct.efct_hw_host_stat_counts], ptr %counts, i32 0, i32 8
  %35 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx15, align 4
  %recv_f_bsy_cnt = getelementptr inbounds %struct.sli4_cmd_read_status, ptr %mqe, i32 0, i32 12
  %36 = ptrtoint ptr %recv_f_bsy_cnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %recv_f_bsy_cnt, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %arrayidx17 = getelementptr inbounds [14 x %struct.efct_hw_host_stat_counts], ptr %counts, i32 0, i32 9
  %39 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx17, align 4
  %no_rq_buf_dropped_frames_cnt = getelementptr inbounds %struct.sli4_cmd_read_status, ptr %mqe, i32 0, i32 13
  %40 = ptrtoint ptr %no_rq_buf_dropped_frames_cnt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %no_rq_buf_dropped_frames_cnt, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %arrayidx19 = getelementptr inbounds [14 x %struct.efct_hw_host_stat_counts], ptr %counts, i32 0, i32 10
  %43 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx19, align 4
  %empty_rq_timeout_cnt = getelementptr inbounds %struct.sli4_cmd_read_status, ptr %mqe, i32 0, i32 14
  %44 = ptrtoint ptr %empty_rq_timeout_cnt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %empty_rq_timeout_cnt, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %arrayidx21 = getelementptr inbounds [14 x %struct.efct_hw_host_stat_counts], ptr %counts, i32 0, i32 11
  %47 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx21, align 4
  %no_xri_dropped_frames_cnt = getelementptr inbounds %struct.sli4_cmd_read_status, ptr %mqe, i32 0, i32 15
  %48 = ptrtoint ptr %no_xri_dropped_frames_cnt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %no_xri_dropped_frames_cnt, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %arrayidx23 = getelementptr inbounds [14 x %struct.efct_hw_host_stat_counts], ptr %counts, i32 0, i32 12
  %51 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx23, align 4
  %empty_xri_pool_cnt = getelementptr inbounds %struct.sli4_cmd_read_status, ptr %mqe, i32 0, i32 16
  %52 = ptrtoint ptr %empty_xri_pool_cnt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %empty_xri_pool_cnt, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %arrayidx25 = getelementptr inbounds [14 x %struct.efct_hw_host_stat_counts], ptr %counts, i32 0, i32 13
  %55 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx25, align 4
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %entry.if.end39_crit_edge, label %if.then

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then:                                          ; preds = %entry
  %56 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arg, align 4
  %tobool27.not = icmp eq ptr %57, null
  br i1 %tobool27.not, label %if.then.if.end38_crit_edge, label %if.then28

if.then.if.end38_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then28:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp eq i32 %status, 0
  br i1 %cmp, label %land.lhs.true, label %if.then28.if.end_crit_edge

if.then28.if.end_crit_edge:                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %if.then28
  %status29 = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %58 = ptrtoint ptr %status29 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %status29, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool30.not = icmp eq i16 %59, 0
  br i1 %tobool30.not, label %land.lhs.true.if.end_crit_edge, label %if.then31

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %60 = tail call i16 @llvm.bswap.i16(i16 %59)
  %conv = zext i16 %60 to i32
  br label %if.end

if.end:                                           ; preds = %if.then31, %land.lhs.true.if.end_crit_edge, %if.then28.if.end_crit_edge
  %status.addr.0 = phi i32 [ %conv, %if.then31 ], [ 0, %land.lhs.true.if.end_crit_edge ], [ %status, %if.then28.if.end_crit_edge ]
  %arg37 = getelementptr inbounds %struct.efct_hw_host_stat_cb_arg, ptr %arg, i32 0, i32 1
  %61 = ptrtoint ptr %arg37 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arg37, align 4
  call void %57(i32 noundef %status.addr.0, i32 noundef 14, ptr noundef nonnull %counts, ptr noundef %62) #13
  br label %if.end38

if.end38:                                         ; preds = %if.end, %if.then.if.end38_crit_edge
  call void @kfree(ptr noundef nonnull %arg) #13
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %entry.if.end39_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %counts) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_async_call(ptr noundef %hw, ptr noundef %callback, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 264) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %callback, ptr %call7.i.i, align 8
  %arg2 = getelementptr inbounds %struct.efct_hw_async_call_ctx, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %arg2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arg, ptr %arg2, align 4
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %cmd = getelementptr inbounds %struct.efct_hw_async_call_ctx, ptr %call7.i.i, i32 0, i32 2
  %call3 = tail call i32 @sli_cmd_common_nop(ptr noundef %sli, ptr noundef %cmd, i64 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.184) #16
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %call9 = tail call i32 @efct_hw_command(ptr noundef %hw, ptr noundef %cmd, i32 noundef 1, ptr noundef nonnull @efct_hw_async_cb, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %do.end14

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.187, i32 noundef %call9) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end14, %do.end
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ -5, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_common_nop(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_hw_async_cb(ptr noundef %hw, i32 noundef %status, ptr noundef %mqe, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %arg4 = getelementptr inbounds %struct.efct_hw_async_call_ctx, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %arg4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg4, align 4
  tail call void %1(ptr noundef %hw, i32 noundef %status, ptr noundef %mqe, ptr noundef %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %arg) #13
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_firmware_write(ptr noundef %hw, ptr noundef %dma, i32 noundef %size, i32 noundef %offset, i32 noundef %last, ptr noundef %cb, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %mbxdata = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %mbxdata) #13
  %0 = call ptr @memset(ptr %mbxdata, i32 255, i32 256)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 8) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cb, ptr %call7.i.i, align 8
  %arg2 = getelementptr inbounds %struct.efct_hw_fw_wr_cb_arg, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %arg2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arg, ptr %arg2, align 4
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %conv3 = trunc i32 %last to i16
  %call4 = call i32 @sli_cmd_common_write_object(ptr noundef %sli, ptr noundef nonnull %mbxdata, i16 noundef zeroext 0, i16 noundef zeroext %conv3, i32 noundef %size, i32 noundef %offset, ptr noundef nonnull @.str.189, ptr noundef %dma) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end9, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.end9:                                          ; preds = %if.end
  %call8 = call i32 @efct_hw_command(ptr noundef %hw, ptr noundef nonnull %mbxdata, i32 noundef 1, ptr noundef nonnull @efct_hw_cb_fw_write, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 0
  br i1 %cmp.not, label %if.end9.cleanup_crit_edge, label %if.end9.do.body_crit_edge

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end9.do.body_crit_edge, %if.end.do.body_crit_edge
  %rc.031 = phi i32 [ %call8, %if.end9.do.body_crit_edge ], [ -5, %if.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_firmware_write.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_firmware_write, %if.then16)) #13
          to label %do.end [label %if.then16], !srcloc !548

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_firmware_write.__UNIQUE_ID_ddebug340, ptr noundef %dev, ptr noundef nonnull @.str.191) #13
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %rc.031, %do.end ], [ 0, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %mbxdata) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_common_write_object(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_hw_cb_fw_write(ptr nocapture noundef readnone %hw, i32 noundef %status, ptr nocapture noundef readonly %mqe, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_write_length = getelementptr inbounds %struct.sli4_cmd_sli_config, ptr %mqe, i32 0, i32 4, i32 1, i32 4
  %0 = ptrtoint ptr %actual_write_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actual_write_length, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %status1 = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %3 = ptrtoint ptr %status1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %status1, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %change_status_dword = getelementptr inbounds %struct.sli4_cmd_sli_config, ptr %mqe, i32 0, i32 4, i32 1, i32 8
  %6 = ptrtoint ptr %change_status_dword to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %change_status_dword, align 4
  %8 = lshr i32 %7, 24
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arg, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %if.then.if.end10_crit_edge, label %if.then3

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool4.not = icmp eq i32 %status, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool5.not = icmp eq i16 %4, 0
  %narrow = select i1 %tobool5.not, i16 0, i16 %5
  %spec.select = zext i16 %narrow to i32
  %status.addr.0 = select i1 %tobool4.not, i32 %spec.select, i32 %status
  %arg9 = getelementptr inbounds %struct.efct_hw_fw_wr_cb_arg, ptr %arg, i32 0, i32 1
  %11 = ptrtoint ptr %arg9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arg9, align 4
  tail call void %10(i32 noundef %status.addr.0, i32 noundef %2, i32 noundef %8, ptr noundef %12) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %if.then.if.end10_crit_edge
  tail call void @kfree(ptr noundef nonnull %arg) #13
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_port_control(ptr noundef %hw, i32 noundef %ctrl, i32 noundef %value, ptr nocapture noundef readnone %cb, ptr nocapture noundef readnone %arg) local_unnamed_addr #0 align 64 {
entry:
  %link = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %link) #13
  %0 = call ptr @memset(ptr %link, i32 255, i32 256)
  %1 = zext i32 %ctrl to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.299)
  switch i32 %ctrl, label %do.body41 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
  ]

sw.bb:                                            ; preds = %entry
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %call = call i32 @sli_cmd_config_link(ptr noundef %sli, ptr noundef nonnull %link) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.do.end_crit_edge

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end:                                           ; preds = %sw.bb
  %call2 = call i32 @efct_hw_command(ptr noundef %hw, ptr noundef nonnull %link, i32 noundef 1, ptr noundef nonnull @efct_hw_cb_port_control, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end4, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %sw.bb.do.end_crit_edge
  %rc.069 = phi i32 [ %call2, %if.end.do.end_crit_edge ], [ -5, %sw.bb.do.end_crit_edge ]
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.192) #16
  br label %sw.epilog

if.end4:                                          ; preds = %if.end
  %speed5 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 7
  %6 = ptrtoint ptr %speed5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed5, align 4
  %conv = trunc i32 %value to i8
  %call8 = call i32 @sli_cmd_init_link(ptr noundef %sli, ptr noundef nonnull %link, i32 noundef %7, i8 noundef zeroext %conv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end13, label %if.end4.do.end18_crit_edge

if.end4.do.end18_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18

if.end13:                                         ; preds = %if.end4
  %call12 = call i32 @efct_hw_command(ptr noundef %hw, ptr noundef nonnull %link, i32 noundef 1, ptr noundef nonnull @efct_hw_cb_port_control, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %if.end13.sw.epilog_crit_edge, label %if.end13.do.end18_crit_edge

if.end13.do.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end18:                                         ; preds = %if.end13.do.end18_crit_edge, %if.end4.do.end18_crit_edge
  %rc.172 = phi i32 [ %call12, %if.end13.do.end18_crit_edge ], [ -5, %if.end4.do.end18_crit_edge ]
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.195) #16
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %sli24 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %call26 = call i32 @sli_cmd_down_link(ptr noundef %sli24, ptr noundef nonnull %link) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end31, label %sw.bb23.do.end36_crit_edge

sw.bb23.do.end36_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end36

if.end31:                                         ; preds = %sw.bb23
  %call30 = call i32 @efct_hw_command(ptr noundef %hw, ptr noundef nonnull %link, i32 noundef 1, ptr noundef nonnull @efct_hw_cb_port_control, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool32.not = icmp eq i32 %call30, 0
  br i1 %tobool32.not, label %if.end31.sw.epilog_crit_edge, label %if.end31.do.end36_crit_edge

if.end31.do.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end36

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end36:                                         ; preds = %if.end31.do.end36_crit_edge, %sw.bb23.do.end36_crit_edge
  %rc.275 = phi i32 [ %call30, %if.end31.do.end36_crit_edge ], [ -5, %sw.bb23.do.end36_crit_edge ]
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.198) #16
  br label %sw.epilog

do.body41:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_port_control.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_port_control, %if.then46)) #13
          to label %sw.epilog [label %if.then46], !srcloc !548

if.then46:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_port_control.__UNIQUE_ID_ddebug341, ptr noundef %dev49, ptr noundef nonnull @.str.200, i32 noundef %ctrl) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then46, %do.body41, %do.end36, %if.end31.sw.epilog_crit_edge, %do.end18, %if.end13.sw.epilog_crit_edge, %do.end
  %rc.3 = phi i32 [ -5, %if.then46 ], [ %rc.275, %do.end36 ], [ 0, %if.end31.sw.epilog_crit_edge ], [ %rc.069, %do.end ], [ %rc.172, %do.end18 ], [ 0, %if.end13.sw.epilog_crit_edge ], [ -5, %do.body41 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %link) #13
  ret i32 %rc.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_config_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efct_hw_cb_port_control(ptr nocapture noundef readnone %hw, i32 noundef %status, ptr nocapture noundef readnone %mqe, ptr nocapture noundef readnone %arg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_init_link(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_down_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_hw_teardown(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %state = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %conv = zext i1 %cmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp ne i32 %3, 0
  %conv3 = zext i1 %cmp2 to i32
  %sliport_healthcheck = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 7
  %4 = ptrtoint ptr %sliport_healthcheck to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sliport_healthcheck, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %sliport_healthcheck to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %sliport_healthcheck, align 1
  %7 = tail call fastcc i32 @efct_hw_config_sli_port_health_check(ptr noundef %hw, i8 noundef zeroext 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp6.not = icmp eq i32 %9, 1
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %state, align 8
  br i1 %cmp6.not, label %if.end.if.end44_crit_edge, label %if.then8

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then8:                                         ; preds = %if.end
  %eq_count.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 17
  %11 = ptrtoint ptr %eq_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eq_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1.not.i = icmp eq i32 %12, 0
  br i1 %cmp1.not.i, label %if.then8.efct_hw_flush.exit_crit_edge, label %if.then8.for.body.i_crit_edge

if.then8.for.body.i_crit_edge:                    ; preds = %if.then8
  br label %for.body.i

if.then8.efct_hw_flush.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_flush.exit

for.body.ithread-pre-split:                       ; preds = %efct_hw_process.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %state, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.ithread-pre-split, %if.then8.for.body.i_crit_edge
  %14 = phi i32 [ %.pr, %for.body.ithread-pre-split ], [ 4, %if.then8.for.body.i_crit_edge ]
  %i.02.i = phi i32 [ %inc.i, %for.body.ithread-pre-split ], [ 0, %if.then8.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.i, label %for.body.i.efct_hw_process.exit.i_crit_edge, label %if.end.i.i

for.body.i.efct_hw_process.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_process.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %arrayidx.i.i = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 31, i32 %i.02.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.i.efct_hw_process.exit.i_crit_edge, label %if.end2.i.i

if.end.i.i.efct_hw_process.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_process.exit.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %use_count.i.i = getelementptr inbounds %struct.hw_eq, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %use_count.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %use_count.i.i, align 4
  %inc.i.i = add i32 %18, 1
  store i32 %inc.i.i, ptr %use_count.i.i, align 4
  %call.i.i = tail call i32 @efct_hw_eq_process(ptr noundef %hw, ptr noundef nonnull %16, i32 noundef -1) #13
  br label %efct_hw_process.exit.i

efct_hw_process.exit.i:                           ; preds = %if.end2.i.i, %if.end.i.i.efct_hw_process.exit.i_crit_edge, %for.body.i.efct_hw_process.exit.i_crit_edge
  %inc.i = add nuw i32 %i.02.i, 1
  %19 = ptrtoint ptr %eq_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %eq_count.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %20
  br i1 %cmp.i, label %for.body.ithread-pre-split, label %efct_hw_process.exit.i.efct_hw_flush.exit_crit_edge

efct_hw_process.exit.i.efct_hw_flush.exit_crit_edge: ; preds = %efct_hw_process.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_flush.exit

efct_hw_flush.exit:                               ; preds = %efct_hw_process.exit.i.efct_hw_flush.exit_crit_edge, %if.then8.efct_hw_flush.exit_crit_edge
  %cmd_head = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 38
  %21 = ptrtoint ptr %cmd_head to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %cmd_head, align 4
  %cmp.i257.not = icmp eq ptr %22, %cmd_head
  br i1 %cmp.i257.not, label %do.body, label %do.body21

do.body:                                          ; preds = %efct_hw_flush.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_teardown.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_teardown, %if.then18)) #13
          to label %if.end40 [label %if.then18], !srcloc !548

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_teardown.__UNIQUE_ID_ddebug342, ptr noundef %dev, ptr noundef nonnull @.str.202) #13
  br label %if.end40

do.body21:                                        ; preds = %efct_hw_flush.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_teardown.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_teardown, %if.then33)) #13
          to label %if.end40 [label %if.then33], !srcloc !548

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_teardown.__UNIQUE_ID_ddebug343, ptr noundef %dev36, ptr noundef nonnull @.str.203) #13
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %do.body21, %if.then18, %do.body
  tail call fastcc void @efct_hw_command_cancel(ptr noundef %hw)
  br label %if.end44

if.end44:                                         ; preds = %if.end40, %if.end.if.end44_crit_edge
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %rnode_mem = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 51
  %size = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 51, i32 3
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size, align 4
  %35 = ptrtoint ptr %rnode_mem to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rnode_mem, align 4
  %phys = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 51, i32 2
  %37 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev46, i32 noundef %34, ptr noundef %36, i32 noundef %38, i32 noundef 0) #13
  %39 = call ptr @memset(ptr %rnode_mem, i32 0, i32 24)
  %io = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 43
  %40 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io, align 8
  %tobool50.not = icmp eq ptr %41, null
  br i1 %tobool50.not, label %if.end44.if.end88_crit_edge, label %for.cond.preheader

if.end44.if.end88_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

for.cond.preheader:                               ; preds = %if.end44
  %n_io = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 9, i32 5
  %42 = ptrtoint ptr %n_io to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_io, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp52262.not = icmp eq i32 %43, 0
  br i1 %cmp52262.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %if.end80.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0263 = phi i32 [ %inc, %if.end80.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %44 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io, align 8
  %arrayidx = getelementptr ptr, ptr %45, i32 %i.0263
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  %tobool55.not = icmp eq ptr %47, null
  br i1 %tobool55.not, label %for.body.if.end80_crit_edge, label %land.lhs.true

for.body.if.end80_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

land.lhs.true:                                    ; preds = %for.body
  %sgl = getelementptr inbounds %struct.efct_hw_io, ptr %47, i32 0, i32 28
  %48 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sgl, align 4
  %tobool58.not = icmp eq ptr %49, null
  br i1 %tobool58.not, label %land.lhs.true.if.end80_crit_edge, label %land.lhs.true59

land.lhs.true.if.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

land.lhs.true59:                                  ; preds = %land.lhs.true
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %tobool64.not = icmp eq ptr %51, null
  br i1 %tobool64.not, label %land.lhs.true59.if.end80_crit_edge, label %if.then65

land.lhs.true59.if.end80_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then65:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %size71 = getelementptr inbounds %struct.efc_dma, ptr %49, i32 0, i32 3
  %54 = ptrtoint ptr %size71 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size71, align 4
  %phys79 = getelementptr inbounds %struct.efc_dma, ptr %49, i32 0, i32 2
  %56 = ptrtoint ptr %phys79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %phys79, align 4
  tail call void @dma_free_attrs(ptr noundef %dev67, i32 noundef %55, ptr noundef nonnull %51, i32 noundef %57, i32 noundef 0) #13
  br label %if.end80

if.end80:                                         ; preds = %if.then65, %land.lhs.true59.if.end80_crit_edge, %land.lhs.true.if.end80_crit_edge, %for.body.if.end80_crit_edge
  %58 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %io, align 8
  %arrayidx82 = getelementptr ptr, ptr %59, i32 %i.0263
  %60 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx82, align 4
  tail call void @kfree(ptr noundef %61) #13
  %62 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %io, align 8
  %arrayidx84 = getelementptr ptr, ptr %63, i32 %i.0263
  %64 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %arrayidx84, align 4
  %inc = add nuw i32 %i.0263, 1
  %65 = ptrtoint ptr %n_io to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %n_io, align 4
  %cmp52 = icmp ult i32 %inc, %66
  br i1 %cmp52, label %if.end80.for.body_crit_edge, label %if.end80.for.end_crit_edge

if.end80.for.end_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end80.for.body_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end80.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %67 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %io, align 8
  tail call void @kfree(ptr noundef %68) #13
  %69 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %io, align 8
  %wqe_buffs = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 44
  %70 = ptrtoint ptr %wqe_buffs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wqe_buffs, align 4
  tail call void @kfree(ptr noundef %71) #13
  %72 = ptrtoint ptr %wqe_buffs to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %wqe_buffs, align 4
  br label %if.end88

if.end88:                                         ; preds = %for.end, %if.end44.if.end88_crit_edge
  %xfer_rdy = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 50
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 8
  %dev90 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  %size91 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 50, i32 3
  %75 = ptrtoint ptr %size91 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size91, align 4
  %77 = ptrtoint ptr %xfer_rdy to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %xfer_rdy, align 4
  %phys93 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 50, i32 2
  %79 = ptrtoint ptr %phys93 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %phys93, align 4
  tail call void @dma_free_attrs(ptr noundef %dev90, i32 noundef %76, ptr noundef %78, i32 noundef %80, i32 noundef 0) #13
  %81 = call ptr @memset(ptr %xfer_rdy, i32 0, i32 24)
  %loop_map = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 49
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 8
  %dev95 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  %size96 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 49, i32 3
  %84 = ptrtoint ptr %size96 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %size96, align 4
  %86 = ptrtoint ptr %loop_map to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %loop_map, align 4
  %phys98 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 49, i32 2
  %88 = ptrtoint ptr %phys98 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %phys98, align 4
  tail call void @dma_free_attrs(ptr noundef %dev95, i32 noundef %85, ptr noundef %87, i32 noundef %89, i32 noundef 0) #13
  %90 = call ptr @memset(ptr %loop_map, i32 0, i32 24)
  %wq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 20
  %91 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %wq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp100264.not = icmp eq i32 %92, 0
  br i1 %cmp100264.not, label %if.end88.for.cond108.preheader_crit_edge, label %for.body102.lr.ph

if.end88.for.cond108.preheader_crit_edge:         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond108.preheader

for.body102.lr.ph:                                ; preds = %if.end88
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  br label %for.body102

for.cond108.preheader:                            ; preds = %for.body102.for.cond108.preheader_crit_edge, %if.end88.for.cond108.preheader_crit_edge
  %rq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 21
  %93 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rq_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp109266.not = icmp eq i32 %94, 0
  br i1 %cmp109266.not, label %for.cond108.preheader.for.cond118.preheader_crit_edge, label %for.body111.lr.ph

for.cond108.preheader.for.cond118.preheader_crit_edge: ; preds = %for.cond108.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond118.preheader

for.body111.lr.ph:                                ; preds = %for.cond108.preheader
  %sli112 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  br label %for.body111

for.body102:                                      ; preds = %for.body102.for.body102_crit_edge, %for.body102.lr.ph
  %i.1265 = phi i32 [ 0, %for.body102.lr.ph ], [ %inc106, %for.body102.for.body102_crit_edge ]
  %arrayidx103 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 11, i32 %i.1265
  %call104 = tail call i32 @sli_queue_free(ptr noundef %sli, ptr noundef %arrayidx103, i32 noundef %conv, i32 noundef %conv3) #13
  %inc106 = add nuw i32 %i.1265, 1
  %95 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %wq_count, align 4
  %cmp100 = icmp ult i32 %inc106, %96
  br i1 %cmp100, label %for.body102.for.body102_crit_edge, label %for.body102.for.cond108.preheader_crit_edge

for.body102.for.cond108.preheader_crit_edge:      ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond108.preheader

for.body102.for.body102_crit_edge:                ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body102

for.cond118.preheader:                            ; preds = %for.body111.for.cond118.preheader_crit_edge, %for.cond108.preheader.for.cond118.preheader_crit_edge
  %mq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 19
  %97 = ptrtoint ptr %mq_count to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mq_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp119268.not = icmp eq i32 %98, 0
  br i1 %cmp119268.not, label %for.cond118.preheader.for.cond128.preheader_crit_edge, label %for.body121.lr.ph

for.cond118.preheader.for.cond128.preheader_crit_edge: ; preds = %for.cond118.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond128.preheader

for.body121.lr.ph:                                ; preds = %for.cond118.preheader
  %sli122 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  br label %for.body121

for.body111:                                      ; preds = %for.body111.for.body111_crit_edge, %for.body111.lr.ph
  %i.2267 = phi i32 [ 0, %for.body111.lr.ph ], [ %inc116, %for.body111.for.body111_crit_edge ]
  %arrayidx113 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 12, i32 %i.2267
  %call114 = tail call i32 @sli_queue_free(ptr noundef %sli112, ptr noundef %arrayidx113, i32 noundef %conv, i32 noundef %conv3) #13
  %inc116 = add nuw i32 %i.2267, 1
  %99 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rq_count, align 8
  %cmp109 = icmp ult i32 %inc116, %100
  br i1 %cmp109, label %for.body111.for.body111_crit_edge, label %for.body111.for.cond118.preheader_crit_edge

for.body111.for.cond118.preheader_crit_edge:      ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond118.preheader

for.body111.for.body111_crit_edge:                ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body111

for.cond128.preheader:                            ; preds = %for.body121.for.cond128.preheader_crit_edge, %for.cond118.preheader.for.cond128.preheader_crit_edge
  %cq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 18
  %101 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp129270.not = icmp eq i32 %102, 0
  br i1 %cmp129270.not, label %for.cond128.preheader.for.cond138.preheader_crit_edge, label %for.body131.lr.ph

for.cond128.preheader.for.cond138.preheader_crit_edge: ; preds = %for.cond128.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond138.preheader

for.body131.lr.ph:                                ; preds = %for.cond128.preheader
  %sli132 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  br label %for.body131

for.body121:                                      ; preds = %for.body121.for.body121_crit_edge, %for.body121.lr.ph
  %i.3269 = phi i32 [ 0, %for.body121.lr.ph ], [ %inc126, %for.body121.for.body121_crit_edge ]
  %arrayidx123 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 14, i32 %i.3269
  %call124 = tail call i32 @sli_queue_free(ptr noundef %sli122, ptr noundef %arrayidx123, i32 noundef %conv, i32 noundef %conv3) #13
  %inc126 = add nuw i32 %i.3269, 1
  %103 = ptrtoint ptr %mq_count to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mq_count, align 8
  %cmp119 = icmp ult i32 %inc126, %104
  br i1 %cmp119, label %for.body121.for.body121_crit_edge, label %for.body121.for.cond128.preheader_crit_edge

for.body121.for.cond128.preheader_crit_edge:      ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond128.preheader

for.body121.for.body121_crit_edge:                ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body121

for.cond138.preheader:                            ; preds = %for.body131.for.cond138.preheader_crit_edge, %for.cond128.preheader.for.cond138.preheader_crit_edge
  %eq_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 17
  %105 = ptrtoint ptr %eq_count to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %eq_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp139272.not = icmp eq i32 %106, 0
  br i1 %cmp139272.not, label %for.cond138.preheader.for.end147_crit_edge, label %for.body141.lr.ph

for.cond138.preheader.for.end147_crit_edge:       ; preds = %for.cond138.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end147

for.body141.lr.ph:                                ; preds = %for.cond138.preheader
  %sli142 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  br label %for.body141

for.body131:                                      ; preds = %for.body131.for.body131_crit_edge, %for.body131.lr.ph
  %i.4271 = phi i32 [ 0, %for.body131.lr.ph ], [ %inc136, %for.body131.for.body131_crit_edge ]
  %arrayidx133 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 15, i32 %i.4271
  %call134 = tail call i32 @sli_queue_free(ptr noundef %sli132, ptr noundef %arrayidx133, i32 noundef %conv, i32 noundef %conv3) #13
  %inc136 = add nuw i32 %i.4271, 1
  %107 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cq_count, align 4
  %cmp129 = icmp ult i32 %inc136, %108
  br i1 %cmp129, label %for.body131.for.body131_crit_edge, label %for.body131.for.cond138.preheader_crit_edge

for.body131.for.cond138.preheader_crit_edge:      ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond138.preheader

for.body131.for.body131_crit_edge:                ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body131

for.body141:                                      ; preds = %for.body141.for.body141_crit_edge, %for.body141.lr.ph
  %i.5273 = phi i32 [ 0, %for.body141.lr.ph ], [ %inc146, %for.body141.for.body141_crit_edge ]
  %arrayidx143 = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 16, i32 %i.5273
  %call144 = tail call i32 @sli_queue_free(ptr noundef %sli142, ptr noundef %arrayidx143, i32 noundef %conv, i32 noundef %conv3) #13
  %inc146 = add nuw i32 %i.5273, 1
  %109 = ptrtoint ptr %eq_count to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %eq_count, align 8
  %cmp139 = icmp ult i32 %inc146, %110
  br i1 %cmp139, label %for.body141.for.body141_crit_edge, label %for.body141.for.end147_crit_edge

for.body141.for.end147_crit_edge:                 ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end147

for.body141.for.body141_crit_edge:                ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body141

for.end147:                                       ; preds = %for.body141.for.end147_crit_edge, %for.cond138.preheader.for.end147_crit_edge
  tail call void @efct_hw_rx_free(ptr noundef %hw)
  tail call void @efct_hw_queue_teardown(ptr noundef %hw) #13
  %wq_cpu_array = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 34
  %111 = ptrtoint ptr %wq_cpu_array to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %wq_cpu_array, align 8
  tail call void @kfree(ptr noundef %112) #13
  %sli148 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  tail call void @sli_teardown(ptr noundef %sli148) #13
  %113 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %state, align 8
  %seq_pool = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 35
  %114 = ptrtoint ptr %seq_pool to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %seq_pool, align 4
  tail call void @kfree(ptr noundef %115) #13
  %116 = ptrtoint ptr %seq_pool to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %seq_pool, align 4
  %wq_reqtag_pool.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 56
  %117 = ptrtoint ptr %wq_reqtag_pool.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wq_reqtag_pool.i, align 4
  %tobool.not.i = icmp eq ptr %118, null
  br i1 %tobool.not.i, label %for.end147.efct_hw_reqtag_pool_free.exit_crit_edge, label %for.end147.for.body.i258_crit_edge

for.end147.for.body.i258_crit_edge:               ; preds = %for.end147
  br label %for.body.i258

for.end147.efct_hw_reqtag_pool_free.exit_crit_edge: ; preds = %for.end147
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_reqtag_pool_free.exit

for.body.i258:                                    ; preds = %for.inc.i.for.body.i258_crit_edge, %for.end147.for.body.i258_crit_edge
  %i.012.i = phi i32 [ %inc.i259, %for.inc.i.for.body.i258_crit_edge ], [ 0, %for.end147.for.body.i258_crit_edge ]
  %arrayidx.i = getelementptr %struct.reqtag_pool, ptr %118, i32 0, i32 1, i32 %i.012.i
  %119 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %120, null
  br i1 %tobool1.not.i, label %for.body.i258.for.inc.i_crit_edge, label %if.end.i

for.body.i258.for.inc.i_crit_edge:                ; preds = %for.body.i258
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i258
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %120) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i258.for.inc.i_crit_edge
  %inc.i259 = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i259, 65535
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i258_crit_edge

for.inc.i.for.body.i258_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i258

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %118) #13
  %121 = ptrtoint ptr %wq_reqtag_pool.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %wq_reqtag_pool.i, align 4
  br label %efct_hw_reqtag_pool_free.exit

efct_hw_reqtag_pool_free.exit:                    ; preds = %for.end.i, %for.end147.efct_hw_reqtag_pool_free.exit_crit_edge
  %cmd_ctx_pool = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 40
  %122 = ptrtoint ptr %cmd_ctx_pool to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cmd_ctx_pool, align 8
  tail call void @mempool_destroy(ptr noundef %123) #13
  %mbox_rqst_pool = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 41
  %124 = ptrtoint ptr %mbox_rqst_pool to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mbox_rqst_pool, align 4
  tail call void @mempool_destroy(ptr noundef %125) #13
  %hw_setup_called = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 6
  %126 = ptrtoint ptr %hw_setup_called to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %hw_setup_called, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efct_hw_command_cancel(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %mqe = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_lock = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 37
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #13
  %cmd_head = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 38
  %0 = ptrtoint ptr %cmd_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cmd_head, align 4
  %cmp.i.not2 = icmp eq ptr %1, %cmd_head
  br i1 %cmp.i.not2, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %do.end17.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %11, %do.end17.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %flags.03 = phi i32 [ %call30, %do.end17.while.body_crit_edge ], [ %call2, %entry.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %mqe) #13
  %3 = call ptr @memset(ptr %mqe, i32 0, i32 256)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_command_cancel.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_command_cancel, %if.then)) #13
          to label %do.end17 [label %if.then], !srcloc !548

if.then:                                          ; preds = %while.body
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %tobool15.not = icmp eq ptr %2, null
  br i1 %tobool15.not, label %if.then.cond.end_crit_edge, label %cond.false

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %buf = getelementptr inbounds %struct.efct_command_ctx, ptr %2, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %9, %cond.false ], [ -1, %if.then.cond.end_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_command_cancel.__UNIQUE_ID_ddebug332, ptr noundef %dev, ptr noundef nonnull @.str.278, i32 noundef %cond) #13
  br label %do.end17

do.end17:                                         ; preds = %cond.end, %while.body
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %flags.03) #13
  %call20 = call fastcc i32 @efct_hw_command_process(ptr noundef %hw, i32 noundef -1, ptr noundef nonnull %mqe, i32 noundef 256)
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %mqe) #13
  %10 = ptrtoint ptr %cmd_head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %cmd_head, align 4
  %cmp.i.not = icmp eq ptr %11, %cmd_head
  br i1 %cmp.i.not, label %do.end17.while.end_crit_edge, label %do.end17.while.body_crit_edge

do.end17.while.body_crit_edge:                    ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

do.end17.while.end_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %do.end17.while.end_crit_edge, %entry.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %entry.while.end_crit_edge ], [ %call30, %do.end17.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %flags.0.lcssa) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_queue_free(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efct_hw_queue_teardown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sli_teardown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_hw_reset(ptr noundef %hw, i32 noundef %reset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end6.thread, label %do.body

if.end6.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %state, align 8
  br label %if.then14

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_reset.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_reset, %if.then4)) #13
          to label %if.end6 [label %if.then4], !srcloc !548

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_reset.__UNIQUE_ID_ddebug347, ptr noundef %dev, ptr noundef nonnull @.str.205, i32 noundef %8) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.body
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %state, align 8
  %10 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.300)
  switch i32 %1, label %if.end6.if.then14_crit_edge [
    i32 3, label %if.end6.if.then10_crit_edge
    i32 4, label %if.end6.if.then10_crit_edge73
    i32 0, label %if.end6.if.end45_crit_edge
  ]

if.end6.if.end45_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.end6.if.then10_crit_edge73:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

if.end6.if.then10_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

if.end6.if.then14_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

if.then10:                                        ; preds = %if.end6.if.then10_crit_edge, %if.end6.if.then10_crit_edge73
  %call11 = tail call fastcc i32 @efct_hw_sli_reset(ptr noundef %hw, i32 noundef %reset, i32 noundef %1)
  br label %cleanup

if.then14:                                        ; preds = %if.end6.if.then14_crit_edge, %if.end6.thread
  %eq_count.i = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 17
  %11 = ptrtoint ptr %eq_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eq_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1.not.i = icmp eq i32 %12, 0
  br i1 %cmp1.not.i, label %if.then14.efct_hw_flush.exit_crit_edge, label %if.then14.for.body.i_crit_edge

if.then14.for.body.i_crit_edge:                   ; preds = %if.then14
  br label %for.body.i

if.then14.efct_hw_flush.exit_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_flush.exit

for.body.i:                                       ; preds = %efct_hw_process.exit.i.for.body.i_crit_edge, %if.then14.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %efct_hw_process.exit.i.for.body.i_crit_edge ], [ 0, %if.then14.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.i, label %for.body.i.efct_hw_process.exit.i_crit_edge, label %if.end.i.i

for.body.i.efct_hw_process.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_process.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %arrayidx.i.i = getelementptr %struct.efct_hw, ptr %hw, i32 0, i32 31, i32 %i.02.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.i.efct_hw_process.exit.i_crit_edge, label %if.end2.i.i

if.end.i.i.efct_hw_process.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_process.exit.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %use_count.i.i = getelementptr inbounds %struct.hw_eq, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %use_count.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %use_count.i.i, align 4
  %inc.i.i = add i32 %18, 1
  store i32 %inc.i.i, ptr %use_count.i.i, align 4
  %call.i.i = tail call i32 @efct_hw_eq_process(ptr noundef %hw, ptr noundef nonnull %16, i32 noundef -1) #13
  br label %efct_hw_process.exit.i

efct_hw_process.exit.i:                           ; preds = %if.end2.i.i, %if.end.i.i.efct_hw_process.exit.i_crit_edge, %for.body.i.efct_hw_process.exit.i_crit_edge
  %inc.i = add nuw i32 %i.02.i, 1
  %19 = ptrtoint ptr %eq_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %eq_count.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %20
  br i1 %cmp.i, label %efct_hw_process.exit.i.for.body.i_crit_edge, label %efct_hw_process.exit.i.efct_hw_flush.exit_crit_edge

efct_hw_process.exit.i.efct_hw_flush.exit_crit_edge: ; preds = %efct_hw_process.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_hw_flush.exit

efct_hw_process.exit.i.for.body.i_crit_edge:      ; preds = %efct_hw_process.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

efct_hw_flush.exit:                               ; preds = %efct_hw_process.exit.i.efct_hw_flush.exit_crit_edge, %if.then14.efct_hw_flush.exit_crit_edge
  %cmd_head = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 38
  %21 = ptrtoint ptr %cmd_head to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %cmd_head, align 4
  %cmp.i70.not = icmp eq ptr %22, %cmd_head
  br i1 %cmp.i70.not, label %do.body19, label %do.end40

do.body19:                                        ; preds = %efct_hw_flush.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_reset.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_reset, %if.then31)) #13
          to label %if.end45 [label %if.then31], !srcloc !548

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_reset.__UNIQUE_ID_ddebug348, ptr noundef %dev34, ptr noundef nonnull @.str.202) #13
  br label %if.end45

do.end40:                                         ; preds = %efct_hw_flush.exit
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.206) #16
  br label %if.end45

if.end45:                                         ; preds = %do.end40, %if.then31, %do.body19, %if.end6.if.end45_crit_edge
  %call46 = tail call fastcc i32 @efct_hw_sli_reset(ptr noundef %hw, i32 noundef %reset, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call46)
  %cmp47 = icmp eq i32 %call46, -22
  %.call46 = select i1 %cmp47, i32 -5, i32 %call46
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then10
  %retval.0 = phi i32 [ %call11, %if.then10 ], [ %.call46, %if.end45 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efct_hw_sli_reset(ptr noundef %hw, i32 noundef %reset, i32 noundef %prev_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.301)
  switch i32 %reset, label %do.end76 [
    i32 0, label %do.body
    i32 1, label %do.body14
  ]

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_sli_reset.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_sli_reset, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !548

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_sli_reset.__UNIQUE_ID_ddebug344, ptr noundef %dev, ptr noundef nonnull @.str.280) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %sli = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %call3 = tail call i32 @sli_reset(ptr noundef %sli) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.sw.epilog_crit_edge, label %do.end8

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.281) #16
  br label %sw.epilog

do.body14:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_sli_reset.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_sli_reset, %if.then26)) #13
          to label %do.end32 [label %if.then26], !srcloc !548

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_sli_reset.__UNIQUE_ID_ddebug345, ptr noundef %dev29, ptr noundef nonnull @.str.282) #13
  br label %do.end32

do.end32:                                         ; preds = %if.then26, %do.body14
  %sli33 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 1
  %call34 = tail call i32 @sli_fw_reset(ptr noundef %sli33) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.end32.do.body44_crit_edge, label %do.end39

do.end32.do.body44_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body44

do.end39:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.284) #16
  br label %do.body44

do.body44:                                        ; preds = %do.end39, %do.end32.do.body44_crit_edge
  %rc.0 = phi i32 [ -5, %do.end39 ], [ 0, %do.end32.do.body44_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_sli_reset.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_sli_reset, %if.then56)) #13
          to label %do.end62 [label %if.then56], !srcloc !548

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_sli_reset.__UNIQUE_ID_ddebug346, ptr noundef %dev59, ptr noundef nonnull @.str.280) #13
  br label %do.end62

do.end62:                                         ; preds = %if.then56, %do.body44
  %call64 = tail call i32 @sli_reset(ptr noundef %sli33) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %do.end62.sw.epilog_crit_edge, label %do.end69

do.end62.sw.epilog_crit_edge:                     ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end69:                                         ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72, ptr noundef nonnull @.str.281) #16
  br label %sw.epilog

do.end76:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %dev79 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev79, ptr noundef nonnull @.str.289) #16
  %state = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 5
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %prev_state, ptr %state, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end76, %do.end69, %do.end62.sw.epilog_crit_edge, %do.end8, %do.end.sw.epilog_crit_edge
  %rc.1 = phi i32 [ -22, %do.end76 ], [ -5, %do.end69 ], [ %rc.0, %do.end62.sw.epilog_crit_edge ], [ -5, %do.end8 ], [ 0, %do.end.sw.epilog_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_kmalloc(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_kfree(ptr noundef, ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_domain_cb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_read_topology(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__efct_read_topology_cb(ptr noundef %hw, i32 noundef %status, ptr nocapture noundef readonly %mqe, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %drec = alloca %struct.efc_domain_record, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 548, ptr nonnull %drec) #13
  %0 = call ptr @memset(ptr %drec, i32 0, i32 548)
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not = icmp eq i32 %status, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %status1 = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %3 = ptrtoint ptr %status1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %status1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool2.not = icmp eq i16 %4, 0
  br i1 %tobool2.not, label %if.end11, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efct_read_topology_cb.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efct_read_topology_cb, %if.then6)) #13
          to label %cleanup [label %if.then6], !srcloc !548

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %status9 = getelementptr inbounds %struct.sli4_mbox_command_header, ptr %mqe, i32 0, i32 2
  %9 = ptrtoint ptr %status9 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %status9, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv10 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efct_read_topology_cb.__UNIQUE_ID_ddebug315, ptr noundef %dev, ptr noundef nonnull @.str.223, i32 noundef %status, i32 noundef %conv10) #13
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %dw2_attentype = getelementptr inbounds %struct.sli4_cmd_read_topology, ptr %mqe, i32 0, i32 2
  %12 = ptrtoint ptr %dw2_attentype to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dw2_attentype, align 4
  %14 = lshr i32 %13, 24
  %trunc = trunc i32 %14 to i8
  %switch.tableidx = add i8 %trunc, -1
  %15 = call i8 @llvm.umin.i8(i8 %switch.tableidx, i8 3)
  %.sink = zext i8 %15 to i32
  %link19 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 42
  %16 = ptrtoint ptr %link19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %link19, align 8
  %topology = getelementptr inbounds %struct.sli4_cmd_read_topology, ptr %mqe, i32 0, i32 3
  %17 = ptrtoint ptr %topology to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %topology, align 4
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.302)
  switch i8 %18, label %sw.default37 [
    i8 1, label %sw.bb22
    i8 2, label %sw.bb25
  ]

sw.bb22:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %topology24 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 42, i32 1
  %20 = ptrtoint ptr %topology24 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %topology24, align 4
  br label %sw.epilog40

sw.bb25:                                          ; preds = %if.end11
  %link26 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 42
  %topology27 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 42, i32 1
  %21 = ptrtoint ptr %topology27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %topology27, align 4
  %22 = ptrtoint ptr %link26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %link26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp = icmp eq i32 %23, 0
  br i1 %cmp, label %if.then31, label %sw.bb25.if.end34_crit_edge

sw.bb25.if.end34_crit_edge:                       ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then31:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #15
  %loop_map = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 49
  %24 = ptrtoint ptr %loop_map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %loop_map, align 4
  %loop_map33 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 42, i32 4
  %26 = ptrtoint ptr %loop_map33 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %loop_map33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %sw.bb25.if.end34_crit_edge
  %acquired_al_pa = getelementptr inbounds %struct.sli4_cmd_read_topology, ptr %mqe, i32 0, i32 16
  %27 = ptrtoint ptr %acquired_al_pa to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %acquired_al_pa, align 4
  %conv35 = zext i8 %28 to i32
  %fc_id = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 42, i32 5
  %29 = ptrtoint ptr %fc_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv35, ptr %fc_id, align 4
  br label %sw.epilog40

sw.default37:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %topology39 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 42, i32 1
  %30 = ptrtoint ptr %topology39 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 6, ptr %topology39, align 4
  br label %sw.epilog40

sw.epilog40:                                      ; preds = %sw.default37, %if.end34, %sw.bb22
  %medium = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 42, i32 2
  %31 = ptrtoint ptr %medium to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %medium, align 8
  %currlink_state = getelementptr inbounds %struct.sli4_cmd_read_topology, ptr %mqe, i32 0, i32 9
  %32 = ptrtoint ptr %currlink_state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %currlink_state, align 4
  %34 = lshr i32 %33, 16
  %trunc110 = trunc i32 %34 to i8
  %35 = zext i8 %trunc110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.303)
  switch i8 %trunc110, label %sw.epilog40.sw.epilog69_crit_edge [
    i8 4, label %sw.epilog40.sw.epilog69.sink.split_crit_edge
    i8 8, label %sw.bb48
    i8 16, label %sw.bb51
    i8 32, label %sw.bb54
    i8 -128, label %sw.bb57
    i8 -112, label %sw.bb60
    i8 -96, label %sw.bb63
    i8 -80, label %sw.bb66
  ]

sw.epilog40.sw.epilog69.sink.split_crit_edge:     ; preds = %sw.epilog40
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog69.sink.split

sw.epilog40.sw.epilog69_crit_edge:                ; preds = %sw.epilog40
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog69

sw.bb48:                                          ; preds = %sw.epilog40
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog69.sink.split

sw.bb51:                                          ; preds = %sw.epilog40
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog69.sink.split

sw.bb54:                                          ; preds = %sw.epilog40
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog69.sink.split

sw.bb57:                                          ; preds = %sw.epilog40
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog69.sink.split

sw.bb60:                                          ; preds = %sw.epilog40
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog69.sink.split

sw.bb63:                                          ; preds = %sw.epilog40
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog69.sink.split

sw.bb66:                                          ; preds = %sw.epilog40
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog69.sink.split

sw.epilog69.sink.split:                           ; preds = %sw.bb66, %sw.bb63, %sw.bb60, %sw.bb57, %sw.bb54, %sw.bb51, %sw.bb48, %sw.epilog40.sw.epilog69.sink.split_crit_edge
  %.sink112 = phi i32 [ 128000, %sw.bb66 ], [ 64000, %sw.bb63 ], [ 32000, %sw.bb60 ], [ 16000, %sw.bb57 ], [ 8000, %sw.bb54 ], [ 4000, %sw.bb51 ], [ 2000, %sw.bb48 ], [ 1000, %sw.epilog40.sw.epilog69.sink.split_crit_edge ]
  %speed68 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 42, i32 3
  %36 = ptrtoint ptr %speed68 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink112, ptr %speed68, align 4
  br label %sw.epilog69

sw.epilog69:                                      ; preds = %sw.epilog69.sink.split, %sw.epilog40.sw.epilog69_crit_edge
  %speed71 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 42, i32 3
  %37 = ptrtoint ptr %speed71 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %speed71, align 4
  %speed72 = getelementptr inbounds %struct.efc_domain_record, ptr %drec, i32 0, i32 5
  %39 = ptrtoint ptr %speed72 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %speed72, align 4
  %fc_id74 = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 42, i32 5
  %40 = ptrtoint ptr %fc_id74 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fc_id74, align 4
  %fc_id75 = getelementptr inbounds %struct.efc_domain_record, ptr %drec, i32 0, i32 6
  %42 = ptrtoint ptr %fc_id75 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %fc_id75, align 4
  %is_nport = getelementptr inbounds %struct.efc_domain_record, ptr %drec, i32 0, i32 8
  %43 = ptrtoint ptr %is_nport to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %is_nport, align 1
  %efcport = getelementptr inbounds %struct.efct, ptr %2, i32 0, i32 13
  %44 = ptrtoint ptr %efcport to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %efcport, align 4
  %call76 = call i32 @efc_domain_cb(ptr noundef %45, i32 noundef 7, ptr noundef nonnull %drec) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog69, %if.then6, %do.body
  %retval.0 = phi i32 [ 0, %sw.epilog69 ], [ -5, %if.then6 ], [ -5, %do.body ]
  call void @llvm.lifetime.end.p0(i64 548, ptr nonnull %drec) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_common_set_dump_location(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_common_set_features(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_reg_fcfi(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_reg_fcfi_mrq(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_hw_wq_process_io(ptr noundef %arg, ptr noundef %cqe, i32 noundef %status) #0 align 64 {
entry:
  %ext = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext) #13
  %2 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ext, align 4
  %xbusy = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 8
  %3 = ptrtoint ptr %xbusy to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %xbusy, align 2, !range !547
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.sli4_fc_wcqe, ptr %cqe, i32 0, i32 8
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flags, align 1
  %7 = and i8 %6, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %xbusy to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %xbusy, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %type = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 7
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %type, align 4
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.304)
  switch i16 %10, label %do.end [
    i16 4, label %if.end.sw.epilog_crit_edge
    i16 5, label %if.end.sw.epilog_crit_edge189
    i16 0, label %sw.bb5
    i16 1, label %if.end.sw.epilog_crit_edge190
    i16 3, label %if.end.sw.epilog_crit_edge191
    i16 2, label %sw.bb9
    i16 7, label %sw.bb12
    i16 6, label %sw.bb15
    i16 8, label %if.end.sw.epilog_crit_edge192
    i16 9, label %if.end.sw.epilog_crit_edge193
  ]

if.end.sw.epilog_crit_edge193:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.epilog_crit_edge192:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.epilog_crit_edge191:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.epilog_crit_edge190:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.epilog_crit_edge189:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sli = getelementptr inbounds %struct.efct_hw, ptr %1, i32 0, i32 1
  %call = call i32 @sli_fc_els_did(ptr noundef %sli, ptr noundef %cqe, ptr noundef nonnull %ext) #13
  %call7 = call i32 @sli_fc_response_length(ptr noundef %sli, ptr noundef %cqe) #13
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sli10 = getelementptr inbounds %struct.efct_hw, ptr %1, i32 0, i32 1
  %call11 = tail call i32 @sli_fc_response_length(ptr noundef %sli10, ptr noundef %cqe) #13
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sli13 = getelementptr inbounds %struct.efct_hw, ptr %1, i32 0, i32 1
  %call14 = tail call i32 @sli_fc_io_length(ptr noundef %sli13, ptr noundef %cqe) #13
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sli16 = getelementptr inbounds %struct.efct_hw, ptr %1, i32 0, i32 1
  %call17 = tail call i32 @sli_fc_io_length(ptr noundef %sli16, ptr noundef %cqe) #13
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv4 = zext i16 %10 to i32
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %indicator = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 26
  %16 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %indicator, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.259, i32 noundef %conv4, i32 noundef %17) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb5, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge189, %if.end.sw.epilog_crit_edge190, %if.end.sw.epilog_crit_edge191, %if.end.sw.epilog_crit_edge192, %if.end.sw.epilog_crit_edge193
  %len.0 = phi i32 [ 0, %do.end ], [ %call17, %sw.bb15 ], [ %call14, %sw.bb12 ], [ %call11, %sw.bb9 ], [ %call7, %sw.bb5 ], [ 0, %if.end.sw.epilog_crit_edge ], [ 0, %if.end.sw.epilog_crit_edge189 ], [ 0, %if.end.sw.epilog_crit_edge190 ], [ 0, %if.end.sw.epilog_crit_edge191 ], [ 0, %if.end.sw.epilog_crit_edge192 ], [ 0, %if.end.sw.epilog_crit_edge193 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool20.not = icmp eq i32 %status, 0
  br i1 %tobool20.not, label %sw.epilog.if.end102_crit_edge, label %if.then21

sw.epilog.if.end102_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.then21:                                        ; preds = %sw.epilog
  %sli22 = getelementptr inbounds %struct.efct_hw, ptr %1, i32 0, i32 1
  %call23 = call i32 @sli_fc_ext_status(ptr noundef %sli22, ptr noundef %cqe) #13
  %18 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call23, ptr %ext, align 4
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %type, align 4
  %switch.and.i = and i16 %20, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and.i)
  %switch.selectcmp.i = icmp eq i16 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %land.lhs.true27, label %if.then21.if.end102_crit_edge

if.then21.if.end102_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

land.lhs.true27:                                  ; preds = %if.then21
  %flags28 = getelementptr inbounds %struct.sli4_fc_wcqe, ptr %cqe, i32 0, i32 8
  %21 = ptrtoint ptr %flags28 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags28, align 1
  %23 = and i8 %22, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool31.not = icmp eq i8 %23, 0
  br i1 %tobool31.not, label %land.lhs.true27.if.end102_crit_edge, label %if.then32

land.lhs.true27.if.end102_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.then32:                                        ; preds = %land.lhs.true27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_wq_process_io.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_wq_process_io, %if.then38)) #13
          to label %do.end46 [label %if.then38], !srcloc !548

if.then38:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %indicator42 = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 26
  %28 = ptrtoint ptr %indicator42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %indicator42, align 4
  %reqtag = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 12
  %30 = ptrtoint ptr %reqtag to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %reqtag, align 2
  %conv43 = zext i16 %31 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_wq_process_io.__UNIQUE_ID_ddebug318, ptr noundef %dev41, ptr noundef nonnull @.str.261, i32 noundef %29, i32 noundef %conv43) #13
  br label %do.end46

do.end46:                                         ; preds = %if.then38, %if.then32
  %call47 = call i32 @efct_hw_io_abort(ptr noundef %1, ptr noundef %arg, i1 noundef zeroext false, ptr noundef null, ptr noundef null)
  %32 = zext i32 %call47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.305)
  switch i32 %call47, label %do.body77 [
    i32 0, label %cleanup.thread186
    i32 -115, label %do.body54
  ]

cleanup.thread186:                                ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #15
  %status_saved = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 10
  %33 = ptrtoint ptr %status_saved to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %status_saved, align 4
  %saved_status = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 19
  %34 = ptrtoint ptr %saved_status to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %status, ptr %saved_status, align 4
  %35 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ext, align 4
  %saved_ext = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 21
  %37 = ptrtoint ptr %saved_ext to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %saved_ext, align 4
  %saved_len = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 20
  %38 = ptrtoint ptr %saved_len to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %len.0, ptr %saved_len, align 4
  br label %cleanup119

do.body54:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_wq_process_io.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_wq_process_io, %if.then66)) #13
          to label %if.end102 [label %if.then66], !srcloc !548

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %dev69 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %indicator70 = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 26
  %43 = ptrtoint ptr %indicator70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %indicator70, align 4
  %reqtag71 = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 12
  %45 = ptrtoint ptr %reqtag71 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %reqtag71, align 2
  %conv72 = zext i16 %46 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_wq_process_io.__UNIQUE_ID_ddebug319, ptr noundef %dev69, ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.263, i32 noundef %44, i32 noundef %conv72) #13
  br label %if.end102

do.body77:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_hw_wq_process_io.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_hw_wq_process_io, %if.then89)) #13
          to label %if.end102 [label %if.then89], !srcloc !548

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %dev92 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %indicator93 = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 26
  %51 = ptrtoint ptr %indicator93 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %indicator93, align 4
  %reqtag94 = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 12
  %53 = ptrtoint ptr %reqtag94 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %reqtag94, align 2
  %conv95 = zext i16 %54 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_hw_wq_process_io.__UNIQUE_ID_ddebug320, ptr noundef %dev92, ptr noundef nonnull @.str.264, ptr noundef nonnull @.str.265, i32 noundef %52, i32 noundef %conv95, i32 noundef %call47) #13
  br label %if.end102

if.end102:                                        ; preds = %if.then89, %do.body77, %if.then66, %do.body54, %land.lhs.true27.if.end102_crit_edge, %if.then21.if.end102_crit_edge, %sw.epilog.if.end102_crit_edge
  %done = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 14
  %55 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %done, align 4
  %tobool103.not = icmp eq ptr %56, null
  br i1 %tobool103.not, label %if.end102.cleanup119_crit_edge, label %if.then104

if.end102.cleanup119_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup119

if.then104:                                       ; preds = %if.end102
  %57 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %done, align 4
  %status_saved108 = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 10
  %58 = ptrtoint ptr %status_saved108 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %status_saved108, align 4, !range !547
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool109.not = icmp eq i8 %59, 0
  br i1 %tobool109.not, label %if.then104.if.end115_crit_edge, label %if.then110

if.then104.if.end115_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end115

if.then110:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #15
  %saved_status111 = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 19
  %60 = ptrtoint ptr %saved_status111 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %saved_status111, align 4
  %saved_len112 = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 20
  %62 = ptrtoint ptr %saved_len112 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %saved_len112, align 4
  %saved_ext113 = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 21
  %64 = ptrtoint ptr %saved_ext113 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %saved_ext113, align 4
  %66 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %ext, align 4
  %67 = ptrtoint ptr %status_saved108 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %status_saved108, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then110, %if.then104.if.end115_crit_edge
  %len.1 = phi i32 [ %63, %if.then110 ], [ %len.0, %if.then104.if.end115_crit_edge ]
  %status.addr.0 = phi i32 [ %61, %if.then110 ], [ %status, %if.then104.if.end115_crit_edge ]
  %def_sgl.i = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 27
  %sgl.i = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 28
  %68 = ptrtoint ptr %sgl.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %def_sgl.i, ptr %sgl.i, align 4
  %def_sgl_count.i = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 24
  %69 = ptrtoint ptr %def_sgl_count.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %def_sgl_count.i, align 4
  %sgl_count.i = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 29
  %71 = ptrtoint ptr %sgl_count.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %sgl_count.i, align 4
  %72 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ext, align 4
  %arg116 = getelementptr inbounds %struct.efct_hw_io, ptr %arg, i32 0, i32 15
  %74 = ptrtoint ptr %arg116 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arg116, align 4
  %call117 = call i32 %56(ptr noundef %arg, i32 noundef %len.1, i32 noundef %status.addr.0, i32 noundef %73, ptr noundef %75) #13
  br label %cleanup119

cleanup119:                                       ; preds = %if.end115, %if.end102.cleanup119_crit_edge, %cleanup.thread186
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_resource_alloc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_fc_els_did(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_fc_response_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_fc_io_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_fc_ext_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_cmd_post_sgl_pages(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_rqpair_sequence_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_mq_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_mq_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efct_hw_command_process(ptr noundef %hw, i32 noundef %status, ptr nocapture noundef readonly %mqe, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_lock = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 37
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #13
  %cmd_head = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 38
  %0 = ptrtoint ptr %cmd_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cmd_head, align 4
  %cmp.i.not = icmp eq ptr %1, %cmd_head
  br i1 %cmp.i.not, label %entry.do.end12_crit_edge, label %if.then

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.end.do.end12_crit_edge, label %if.end14

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

do.end12:                                         ; preds = %if.end.do.end12_crit_edge, %entry.do.end12_crit_edge
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.275) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call2) #13
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %cmd_head_count = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 22
  %14 = ptrtoint ptr %cmd_head_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmd_head_count, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %cmd_head_count, align 4
  %call15 = tail call fastcc i32 @efct_hw_cmd_submit_pending(ptr noundef %hw)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call2) #13
  %cb = getelementptr inbounds %struct.efct_command_ctx, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cb, align 4
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %if.end14.if.end23_crit_edge, label %if.then18

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %buf = getelementptr inbounds %struct.efct_command_ctx, ptr %1, i32 0, i32 3
  %18 = call ptr @memcpy(ptr %buf, ptr %mqe, i32 %size)
  %arg = getelementptr inbounds %struct.efct_command_ctx, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arg, align 4
  %call22 = tail call i32 %17(ptr noundef %hw, i32 noundef %status, ptr noundef %buf, ptr noundef %20) #13
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end14.if.end23_crit_edge
  %cmd_ctx_pool = getelementptr inbounds %struct.efct_hw, ptr %hw, i32 0, i32 40
  %21 = ptrtoint ptr %cmd_ctx_pool to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmd_ctx_pool, align 8
  tail call void @mempool_free(ptr noundef nonnull %1, ptr noundef %22) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end12
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -5, %do.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_wq_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_disc_io_complete(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sli_fw_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 275)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 275)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !118, !119, !120, !122, !123, !125, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !181, !183, !184, !186, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !204, !206, !207, !209, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !225, !227, !228, !230, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !250, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !278, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !302, !303, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !324, !326, !327, !328, !330, !332, !333, !334, !336, !337, !338, !339, !341, !342, !343, !345, !346, !347, !349, !350, !352, !353, !354, !356, !357, !359, !360, !361, !363, !365, !366, !367, !369, !370, !371, !372, !373, !375, !376, !377, !379, !380, !382, !383, !384, !385, !387, !388, !389, !391, !392, !394, !395, !396, !398, !399, !400, !401, !402, !404, !405, !406, !408, !409, !411, !412, !413, !414, !416, !417, !419, !420, !421, !422, !423, !425, !426, !427, !429, !430, !431, !432, !434, !435, !436, !438, !439, !440, !441, !443, !444, !445, !447, !448, !449, !451, !452, !453, !455, !456, !457, !459, !460, !461, !463, !464, !465, !467, !468, !469, !470, !472, !473, !475, !476, !477, !479, !480, !481, !483, !484, !485, !486, !488, !489, !490, !491, !493, !494, !496, !497, !498, !499, !501, !502, !503, !504, !506, !507, !508, !509, !511, !512, !513, !515, !516, !517, !519, !520, !521, !523, !524, !526, !527, !528, !530, !532, !533, !535, !536}
!llvm.named.register.sp = !{!537}
!llvm.module.flags = !{!538, !539, !540, !541, !542, !543, !544, !545}
!llvm.ident = !{!546}

!0 = !{ptr @efct_hw_setup.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 248, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @efct_hw_setup.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 249, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 258, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @efct_hw_setup._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @efct_hw_setup._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 266, i32 3}
!16 = !{ptr @efct_hw_setup._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @efct_hw_setup._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @efct_hw_setup.__key.11, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 270, i32 2}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 279, i32 3}
!23 = !{ptr @efct_hw_setup._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @efct_hw_setup._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 901, i32 3}
!27 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @efct_hw_init._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @efct_hw_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 906, i32 3}
!32 = !{ptr @efct_hw_init._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @efct_hw_init._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 932, i32 3}
!36 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @efct_hw_init.__UNIQUE_ID_ddebug323, !35, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 943, i32 3}
!40 = !{ptr @efct_hw_init.__UNIQUE_ID_ddebug324, !39, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 954, i32 3}
!43 = !{ptr @efct_hw_init.__UNIQUE_ID_ddebug325, !42, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 962, i32 3}
!46 = !{ptr @efct_hw_init._entry.25, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @efct_hw_init._entry_ptr.27, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 969, i32 4}
!50 = !{ptr @efct_hw_init._entry.28, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @efct_hw_init._entry_ptr.30, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 988, i32 2}
!54 = !{ptr @efct_hw_init.__UNIQUE_ID_ddebug326, !53, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 992, i32 2}
!57 = !{ptr @efct_hw_init.__UNIQUE_ID_ddebug327, !56, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 996, i32 2}
!60 = !{ptr @efct_hw_init.__UNIQUE_ID_ddebug328, !59, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1010, i32 3}
!63 = !{ptr @efct_hw_init._entry.34, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @efct_hw_init._entry_ptr.36, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1016, i32 3}
!67 = !{ptr @efct_hw_init._entry.37, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @efct_hw_init._entry_ptr.39, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1023, i32 4}
!71 = !{ptr @efct_hw_init._entry.40, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @efct_hw_init._entry_ptr.42, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1029, i32 4}
!75 = !{ptr @efct_hw_init._entry.43, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @efct_hw_init._entry_ptr.45, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.47, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1035, i32 4}
!79 = !{ptr @efct_hw_init._entry.46, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @efct_hw_init._entry_ptr.48, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.50, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1047, i32 3}
!83 = !{ptr @efct_hw_init._entry.49, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @efct_hw_init._entry_ptr.51, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.53, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1053, i32 3}
!87 = !{ptr @efct_hw_init._entry.52, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @efct_hw_init._entry_ptr.54, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.56, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1059, i32 3}
!91 = !{ptr @efct_hw_init._entry.55, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @efct_hw_init._entry_ptr.57, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.59, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1111, i32 3}
!95 = !{ptr @efct_hw_init._entry.58, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @efct_hw_init._entry_ptr.60, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.61, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1132, i32 3}
!99 = !{ptr @.str.62, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @efct_hw_parse_filter._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @efct_hw_parse_filter._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.63, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1137, i32 29}
!104 = !{ptr @.str.65, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1139, i32 4}
!106 = !{ptr @efct_hw_parse_filter._entry.64, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @efct_hw_parse_filter._entry_ptr.66, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.67, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1246, i32 4}
!110 = !{ptr @.str.68, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @efct_hw_rx_allocate._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @efct_hw_rx_allocate._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.69, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1251, i32 3}
!115 = !{ptr @efct_hw_rx_allocate.__UNIQUE_ID_ddebug329, !114, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!116 = !{ptr @.str.71, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1262, i32 4}
!118 = !{ptr @efct_hw_rx_allocate._entry.70, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @efct_hw_rx_allocate._entry_ptr.72, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.73, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1266, i32 3}
!122 = !{ptr @efct_hw_rx_allocate.__UNIQUE_ID_ddebug330, !121, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!123 = !{ptr @.str.74, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1386, i32 3}
!125 = !{ptr @.str.75, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.76, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @efct_hw_command._entry, !124, !"_entry", i1 false, i1 false}
!128 = !{ptr @efct_hw_command._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.78, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1387, i32 3}
!131 = !{ptr @efct_hw_command._entry.77, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @efct_hw_command._entry_ptr.79, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.81, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1417, i32 4}
!135 = !{ptr @efct_hw_command._entry.80, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @efct_hw_command._entry_ptr.82, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.83, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1569, i32 3}
!139 = !{ptr @.str.84, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @efct_issue_mbox_rqst._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @efct_issue_mbox_rqst._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.85, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1698, i32 3}
!144 = !{ptr @.str.86, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @efct_hw_io_init_sges._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @efct_hw_io_init_sges._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.88, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1750, i32 3}
!149 = !{ptr @efct_hw_io_init_sges._entry.87, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @efct_hw_io_init_sges._entry_ptr.89, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.90, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1785, i32 3}
!153 = !{ptr @.str.91, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @efct_hw_io_add_sge._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @efct_hw_io_add_sge._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.93, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1792, i32 3}
!158 = !{ptr @efct_hw_io_add_sge._entry.92, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @efct_hw_io_add_sge._entry_ptr.94, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.95, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1938, i32 3}
!162 = !{ptr @efct_hw_io_abort._entry, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @efct_hw_io_abort._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.97, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1944, i32 3}
!166 = !{ptr @efct_hw_io_abort._entry.96, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @efct_hw_io_abort._entry_ptr.98, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.99, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1952, i32 3}
!170 = !{ptr @efct_hw_io_abort.__UNIQUE_ID_ddebug333, !169, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!171 = !{ptr @.str.100, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1960, i32 3}
!173 = !{ptr @efct_hw_io_abort.__UNIQUE_ID_ddebug334, !172, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!174 = !{ptr @.str.101, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1974, i32 3}
!176 = !{ptr @efct_hw_io_abort.__UNIQUE_ID_ddebug335, !175, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!177 = !{ptr @.str.103, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2000, i32 3}
!179 = !{ptr @efct_hw_io_abort._entry.102, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @efct_hw_io_abort._entry_ptr.104, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @efct_hw_reqtag_pool_alloc.__key, !182, !"__key", i1 false, i1 false}
!182 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2073, i32 2}
!183 = !{ptr @.str.105, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.106, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2128, i32 3}
!186 = !{ptr @.str.107, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @efct_hw_reqtag_free._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @efct_hw_reqtag_free._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.108, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2145, i32 3}
!191 = !{ptr @.str.109, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @efct_hw_reqtag_get_instance._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @efct_hw_reqtag_get_instance._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.110, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2242, i32 5}
!196 = !{ptr @.str.111, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @efct_hw_eq_process._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @efct_hw_eq_process._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.112, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2373, i32 5}
!201 = !{ptr @.str.113, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @efct_hw_cq_process._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @efct_hw_cq_process._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.114, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2390, i32 4}
!206 = !{ptr @efct_hw_cq_process.__UNIQUE_ID_ddebug336, !205, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!207 = !{ptr @.str.115, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2420, i32 4}
!209 = !{ptr @.str.116, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @efct_hw_wq_process._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @efct_hw_wq_process._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.118, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2427, i32 3}
!214 = !{ptr @efct_hw_wq_process._entry.117, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @efct_hw_wq_process._entry_ptr.119, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.121, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2432, i32 3}
!218 = !{ptr @efct_hw_wq_process._entry.120, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @efct_hw_wq_process._entry_ptr.122, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.123, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2450, i32 3}
!222 = !{ptr @.str.124, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @efct_hw_xabt_process._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @efct_hw_xabt_process._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.125, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2455, i32 3}
!227 = !{ptr @efct_hw_xabt_process.__UNIQUE_ID_ddebug337, !226, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!228 = !{ptr @.str.126, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2578, i32 3}
!230 = !{ptr @.str.127, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @efct_hw_bls_send._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @efct_hw_bls_send._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.129, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2585, i32 3}
!235 = !{ptr @efct_hw_bls_send._entry.128, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @efct_hw_bls_send._entry_ptr.130, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.132, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2610, i32 3}
!239 = !{ptr @efct_hw_bls_send._entry.131, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @efct_hw_bls_send._entry_ptr.133, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.135, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2627, i32 3}
!243 = !{ptr @efct_hw_bls_send._entry.134, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @efct_hw_bls_send._entry_ptr.136, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.137, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2710, i32 3}
!247 = !{ptr @.str.138, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @efct_els_hw_srrs_send._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @efct_els_hw_srrs_send._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.139, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2715, i32 3}
!252 = !{ptr @efct_els_hw_srrs_send.__UNIQUE_ID_ddebug338, !251, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!253 = !{ptr @.str.141, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2770, i32 4}
!255 = !{ptr @efct_els_hw_srrs_send._entry.140, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @efct_els_hw_srrs_send._entry_ptr.142, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.144, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2784, i32 4}
!259 = !{ptr @efct_els_hw_srrs_send._entry.143, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @efct_els_hw_srrs_send._entry_ptr.145, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.147, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2798, i32 4}
!263 = !{ptr @efct_els_hw_srrs_send._entry.146, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @efct_els_hw_srrs_send._entry_ptr.148, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.150, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2812, i32 4}
!267 = !{ptr @efct_els_hw_srrs_send._entry.149, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @efct_els_hw_srrs_send._entry_ptr.151, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.153, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2818, i32 3}
!271 = !{ptr @efct_els_hw_srrs_send._entry.152, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @efct_els_hw_srrs_send._entry_ptr.154, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @efct_els_hw_srrs_send._entry.155, !274, !"_entry", i1 false, i1 false}
!274 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2836, i32 4}
!275 = !{ptr @efct_els_hw_srrs_send._entry_ptr.156, !274, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.157, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2854, i32 3}
!278 = !{ptr @.str.158, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @efct_hw_io_send._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @efct_hw_io_send._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.160, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2859, i32 3}
!283 = !{ptr @efct_hw_io_send._entry.159, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @efct_hw_io_send._entry_ptr.161, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.163, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2895, i32 4}
!287 = !{ptr @efct_hw_io_send._entry.162, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @efct_hw_io_send._entry_ptr.164, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.166, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2915, i32 4}
!291 = !{ptr @efct_hw_io_send._entry.165, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @efct_hw_io_send._entry_ptr.167, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.169, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2934, i32 4}
!295 = !{ptr @efct_hw_io_send._entry.168, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @efct_hw_io_send._entry_ptr.170, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @efct_hw_io_send._entry.171, !298, !"_entry", i1 false, i1 false}
!298 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2941, i32 3}
!299 = !{ptr @efct_hw_io_send._entry_ptr.172, !298, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @efct_hw_io_send._entry.173, !301, !"_entry", i1 false, i1 false}
!301 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2960, i32 4}
!302 = !{ptr @efct_hw_io_send._entry_ptr.174, !301, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.175, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 2989, i32 3}
!305 = !{ptr @efct_hw_send_frame._entry, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @efct_hw_send_frame._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.177, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3006, i32 3}
!309 = !{ptr @efct_hw_send_frame._entry.176, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @efct_hw_send_frame._entry_ptr.178, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.180, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3013, i32 3}
!313 = !{ptr @efct_hw_send_frame._entry.179, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @efct_hw_send_frame._entry_ptr.181, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.182, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3205, i32 3}
!317 = !{ptr @.str.183, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @efct_hw_get_host_stats.__UNIQUE_ID_ddebug339, !316, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!319 = !{ptr @.str.184, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3251, i32 3}
!321 = !{ptr @.str.185, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @efct_hw_async_call._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @efct_hw_async_call._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.187, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3259, i32 3}
!326 = !{ptr @efct_hw_async_call._entry.186, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @efct_hw_async_call._entry_ptr.188, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.189, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3319, i32 32}
!330 = !{ptr @.str.190, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3325, i32 3}
!332 = !{ptr @.str.191, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @efct_hw_firmware_write.__UNIQUE_ID_ddebug340, !331, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!334 = !{ptr @.str.192, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3357, i32 4}
!336 = !{ptr @.str.193, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @efct_hw_port_control._entry, !335, !"_entry", i1 false, i1 false}
!338 = !{ptr @efct_hw_port_control._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.195, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3369, i32 4}
!341 = !{ptr @efct_hw_port_control._entry.194, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @efct_hw_port_control._entry_ptr.196, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.198, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3378, i32 4}
!345 = !{ptr @efct_hw_port_control._entry.197, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @efct_hw_port_control._entry_ptr.199, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.200, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3382, i32 3}
!349 = !{ptr @efct_hw_port_control.__UNIQUE_ID_ddebug341, !348, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!350 = !{ptr @.str.201, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3413, i32 4}
!352 = !{ptr @.str.202, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @efct_hw_teardown.__UNIQUE_ID_ddebug342, !351, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!354 = !{ptr @.str.203, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3416, i32 4}
!356 = !{ptr @efct_hw_teardown.__UNIQUE_ID_ddebug343, !355, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!357 = !{ptr @.str.204, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3551, i32 3}
!359 = !{ptr @.str.205, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @efct_hw_reset.__UNIQUE_ID_ddebug347, !358, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!361 = !{ptr @efct_hw_reset.__UNIQUE_ID_ddebug348, !362, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!362 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3568, i32 4}
!363 = !{ptr @.str.206, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3571, i32 4}
!365 = !{ptr @efct_hw_reset._entry, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @efct_hw_reset._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.207, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 183, i32 4}
!369 = !{ptr @.str.208, !368, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @.str.209, !368, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @efct_hw_cb_link._entry, !368, !"_entry", i1 false, i1 false}
!372 = !{ptr @efct_hw_cb_link._entry_ptr, !368, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.211, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 193, i32 4}
!375 = !{ptr @efct_hw_cb_link._entry.210, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @efct_hw_cb_link._entry_ptr.212, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.213, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 203, i32 5}
!379 = !{ptr @efct_hw_cb_link.__UNIQUE_ID_ddebug316, !378, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!380 = !{ptr @.str.215, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 205, i32 4}
!382 = !{ptr @efct_hw_cb_link._entry.214, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @efct_hw_cb_link._entry_ptr.216, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.217, !381, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @.str.219, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 211, i32 3}
!387 = !{ptr @efct_hw_cb_link._entry.218, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @efct_hw_cb_link._entry_ptr.220, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.221, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 221, i32 3}
!391 = !{ptr @efct_hw_cb_link.__UNIQUE_ID_ddebug317, !390, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!392 = !{ptr @.str.222, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 88, i32 3}
!394 = !{ptr @.str.223, !393, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @__efct_read_topology_cb.__UNIQUE_ID_ddebug315, !393, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!396 = !{ptr @.str.224, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/scsi/elx/efct/../libefc_sli/sli4.h", i32 3744, i32 3}
!398 = !{ptr @.str.225, !397, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @.str.226, !397, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @sli_get_max_sgl._entry, !397, !"_entry", i1 false, i1 false}
!401 = !{ptr @sli_get_max_sgl._entry_ptr, !397, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.227, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 66, i32 3}
!404 = !{ptr @.str.228, !403, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @efct_hw_read_max_dump_size.__UNIQUE_ID_ddebug313, !403, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!406 = !{ptr @.str.229, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 73, i32 2}
!408 = !{ptr @efct_hw_read_max_dump_size.__UNIQUE_ID_ddebug314, !407, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!409 = !{ptr @.str.230, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 874, i32 3}
!411 = !{ptr @.str.231, !410, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @efct_hw_config_sli_port_health_check._entry, !410, !"_entry", i1 false, i1 false}
!413 = !{ptr @efct_hw_config_sli_port_health_check._entry_ptr, !410, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.232, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 876, i32 3}
!416 = !{ptr @efct_hw_config_sli_port_health_check.__UNIQUE_ID_ddebug322, !415, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!417 = !{ptr @.str.233, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 710, i32 3}
!419 = !{ptr @.str.234, !418, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @.str.235, !418, !"<string literal>", i1 false, i1 false}
!421 = !{ptr @efct_hw_config_set_fdt_xfer_hint._entry, !418, !"_entry", i1 false, i1 false}
!422 = !{ptr @efct_hw_config_set_fdt_xfer_hint._entry_ptr, !418, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @.str.237, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 713, i32 3}
!425 = !{ptr @efct_hw_config_set_fdt_xfer_hint._entry.236, !424, !"_entry", i1 false, i1 false}
!426 = !{ptr @efct_hw_config_set_fdt_xfer_hint._entry_ptr.238, !424, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.239, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 726, i32 2}
!429 = !{ptr @.str.240, !428, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @efct_hw_config_rq._entry, !428, !"_entry", i1 false, i1 false}
!431 = !{ptr @efct_hw_config_rq._entry_ptr, !428, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @.str.242, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 768, i32 3}
!434 = !{ptr @efct_hw_config_rq._entry.241, !433, !"_entry", i1 false, i1 false}
!435 = !{ptr @efct_hw_config_rq._entry_ptr.243, !433, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @.str.244, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 321, i32 2}
!438 = !{ptr @.str.245, !437, !"<string literal>", i1 false, i1 false}
!439 = !{ptr @efct_logfcfi._entry, !437, !"_entry", i1 false, i1 false}
!440 = !{ptr @efct_logfcfi._entry_ptr, !437, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.246, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 804, i32 2}
!443 = !{ptr @.str.247, !442, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @efct_hw_config_mrq.__UNIQUE_ID_ddebug321, !442, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!445 = !{ptr @.str.248, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 811, i32 3}
!447 = !{ptr @efct_hw_config_mrq._entry, !446, !"_entry", i1 false, i1 false}
!448 = !{ptr @efct_hw_config_mrq._entry_ptr, !446, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.250, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 820, i32 3}
!451 = !{ptr @efct_hw_config_mrq._entry.249, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @efct_hw_config_mrq._entry_ptr.251, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.252, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 541, i32 4}
!455 = !{ptr @efct_hw_setup_io._entry, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @efct_hw_setup_io._entry_ptr, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.254, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 554, i32 4}
!459 = !{ptr @efct_hw_setup_io._entry.253, !458, !"_entry", i1 false, i1 false}
!460 = !{ptr @efct_hw_setup_io._entry_ptr.255, !458, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.257, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 567, i32 5}
!463 = !{ptr @efct_hw_setup_io._entry.256, !462, !"_entry", i1 false, i1 false}
!464 = !{ptr @efct_hw_setup_io._entry_ptr.258, !462, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.259, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 401, i32 3}
!467 = !{ptr @.str.260, !466, !"<string literal>", i1 false, i1 false}
!468 = !{ptr @efct_hw_wq_process_io._entry, !466, !"_entry", i1 false, i1 false}
!469 = !{ptr @efct_hw_wq_process_io._entry_ptr, !466, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @.str.261, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 415, i32 4}
!472 = !{ptr @efct_hw_wq_process_io.__UNIQUE_ID_ddebug318, !471, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!473 = !{ptr @.str.262, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 440, i32 5}
!475 = !{ptr @efct_hw_wq_process_io.__UNIQUE_ID_ddebug319, !474, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!476 = !{ptr @.str.263, !474, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @.str.264, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 448, i32 5}
!479 = !{ptr @efct_hw_wq_process_io.__UNIQUE_ID_ddebug320, !478, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!480 = !{ptr @.str.265, !478, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @.str.266, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 652, i32 4}
!483 = !{ptr @.str.267, !482, !"<string literal>", i1 false, i1 false}
!484 = !{ptr @efct_hw_init_prereg_io._entry, !482, !"_entry", i1 false, i1 false}
!485 = !{ptr @efct_hw_init_prereg_io._entry_ptr, !482, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.268, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1197, i32 4}
!488 = !{ptr @.str.269, !487, !"<string literal>", i1 false, i1 false}
!489 = !{ptr @efct_hw_rx_buffer_alloc._entry, !487, !"_entry", i1 false, i1 false}
!490 = !{ptr @efct_hw_rx_buffer_alloc._entry_ptr, !487, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.270, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1365, i32 4}
!493 = !{ptr @efct_hw_cmd_submit_pending.__UNIQUE_ID_ddebug331, !492, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!494 = !{ptr @.str.271, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1594, i32 4}
!496 = !{ptr @.str.272, !495, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @_efct_hw_io_alloc._entry, !495, !"_entry", i1 false, i1 false}
!498 = !{ptr @_efct_hw_io_alloc._entry_ptr, !495, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.273, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1894, i32 3}
!501 = !{ptr @.str.274, !500, !"<string literal>", i1 false, i1 false}
!502 = !{ptr @efct_hw_wq_process_abort._entry, !500, !"_entry", i1 false, i1 false}
!503 = !{ptr @efct_hw_wq_process_abort._entry_ptr, !500, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @.str.275, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1465, i32 3}
!506 = !{ptr @.str.276, !505, !"<string literal>", i1 false, i1 false}
!507 = !{ptr @efct_hw_command_process._entry, !505, !"_entry", i1 false, i1 false}
!508 = !{ptr @efct_hw_command_process._entry_ptr, !505, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @.str.277, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 1521, i32 3}
!511 = !{ptr @.str.278, !510, !"<string literal>", i1 false, i1 false}
!512 = !{ptr @efct_hw_command_cancel.__UNIQUE_ID_ddebug332, !510, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!513 = !{ptr @.str.279, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3512, i32 3}
!515 = !{ptr @.str.280, !514, !"<string literal>", i1 false, i1 false}
!516 = !{ptr @efct_hw_sli_reset.__UNIQUE_ID_ddebug344, !514, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!517 = !{ptr @.str.281, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3514, i32 4}
!519 = !{ptr @efct_hw_sli_reset._entry, !518, !"_entry", i1 false, i1 false}
!520 = !{ptr @efct_hw_sli_reset._entry_ptr, !518, !"_entry_ptr", i1 false, i1 false}
!521 = !{ptr @.str.282, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3519, i32 3}
!523 = !{ptr @efct_hw_sli_reset.__UNIQUE_ID_ddebug345, !522, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!524 = !{ptr @.str.284, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3521, i32 4}
!526 = !{ptr @efct_hw_sli_reset._entry.283, !525, !"_entry", i1 false, i1 false}
!527 = !{ptr @efct_hw_sli_reset._entry_ptr.285, !525, !"_entry_ptr", i1 false, i1 false}
!528 = !{ptr @efct_hw_sli_reset.__UNIQUE_ID_ddebug346, !529, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!529 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3528, i32 3}
!530 = !{ptr @efct_hw_sli_reset._entry.286, !531, !"_entry", i1 false, i1 false}
!531 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3530, i32 4}
!532 = !{ptr @efct_hw_sli_reset._entry_ptr.287, !531, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @.str.289, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/scsi/elx/efct/efct_hw.c", i32 3535, i32 3}
!535 = !{ptr @efct_hw_sli_reset._entry.288, !534, !"_entry", i1 false, i1 false}
!536 = !{ptr @efct_hw_sli_reset._entry_ptr.290, !534, !"_entry_ptr", i1 false, i1 false}
!537 = !{!"sp"}
!538 = !{i32 1, !"wchar_size", i32 2}
!539 = !{i32 1, !"min_enum_size", i32 4}
!540 = !{i32 8, !"branch-target-enforcement", i32 0}
!541 = !{i32 8, !"sign-return-address", i32 0}
!542 = !{i32 8, !"sign-return-address-all", i32 0}
!543 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!544 = !{i32 7, !"uwtable", i32 1}
!545 = !{i32 7, !"frame-pointer", i32 2}
!546 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!547 = !{i8 0, i8 2}
!548 = !{i64 2149042315, i64 2149042320, i64 2149042333, i64 2149042377, i64 2149042411, i64 2149042432}
!549 = !{!"auto-init"}
!550 = !{!"branch_weights", i32 1, i32 2000}
!551 = !{i64 2148428938, i64 2148428964, i64 2148428993, i64 2148429027, i64 2148429058, i64 2148429081}
!552 = !{i64 5836899}
!553 = !{i64 2155801252}
!554 = !{i64 2155802095}
!555 = !{i64 2155802769}
!556 = !{i64 2148518493}
!557 = !{i64 2148432933, i64 2148432965, i64 2148432994, i64 2148433028, i64 2148433059, i64 2148433082}
!558 = !{!"branch_weights", i32 2000, i32 1}
!559 = !{i64 2149394607}
!560 = !{i64 913471, i64 913495, i64 913516, i64 913533, i64 913550}
!561 = !{i64 2156259713}
!562 = !{i64 938430, i64 938451, i64 938474, i64 938493, i64 938512}
!563 = !{i64 2156260121}
!564 = !{!"branch_weights", i32 1, i32 4000, i32 1}
