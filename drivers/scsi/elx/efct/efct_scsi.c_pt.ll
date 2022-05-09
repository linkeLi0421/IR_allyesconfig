; ModuleID = '/llk/IR_all_yes/drivers/scsi/elx/efct/efct_scsi.c_pt.bc'
source_filename = "../drivers/scsi/elx/efct/efct_scsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.efct_node = type { %struct.list_head, %struct.kref, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, [32 x i8], i32, i32, i32, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.efct = type { ptr, [6 x ptr], i32, i8, i8, i8, [16 x %struct.efct_intr_context], i32, [32 x i8], i32, %struct.list_head, %struct.efct_scsi_tgt, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.efct_hw, i32, ptr, i32, %struct.xarray, i32, i32, ptr }
%struct.efct_intr_context = type { ptr, i32 }
%struct.efct_scsi_tgt = type { i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, ptr, %struct.list_head, %struct.spinlock, i64 }
%struct.efct_hw = type { ptr, %struct.sli4, i16, i16, i32, i32, i8, i8, i16, %struct.efct_hw_config, [5 x i32], [32 x %struct.sli4_queue], [32 x %struct.sli4_queue], [32 x i16], [1 x %struct.sli4_queue], [97 x %struct.sli4_queue], [16 x %struct.sli4_queue], i32, i32, i32, i32, i32, i32, %struct.list_head, [128 x %struct.efct_queue_hash], [128 x %struct.efct_queue_hash], [128 x %struct.efct_queue_hash], [32 x ptr], [32 x ptr], [1 x ptr], [97 x ptr], [16 x ptr], i32, i32, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, %struct.sli4_link_event, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.efc_dma, %struct.efc_dma, %struct.efc_dma, %struct.atomic_t, [32 x i32], [32 x i32], %struct.atomic_t, ptr }
%struct.sli4 = type { ptr, ptr, [6 x ptr], i32, i32, i32, i16, i16, i16, i16, %struct.sli4_queue_info, i16, i8, i8, [2 x i8], i16, i32, i8, [8 x i8], [8 x i8], [2 x i32], [2 x [16 x i8]], [16 x i8], [3 x i32], [64 x i8], [32 x i8], i32, i32, [5 x %struct.sli4_extent], i32, %struct.sli4_params, i32, i32, i32, ptr, ptr, %struct.efc_dma, ptr, %struct.efc_dma }
%struct.sli4_queue_info = type { [5 x i16], [5 x i32], [5 x i16], [5 x i16], [5 x i32] }
%struct.sli4_extent = type { i32, i32, i32, ptr, ptr, i32 }
%struct.sli4_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.efct_hw_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [4 x i32] }
%struct.sli4_queue = type { %struct.efc_dma, %struct.spinlock, i32, i16, i16, i16, i16, i8, ptr, i16, i32, i32, i32, i64, %union.anon.85 }
%union.anon.85 = type { i32 }
%struct.efct_queue_hash = type { i8, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sli4_link_event = type { i32, i32, i32, i32, ptr, i32 }
%struct.efc_dma = type { ptr, ptr, i32, i32, i32, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.efct_xport = type { ptr, i64, i64, i32, %struct.atomic_t, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.timer_list, %union.efct_xport_stats_u, %struct.efct_xport_fcp_stats }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.efct_xport_stats_u = type { %struct.efct_xport_host_statistics }
%struct.efct_xport_host_statistics = type { %struct.completion, %struct.efct_xport_link_stats, %struct.efct_xport_host_stats }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.efct_xport_link_stats = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.efct_xport_host_stats = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.efct_xport_fcp_stats = type { i64, i64, i64, i64, i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
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
%struct.efct_io = type { ptr, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.kref, ptr, i32, i32, i32, i32, ptr, i32, i32, %struct.efct_scsi_tgt_io, i32, ptr, i32, ptr, i32, i8, i8, i8, i8, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, i8, i8, %union.efct_hw_io_param_u, i32, i64, ptr, ptr, %struct.efc_dma, i32, i8, i8, i32 }
%struct.efct_scsi_tgt_io = type { %struct.se_cmd, [96 x i8], i32, i32, i64, i32, i8, ptr, i32, i32, i32, i32, i8, i8, i32 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%union.efct_hw_io_param_u = type { %struct.sli_bls_params }
%struct.sli_bls_params = type { i32, i32, i16, i16, i32, i32, i8, [12 x i8], i16, i16 }
%struct.efct_hw_io = type { %struct.kref, i32, ptr, %struct.list_head, %struct.efct_hw_wqe, ptr, %struct.efc_dma, i16, i8, i32, i8, i8, i16, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.efc_dma, ptr, i32, i32, i32 }
%struct.efct_hw_wqe = type { %struct.list_head, i8, i8, i32, i32, ptr }
%struct.efct_scsi_sgl = type { i32, i32, i32 }
%struct.efct_scsi_cmd_resp = type { i8, i16, ptr, i32, ptr, i32, i32, i32 }
%struct.fcp_resp = type { [8 x i8], i16, i8, i8 }
%struct.fcp_resp_with_ext = type { %struct.fcp_resp, %struct.fcp_resp_ext }
%struct.fcp_resp_ext = type { i32, i32, i32 }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.anon.87 = type { %struct.fcp_resp_with_ext, %struct.fcp_resp_rsp_info }
%struct.fcp_resp_rsp_info = type { [3 x i8], i8, [4 x i8] }
%struct.sli4_sge = type { i32, i32, i32, i32 }

@efct_scsi_io_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 43, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IO alloc Failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_scsi_io_alloc\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/scsi/elx/efct/efct_scsi.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@efct_scsi_io_alloc._entry_ptr = internal global ptr @efct_scsi_io_alloc._entry, section ".printk_index", align 4
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"scsi_io\00", [24 x i8] zeroinitializer }, align 32
@_efct_scsi_io_free.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"efct\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_efct_scsi_io_free\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[%s][%04x][i:%04x t:%04x h:%04x]freeing io 0x%p %s\0A\00", [44 x i8] zeroinitializer }, align 32
@_efct_scsi_io_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 85, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IO already freed.\0A\00", [45 x i8] zeroinitializer }, align 32
@_efct_scsi_io_free._entry_ptr = internal global ptr @_efct_scsi_io_free._entry, section ".printk_index", align 4
@efct_scsi_io_free.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.10, ptr @.str.2, ptr @.str.8, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efct_scsi_io_free\00", [46 x i8] zeroinitializer }, align 32
@efct_scsi_check_pending.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"efct_scsi_check_pending\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw async failed\0A\00", [47 x i8] zeroinitializer }, align 32
@efct_scsi_send_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 780, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NULL response buffer\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efct_scsi_send_resp\00", [44 x i8] zeroinitializer }, align 32
@efct_scsi_send_resp._entry_ptr = internal global ptr @efct_scsi_send_resp._entry, section ".printk_index", align 4
@efct_scsi_send_resp._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 814, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Sense exceeds max size.\0A\00", [39 x i8] zeroinitializer }, align 32
@efct_scsi_send_resp._entry_ptr.17 = internal global ptr @efct_scsi_send_resp._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ba_rjt\00", [25 x i8] zeroinitializer }, align 32
@efct_bls_send_rjt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 950, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"efct_scsi_io_dispatch() failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efct_bls_send_rjt\00", [46 x i8] zeroinitializer }, align 32
@efct_bls_send_rjt._entry_ptr = internal global ptr @efct_bls_send_rjt._entry, section ".printk_index", align 4
@efct_scsi_tgt_abort_io.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 1, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efct_scsi_tgt_abort_io\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%s][%04x][i:%04x t:%04x h:%04x]command no longer active\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tgt_abort\00", [22 x i8] zeroinitializer }, align 32
@efct_scsi_io_complete.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 1, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"efct_scsi_io_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"completion for non-busy io tag 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@efct_scsi_io_complete.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.24, ptr @.str.2, ptr @.str.8, i8 1, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@efct_scsi_dispatch_pending.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"efct_scsi_dispatch_pending\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"call hw async failed\0A\00", [42 x i8] zeroinitializer }, align 32
@efct_scsi_io_dispatch_no_hw_io.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"efct_scsi_io_dispatch_no_hw_io\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s][%04x][i:%04x t:%04x h:%04x]IO: not active\0A\00", [48 x i8] zeroinitializer }, align 32
@efct_scsi_io_dispatch_no_hw_io.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[%s][%04x][i:%04x t:%04x h:%04x]aborting\0A\00", [54 x i8] zeroinitializer }, align 32
@efct_scsi_io_dispatch_no_hw_io.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.28, ptr @.str.2, ptr @.str.31, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%s][%04x][i:%04x t:%04x h:%04x]Failed to abort IO rc=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@efct_scsi_io_dispatch_no_hw_io.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.28, ptr @.str.2, ptr @.str.32, i8 0, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[%s][%04x][i:%04x t:%04x h:%04x]Unknown IO type=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@efct_scsi_io_dispatch_hw_io.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.33, ptr @.str.2, ptr @.str.32, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"efct_scsi_io_dispatch_hw_io\00", [36 x i8] zeroinitializer }, align 32
@efct_scsi_build_sgls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 212, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"efct_hw_io_init_sges failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"efct_scsi_build_sgls\00", [43 x i8] zeroinitializer }, align 32
@efct_scsi_build_sgls._entry_ptr = internal global ptr @efct_scsi_build_sgls._entry, section ".printk_index", align 4
@efct_scsi_build_sgls._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 221, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"add sge failed cnt=%d rc=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@efct_scsi_build_sgls._entry_ptr.38 = internal global ptr @efct_scsi_build_sgls._entry.36, section ".printk_index", align 4
@efc_log_sgl.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"efc_log_sgl\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s][%04x][i:%04x t:%04x h:%04x]def_sgl at 0x%x 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@efc_log_sgl.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.39, ptr @.str.2, ptr @.str.41, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"[%s][%04x][i:%04x t:%04x h:%04x]SGL %2d 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@efct_scsi_xfer_data.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efct_scsi_xfer_data\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s][%04x][i:%04x t:%04x h:%04x]%s wire_len %llu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"send\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"recv\00", [27 x i8] zeroinitializer }, align 32
@efct_target_io_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: IO can not be NULL\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efct_target_io_cb\00", [46 x i8] zeroinitializer }, align 32
@efct_target_io_cb._entry_ptr = internal global ptr @efct_target_io_cb._entry, section ".printk_index", align 4
@efct_target_io_cb.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[%s][%04x][i:%04x t:%04x h:%04x]status x%x ext_status x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bls_rsp\00", [24 x i8] zeroinitializer }, align 32
@efct_target_bls_resp_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 848, ptr @.str.52, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s=%#x x=%#x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"efct_target_bls_resp_cb\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@efct_target_bls_resp_cb._entry_ptr = internal global ptr @efct_target_bls_resp_cb._entry, section ".printk_index", align 4
@switch.table.efct_scsi_send_tmf_resp = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\00\00\04\09\05", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967294]
@__sancov_gen_cov_switch_values.53 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 3, i64 22, i64 254, i64 255]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 5, i64 22, i64 64]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 43, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 59, i32 21 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 82, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 85, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 101, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 508, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 780, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 814, i32 5 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 929, i32 21 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 950, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1110, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1133, i32 27 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1150, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 450, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 354, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 362, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 371, i32 5 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 381, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 323, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 212, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 220, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 237, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 244, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 630, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 117, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 121, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 898, i32 21 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.228 = private constant [37 x i8] c"../drivers/scsi/elx/efct/efct_scsi.c\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 848, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [37 x i8] c"switch.table.efct_scsi_send_tmf_resp\00", align 1
@llvm.compiler.used = appending global [68 x ptr] [ptr @_efct_scsi_io_free._entry, ptr @_efct_scsi_io_free._entry_ptr, ptr @efct_bls_send_rjt._entry, ptr @efct_bls_send_rjt._entry_ptr, ptr @efct_scsi_build_sgls._entry, ptr @efct_scsi_build_sgls._entry.36, ptr @efct_scsi_build_sgls._entry_ptr, ptr @efct_scsi_build_sgls._entry_ptr.38, ptr @efct_scsi_io_alloc._entry, ptr @efct_scsi_io_alloc._entry_ptr, ptr @efct_scsi_send_resp._entry, ptr @efct_scsi_send_resp._entry.15, ptr @efct_scsi_send_resp._entry_ptr, ptr @efct_scsi_send_resp._entry_ptr.17, ptr @efct_target_bls_resp_cb._entry, ptr @efct_target_bls_resp_cb._entry_ptr, ptr @efct_target_io_cb._entry, ptr @efct_target_io_cb._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @switch.table.efct_scsi_send_tmf_resp], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_scsi_io_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_efct_scsi_io_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_scsi_send_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_scsi_send_resp._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_bls_send_rjt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_scsi_build_sgls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_scsi_build_sgls._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_target_io_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_target_bls_resp_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.efct_scsi_send_tmf_resp to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efct_scsi_io_alloc(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %efct1 = getelementptr inbounds %struct.efct_node, ptr %node, i32 0, i32 3
  %0 = ptrtoint ptr %efct1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efct1, align 4
  %xport2 = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %xport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xport2, align 8
  %io_pool = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %io_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_pool, align 4
  %call = tail call ptr @efct_io_pool_io_alloc(ptr noundef %5) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #10
  %io_alloc_failed_count = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_alloc_failed_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %io_alloc_failed_count, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_alloc_failed_count, ptr %io_alloc_failed_count, i32 1, ptr elementtype(i32) %io_alloc_failed_count) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !123
  br label %cleanup

if.end:                                           ; preds = %entry
  %ref = getelementptr inbounds %struct.efct_io, ptr %call, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #7
  %9 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %ref, align 4
  %release = getelementptr inbounds %struct.efct_io, ptr %call, i32 0, i32 7
  %10 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @_efct_scsi_io_free, ptr %release, align 4
  %11 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %call, align 8
  %node6 = getelementptr inbounds %struct.efct_io, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %node6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %node, ptr %node6, align 4
  %ref7 = getelementptr inbounds %struct.efct_node, ptr %node, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref7, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %ref7, i32 1, i32 3, i32 1) #7
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref7, ptr %ref7, i32 1, ptr elementtype(i32) %ref7) #7, !srcloc !124
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !125

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !126

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref7, i32 noundef %.sink.i.i.i.i) #7
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %io_type = getelementptr inbounds %struct.efct_io, ptr %call, i32 0, i32 18
  %15 = ptrtoint ptr %io_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %io_type, align 8
  %display_name = getelementptr inbounds %struct.efct_io, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %display_name to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.5, ptr %display_name, align 8
  %cmd_ini = getelementptr inbounds %struct.efct_io, ptr %call, i32 0, i32 36
  %17 = ptrtoint ptr %cmd_ini to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %cmd_ini, align 8
  %cmd_tgt = getelementptr inbounds %struct.efct_io, ptr %call, i32 0, i32 34
  %18 = ptrtoint ptr %cmd_tgt to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %cmd_tgt, align 2
  %list_entry = getelementptr inbounds %struct.efct_io, ptr %call, i32 0, i32 4
  %19 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list_entry, ptr %list_entry, align 4
  %prev.i = getelementptr inbounds %struct.efct_io, ptr %call, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list_entry, ptr %prev.i, align 4
  %active_ios_lock = getelementptr inbounds %struct.efct_node, ptr %node, i32 0, i32 6
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %active_ios_lock) #7
  %active_ios = getelementptr inbounds %struct.efct_node, ptr %node, i32 0, i32 7
  %21 = ptrtoint ptr %active_ios to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %active_ios, align 4
  %call.i.i40 = tail call zeroext i1 @__list_add_valid(ptr noundef %list_entry, ptr noundef %active_ios, ptr noundef %22) #7
  br i1 %call.i.i40, label %if.end.i.i, label %kref_get.exit.list_add.exit_crit_edge

kref_get.exit.list_add.exit_crit_edge:            ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %list_entry, ptr %prev1.i.i, align 4
  %24 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %list_entry, align 4
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %active_ios, ptr %prev.i, align 4
  %26 = ptrtoint ptr %active_ios to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %list_entry, ptr %active_ios, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %kref_get.exit.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %active_ios_lock, i32 noundef %call11) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %do.end
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efct_io_pool_io_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_efct_scsi_io_free(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %arg, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %node2 = getelementptr i8, ptr %arg, i32 -20
  %2 = ptrtoint ptr %node2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node2, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end16_crit_edge, label %cond.true

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %logmask, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp5.not = icmp eq i32 %and, 0
  br i1 %cmp5.not, label %cond.true.do.end16_crit_edge, label %do.body6

cond.true.do.end16_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.body6:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_efct_scsi_io_free.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_efct_scsi_io_free, %if.then10)) #7
          to label %do.end16 [label %if.then10], !srcloc !127

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %node2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %node2, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %11, i32 0, i32 8
  %instance_index = getelementptr i8, ptr %arg, i32 -28
  %12 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr i8, ptr %arg, i32 8
  %14 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr i8, ptr %arg, i32 12
  %16 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr i8, ptr %arg, i32 16
  %18 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_tag, align 8
  %display_name13 = getelementptr i8, ptr %arg, i32 -24
  %20 = ptrtoint ptr %display_name13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %display_name13, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_efct_scsi_io_free.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %display_name, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, ptr noundef %add.ptr, ptr noundef %21) #7
  br label %do.end16

do.end16:                                         ; preds = %if.then10, %do.body6, %cond.true.do.end16_crit_edge, %entry.do.end16_crit_edge
  %io_free = getelementptr i8, ptr %arg, i32 789
  %22 = ptrtoint ptr %io_free to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %io_free, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool17.not = icmp eq i8 %23, 0
  br i1 %tobool17.not, label %do.body26, label %do.end21

do.end21:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.9) #10
  br label %cleanup

do.body26:                                        ; preds = %do.end16
  %active_ios_lock = getelementptr inbounds %struct.efct_node, ptr %3, i32 0, i32 6
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %active_ios_lock) #7
  %list_entry = getelementptr i8, ptr %arg, i32 -16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_entry) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.body26.list_del_init.exit_crit_edge

do.body26.list_del_init.exit_crit_edge:           ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr i8, ptr %arg, i32 -12
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %list_entry to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %list_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body26.list_del_init.exit_crit_edge
  %32 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list_entry, ptr %list_entry, align 4
  %prev.i3.i = getelementptr i8, ptr %arg, i32 -12
  %33 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %list_entry, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %active_ios_lock, i32 noundef %call30) #7
  %ref = getelementptr inbounds %struct.efct_node, ptr %3, i32 0, i32 1
  %release = getelementptr inbounds %struct.efct_node, ptr %3, i32 0, i32 2
  %34 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %release, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #7
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #7, !srcloc !129
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !126

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #7
  br label %kref_put.exit

if.then.i:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void %35(ptr noundef %ref) #7
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %37 = ptrtoint ptr %node2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %node2, align 4
  %xport = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 12
  %38 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xport, align 8
  %io_pool = getelementptr inbounds %struct.efct_xport, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %io_pool to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_pool, align 4
  tail call void @efct_io_pool_io_free(ptr noundef %41, ptr noundef %add.ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %kref_put.exit, %do.end21
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efct_io_pool_io_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_scsi_io_free(ptr noundef %io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.do.end10_crit_edge, label %cond.true

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logmask, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %cond.true.do.end10_crit_edge, label %do.body3

cond.true.do.end10_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.body3:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_io_free.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_io_free, %if.then6)) #7
          to label %do.end10 [label %if.then6], !srcloc !127

if.then6:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %node = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %9, i32 0, i32 8
  %instance_index = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %10 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %12 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %14 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %16 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_tag, align 8
  %display_name8 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 2
  %18 = ptrtoint ptr %display_name8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %display_name8, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_io_free.__UNIQUE_ID_ddebug314, ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %display_name, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, ptr noundef %io, ptr noundef %19) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body3, %cond.true.do.end10_crit_edge, %entry.do.end10_crit_edge
  %ref = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #7
  %20 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not = icmp eq i32 %21, 0
  br i1 %tobool12.not, label %do.end29, label %do.end10.if.end35_crit_edge, !prof !125

do.end10.if.end35_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.end29:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 102, i32 noundef 9, ptr noundef null) #7
  br label %if.end35

if.end35:                                         ; preds = %do.end29, %do.end10.if.end35_crit_edge
  %release = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 7
  %22 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #7
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #7, !srcloc !129
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !126

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #7
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void %23(ptr noundef %ref) #7
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_scsi_check_pending(ptr noundef %efct) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %xport1 = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 12
  %0 = ptrtoint ptr %xport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xport1, align 8
  %io_pending_recursing = getelementptr inbounds %struct.efct_xport, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_pending_recursing, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %io_pending_recursing, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_pending_recursing, ptr %io_pending_recursing, i32 1, ptr elementtype(i32) %io_pending_recursing) #7, !srcloc !122
  %asmresult.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not, label %entry.while.cond_crit_edge, label %if.then

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_pending_recursing, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %io_pending_recursing, i32 1, i32 3, i32 1) #7
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_pending_recursing, ptr %io_pending_recursing, i32 1, ptr elementtype(i32) %io_pending_recursing) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !133
  br label %cleanup

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry.while.cond_crit_edge
  %count.0 = phi i32 [ %inc, %while.cond.while.cond_crit_edge ], [ 0, %entry.while.cond_crit_edge ]
  %call4 = tail call fastcc ptr @efct_scsi_dispatch_pending(ptr noundef %efct)
  %tobool5.not = icmp eq ptr %call4, null
  %inc = add i32 %count.0, 1
  br i1 %tobool5.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0)
  %tobool6.not = icmp eq i32 %count.0, 0
  br i1 %tobool6.not, label %do.body11, label %if.then7

if.then7:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_pending_recursing, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %io_pending_recursing, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_pending_recursing, ptr %io_pending_recursing, i32 1, ptr elementtype(i32) %io_pending_recursing) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !133
  br label %cleanup

do.body11:                                        ; preds = %while.end
  %io_pending_lock = getelementptr inbounds %struct.efct_xport, ptr %1, i32 0, i32 7
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_pending_lock) #7
  %io_pending_list = getelementptr inbounds %struct.efct_xport, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %io_pending_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn88 = load ptr, ptr %io_pending_list, align 4
  %cmp18.not89 = icmp eq ptr %.pn88, %io_pending_list
  br i1 %cmp18.not89, label %do.body11.if.end54.critedge_crit_edge, label %do.body11.for.body_crit_edge

do.body11.for.body_crit_edge:                     ; preds = %do.body11
  br label %for.body

do.body11.if.end54.critedge_crit_edge:            ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body11.for.body_crit_edge
  %.pn90 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn88, %do.body11.for.body_crit_edge ]
  %io_type = getelementptr i8, ptr %.pn90, i32 648
  %6 = ptrtoint ptr %io_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp20 = icmp eq i32 %7, 5
  br i1 %cmp20, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %io_to_abort = getelementptr i8, ptr %.pn90, i32 764
  %8 = ptrtoint ptr %io_to_abort to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_to_abort, align 4
  %hio = getelementptr inbounds %struct.efct_io, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %hio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hio, align 4
  %tobool22.not = icmp eq ptr %11, null
  br i1 %tobool22.not, label %land.lhs.true.for.inc_crit_edge, label %if.then23

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then23:                                        ; preds = %land.lhs.true
  %io.0.le = getelementptr i8, ptr %.pn90, i32 -24
  %call.i.i83 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn90) #7
  br i1 %call.i.i83, label %if.end.i.i, label %if.then23.list_del_init.exit_crit_edge

if.then23.list_del_init.exit_crit_edge:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn90, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %.pn90 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.pn90, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then23.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %.pn90 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %.pn90, ptr %.pn90, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn90, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %.pn90, ptr %prev.i3.i, align 4
  %io_pending_count = getelementptr inbounds %struct.efct_xport, ptr %1, i32 0, i32 13
  %call.i.i81 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_pending_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %io_pending_count, i32 1, i32 3, i32 1) #7
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_pending_count, ptr %io_pending_count, i32 1, ptr elementtype(i32) %io_pending_count) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_pending_lock, i32 noundef %call13) #7
  %call35 = tail call fastcc i32 @efct_scsi_io_dispatch_no_hw_io(ptr noundef %io.0.le)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %list_del_init.exit.if.end54_crit_edge, label %if.then37

list_del_init.exit.if.end54_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %.pn90 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn90, align 4
  %cmp18.not = icmp eq ptr %.pn, %io_pending_list
  br i1 %cmp18.not, label %for.inc.if.end54.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end54.critedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.critedge

if.then37:                                        ; preds = %list_del_init.exit
  %hw = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19
  %call38 = tail call i32 @efct_hw_async_call(ptr noundef %hw, ptr noundef nonnull @efct_scsi_check_pending_async_cb, ptr noundef %io.0.le) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then37.if.end54_crit_edge, label %do.body41

if.then37.if.end54_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

do.body41:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_check_pending.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_check_pending, %if.then48)) #7
          to label %if.end54 [label %if.then48], !srcloc !127

if.then48:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %efct, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_check_pending.__UNIQUE_ID_ddebug324, ptr noundef %dev, ptr noundef nonnull @.str.12) #7
  br label %if.end54

if.end54.critedge:                                ; preds = %for.inc.if.end54.critedge_crit_edge, %do.body11.if.end54.critedge_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_pending_lock, i32 noundef %call13) #7
  br label %if.end54

if.end54:                                         ; preds = %if.end54.critedge, %if.then48, %do.body41, %if.then37.if.end54_crit_edge, %list_del_init.exit.if.end54_crit_edge
  %call.i.i82 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_pending_recursing, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %io_pending_recursing, i32 1, i32 3, i32 1) #7
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_pending_recursing, ptr %io_pending_recursing, i32 1, ptr elementtype(i32) %io_pending_recursing) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !133
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then7, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @efct_scsi_dispatch_pending(ptr noundef %efct) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %xport1 = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 12
  %0 = ptrtoint ptr %xport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xport1, align 8
  %io_pending_lock = getelementptr inbounds %struct.efct_xport, ptr %1, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_pending_lock) #7
  %io_pending_list = getelementptr inbounds %struct.efct_xport, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %io_pending_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %io_pending_list, align 4
  %cmp.i.not = icmp eq ptr %3, %io_pending_list
  br i1 %cmp.i.not, label %entry.if.then10_crit_edge, label %if.then

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 -24
  %call.i.i79 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #7
  br i1 %call.i.i79, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
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
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %prev.i3.i, align 4
  %tobool9.not = icmp eq ptr %add.ptr, null
  br i1 %tobool9.not, label %if.end.if.then10_crit_edge, label %if.end12

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then10:                                        ; preds = %if.end.if.then10_crit_edge, %entry.if.then10_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_pending_lock, i32 noundef %call3) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %io_type = getelementptr i8, ptr %3, i32 648
  %12 = ptrtoint ptr %io_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp13 = icmp eq i32 %13, 5
  br i1 %cmp13, label %if.end12.if.end27_crit_edge, label %if.else

if.end12.if.end27_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.else:                                          ; preds = %if.end12
  %hw = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19
  %call16 = tail call ptr @efct_hw_io_alloc(ptr noundef %hw) #7
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.else
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %call.i.i80 = tail call zeroext i1 @__list_add_valid(ptr noundef %io_pending_list, ptr noundef %3, ptr noundef %15) #7
  br i1 %call.i.i80, label %if.end.i.i81, label %if.then18.if.end23.thread_crit_edge

if.then18.if.end23.thread_crit_edge:              ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.thread

if.end.i.i81:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %io_pending_list, ptr %prev1.i.i, align 4
  %17 = ptrtoint ptr %io_pending_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %io_pending_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.efct_xport, ptr %1, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %3, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %io_pending_list, ptr %3, align 4
  br label %if.end23.thread

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %hw_priv = getelementptr i8, ptr %3, i32 644
  %20 = ptrtoint ptr %hw_priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_priv, align 4
  %eq = getelementptr inbounds %struct.efct_hw_io, ptr %call16, i32 0, i32 22
  %22 = ptrtoint ptr %eq to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %eq, align 4
  br label %if.end27

if.end23.thread:                                  ; preds = %if.end.i.i81, %if.then18.if.end23.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_pending_lock, i32 noundef %call3) #7
  br label %cleanup

if.end27:                                         ; preds = %if.else21, %if.end12.if.end27_crit_edge
  %hio.0 = phi ptr [ %call16, %if.else21 ], [ null, %if.end12.if.end27_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_pending_lock, i32 noundef %call3) #7
  %io_pending_count = getelementptr inbounds %struct.efct_xport, ptr %1, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_pending_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %io_pending_count, i32 1, i32 3, i32 1) #7
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_pending_count, ptr %io_pending_count, i32 1, ptr elementtype(i32) %io_pending_count) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !133
  %tobool29.not = icmp eq ptr %hio.0, null
  br i1 %tobool29.not, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call fastcc i32 @efct_scsi_io_dispatch_no_hw_io(ptr noundef nonnull %add.ptr)
  br label %if.end34

if.else32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = tail call fastcc i32 @efct_scsi_io_dispatch_hw_io(ptr noundef nonnull %add.ptr, ptr noundef nonnull %hio.0)
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %if.then30
  %status.0 = phi i32 [ %call33, %if.else32 ], [ %call31, %if.then30 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool35.not = icmp eq i32 %status.0, 0
  br i1 %tobool35.not, label %if.end34.cleanup_crit_edge, label %if.then36

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then36:                                        ; preds = %if.end34
  %hw37 = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19
  %call38 = tail call i32 @efct_hw_async_call(ptr noundef %hw37, ptr noundef nonnull @efct_scsi_check_pending_async_cb, ptr noundef nonnull %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then36.cleanup_crit_edge, label %do.body41

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_dispatch_pending.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_dispatch_pending, %if.then47)) #7
          to label %cleanup [label %if.then47], !srcloc !127

if.then47:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %efct, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_dispatch_pending.__UNIQUE_ID_ddebug323, ptr noundef %dev, ptr noundef nonnull @.str.27) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %do.body41, %if.then36.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end23.thread, %if.then10
  %retval.0 = phi ptr [ null, %if.then10 ], [ %add.ptr, %if.then36.cleanup_crit_edge ], [ %add.ptr, %if.then47 ], [ %add.ptr, %if.end34.cleanup_crit_edge ], [ null, %if.end23.thread ], [ %add.ptr, %do.body41 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efct_scsi_io_dispatch_no_hw_io(ptr noundef %io) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_type = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 18
  %0 = ptrtoint ptr %io_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cond = icmp eq i32 %1, 5
  br i1 %cond, label %sw.bb, label %do.body73

sw.bb:                                            ; preds = %entry
  %io_to_abort = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 42
  %2 = ptrtoint ptr %io_to_abort to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_to_abort, align 4
  %hio = getelementptr inbounds %struct.efct_io, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %hio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hio, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body, label %do.body8

do.body:                                          ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_io_dispatch_no_hw_io.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_io_dispatch_no_hw_io, %if.then4)) #7
          to label %do.end [label %if.then4], !srcloc !127

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %node = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %10 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %node, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %11, i32 0, i32 8
  %instance_index = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %12 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %14 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %16 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %18 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_tag, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_io_dispatch_no_hw_io.__UNIQUE_ID_ddebug319, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef %display_name, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #7
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %hw_cb = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 41
  %20 = ptrtoint ptr %hw_cb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_cb, align 8
  %hio5 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 19
  %22 = ptrtoint ptr %hio5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hio5, align 4
  %call6 = tail call i32 %21(ptr noundef %23, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %io) #7
  br label %sw.epilog

do.body8:                                         ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_io_dispatch_no_hw_io.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_io_dispatch_no_hw_io, %if.then20)) #7
          to label %do.end33 [label %if.then20], !srcloc !127

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %node24 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %28 = ptrtoint ptr %node24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %node24, align 4
  %display_name25 = getelementptr inbounds %struct.efct_node, ptr %29, i32 0, i32 8
  %instance_index27 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %30 = ptrtoint ptr %instance_index27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %instance_index27, align 4
  %init_task_tag28 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %32 = ptrtoint ptr %init_task_tag28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %init_task_tag28, align 8
  %tgt_task_tag29 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %34 = ptrtoint ptr %tgt_task_tag29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tgt_task_tag29, align 4
  %hw_tag30 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %36 = ptrtoint ptr %hw_tag30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hw_tag30, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_io_dispatch_no_hw_io.__UNIQUE_ID_ddebug320, ptr noundef %dev23, ptr noundef nonnull @.str.30, ptr noundef %display_name25, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37) #7
  br label %do.end33

do.end33:                                         ; preds = %if.then20, %do.body8
  %38 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io, align 8
  %hw = getelementptr inbounds %struct.efct, ptr %39, i32 0, i32 19
  %send_abts = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 35
  %40 = ptrtoint ptr %send_abts to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %send_abts, align 1, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool35 = icmp ne i8 %41, 0
  %hw_cb36 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 41
  %42 = ptrtoint ptr %hw_cb36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_cb36, align 8
  %call37 = tail call i32 @efct_hw_io_abort(ptr noundef %hw, ptr noundef nonnull %5, i1 noundef zeroext %tobool35, ptr noundef %43, ptr noundef %io) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %do.end33.sw.epilog_crit_edge, label %if.then39

do.end33.sw.epilog_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then39:                                        ; preds = %do.end33
  %44 = ptrtoint ptr %hw_cb36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw_cb36, align 8
  %46 = zext i32 %call37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call37, label %if.then42 [
    i32 -2, label %if.then39.if.end69_crit_edge
    i32 -115, label %if.then39.if.end69_crit_edge155
  ]

if.then39.if.end69_crit_edge155:                  ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then39.if.end69_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_io_dispatch_no_hw_io.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_io_dispatch_no_hw_io, %if.then55)) #7
          to label %if.end69 [label %if.then55], !srcloc !127

if.then55:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %node59 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %51 = ptrtoint ptr %node59 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %node59, align 4
  %display_name60 = getelementptr inbounds %struct.efct_node, ptr %52, i32 0, i32 8
  %instance_index62 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %53 = ptrtoint ptr %instance_index62 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %instance_index62, align 4
  %init_task_tag63 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %55 = ptrtoint ptr %init_task_tag63 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %init_task_tag63, align 8
  %tgt_task_tag64 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %57 = ptrtoint ptr %tgt_task_tag64 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tgt_task_tag64, align 4
  %hw_tag65 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %59 = ptrtoint ptr %hw_tag65 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hw_tag65, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_io_dispatch_no_hw_io.__UNIQUE_ID_ddebug321, ptr noundef %dev58, ptr noundef nonnull @.str.31, ptr noundef %display_name60, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %call37) #7
  br label %if.end69

if.end69:                                         ; preds = %if.then55, %if.then42, %if.then39.if.end69_crit_edge, %if.then39.if.end69_crit_edge155
  %status.0 = phi i32 [ -1, %if.then55 ], [ 0, %if.then39.if.end69_crit_edge ], [ 0, %if.then39.if.end69_crit_edge155 ], [ -1, %if.then42 ]
  %hio70 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 19
  %61 = ptrtoint ptr %hio70 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hio70, align 4
  %call71 = tail call i32 %45(ptr noundef %62, i32 noundef 0, i32 noundef %status.0, i32 noundef 0, ptr noundef %io) #7
  br label %sw.epilog

do.body73:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_io_dispatch_no_hw_io.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_io_dispatch_no_hw_io, %if.then85)) #7
          to label %sw.epilog [label %if.then85], !srcloc !127

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %io, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %node89 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %67 = ptrtoint ptr %node89 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %node89, align 4
  %display_name90 = getelementptr inbounds %struct.efct_node, ptr %68, i32 0, i32 8
  %instance_index92 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %69 = ptrtoint ptr %instance_index92 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %instance_index92, align 4
  %init_task_tag93 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %71 = ptrtoint ptr %init_task_tag93 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %init_task_tag93, align 8
  %tgt_task_tag94 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %73 = ptrtoint ptr %tgt_task_tag94 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tgt_task_tag94, align 4
  %hw_tag95 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %75 = ptrtoint ptr %hw_tag95 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %hw_tag95, align 8
  %77 = ptrtoint ptr %io_type to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %io_type, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_io_dispatch_no_hw_io.__UNIQUE_ID_ddebug322, ptr noundef %dev88, ptr noundef nonnull @.str.32, ptr noundef %display_name90, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %78) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then85, %do.body73, %if.end69, %do.end33.sw.epilog_crit_edge, %do.end
  %rc.2 = phi i32 [ 0, %do.end33.sw.epilog_crit_edge ], [ 0, %if.end69 ], [ 0, %do.end ], [ -5, %if.then85 ], [ -5, %do.body73 ]
  ret i32 %rc.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_async_call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_scsi_check_pending_async_cb(ptr nocapture noundef readnone %hw, i32 noundef %status, ptr nocapture noundef readnone %mqe, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %entry.cleanup6_crit_edge, label %if.then

entry.cleanup6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup6

if.then:                                          ; preds = %entry
  %hw_cb = getelementptr inbounds %struct.efct_io, ptr %arg, i32 0, i32 41
  %0 = ptrtoint ptr %hw_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_cb, align 8
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.then.cleanup6_crit_edge, label %if.end

if.then.cleanup6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup6

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %hw_cb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %hw_cb, align 8
  %hio = getelementptr inbounds %struct.efct_io, ptr %arg, i32 0, i32 19
  %3 = ptrtoint ptr %hio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hio, align 4
  %call = tail call i32 %1(ptr noundef %4, i32 noundef 0, i32 noundef 253, i32 noundef 0, ptr noundef nonnull %arg) #7
  br label %cleanup6

cleanup6:                                         ; preds = %if.end, %if.then.cleanup6_crit_edge, %entry.cleanup6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_scsi_io_dispatch(ptr noundef %io, ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %xport2 = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %xport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xport2, align 8
  %hw_cb = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 41
  %4 = ptrtoint ptr %hw_cb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cb, ptr %hw_cb, align 8
  %hio3 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 19
  %5 = ptrtoint ptr %hio3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hio3, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.body5, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @efct_scsi_io_dispatch_hw_io(ptr noundef %io, ptr noundef nonnull %6)
  br label %cleanup

do.body5:                                         ; preds = %entry
  %io_pending_lock = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 7
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_pending_lock) #7
  %io_pending_list = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %io_pending_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %io_pending_list, align 4
  %cmp.i.not = icmp eq ptr %8, %io_pending_list
  br i1 %cmp.i.not, label %if.end24, label %if.then12

if.then12:                                        ; preds = %do.body5
  %low_latency = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 22
  %9 = ptrtoint ptr %low_latency to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %low_latency, align 1, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  %io_pending_link17 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 5
  %11 = ptrtoint ptr %io_pending_link17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %io_pending_link17, ptr %io_pending_link17, align 4
  %prev.i93 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %prev.i93 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %io_pending_link17, ptr %prev.i93, align 4
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then12
  %call.i.i92 = tail call zeroext i1 @__list_add_valid(ptr noundef %io_pending_list, ptr noundef %io_pending_link17, ptr noundef %io_pending_link17) #7
  br i1 %call.i.i92, label %if.end.i.i, label %if.then14.if.end20_crit_edge

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %prev.i93 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %io_pending_list, ptr %prev.i93, align 4
  %14 = ptrtoint ptr %io_pending_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %io_pending_link17, ptr %io_pending_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %io_pending_link17, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %io_pending_link17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %io_pending_list, ptr %io_pending_link17, align 4
  br label %if.end20

if.else:                                          ; preds = %if.then12
  %prev.i94 = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %prev.i94 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i94, align 4
  %call.i.i95 = tail call zeroext i1 @__list_add_valid(ptr noundef %io_pending_link17, ptr noundef %18, ptr noundef %io_pending_list) #7
  br i1 %call.i.i95, label %if.end.i.i97, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end.i.i97:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %prev.i94 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %io_pending_link17, ptr %prev.i94, align 4
  %20 = ptrtoint ptr %io_pending_link17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %io_pending_list, ptr %io_pending_link17, align 4
  %21 = ptrtoint ptr %prev.i93 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev.i93, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %io_pending_link17, ptr %18, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end.i.i97, %if.else.if.end20_crit_edge, %if.end.i.i, %if.then14.if.end20_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_pending_lock, i32 noundef %call7) #7
  %io_pending_count = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_pending_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %io_pending_count, i32 1, i32 3, i32 1) #7
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_pending_count, ptr %io_pending_count, i32 1, ptr elementtype(i32) %io_pending_count) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !123
  %io_total_pending = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 11
  %call.i.i86 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_total_pending, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %io_total_pending, i32 1, i32 3, i32 1) #7
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_total_pending, ptr %io_total_pending, i32 1, ptr elementtype(i32) %io_total_pending) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @efct_scsi_check_pending(ptr noundef %1)
  br label %cleanup

if.end24:                                         ; preds = %do.body5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_pending_lock, i32 noundef %call7) #7
  %25 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io, align 8
  %hw = getelementptr inbounds %struct.efct, ptr %26, i32 0, i32 19
  %call27 = tail call ptr @efct_hw_io_alloc(ptr noundef %hw) #7
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %do.body31, label %if.end52

do.body31:                                        ; preds = %if.end24
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_pending_lock) #7
  %io_pending_link44 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 5
  %27 = ptrtoint ptr %io_pending_link44 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %io_pending_link44, ptr %io_pending_link44, align 4
  %prev.i98 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %prev.i98 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %io_pending_link44, ptr %prev.i98, align 4
  %prev.i99 = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %prev.i99 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i99, align 4
  %call.i.i100 = tail call zeroext i1 @__list_add_valid(ptr noundef %io_pending_link44, ptr noundef %30, ptr noundef %io_pending_list) #7
  br i1 %call.i.i100, label %if.end.i.i102, label %do.body31.list_add_tail.exit103_crit_edge

do.body31.list_add_tail.exit103_crit_edge:        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit103

if.end.i.i102:                                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %prev.i99 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %io_pending_link44, ptr %prev.i99, align 4
  %32 = ptrtoint ptr %io_pending_link44 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %io_pending_list, ptr %io_pending_link44, align 4
  %33 = ptrtoint ptr %prev.i98 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev.i98, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %io_pending_link44, ptr %30, align 4
  br label %list_add_tail.exit103

list_add_tail.exit103:                            ; preds = %if.end.i.i102, %do.body31.list_add_tail.exit103_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_pending_lock, i32 noundef %call39) #7
  %io_total_pending48 = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 11
  %call.i.i88 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_total_pending48, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %io_total_pending48, i32 1, i32 3, i32 1) #7
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_total_pending48, ptr %io_total_pending48, i32 1, ptr elementtype(i32) %io_total_pending48) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !123
  %io_pending_count50 = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 13
  %call.i.i90 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_pending_count50, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %io_pending_count50, i32 1, i32 3, i32 1) #7
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_pending_count50, ptr %io_pending_count50, i32 1, ptr elementtype(i32) %io_pending_count50) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !123
  br label %cleanup

if.end52:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %call53 = tail call fastcc i32 @efct_scsi_io_dispatch_hw_io(ptr noundef %io, ptr noundef nonnull %call27)
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %list_add_tail.exit103, %if.end20, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call53, %if.end52 ], [ 0, %list_add_tail.exit103 ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efct_scsi_io_dispatch_hw_io(ptr noundef %io, ptr noundef %hio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %hio2 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 19
  %2 = ptrtoint ptr %hio2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hio, ptr %hio2, align 4
  %cmd_tgt = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 34
  %3 = ptrtoint ptr %cmd_tgt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cmd_tgt, align 2, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %indicator = getelementptr inbounds %struct.efct_hw_io, ptr %hio, i32 0, i32 26
  %5 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %indicator, align 4
  %tgt_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %7 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tgt_task_tag, align 4
  br label %if.end6

if.else:                                          ; preds = %entry
  %cmd_ini = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 36
  %8 = ptrtoint ptr %cmd_ini to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmd_ini, align 8, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.else.if.end6_crit_edge, label %if.then4

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %indicator5 = getelementptr inbounds %struct.efct_hw_io, ptr %hio, i32 0, i32 26
  %10 = ptrtoint ptr %indicator5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %indicator5, align 4
  %init_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %12 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %init_task_tag, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.else.if.end6_crit_edge, %if.then
  %reqtag = getelementptr inbounds %struct.efct_hw_io, ptr %hio, i32 0, i32 12
  %13 = ptrtoint ptr %reqtag to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %reqtag, align 2
  %conv = zext i16 %14 to i32
  %hw_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %15 = ptrtoint ptr %hw_tag to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %hw_tag, align 8
  %hw_priv = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 17
  %16 = ptrtoint ptr %hw_priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_priv, align 4
  %eq = getelementptr inbounds %struct.efct_hw_io, ptr %hio, i32 0, i32 22
  %18 = ptrtoint ptr %eq to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %eq, align 4
  %wq_steering = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 23
  %19 = ptrtoint ptr %wq_steering to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %wq_steering, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %21 = icmp ult i8 %20, 3
  br i1 %21, label %switch.lookup, label %if.end6.sw.epilog_crit_edge

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %switch.idx.cast = zext i8 %20 to i32
  %wq_steering12 = getelementptr inbounds %struct.efct_hw_io, ptr %hio, i32 0, i32 18
  %22 = ptrtoint ptr %wq_steering12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %switch.idx.cast, ptr %wq_steering12, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end6.sw.epilog_crit_edge
  %io_type = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 18
  %23 = ptrtoint ptr %io_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %io_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cond = icmp eq i32 %24, 0
  br i1 %cond, label %sw.bb13, label %do.body

sw.bb13:                                          ; preds = %sw.epilog
  %hw = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19
  %25 = ptrtoint ptr %hio2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hio2, align 4
  %sgl = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 12
  %27 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sgl, align 8
  %sgl_count = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 14
  %29 = ptrtoint ptr %sgl_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sgl_count, align 8
  %hio_type = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 39
  %31 = ptrtoint ptr %hio_type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hio_type, align 4
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 8
  %call.i = tail call i32 @efct_hw_io_init_sges(ptr noundef %hw, ptr noundef %26, i32 noundef %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %do.end.i

for.cond.preheader.i:                             ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp26.not.i = icmp eq i32 %30, 0
  br i1 %cmp26.not.i, label %for.cond.preheader.i.if.end17_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end17_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end.i:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.34, i32 noundef %call.i) #10
  br label %sw.epilog57

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %30
  br i1 %exitcond.not.i, label %for.cond.i.if.end17_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.if.end17_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.027.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.efct_scsi_sgl, ptr %28, i32 %i.027.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %len.i = getelementptr %struct.efct_scsi_sgl, ptr %28, i32 %i.027.i, i32 2
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i, align 4
  %call2.i = tail call i32 @efct_hw_io_add_sge(ptr noundef %hw, ptr noundef %26, i32 noundef %38, i32 noundef %40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %for.cond.i, label %do.end7.i

do.end7.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %34, align 8
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.37, i32 noundef %30, i32 noundef %call2.i) #10
  br label %sw.epilog57

if.end17:                                         ; preds = %for.cond.i.if.end17_crit_edge, %for.cond.preheader.i.if.end17_crit_edge
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.end17.if.end22_crit_edge, label %cond.true

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

cond.true:                                        ; preds = %if.end17
  %logmask = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 15
  %43 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %logmask, align 4
  %and = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp19.not = icmp eq i32 %and, 0
  br i1 %cmp19.not, label %cond.true.if.end22_crit_edge, label %if.then21

cond.true.if.end22_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @efc_log_sgl(ptr noundef %io)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %cond.true.if.end22_crit_edge, %if.end17.if.end22_crit_edge
  %app_id = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 47
  %45 = ptrtoint ptr %app_id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %app_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool23.not = icmp eq i32 %46, 0
  br i1 %tobool23.not, label %if.end22.if.end27_crit_edge, label %if.then24

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %app_id26 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 7, i32 7
  %47 = ptrtoint ptr %app_id26 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %app_id26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end22.if.end27_crit_edge
  %node = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %48 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %node, align 4
  %vpi = getelementptr inbounds %struct.efct_node, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %vpi to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vpi, align 4
  %iparam28 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38
  %vpi29 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 4
  %52 = ptrtoint ptr %vpi29 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %vpi29, align 4
  %rpi = getelementptr inbounds %struct.efct_node, ptr %49, i32 0, i32 12
  %53 = ptrtoint ptr %rpi to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rpi, align 4
  %rpi32 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 2
  %55 = ptrtoint ptr %rpi32 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %rpi32, align 4
  %port_fc_id = getelementptr inbounds %struct.efct_node, ptr %49, i32 0, i32 9
  %56 = ptrtoint ptr %port_fc_id to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port_fc_id, align 4
  %58 = ptrtoint ptr %iparam28 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %iparam28, align 4
  %node_fc_id = getelementptr inbounds %struct.efct_node, ptr %49, i32 0, i32 10
  %59 = ptrtoint ptr %node_fc_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %node_fc_id, align 4
  %d_id = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 1
  %61 = ptrtoint ptr %d_id to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %d_id, align 4
  %wire_len = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 40
  %62 = ptrtoint ptr %wire_len to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %wire_len, align 8
  %conv37 = trunc i64 %63 to i32
  %xmit_len = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 7, i32 11
  %64 = ptrtoint ptr %xmit_len to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv37, ptr %xmit_len, align 4
  %65 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %io, align 8
  %hw40 = getelementptr inbounds %struct.efct, ptr %66, i32 0, i32 19
  %67 = ptrtoint ptr %hio_type to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hio_type, align 4
  %69 = ptrtoint ptr %hio2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hio2, align 4
  %hw_cb = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 41
  %71 = ptrtoint ptr %hw_cb to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw_cb, align 8
  %call44 = tail call i32 @efct_hw_io_send(ptr noundef %hw40, i32 noundef %68, ptr noundef %70, ptr noundef %iparam28, ptr noundef %72, ptr noundef %io) #7
  br label %sw.epilog57

do.body:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_io_dispatch_hw_io.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_io_dispatch_hw_io, %if.then49)) #7
          to label %sw.epilog57 [label %if.then49], !srcloc !127

if.then49:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %io, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  %node51 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %77 = ptrtoint ptr %node51 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %node51, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %78, i32 0, i32 8
  %instance_index = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %79 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %instance_index, align 4
  %init_task_tag52 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %81 = ptrtoint ptr %init_task_tag52 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %init_task_tag52, align 8
  %tgt_task_tag53 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %83 = ptrtoint ptr %tgt_task_tag53 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tgt_task_tag53, align 4
  %85 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %hw_tag, align 8
  %87 = ptrtoint ptr %io_type to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %io_type, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_io_dispatch_hw_io.__UNIQUE_ID_ddebug318, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef %display_name, i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %88) #7
  br label %sw.epilog57

sw.epilog57:                                      ; preds = %if.then49, %do.body, %if.end27, %do.end7.i, %do.end.i
  %rc.0 = phi i32 [ %call44, %if.end27 ], [ -5, %if.then49 ], [ -5, %do.end.i ], [ %call2.i, %do.end7.i ], [ -5, %do.body ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efct_hw_io_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_scsi_io_dispatch_abort(ptr noundef %io, ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %xport2 = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %xport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xport2, align 8
  %hw_cb = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 41
  %4 = ptrtoint ptr %hw_cb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cb, ptr %hw_cb, align 8
  %io_pending_lock = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %io_pending_lock) #7
  %io_pending_list = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %io_pending_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %io_pending_list, align 4
  %cmp.i.not = icmp eq ptr %6, %io_pending_list
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %io_pending_link = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 5
  %7 = ptrtoint ptr %io_pending_link to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %io_pending_link, ptr %io_pending_link, align 4
  %prev.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %io_pending_link, ptr %prev.i, align 4
  %prev.i31 = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %prev.i31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i31, align 4
  %call.i.i32 = tail call zeroext i1 @__list_add_valid(ptr noundef %io_pending_link, ptr noundef %10, ptr noundef %io_pending_list) #7
  br i1 %call.i.i32, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %prev.i31 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %io_pending_link, ptr %prev.i31, align 4
  %12 = ptrtoint ptr %io_pending_link to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %io_pending_list, ptr %io_pending_link, align 4
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %io_pending_link, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_pending_lock, i32 noundef %call4) #7
  %io_pending_count = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_pending_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %io_pending_count, i32 1, i32 3, i32 1) #7
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_pending_count, ptr %io_pending_count, i32 1, ptr elementtype(i32) %io_pending_count) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !123
  %io_total_pending = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 11
  %call.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_total_pending, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %io_total_pending, i32 1, i32 3, i32 1) #7
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_total_pending, ptr %io_total_pending, i32 1, ptr elementtype(i32) %io_total_pending) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @efct_scsi_check_pending(ptr noundef %1)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %io_pending_lock, i32 noundef %call4) #7
  %call14 = tail call fastcc i32 @efct_scsi_io_dispatch_no_hw_io(ptr noundef %io)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %list_add_tail.exit
  %retval.0 = phi i32 [ %call14, %if.end ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_scsi_send_rd_data(ptr noundef %io, i32 noundef %flags, ptr nocapture noundef readnone %sgl, i32 noundef %sgl_count, i64 noundef %len, ptr noundef %cb, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @efct_scsi_xfer_data(ptr noundef %io, i32 noundef %flags, i32 noundef %sgl_count, i64 noundef %len, i32 noundef 6, i32 noundef 1, ptr noundef %cb, ptr noundef %arg)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efct_scsi_xfer_data(ptr noundef %io, i32 noundef %flags, i32 noundef %sgl_count, i64 noundef %xwire_len, i32 noundef %type, i32 noundef %enable_ar, ptr noundef %cb, ptr noundef %arg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %sgl_count1 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 14
  %0 = ptrtoint ptr %sgl_count1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %sgl_count, ptr %sgl_count1, align 8
  %1 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io, align 8
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %entry.do.end14_crit_edge, label %cond.true

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efct, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %logmask, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp5.not = icmp eq i32 %and, 0
  br i1 %cmp5.not, label %cond.true.do.end14_crit_edge, label %do.body6

cond.true.do.end14_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.body6:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_xfer_data.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_xfer_data, %if.then9)) #7
          to label %do.end14 [label %if.then9], !srcloc !127

if.then9:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %node = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %10, i32 0, i32 8
  %instance_index = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %11 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %13 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %15 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %17 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_tag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %cmp11 = icmp eq i32 %type, 6
  %cond = select i1 %cmp11, ptr @.str.44, ptr @.str.45
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_xfer_data.__UNIQUE_ID_ddebug325, ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef %display_name, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, ptr noundef nonnull %cond, i64 noundef %xwire_len) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then9, %do.body6, %cond.true.do.end14_crit_edge, %entry.do.end14_crit_edge
  %hio_type = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 39
  %19 = ptrtoint ptr %hio_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %type, ptr %hio_type, align 4
  %scsi_tgt_cb = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 26
  %20 = ptrtoint ptr %scsi_tgt_cb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cb, ptr %scsi_tgt_cb, align 8
  %scsi_tgt_cb_arg = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 27
  %21 = ptrtoint ptr %scsi_tgt_cb_arg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arg, ptr %scsi_tgt_cb_arg, align 4
  %exp_xfer_len = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 16
  %22 = ptrtoint ptr %exp_xfer_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %exp_xfer_len, align 8
  %transferred = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 20
  %24 = ptrtoint ptr %transferred to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %transferred, align 8
  %sub = sub i32 %23, %25
  %conv = zext i32 %sub to i64
  %26 = tail call i64 @llvm.umin.i64(i64 %conv, i64 %xwire_len)
  %wire_len = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 40
  %27 = ptrtoint ptr %wire_len to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %wire_len, align 8
  %sub22 = sub i64 %xwire_len, %26
  %conv23 = trunc i64 %sub22 to i32
  %iparam = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38
  %28 = call ptr @memset(ptr %iparam, i32 0, i32 40)
  %init_task_tag24 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %29 = ptrtoint ptr %init_task_tag24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %init_task_tag24, align 8
  %conv25 = trunc i32 %30 to i16
  %ox_id = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 6
  %31 = ptrtoint ptr %ox_id to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv25, ptr %ox_id, align 4
  %offset = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 5
  %32 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %25, ptr %offset, align 4
  %cs_ctl = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 45
  %33 = ptrtoint ptr %cs_ctl to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cs_ctl, align 4
  %cs_ctl30 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 7, i32 3
  %35 = ptrtoint ptr %cs_ctl30 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %cs_ctl30, align 4
  %timeout = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 44
  %36 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %timeout, align 8
  %conv31 = trunc i32 %37 to i8
  %timeout33 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 7, i32 4
  %38 = ptrtoint ptr %timeout33 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv31, ptr %timeout33, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable_ar)
  %tobool34.not = icmp ne i32 %enable_ar, 0
  %and35 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp ne i32 %and35, 0
  %or.cond.not = and i1 %tobool36.not, %tobool34.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23)
  %cmp38 = icmp eq i32 %conv23, 0
  %or.cond1 = select i1 %or.cond.not, i1 %cmp38, i1 false
  br i1 %or.cond1, label %land.lhs.true40, label %do.end14.if.end57_crit_edge

do.end14.if.end57_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

land.lhs.true40:                                  ; preds = %do.end14
  %conv42 = zext i32 %25 to i64
  %add = add nuw nsw i64 %26, %conv42
  %conv45 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv45)
  %cmp46 = icmp eq i64 %add, %conv45
  %and49 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %or.cond2 = and i1 %tobool50.not, %cmp46
  br i1 %or.cond2, label %if.then51, label %land.lhs.true40.if.end57_crit_edge

land.lhs.true40.if.end57_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then51:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #9
  %flags53 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 7, i32 1
  %39 = ptrtoint ptr %flags53 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %flags53, align 2
  %41 = or i16 %40, 2
  store i16 %41, ptr %flags53, align 2
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %land.lhs.true40.if.end57_crit_edge, %do.end14.if.end57_crit_edge
  %.sink = phi i8 [ 1, %if.then51 ], [ 0, %land.lhs.true40.if.end57_crit_edge ], [ 0, %do.end14.if.end57_crit_edge ]
  %auto_resp56 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 21
  %42 = ptrtoint ptr %auto_resp56 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %.sink, ptr %auto_resp56, align 4
  %xfer_req = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 25
  %43 = ptrtoint ptr %xfer_req to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %26, ptr %xfer_req, align 8
  %add60 = add i32 %25, %conv23
  %44 = ptrtoint ptr %transferred to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add60, ptr %transferred, align 8
  br i1 %cmp38, label %if.end57.if.end77_crit_edge, label %if.then62

if.end57.if.end77_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then62:                                        ; preds = %if.end57
  %sgl63 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 12
  %45 = ptrtoint ptr %sgl63 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sgl63, align 8
  %sub64 = add i32 %sgl_count, -1
  %arrayidx = getelementptr %struct.efct_scsi_sgl, ptr %46, i32 %sub64
  br label %while.body

while.body:                                       ; preds = %if.end76.while.body_crit_edge, %if.then62
  %sgl_ptr.06 = phi ptr [ %arrayidx, %if.then62 ], [ %incdec.ptr, %if.end76.while.body_crit_edge ]
  %residual.05 = phi i32 [ %conv23, %if.then62 ], [ %sub74, %if.end76.while.body_crit_edge ]
  %len66 = getelementptr inbounds %struct.efct_scsi_sgl, ptr %sgl_ptr.06, i32 0, i32 2
  %47 = ptrtoint ptr %len66 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %residual.05, i32 %48)
  %cmp67 = icmp ult i32 %residual.05, %48
  br i1 %cmp67, label %if.end76.thread, label %if.end76

if.end76.thread:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub70 = sub i32 %48, %residual.05
  %49 = ptrtoint ptr %len66 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub70, ptr %len66, align 4
  br label %if.end77

if.end76:                                         ; preds = %while.body
  %50 = ptrtoint ptr %len66 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %len66, align 4
  %sub74 = sub i32 %residual.05, %48
  %51 = ptrtoint ptr %sgl_count1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sgl_count1, align 8
  %dec = add i32 %52, -1
  store i32 %dec, ptr %sgl_count1, align 8
  %incdec.ptr = getelementptr %struct.efct_scsi_sgl, ptr %sgl_ptr.06, i32 -1
  %tobool65.not = icmp eq i32 %sub74, 0
  br i1 %tobool65.not, label %if.end76.if.end77_crit_edge, label %if.end76.while.body_crit_edge

if.end76.while.body_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end76.if.end77_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.end77:                                         ; preds = %if.end76.if.end77_crit_edge, %if.end76.thread, %if.end57.if.end77_crit_edge
  %low_latency = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 22
  %53 = trunc i32 %flags to i8
  %54 = lshr i8 %53, 2
  %55 = and i8 %54, 1
  %56 = ptrtoint ptr %low_latency to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %low_latency, align 1
  %and82 = lshr i32 %flags, 16
  %57 = trunc i32 %and82 to i8
  %conv83 = and i8 %57, 15
  %wq_steering = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 23
  %58 = ptrtoint ptr %wq_steering to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv83, ptr %wq_steering, align 2
  %and84 = lshr i32 %flags, 20
  %59 = trunc i32 %and84 to i8
  %conv86 = and i8 %59, 15
  %wq_class = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 24
  %60 = ptrtoint ptr %wq_class to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv86, ptr %wq_class, align 1
  %xport = getelementptr inbounds %struct.efct, ptr %2, i32 0, i32 12
  %61 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %xport, align 8
  %tobool87.not = icmp eq ptr %62, null
  br i1 %tobool87.not, label %if.end77.if.end106_crit_edge, label %if.then88

if.end77.if.end106_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then88:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %type)
  %cmp91 = icmp eq i32 %type, 6
  br i1 %cmp91, label %if.then93, label %if.then99

if.then93:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  %fcp_stats = getelementptr inbounds %struct.efct_xport, ptr %62, i32 0, i32 18
  %input_requests = getelementptr inbounds %struct.efct_xport, ptr %62, i32 0, i32 18, i32 2
  %63 = ptrtoint ptr %input_requests to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %input_requests, align 8
  %inc = add i64 %64, 1
  store i64 %inc, ptr %input_requests, align 8
  br label %if.end106.sink.split

if.then99:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  %output_requests = getelementptr inbounds %struct.efct_xport, ptr %62, i32 0, i32 18, i32 3
  %65 = ptrtoint ptr %output_requests to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %output_requests, align 8
  %inc101 = add i64 %66, 1
  store i64 %inc101, ptr %output_requests, align 8
  %output_bytes = getelementptr inbounds %struct.efct_xport, ptr %62, i32 0, i32 18, i32 1
  br label %if.end106.sink.split

if.end106.sink.split:                             ; preds = %if.then99, %if.then93
  %fcp_stats.sink14 = phi ptr [ %fcp_stats, %if.then93 ], [ %output_bytes, %if.then99 ]
  %67 = ptrtoint ptr %fcp_stats.sink14 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %fcp_stats.sink14, align 8
  %add95 = add i64 %68, %xwire_len
  store i64 %add95, ptr %fcp_stats.sink14, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.end106.sink.split, %if.end77.if.end106_crit_edge
  %call107 = tail call i32 @efct_scsi_io_dispatch(ptr noundef %io, ptr noundef nonnull @efct_target_io_cb)
  ret i32 %call107
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_scsi_recv_wr_data(ptr noundef %io, i32 noundef %flags, ptr nocapture noundef readnone %sgl, i32 noundef %sgl_count, i64 noundef %len, ptr noundef %cb, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @efct_scsi_xfer_data(ptr noundef %io, i32 noundef %flags, i32 noundef %sgl_count, i64 noundef %len, i32 noundef 7, i32 noundef 0, ptr noundef %cb, ptr noundef %arg)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_scsi_send_resp(ptr noundef %io, i32 noundef %flags, ptr noundef readonly %rsp, ptr noundef %cb, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %tobool.not = icmp eq ptr %rsp, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rsp, align 4
  %scsi_status_qualifier3 = getelementptr inbounds %struct.efct_scsi_cmd_resp, ptr %rsp, i32 0, i32 1
  %4 = ptrtoint ptr %scsi_status_qualifier3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %scsi_status_qualifier3, align 2
  %sense_data4 = getelementptr inbounds %struct.efct_scsi_cmd_resp, ptr %rsp, i32 0, i32 4
  %6 = ptrtoint ptr %sense_data4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sense_data4, align 4
  %sense_data_length5 = getelementptr inbounds %struct.efct_scsi_cmd_resp, ptr %rsp, i32 0, i32 5
  %8 = ptrtoint ptr %sense_data_length5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sense_data_length5, align 4
  %residual6 = getelementptr inbounds %struct.efct_scsi_cmd_resp, ptr %rsp, i32 0, i32 6
  %10 = ptrtoint ptr %residual6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %residual6, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %exp_xfer_len = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 16
  %12 = ptrtoint ptr %exp_xfer_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %exp_xfer_len, align 8
  %transferred = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 20
  %14 = ptrtoint ptr %transferred to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transferred, align 8
  %sub = sub i32 %13, %15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %residual.0 = phi i32 [ %11, %if.then ], [ %sub, %if.else ]
  %scsi_status.0 = phi i8 [ %3, %if.then ], [ 0, %if.else ]
  %scsi_status_qualifier.0 = phi i16 [ %5, %if.then ], [ 0, %if.else ]
  %sense_data.0 = phi ptr [ %7, %if.then ], [ null, %if.else ]
  %sense_data_length.0 = phi i32 [ %9, %if.then ], [ 0, %if.else ]
  %wire_len = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 40
  %16 = ptrtoint ptr %wire_len to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %wire_len, align 8
  %hio_type = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 39
  %17 = ptrtoint ptr %hio_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %hio_type, align 4
  %scsi_tgt_cb = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 26
  %18 = ptrtoint ptr %scsi_tgt_cb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cb, ptr %scsi_tgt_cb, align 8
  %scsi_tgt_cb_arg = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 27
  %19 = ptrtoint ptr %scsi_tgt_cb_arg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arg, ptr %scsi_tgt_cb_arg, align 4
  %iparam = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38
  %20 = call ptr @memset(ptr %iparam, i32 0, i32 40)
  %init_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %21 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %init_task_tag, align 8
  %conv = trunc i32 %22 to i16
  %ox_id = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 6
  %23 = ptrtoint ptr %ox_id to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv, ptr %ox_id, align 4
  %cs_ctl = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 45
  %24 = ptrtoint ptr %cs_ctl to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cs_ctl, align 4
  %cs_ctl10 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 7, i32 3
  %26 = ptrtoint ptr %cs_ctl10 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %cs_ctl10, align 4
  %timeout = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 44
  %27 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %timeout, align 8
  %conv11 = trunc i32 %28 to i8
  %timeout13 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 7, i32 4
  %29 = ptrtoint ptr %timeout13 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv11, ptr %timeout13, align 1
  %low_latency = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 22
  %30 = trunc i32 %flags to i8
  %31 = lshr i8 %30, 2
  %32 = and i8 %31, 1
  %33 = ptrtoint ptr %low_latency to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %low_latency, align 1
  %and15 = lshr i32 %flags, 16
  %34 = trunc i32 %and15 to i8
  %conv16 = and i8 %34, 15
  %wq_steering = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 23
  %35 = ptrtoint ptr %wq_steering to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv16, ptr %wq_steering, align 2
  %and17 = lshr i32 %flags, 20
  %36 = trunc i32 %and17 to i8
  %conv19 = and i8 %36, 15
  %wq_class = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 24
  %37 = ptrtoint ptr %wq_class to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv19, ptr %wq_class, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %scsi_status.0)
  %cmp21.not = icmp eq i8 %scsi_status.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %residual.0)
  %tobool23.not = icmp eq i32 %residual.0, 0
  %or.cond = select i1 %cmp21.not, i1 %tobool23.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sense_data_length.0)
  %tobool25.not = icmp eq i32 %sense_data_length.0, 0
  %or.cond164 = select i1 %or.cond, i1 %tobool25.not, i1 false
  br i1 %or.cond164, label %if.then92, label %if.then26

if.then26:                                        ; preds = %if.end
  %rspbuf = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 43
  %38 = ptrtoint ptr %rspbuf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rspbuf, align 8
  %tobool27.not = icmp eq ptr %39, null
  br i1 %tobool27.not, label %do.end, label %if.end29

do.end:                                           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %cleanup99

if.end29:                                         ; preds = %if.then26
  %add.ptr = getelementptr i8, ptr %39, i32 24
  %42 = call ptr @memset(ptr %39, i32 0, i32 24)
  %43 = ptrtoint ptr %wire_len to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wire_len, align 8
  %add = add i64 %44, 24
  store i64 %add, ptr %wire_len, align 8
  %fr_status = getelementptr inbounds %struct.fcp_resp, ptr %39, i32 0, i32 3
  %45 = ptrtoint ptr %fr_status to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %scsi_status.0, ptr %fr_status, align 1
  %fr_retry_delay = getelementptr inbounds %struct.fcp_resp, ptr %39, i32 0, i32 1
  %46 = ptrtoint ptr %fr_retry_delay to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %scsi_status_qualifier.0, ptr %fr_retry_delay, align 4
  br i1 %tobool23.not, label %if.end29.if.end53_crit_edge, label %if.then36

if.end29.if.end53_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %residual.0)
  %cmp37 = icmp sgt i32 %residual.0, 0
  %fr_flags = getelementptr inbounds %struct.fcp_resp, ptr %39, i32 0, i32 2
  %47 = ptrtoint ptr %fr_flags to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %fr_flags, align 2
  br i1 %cmp37, label %if.then39, label %if.else43

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %49 = or i8 %48, 8
  %50 = ptrtoint ptr %fr_flags to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %fr_flags, align 2
  br label %if.end53.sink.split

if.else43:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %51 = or i8 %48, 4
  %52 = ptrtoint ptr %fr_flags to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %fr_flags, align 2
  %sub49 = sub i32 0, %residual.0
  br label %if.end53.sink.split

if.end53.sink.split:                              ; preds = %if.else43, %if.then39
  %residual.0.sink = phi i32 [ %residual.0, %if.then39 ], [ %sub49, %if.else43 ]
  %ext = getelementptr inbounds %struct.fcp_resp_with_ext, ptr %39, i32 0, i32 1
  %53 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %residual.0.sink, ptr %ext, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end53.sink.split, %if.end29.if.end53_crit_edge
  %tobool54.not = icmp eq ptr %sense_data.0, null
  br i1 %tobool54.not, label %if.end53.if.end80_crit_edge, label %land.lhs.true

if.end53.if.end80_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

land.lhs.true:                                    ; preds = %if.end53
  %54 = ptrtoint ptr %sense_data.0 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %sense_data.0, align 1
  %56 = and i8 %55, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %56)
  %cmp57 = icmp ne i8 %56, 112
  %or.cond165 = select i1 %cmp57, i1 true, i1 %tobool25.not
  br i1 %or.cond165, label %land.lhs.true.if.end80_crit_edge, label %if.then61

land.lhs.true.if.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then61:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %sense_data_length.0)
  %cmp62 = icmp ugt i32 %sense_data_length.0, 96
  br i1 %cmp62, label %do.end67, label %if.end70

do.end67:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 8
  %dev69 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev69, ptr noundef nonnull @.str.16) #10
  br label %cleanup99

if.end70:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  %fr_flags72 = getelementptr inbounds %struct.fcp_resp, ptr %39, i32 0, i32 2
  %59 = ptrtoint ptr %fr_flags72 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %fr_flags72, align 2
  %61 = or i8 %60, 2
  store i8 %61, ptr %fr_flags72, align 2
  %62 = call ptr @memcpy(ptr %add.ptr, ptr %sense_data.0, i32 %sense_data_length.0)
  %fr_sns_len = getelementptr inbounds %struct.fcp_resp_with_ext, ptr %39, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %fr_sns_len to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sense_data_length.0, ptr %fr_sns_len, align 4
  %conv77 = zext i32 %sense_data_length.0 to i64
  %64 = ptrtoint ptr %wire_len to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %wire_len, align 8
  %add79 = add i64 %65, %conv77
  store i64 %add79, ptr %wire_len, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.end70, %land.lhs.true.if.end80_crit_edge, %if.end53.if.end80_crit_edge
  %phys = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 43, i32 2
  %66 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %phys, align 8
  %sgl = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 12
  %68 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sgl, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %67, ptr %69, align 4
  %71 = load ptr, ptr %sgl, align 8
  %dif_addr = getelementptr inbounds %struct.efct_scsi_sgl, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %dif_addr to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %dif_addr, align 4
  %73 = ptrtoint ptr %wire_len to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %wire_len, align 8
  %conv86 = trunc i64 %74 to i32
  %75 = load ptr, ptr %sgl, align 8
  %len = getelementptr inbounds %struct.efct_scsi_sgl, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv86, ptr %len, align 4
  %sgl_count = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 14
  %77 = ptrtoint ptr %sgl_count to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %sgl_count, align 8
  br label %if.end98

if.then92:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %flags94 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 7, i32 1
  %78 = ptrtoint ptr %flags94 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %flags94, align 2
  %80 = or i16 %79, 2
  store i16 %80, ptr %flags94, align 2
  br label %if.end98

if.end98:                                         ; preds = %if.then92, %if.end80
  %call = tail call i32 @efct_scsi_io_dispatch(ptr noundef %io, ptr noundef nonnull @efct_target_io_cb)
  br label %cleanup99

cleanup99:                                        ; preds = %if.end98, %do.end67, %do.end
  %retval.1 = phi i32 [ %call, %if.end98 ], [ -5, %do.end67 ], [ -5, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_target_io_cb(ptr nocapture noundef readnone %hio, i32 noundef %length, i32 noundef %status, i32 noundef %ext_status, ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %app, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 8
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %cond.true

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #10
  br label %cleanup

cond.true:                                        ; preds = %lor.lhs.false
  %logmask = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logmask, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6.not = icmp eq i32 %and, 0
  br i1 %cmp6.not, label %cond.true.do.end21_crit_edge, label %do.body8

cond.true.do.end21_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

do.body8:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_target_io_cb.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_target_io_cb, %if.then14)) #7
          to label %do.end21 [label %if.then14], !srcloc !127

if.then14:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %app, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %node = getelementptr inbounds %struct.efct_io, ptr %app, i32 0, i32 3
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %9, i32 0, i32 8
  %instance_index = getelementptr inbounds %struct.efct_io, ptr %app, i32 0, i32 1
  %10 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr inbounds %struct.efct_io, ptr %app, i32 0, i32 8
  %12 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr inbounds %struct.efct_io, ptr %app, i32 0, i32 9
  %14 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr inbounds %struct.efct_io, ptr %app, i32 0, i32 10
  %16 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_tag, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_target_io_cb.__UNIQUE_ID_ddebug315, ptr noundef %dev, ptr noundef nonnull @.str.48, ptr noundef %display_name, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %status, i32 noundef %ext_status) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then14, %do.body8, %cond.true.do.end21_crit_edge
  %18 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %app, align 8
  %transferred = getelementptr inbounds %struct.efct_io, ptr %app, i32 0, i32 20
  %20 = ptrtoint ptr %transferred to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %transferred, align 8
  %add = add i32 %21, %length
  store i32 %add, ptr %transferred, align 8
  %scsi_tgt_cb = getelementptr inbounds %struct.efct_io, ptr %app, i32 0, i32 26
  %22 = ptrtoint ptr %scsi_tgt_cb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %scsi_tgt_cb, align 8
  %tobool23.not = icmp eq ptr %23, null
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efct_scsi_check_pending(ptr noundef %19)
  br label %cleanup

if.end25:                                         ; preds = %do.end21
  %24 = ptrtoint ptr %scsi_tgt_cb to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %scsi_tgt_cb, align 8
  %25 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %status, label %sw.default55 [
    i32 0, label %land.lhs.true
    i32 254, label %sw.bb54
    i32 22, label %sw.bb33
    i32 3, label %sw.bb49
    i32 255, label %if.end25.sw.epilog56_crit_edge
  ]

if.end25.sw.epilog56_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog56

land.lhs.true:                                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %auto_resp = getelementptr inbounds %struct.efct_io, ptr %app, i32 0, i32 21
  %26 = ptrtoint ptr %auto_resp to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %auto_resp, align 4, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool29.not = icmp eq i8 %27, 0
  %spec.select = select i1 %tobool29.not, i32 1, i32 2
  br label %sw.epilog56

sw.bb33:                                          ; preds = %if.end25
  %and34 = and i32 %ext_status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else37, label %sw.bb33.sw.epilog56_crit_edge

sw.bb33.sw.epilog56_crit_edge:                    ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog56

if.else37:                                        ; preds = %sw.bb33
  %and38 = and i32 %ext_status, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else41, label %if.else37.sw.epilog56_crit_edge

if.else37.sw.epilog56_crit_edge:                  ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog56

if.else41:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  %and42 = and i32 %ext_status, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %. = select i1 %tobool43.not, i32 6, i32 4
  br label %sw.epilog56

sw.bb49:                                          ; preds = %if.end25
  %28 = zext i32 %ext_status to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %ext_status, label %sw.default [
    i32 64, label %sw.bb49.sw.epilog56_crit_edge
    i32 22, label %sw.bb49.sw.epilog56_crit_edge93
    i32 4, label %sw.bb51
    i32 5, label %sw.bb52
  ]

sw.bb49.sw.epilog56_crit_edge93:                  ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog56

sw.bb49.sw.epilog56_crit_edge:                    ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog56

sw.bb51:                                          ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog56

sw.bb52:                                          ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog56

sw.default:                                       ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog56

sw.bb54:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog56

sw.default55:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog56

sw.epilog56:                                      ; preds = %sw.default55, %sw.bb54, %sw.default, %sw.bb52, %sw.bb51, %sw.bb49.sw.epilog56_crit_edge, %sw.bb49.sw.epilog56_crit_edge93, %if.else41, %if.else37.sw.epilog56_crit_edge, %sw.bb33.sw.epilog56_crit_edge, %land.lhs.true, %if.end25.sw.epilog56_crit_edge
  %flags.091 = phi i32 [ 1, %sw.default55 ], [ 1, %sw.bb54 ], [ 1, %sw.default ], [ 1, %sw.bb52 ], [ 1, %sw.bb51 ], [ 1, %sw.bb33.sw.epilog56_crit_edge ], [ 1, %if.else37.sw.epilog56_crit_edge ], [ 1, %if.else41 ], [ 1, %sw.bb49.sw.epilog56_crit_edge ], [ 1, %sw.bb49.sw.epilog56_crit_edge93 ], [ %spec.select, %land.lhs.true ], [ 1, %if.end25.sw.epilog56_crit_edge ]
  %scsi_stat.0 = phi i32 [ 2, %sw.default55 ], [ 13, %sw.bb54 ], [ 2, %sw.default ], [ 8, %sw.bb52 ], [ 14, %sw.bb51 ], [ 3, %sw.bb33.sw.epilog56_crit_edge ], [ 5, %if.else37.sw.epilog56_crit_edge ], [ %., %if.else41 ], [ 1, %sw.bb49.sw.epilog56_crit_edge ], [ 1, %sw.bb49.sw.epilog56_crit_edge93 ], [ 0, %land.lhs.true ], [ 12, %if.end25.sw.epilog56_crit_edge ]
  %scsi_tgt_cb_arg = getelementptr inbounds %struct.efct_io, ptr %app, i32 0, i32 27
  %29 = ptrtoint ptr %scsi_tgt_cb_arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %scsi_tgt_cb_arg, align 4
  %call57 = tail call i32 %23(ptr noundef nonnull %app, i32 noundef %scsi_stat.0, i32 noundef %flags.091, ptr noundef %30) #7
  tail call void @efct_scsi_check_pending(ptr noundef %19)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog56, %if.then24, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efct_bls_send_rjt(ptr noundef %io, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %node1 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %0 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node1, align 4
  %iparam = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38
  %efct2 = getelementptr inbounds %struct.efct_node, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %efct2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %efct2, align 4
  %io_type = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 18
  %4 = ptrtoint ptr %io_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %io_type, align 8
  %display_name = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 2
  %5 = ptrtoint ptr %display_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.18, ptr %display_name, align 8
  %hio_type = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 39
  %6 = ptrtoint ptr %hio_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %hio_type, align 4
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 9
  %7 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fh_ox_id, align 4
  %conv = zext i16 %8 to i32
  %init_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %9 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %init_task_tag, align 8
  %10 = call ptr @memset(ptr %iparam, i32 0, i32 40)
  %11 = load i16, ptr %fh_ox_id, align 4
  %ox_id = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 2
  %12 = ptrtoint ptr %ox_id to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %ox_id, align 4
  %fh_rx_id = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 10
  %13 = ptrtoint ptr %fh_rx_id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fh_rx_id, align 2
  %rx_id = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 3
  %15 = ptrtoint ptr %rx_id to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %rx_id, align 2
  %vpi = getelementptr inbounds %struct.efct_node, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %vpi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vpi, align 4
  %vpi6 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 5
  %18 = ptrtoint ptr %vpi6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %vpi6, align 4
  %rpi = getelementptr inbounds %struct.efct_node, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %rpi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rpi, align 4
  %rpi8 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 4
  %21 = ptrtoint ptr %rpi8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rpi8, align 4
  %22 = ptrtoint ptr %iparam to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %iparam, align 4
  %node_fc_id = getelementptr inbounds %struct.efct_node, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %node_fc_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %node_fc_id, align 4
  %d_id = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 1
  %25 = ptrtoint ptr %d_id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %d_id, align 4
  %rpi_registered = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 6
  %26 = ptrtoint ptr %rpi_registered to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %rpi_registered, align 4
  %br_reason = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %br_reason to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 9, ptr %br_reason, align 1
  %br_explan = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 7, i32 2
  %28 = ptrtoint ptr %br_explan to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %br_explan, align 1
  %call = tail call i32 @efct_hw_bls_send(ptr noundef %3, i32 noundef 133, ptr noundef %iparam, ptr noundef nonnull @efct_bls_send_rjt_cb, ptr noundef %io) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call) #10
  tail call void @efct_scsi_io_free(ptr noundef %io)
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %io.addr.0 = phi ptr [ null, %do.end ], [ %io, %entry.if.end_crit_edge ]
  ret ptr %io.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_bls_send(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_bls_send_rjt_cb(ptr nocapture noundef readnone %hio, i32 noundef %length, i32 noundef %status, i32 noundef %ext_status, ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @efct_scsi_io_free(ptr noundef %app)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_scsi_send_tmf_resp(ptr noundef %io, i32 noundef %rspcode, ptr noundef readonly %addl_rsp_info, ptr noundef %cb, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wire_len = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 40
  %0 = ptrtoint ptr %wire_len to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %wire_len, align 8
  %switch.tableidx = add i32 %rspcode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 6
  br i1 %1, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.efct_scsi_send_tmf_resp, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %2)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %fcp_rspcode.0 = phi i8 [ %switch.load, %switch.lookup ], [ 4, %entry.sw.epilog_crit_edge ]
  %hio_type = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 39
  %3 = ptrtoint ptr %hio_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %hio_type, align 4
  %scsi_tgt_cb = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 26
  %4 = ptrtoint ptr %scsi_tgt_cb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cb, ptr %scsi_tgt_cb, align 8
  %scsi_tgt_cb_arg = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 27
  %5 = ptrtoint ptr %scsi_tgt_cb_arg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arg, ptr %scsi_tgt_cb_arg, align 4
  %tmf_cmd = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 32
  %6 = ptrtoint ptr %tmf_cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tmf_cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %node1.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %8 = ptrtoint ptr %node1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node1.i, align 4
  %iparam.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38
  %efct2.i = getelementptr inbounds %struct.efct_node, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %efct2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %efct2.i, align 4
  %12 = call ptr @memset(ptr %iparam.i, i32 0, i32 40)
  %init_task_tag.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %13 = ptrtoint ptr %init_task_tag.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %init_task_tag.i, align 8
  %conv.i = trunc i32 %14 to i16
  %ox_id.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 2
  %15 = ptrtoint ptr %ox_id.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %ox_id.i, align 4
  %abort_rx_id.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 33
  %16 = ptrtoint ptr %abort_rx_id.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %abort_rx_id.i, align 4
  %rx_id.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 3
  %18 = ptrtoint ptr %rx_id.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %rx_id.i, align 2
  %vpi.i = getelementptr inbounds %struct.efct_node, ptr %9, i32 0, i32 11
  %19 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vpi.i, align 4
  %vpi5.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 5
  %21 = ptrtoint ptr %vpi5.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %vpi5.i, align 4
  %rpi.i = getelementptr inbounds %struct.efct_node, ptr %9, i32 0, i32 12
  %22 = ptrtoint ptr %rpi.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rpi.i, align 4
  %rpi7.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 4
  %24 = ptrtoint ptr %rpi7.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rpi7.i, align 4
  %25 = ptrtoint ptr %iparam.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %iparam.i, align 4
  %node_fc_id.i = getelementptr inbounds %struct.efct_node, ptr %9, i32 0, i32 10
  %26 = ptrtoint ptr %node_fc_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %node_fc_id.i, align 4
  %d_id.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 1
  %28 = ptrtoint ptr %d_id.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %d_id.i, align 4
  %rpi_registered.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 6
  %29 = ptrtoint ptr %rpi_registered.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %rpi_registered.i, align 4
  %ba_ox_id.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 7, i32 4
  %30 = ptrtoint ptr %ba_ox_id.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i, ptr %ba_ox_id.i, align 2
  %ba_rx_id.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 7, i32 6
  %31 = ptrtoint ptr %ba_rx_id.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %17, ptr %ba_rx_id.i, align 2
  %ba_high_seq_cnt.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 7, i32 10
  %32 = ptrtoint ptr %ba_high_seq_cnt.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %ba_high_seq_cnt.i, align 2
  %io_type.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 18
  %33 = ptrtoint ptr %io_type.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %io_type.i, align 8
  %display_name.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 2
  %34 = ptrtoint ptr %display_name.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.49, ptr %display_name.i, align 8
  %35 = ptrtoint ptr %hio_type to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %hio_type, align 4
  %bls_cb.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 30
  %36 = ptrtoint ptr %bls_cb.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %cb, ptr %bls_cb.i, align 8
  %bls_cb_arg.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 31
  %37 = ptrtoint ptr %bls_cb_arg.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arg, ptr %bls_cb_arg.i, align 4
  %call.i = tail call i32 @efct_hw_bls_send(ptr noundef %11, i32 noundef 132, ptr noundef %iparam.i, ptr noundef nonnull @efct_target_bls_resp_cb, ptr noundef %io) #7
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %rspbuf = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 43
  %38 = ptrtoint ptr %rspbuf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rspbuf, align 8
  %40 = call ptr @memset(ptr %39, i32 0, i32 32)
  %fr_flags = getelementptr inbounds %struct.fcp_resp, ptr %39, i32 0, i32 2
  %41 = ptrtoint ptr %fr_flags to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %fr_flags, align 2
  %tobool.not = icmp eq ptr %addl_rsp_info, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %info = getelementptr inbounds %struct.anon.87, ptr %39, i32 0, i32 1
  %42 = call ptr @memcpy(ptr %info, ptr %addl_rsp_info, i32 3)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %rsp_code = getelementptr inbounds %struct.anon.87, ptr %39, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %rsp_code to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %fcp_rspcode.0, ptr %rsp_code, align 1
  %44 = ptrtoint ptr %wire_len to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 32, ptr %wire_len, align 8
  %fr_rsp_len = getelementptr inbounds %struct.fcp_resp_with_ext, ptr %39, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %fr_rsp_len to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8, ptr %fr_rsp_len, align 4
  %phys = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 43, i32 2
  %46 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %phys, align 8
  %sgl = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 12
  %48 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sgl, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %49, align 4
  %51 = load ptr, ptr %sgl, align 8
  %dif_addr = getelementptr inbounds %struct.efct_scsi_sgl, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %dif_addr to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %dif_addr, align 4
  %53 = load i64, ptr %wire_len, align 8
  %conv15 = trunc i64 %53 to i32
  %54 = load ptr, ptr %sgl, align 8
  %len = getelementptr inbounds %struct.efct_scsi_sgl, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv15, ptr %len, align 4
  %sgl_count = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 14
  %56 = ptrtoint ptr %sgl_count to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %sgl_count, align 8
  %iparam = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38
  %57 = call ptr @memset(ptr %iparam, i32 0, i32 40)
  %init_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %58 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %init_task_tag, align 8
  %conv18 = trunc i32 %59 to i16
  %ox_id = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 6
  %60 = ptrtoint ptr %ox_id to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv18, ptr %ox_id, align 4
  %cs_ctl = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 45
  %61 = ptrtoint ptr %cs_ctl to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %cs_ctl, align 4
  %cs_ctl22 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 7, i32 3
  %63 = ptrtoint ptr %cs_ctl22 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %cs_ctl22, align 4
  %timeout = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 44
  %64 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %timeout, align 8
  %conv23 = trunc i32 %65 to i8
  %timeout25 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 38, i32 0, i32 7, i32 4
  %66 = ptrtoint ptr %timeout25 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv23, ptr %timeout25, align 1
  %call26 = tail call i32 @efct_scsi_io_dispatch(ptr noundef %io, ptr noundef nonnull @efct_target_io_cb)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call26, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_scsi_tgt_abort_io(ptr noundef %io, ptr noundef %cb, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %xport2 = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %xport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xport2, align 8
  %ref = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #7
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %6 = phi i32 [ %5, %entry ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %6, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #7
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #7
  %8 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 %9, i32 %add.i.i.i.i, ptr elementtype(i32) %ref) #7, !srcloc !135
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !126

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %12, 1
  %13 = or i32 %add5.i.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !126

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 0) #7
  %14 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %15 = phi i32 [ %12, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.i.i.i.i.not = icmp eq i32 %15, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  br i1 %tobool12.i.i.i.i.not, label %do.body, label %if.end8

do.body:                                          ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_tgt_abort_io.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_tgt_abort_io, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !127

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %node = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %20 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %node, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %21, i32 0, i32 8
  %instance_index = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %22 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %24 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %26 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %28 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hw_tag, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_tgt_abort_io.__UNIQUE_ID_ddebug326, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef %display_name, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #7
  br label %cleanup

if.end8:                                          ; preds = %kref_get_unless_zero.exit
  %30 = ptrtoint ptr %xport2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xport2, align 8
  %io_pool = getelementptr inbounds %struct.efct_xport, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %io_pool to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_pool, align 4
  %call10 = call ptr @efct_io_pool_io_alloc(ptr noundef %33) #7
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end8
  %io_alloc_failed_count = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %io_alloc_failed_count, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !121
  call void @llvm.prefetch.p0(ptr %io_alloc_failed_count, i32 1, i32 3, i32 1) #7
  %34 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_alloc_failed_count, ptr %io_alloc_failed_count, i32 1, ptr elementtype(i32) %io_alloc_failed_count) #7, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !123
  %release = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 7
  %35 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %release, align 4
  %call.i.i.i.i.i.i54 = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !128
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #7
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #7, !srcloc !129
  %asmresult.i.i.i.i.i.i.i55 = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i55)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i55, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i55)
  %.not.i.i.i.i56 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i55, 0
  br i1 %.not.i.i.i.i56, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i57, !prof !126

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i57:                              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #7
  br label %cleanup

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !130
  call void %36(ptr noundef %ref) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %cmd_tgt = getelementptr inbounds %struct.efct_io, ptr %call10, i32 0, i32 34
  %38 = ptrtoint ptr %cmd_tgt to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %cmd_tgt, align 2
  %node17 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %39 = ptrtoint ptr %node17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %node17, align 4
  %node18 = getelementptr inbounds %struct.efct_io, ptr %call10, i32 0, i32 3
  %41 = ptrtoint ptr %node18 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %node18, align 4
  %io_type = getelementptr inbounds %struct.efct_io, ptr %call10, i32 0, i32 18
  %42 = ptrtoint ptr %io_type to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 5, ptr %io_type, align 8
  %display_name19 = getelementptr inbounds %struct.efct_io, ptr %call10, i32 0, i32 2
  %43 = ptrtoint ptr %display_name19 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.23, ptr %display_name19, align 8
  %io_to_abort = getelementptr inbounds %struct.efct_io, ptr %call10, i32 0, i32 42
  %44 = ptrtoint ptr %io_to_abort to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %io, ptr %io_to_abort, align 4
  %send_abts = getelementptr inbounds %struct.efct_io, ptr %call10, i32 0, i32 35
  %45 = ptrtoint ptr %send_abts to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %send_abts, align 1
  %abort_cb = getelementptr inbounds %struct.efct_io, ptr %call10, i32 0, i32 28
  %46 = ptrtoint ptr %abort_cb to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %cb, ptr %abort_cb, align 8
  %abort_cb_arg = getelementptr inbounds %struct.efct_io, ptr %call10, i32 0, i32 29
  %47 = ptrtoint ptr %abort_cb_arg to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arg, ptr %abort_cb_arg, align 4
  %call20 = call i32 @efct_scsi_io_dispatch_abort(ptr noundef nonnull %call10, ptr noundef nonnull @efct_target_abort_cb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end16.cleanup_crit_edge, label %if.then22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22:                                        ; preds = %if.end16
  %release24 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 7
  %48 = ptrtoint ptr %release24 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %release24, align 4
  %call.i.i.i.i.i.i58 = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !128
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #7
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #7, !srcloc !129
  %asmresult.i.i.i.i.i.i.i59 = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i59)
  %cmp.i.i.i.i60 = icmp eq i32 %asmresult.i.i.i.i.i.i.i59, 1
  br i1 %cmp.i.i.i.i60, label %if.then.i64, label %if.end5.i.i.i.i62

if.end5.i.i.i.i62:                                ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i59)
  %.not.i.i.i.i61 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i59, 0
  br i1 %.not.i.i.i.i61, label %if.end5.i.i.i.i62.cleanup_crit_edge, label %if.then10.i.i.i.i63, !prof !126

if.end5.i.i.i.i62.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i63:                              ; preds = %if.end5.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #7
  br label %cleanup

if.then.i64:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !130
  call void %49(ptr noundef %ref) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i64, %if.then10.i.i.i.i63, %if.end5.i.i.i.i62.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i57, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ -5, %if.then6 ], [ 0, %if.end16.cleanup_crit_edge ], [ -5, %do.body ], [ -5, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -5, %if.then10.i.i.i.i57 ], [ -5, %if.then.i ], [ %call20, %if.end5.i.i.i.i62.cleanup_crit_edge ], [ %call20, %if.then10.i.i.i.i63 ], [ %call20, %if.then.i64 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_target_abort_cb(ptr nocapture noundef readnone %hio, i32 noundef %length, i32 noundef %status, i32 noundef %ext_status, ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 8
  %abort_cb2 = getelementptr inbounds %struct.efct_io, ptr %app, i32 0, i32 28
  %2 = ptrtoint ptr %abort_cb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %abort_cb2, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end:                                           ; preds = %entry
  %abort_cb_arg4 = getelementptr inbounds %struct.efct_io, ptr %app, i32 0, i32 29
  %4 = ptrtoint ptr %abort_cb_arg4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %abort_cb_arg4, align 4
  %6 = ptrtoint ptr %abort_cb2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %abort_cb2, align 8
  store ptr null, ptr %abort_cb_arg4, align 4
  %7 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %status, label %sw.default11 [
    i32 0, label %if.end.sw.epilog12_crit_edge
    i32 3, label %sw.bb7
    i32 1, label %sw.bb10
  ]

if.end.sw.epilog12_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog12

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %ext_status)
  %switch.selectcmp = icmp eq i32 %ext_status, 21
  %switch.select = select i1 %switch.selectcmp, i32 9, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %ext_status)
  %switch.selectcmp26 = icmp eq i32 %ext_status, 5
  %switch.select27 = select i1 %switch.selectcmp26, i32 8, i32 %switch.select
  br label %sw.epilog12

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog12

sw.default11:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog12

sw.epilog12:                                      ; preds = %sw.default11, %sw.bb10, %sw.bb7, %if.end.sw.epilog12_crit_edge
  %scsi_status.0 = phi i32 [ 2, %sw.default11 ], [ 10, %sw.bb10 ], [ %status, %if.end.sw.epilog12_crit_edge ], [ %switch.select27, %sw.bb7 ]
  %io_to_abort = getelementptr inbounds %struct.efct_io, ptr %app, i32 0, i32 42
  %8 = ptrtoint ptr %io_to_abort to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_to_abort, align 4
  %call = tail call i32 %3(ptr noundef %9, i32 noundef %scsi_status.0, i32 noundef 0, ptr noundef %5) #7
  br label %done

done:                                             ; preds = %sw.epilog12, %entry.done_crit_edge
  %io_to_abort13 = getelementptr inbounds %struct.efct_io, ptr %app, i32 0, i32 42
  %10 = ptrtoint ptr %io_to_abort13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_to_abort13, align 4
  %ref = getelementptr inbounds %struct.efct_io, ptr %11, i32 0, i32 6
  %release = getelementptr inbounds %struct.efct_io, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %release, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #7
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #7, !srcloc !129
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %done
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !126

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #7
  br label %kref_put.exit

if.then.i:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void %13(ptr noundef %ref) #7
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %xport = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xport, align 8
  %io_pool = getelementptr inbounds %struct.efct_xport, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %io_pool to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_pool, align 4
  tail call void @efct_io_pool_io_free(ptr noundef %18, ptr noundef %app) #7
  tail call void @efct_scsi_check_pending(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_scsi_io_complete(ptr noundef %io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_free = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 46
  %0 = ptrtoint ptr %io_free to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %io_free, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_io_complete.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_io_complete, %if.then4)) #7
          to label %return [label %if.then4], !srcloc !127

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 11
  %6 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tag, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_io_complete.__UNIQUE_ID_ddebug327, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %7) #7
  br label %return

do.body6:                                         ; preds = %entry
  %8 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io, align 8
  %cmp.not = icmp eq ptr %9, null
  br i1 %cmp.not, label %do.body6.do.end31_crit_edge, label %cond.true

do.body6.do.end31_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

cond.true:                                        ; preds = %do.body6
  %logmask = getelementptr inbounds %struct.efct, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %logmask, align 4
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9.not = icmp eq i32 %and, 0
  br i1 %cmp9.not, label %cond.true.do.end31_crit_edge, label %do.body11

cond.true.do.end31_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

do.body11:                                        ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_io_complete.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_io_complete, %if.then23)) #7
          to label %do.end31 [label %if.then23], !srcloc !127

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %node = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %16 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %node, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %17, i32 0, i32 8
  %instance_index = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %18 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %20 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %22 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %24 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw_tag, align 8
  %display_name27 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 2
  %26 = ptrtoint ptr %display_name27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %display_name27, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_io_complete.__UNIQUE_ID_ddebug328, ptr noundef %dev26, ptr noundef nonnull @.str.8, ptr noundef %display_name, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, ptr noundef %io, ptr noundef %27) #7
  br label %do.end31

do.end31:                                         ; preds = %if.then23, %do.body11, %cond.true.do.end31_crit_edge, %do.body6.do.end31_crit_edge
  %ref = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 6
  %release = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 7
  %28 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %release, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #7
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #7, !srcloc !129
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !126

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #7
  br label %return

if.then.i:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void %29(ptr noundef %ref) #7
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %if.then4, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_io_abort(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efc_log_sgl(ptr nocapture noundef readonly %io) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hio1 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 19
  %0 = ptrtoint ptr %hio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hio1, align 4
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 8
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.do.end15_crit_edge, label %cond.true

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

cond.true:                                        ; preds = %entry
  %logmask = getelementptr inbounds %struct.efct, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %logmask, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3.not = icmp eq i32 %and, 0
  br i1 %cmp3.not, label %cond.true.do.end15_crit_edge, label %do.body4

cond.true.do.end15_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

do.body4:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_log_sgl.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_log_sgl, %if.then7)) #7
          to label %do.end15 [label %if.then7], !srcloc !127

if.then7:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %node = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %10 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %node, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %11, i32 0, i32 8
  %instance_index = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %12 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %14 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %16 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %18 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_tag, align 8
  %phys = getelementptr inbounds %struct.efct_hw_io, ptr %1, i32 0, i32 27, i32 2
  %20 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_log_sgl.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.40, ptr noundef %display_name, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef 0, i32 noundef %21) #7
  br label %do.end15

do.end15:                                         ; preds = %if.then7, %do.body4, %cond.true.do.end15_crit_edge, %entry.do.end15_crit_edge
  %sgl = getelementptr inbounds %struct.efct_hw_io, ptr %1, i32 0, i32 28
  %22 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sgl, align 4
  %def_sgl16 = getelementptr inbounds %struct.efct_hw_io, ptr %1, i32 0, i32 27
  %cmp17 = icmp eq ptr %23, %def_sgl16
  %n_sge19 = getelementptr inbounds %struct.efct_hw_io, ptr %1, i32 0, i32 31
  %def_sgl_count = getelementptr inbounds %struct.efct_hw_io, ptr %1, i32 0, i32 24
  %cond.in = select i1 %cmp17, ptr %n_sge19, ptr %def_sgl_count
  %24 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %cond = load i32, ptr %cond.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp22105.not = icmp eq i32 %cond, 0
  br i1 %cmp22105.not, label %do.end15.for.end_crit_edge, label %for.body.lr.ph

do.end15.for.end_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end15
  %25 = ptrtoint ptr %def_sgl16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %def_sgl16, align 4
  %node49 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %instance_index52 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %init_task_tag53 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %tgt_task_tag54 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %hw_tag55 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %data.0108 = phi ptr [ %26, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %27 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io, align 8
  %cmp25.not = icmp eq ptr %28, null
  br i1 %cmp25.not, label %for.body.do.end64_crit_edge, label %cond.true26

for.body.do.end64_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end64

cond.true26:                                      ; preds = %for.body
  %logmask28 = getelementptr inbounds %struct.efct, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %logmask28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %logmask28, align 4
  %and29 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %cmp30.not = icmp eq i32 %and29, 0
  br i1 %cmp30.not, label %cond.true26.do.end64_crit_edge, label %do.body33

cond.true26.do.end64_crit_edge:                   ; preds = %cond.true26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end64

do.body33:                                        ; preds = %cond.true26
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_log_sgl.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_log_sgl, %if.then45)) #7
          to label %do.end64 [label %if.then45], !srcloc !127

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %node49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %node49, align 4
  %display_name50 = getelementptr inbounds %struct.efct_node, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %instance_index52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %instance_index52, align 4
  %39 = ptrtoint ptr %init_task_tag53 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %init_task_tag53, align 8
  %41 = ptrtoint ptr %tgt_task_tag54 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tgt_task_tag54, align 4
  %43 = ptrtoint ptr %hw_tag55 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hw_tag55, align 8
  %45 = ptrtoint ptr %data.0108 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data.0108, align 4
  %arrayidx56 = getelementptr i32, ptr %data.0108, i32 1
  %47 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx56, align 4
  %arrayidx57 = getelementptr i32, ptr %data.0108, i32 2
  %49 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx57, align 4
  %arrayidx58 = getelementptr i32, ptr %data.0108, i32 3
  %51 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx58, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_log_sgl.__UNIQUE_ID_ddebug317, ptr noundef %dev48, ptr noundef nonnull @.str.41, ptr noundef %display_name50, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %i.0106, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52) #7
  br label %do.end64

do.end64:                                         ; preds = %if.then45, %do.body33, %cond.true26.do.end64_crit_edge, %for.body.do.end64_crit_edge
  %arrayidx65 = getelementptr i32, ptr %data.0108, i32 2
  %53 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %tobool67.not = icmp sgt i32 %54, -1
  br i1 %tobool67.not, label %for.inc, label %do.end64.for.end_crit_edge

do.end64.for.end_crit_edge:                       ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %do.end64
  %inc = add nuw i32 %i.0106, 1
  %incdec.ptr = getelementptr %struct.sli4_sge, ptr %data.0108, i32 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end64.for.end_crit_edge, %do.end15.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_io_send(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_io_init_sges(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_io_add_sge(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_target_bls_resp_cb(ptr nocapture noundef readnone %hio, i32 noundef %length, i32 noundef %status, i32 noundef %ext_status, ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not = icmp eq i32 %status, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.body:                                          ; preds = %entry
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %do.body.if.end10_crit_edge, label %cond.true

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

cond.true:                                        ; preds = %do.body
  %logmask = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %logmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logmask, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp4.not = icmp eq i32 %and, 0
  br i1 %cmp4.not, label %cond.true.if.end10_crit_edge, label %do.end

cond.true.if.end10_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end:                                           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %status, i32 noundef %ext_status) #10
  br label %if.end10

if.end10:                                         ; preds = %do.end, %cond.true.if.end10_crit_edge, %do.body.if.end10_crit_edge, %entry.if.end10_crit_edge
  %bls_status.0 = phi i32 [ 2, %do.body.if.end10_crit_edge ], [ 2, %do.end ], [ 2, %cond.true.if.end10_crit_edge ], [ 0, %entry.if.end10_crit_edge ]
  %bls_cb = getelementptr inbounds %struct.efct_io, ptr %app, i32 0, i32 30
  %6 = ptrtoint ptr %bls_cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bls_cb, align 8
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.end10.if.end18_crit_edge, label %if.then12

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %bls_cb_arg15 = getelementptr inbounds %struct.efct_io, ptr %app, i32 0, i32 31
  %8 = ptrtoint ptr %bls_cb_arg15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bls_cb_arg15, align 4
  %10 = ptrtoint ptr %bls_cb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %bls_cb, align 8
  store ptr null, ptr %bls_cb_arg15, align 4
  %call = tail call i32 %7(ptr noundef %app, i32 noundef %bls_status.0, i32 noundef 0, ptr noundef %9) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end10.if.end18_crit_edge
  tail call void @efct_scsi_check_pending(ptr noundef %1)
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !106, !108, !109, !110, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 43, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @efct_scsi_io_alloc._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @efct_scsi_io_alloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 59, i32 21}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 82, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @_efct_scsi_io_free.__UNIQUE_ID_ddebug313, !11, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 85, i32 3}
!17 = !{ptr @_efct_scsi_io_free._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @_efct_scsi_io_free._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 101, i32 2}
!21 = !{ptr @efct_scsi_io_free.__UNIQUE_ID_ddebug314, !20, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 508, i32 5}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @efct_scsi_check_pending.__UNIQUE_ID_ddebug324, !23, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 780, i32 4}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @efct_scsi_send_resp._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @efct_scsi_send_resp._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 814, i32 5}
!33 = !{ptr @efct_scsi_send_resp._entry.15, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @efct_scsi_send_resp._entry_ptr.17, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 929, i32 21}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 950, i32 3}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @efct_bls_send_rjt._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @efct_bls_send_rjt._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 1110, i32 3}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @efct_scsi_tgt_abort_io.__UNIQUE_ID_ddebug326, !43, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 1133, i32 27}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 1150, i32 3}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @efct_scsi_io_complete.__UNIQUE_ID_ddebug327, !49, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!52 = !{ptr @efct_scsi_io_complete.__UNIQUE_ID_ddebug328, !53, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!53 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 1155, i32 2}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 450, i32 4}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @efct_scsi_dispatch_pending.__UNIQUE_ID_ddebug323, !55, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 354, i32 4}
!60 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @efct_scsi_io_dispatch_no_hw_io.__UNIQUE_ID_ddebug319, !59, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 362, i32 3}
!64 = !{ptr @efct_scsi_io_dispatch_no_hw_io.__UNIQUE_ID_ddebug320, !63, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 371, i32 5}
!67 = !{ptr @efct_scsi_io_dispatch_no_hw_io.__UNIQUE_ID_ddebug321, !66, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 381, i32 3}
!70 = !{ptr @efct_scsi_io_dispatch_no_hw_io.__UNIQUE_ID_ddebug322, !69, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 323, i32 3}
!73 = !{ptr @efct_scsi_io_dispatch_hw_io.__UNIQUE_ID_ddebug318, !72, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 212, i32 3}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @efct_scsi_build_sgls._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @efct_scsi_build_sgls._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 220, i32 4}
!81 = !{ptr @efct_scsi_build_sgls._entry.36, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @efct_scsi_build_sgls._entry_ptr.38, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 237, i32 2}
!85 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @efc_log_sgl.__UNIQUE_ID_ddebug316, !84, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 244, i32 3}
!89 = !{ptr @efc_log_sgl.__UNIQUE_ID_ddebug317, !88, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 630, i32 2}
!92 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @efct_scsi_xfer_data.__UNIQUE_ID_ddebug325, !91, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!94 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 117, i32 3}
!98 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @efct_target_io_cb._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @efct_target_io_cb._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 121, i32 2}
!103 = !{ptr @efct_target_io_cb.__UNIQUE_ID_ddebug315, !102, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 898, i32 21}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/elx/efct/efct_scsi.c", i32 848, i32 3}
!108 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @efct_target_bls_resp_cb._entry, !107, !"_entry", i1 false, i1 false}
!111 = !{ptr @efct_target_bls_resp_cb._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 2148455138}
!122 = !{i64 2148370423, i64 2148370455, i64 2148370484, i64 2148370518, i64 2148370549, i64 2148370572}
!123 = !{i64 2148455367}
!124 = !{i64 2148371233, i64 2148371265, i64 2148371294, i64 2148371328, i64 2148371359, i64 2148371382}
!125 = !{!"branch_weights", i32 1, i32 2000}
!126 = !{!"branch_weights", i32 2000, i32 1}
!127 = !{i64 2148983080, i64 2148983085, i64 2148983098, i64 2148983142, i64 2148983176, i64 2148983197}
!128 = !{i64 2148459258}
!129 = !{i64 2148373698, i64 2148373730, i64 2148373759, i64 2148373793, i64 2148373824, i64 2148373847}
!130 = !{i64 2149335372}
!131 = !{i64 2148458179}
!132 = !{i64 2148372888, i64 2148372920, i64 2148372949, i64 2148372983, i64 2148373014, i64 2148373037}
!133 = !{i64 2148458408}
!134 = !{i8 0, i8 2}
!135 = !{i64 854236, i64 854260, i64 854281, i64 854298, i64 854315}
