; ModuleID = '/llk/IR_all_yes/drivers/scsi/elx/libefc/efc_device.c_pt.bc'
source_filename = "../drivers/scsi/elx/libefc/efc_device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.efc_node = type { ptr, [32 x i8], ptr, %struct.kref, ptr, i8, i8, i8, i8, i8, i8, i8, i8, %struct.spinlock, %struct.list_head, ptr, ptr, %struct.efc_remote_node, %struct.efc_sm_ctx, i32, i32, ptr, i32, i32, i32, i8, i8, i8, %struct.efc_dma, [120 x i8], %struct.spinlock, %struct.list_head, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], i32, i32, ptr, %struct.timer_list, i64, [32 x i8], [32 x i8] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.efc_remote_node = type { i32, i32, i32, i8, ptr, ptr }
%struct.efc_sm_ctx = type { ptr, ptr, ptr }
%struct.efc_dma = type { ptr, ptr, i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.efc = type { ptr, ptr, ptr, i32, i64, i64, i64, i64, i64, ptr, ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.libefc_function_template, %struct.spinlock, i8, i8, i32, ptr, ptr, ptr, i64, i64, i8, i32, i32, ptr, %struct.atomic_t, i8, %struct.spinlock, %struct.list_head, i32 }
%struct.libefc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%union.anon.78 = type { ptr }
%struct.efc_nport = type { %struct.list_head, %struct.kref, ptr, ptr, i32, [32 x i8], i8, i8, i8, i8, i8, ptr, i64, i64, ptr, ptr, i32, i32, %struct.efc_dma, [32 x i8], i64, i64, %struct.efc_sm_ctx, %struct.xarray, i8, i8, i8, i8, i32, i32, [120 x i8], i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.anon.86 = type { %struct.fc_els_prli, %struct.fc_els_spp }
%struct.fc_els_prli = type { i8, i8, i16 }
%struct.fc_els_spp = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.efc_node_cb = type { i32, i32, ptr, ptr, %struct.efc_dma, i32 }
%struct.efc_hw_rq_buffer = type { i16, %struct.efc_dma }
%struct.anon.87 = type { %struct.fc_els_prli, %struct.fc_els_spp }
%struct.efc_domain = type { ptr, [32 x i8], %struct.list_head, %struct.kref, ptr, ptr, ptr, i32, i32, i32, i32, %struct.efc_dma, i64, %struct.efc_sm_ctx, i8, i8, i8, i8, i8, i8, i8, i8, %struct.efc_domain_record, [120 x i8], [120 x i8], %struct.xarray, ptr }
%struct.efc_domain_record = type { i32, i32, [6 x i8], [8 x i8], %union.anon.79, i32, i32, i8, i8 }
%union.anon.79 = type { [512 x i8] }
%struct.anon.88 = type { %struct.fc_els_prli, %struct.fc_els_spp }

@efc_d_send_prli_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 31, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%s] found(initiator) WWPN:%s WWNN:%s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efc_d_send_prli_rsp\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/scsi/elx/libefc/efc_device.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@efc_d_send_prli_rsp._entry_ptr = internal global ptr @efc_d_send_prli_rsp._entry, section ".printk_index", align 4
@__func__.__efc_d_initiate_shutdown = private unnamed_addr constant [26 x i8] c"__efc_d_initiate_shutdown\00", align 1
@__efc_d_initiate_shutdown.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.__efc_d_initiate_shutdown, ptr @.str.2, ptr @.str.6, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"efct\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[%s] %-20s %-20s\0A\00", [46 x i8] zeroinitializer }, align 32
@__efc_d_initiate_shutdown._entry = internal constant %struct.pi_entry { ptr @.str.7, ptr @__func__.__efc_d_initiate_shutdown, ptr @.str.2, i32 220, ptr @.str.3, ptr @.str.4 }, align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%s] delete (initiator) WWPN %s WWNN %s\0A\00", [55 x i8] zeroinitializer }, align 32
@__efc_d_initiate_shutdown._entry_ptr = internal global ptr @__efc_d_initiate_shutdown._entry, section ".printk_index", align 4
@__efc_d_initiate_shutdown._entry.8 = internal constant %struct.pi_entry { ptr @.str.9, ptr @__func__.__efc_d_initiate_shutdown, ptr @.str.2, i32 236, ptr @.str.3, ptr @.str.4 }, align 1
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%s] delete (target) WWPN %s WWNN %s\0A\00", [58 x i8] zeroinitializer }, align 32
@__efc_d_initiate_shutdown._entry_ptr.10 = internal global ptr @__efc_d_initiate_shutdown._entry.8, section ".printk_index", align 4
@__efc_d_initiate_shutdown._entry.11 = internal constant %struct.pi_entry { ptr @.str.12, ptr @__func__.__efc_d_initiate_shutdown, ptr @.str.2, i32 251, ptr @.str.3, ptr @.str.4 }, align 1
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%s] delete (I+T) WWPN %s WWNN %s\0A\00", [61 x i8] zeroinitializer }, align 32
@__efc_d_initiate_shutdown._entry_ptr.13 = internal global ptr @__efc_d_initiate_shutdown._entry.11, section ".printk_index", align 4
@__efc_d_initiate_shutdown._entry.14 = internal constant %struct.pi_entry { ptr @.str.15, ptr @__func__.__efc_d_initiate_shutdown, ptr @.str.2, i32 289, ptr @.str.3, ptr @.str.4 }, align 1
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%s] Failed freeing HW node, rc=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@__efc_d_initiate_shutdown._entry_ptr.16 = internal global ptr @__efc_d_initiate_shutdown._entry.14, section ".printk_index", align 4
@__func__.__efc_d_wait_loop = private unnamed_addr constant [18 x i8] c"__efc_d_wait_loop\00", align 1
@__efc_d_wait_loop.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.__efc_d_wait_loop, ptr @.str.2, ptr @.str.6, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.__efc_d_wait_plogi_acc_cmpl = private unnamed_addr constant [28 x i8] c"__efc_d_wait_plogi_acc_cmpl\00", align 1
@__efc_d_wait_plogi_acc_cmpl.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.__efc_d_wait_plogi_acc_cmpl, ptr @.str.2, ptr @.str.6, i8 0, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.__efc_d_wait_logo_rsp = private unnamed_addr constant [22 x i8] c"__efc_d_wait_logo_rsp\00", align 1
@__efc_d_wait_logo_rsp.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.__efc_d_wait_logo_rsp, ptr @.str.2, ptr @.str.6, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_d_wait_logo_rsp._entry = internal constant %struct.pi_entry { ptr @.str.17, ptr @__func__.__efc_d_wait_logo_rsp, ptr @.str.2, i32 438, ptr @.str.3, ptr @.str.4 }, align 1
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[%s] LOGO sent (evt=%s), shutdown node\0A\00", [56 x i8] zeroinitializer }, align 32
@__efc_d_wait_logo_rsp._entry_ptr = internal global ptr @__efc_d_wait_logo_rsp._entry, section ".printk_index", align 4
@__func__.__efc_d_init = private unnamed_addr constant [13 x i8] c"__efc_d_init\00", align 1
@__efc_d_init.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.__efc_d_init, ptr @.str.2, ptr @.str.6, i8 0, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_d_init._entry = internal constant %struct.pi_entry { ptr @.str.18, ptr @__func__.__efc_d_init, ptr @.str.2, i32 532, ptr @.str.3, ptr @.str.4 }, align 1
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%s] not sending plogi nport.ini=%d,\00", [59 x i8] zeroinitializer }, align 32
@__efc_d_init._entry_ptr = internal global ptr @__efc_d_init._entry, section ".printk_index", align 4
@__efc_d_init._entry.19 = internal constant %struct.pi_entry { ptr @.str.20, ptr @__func__.__efc_d_init, ptr @.str.2, i32 534, ptr @.str.3, ptr @.str.4 }, align 1
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%s] domain attached=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@__efc_d_init._entry_ptr.21 = internal global ptr @__efc_d_init._entry.19, section ".printk_index", align 4
@__efc_d_init._entry.22 = internal constant %struct.pi_entry { ptr @.str.23, ptr @__func__.__efc_d_init, ptr @.str.2, i32 582, ptr @.str.3, ptr @.str.4 }, align 1
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%s] p2p failed, shutting down node\0A\00", [59 x i8] zeroinitializer }, align 32
@__efc_d_init._entry_ptr.24 = internal global ptr @__efc_d_init._entry.22, section ".printk_index", align 4
@__efc_d_init._entry.25 = internal constant %struct.pi_entry { ptr @.str.26, ptr @__func__.__efc_d_init, ptr @.str.2, i32 601, ptr @.str.3, ptr @.str.4 }, align 1
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%s] %s domain not attached, dropping\0A\00", [57 x i8] zeroinitializer }, align 32
@__efc_d_init._entry_ptr.27 = internal global ptr @__efc_d_init._entry.25, section ".printk_index", align 4
@__efc_d_init._entry.28 = internal constant %struct.pi_entry { ptr @.str.26, ptr @__func__.__efc_d_init, ptr @.str.2, i32 625, ptr @.str.3, ptr @.str.4 }, align 1
@__efc_d_init._entry_ptr.29 = internal global ptr @__efc_d_init._entry.28, section ".printk_index", align 4
@__efc_d_init._entry.30 = internal constant %struct.pi_entry { ptr @.str.31, ptr @__func__.__efc_d_init, ptr @.str.2, i32 633, ptr @.str.3, ptr @.str.4 }, align 1
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s] %s received, sending reject\0A\00", [62 x i8] zeroinitializer }, align 32
@__efc_d_init._entry_ptr.32 = internal global ptr @__efc_d_init._entry.30, section ".printk_index", align 4
@__efc_d_init._entry.33 = internal constant %struct.pi_entry { ptr @.str.26, ptr @__func__.__efc_d_init, ptr @.str.2, i32 652, ptr @.str.3, ptr @.str.4 }, align 1
@__efc_d_init._entry_ptr.34 = internal global ptr @__efc_d_init._entry.33, section ".printk_index", align 4
@__efc_d_init._entry.35 = internal constant %struct.pi_entry { ptr @.str.36, ptr @__func__.__efc_d_init, ptr @.str.2, i32 660, ptr @.str.3, ptr @.str.4 }, align 1
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%s] FCP_CMND received, send LOGO\0A\00", [61 x i8] zeroinitializer }, align 32
@__efc_d_init._entry_ptr.37 = internal global ptr @__efc_d_init._entry.35, section ".printk_index", align 4
@__efc_d_init._entry.38 = internal constant %struct.pi_entry { ptr @.str.39, ptr @__func__.__efc_d_init, ptr @.str.2, i32 666, ptr @.str.3, ptr @.str.4 }, align 1
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%s] Failed to send LOGO\0A\00", [38 x i8] zeroinitializer }, align 32
@__efc_d_init._entry_ptr.40 = internal global ptr @__efc_d_init._entry.38, section ".printk_index", align 4
@__func__.__efc_d_wait_plogi_rsp = private unnamed_addr constant [23 x i8] c"__efc_d_wait_plogi_rsp\00", align 1
@__efc_d_wait_plogi_rsp.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.__efc_d_wait_plogi_rsp, ptr @.str.2, ptr @.str.6, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_d_wait_plogi_rsp._entry = internal constant %struct.pi_entry { ptr @.str.31, ptr @__func__.__efc_d_wait_plogi_rsp, ptr @.str.2, i32 748, ptr @.str.3, ptr @.str.4 }, align 1
@__efc_d_wait_plogi_rsp._entry_ptr = internal global ptr @__efc_d_wait_plogi_rsp._entry, section ".printk_index", align 4
@__efc_d_wait_plogi_rsp._entry.41 = internal constant %struct.pi_entry { ptr @.str.42, ptr @__func__.__efc_d_wait_plogi_rsp, ptr @.str.2, i32 799, ptr @.str.3, ptr @.str.4 }, align 1
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%s] FCP_CMND received, drop\0A\00", [34 x i8] zeroinitializer }, align 32
@__efc_d_wait_plogi_rsp._entry_ptr.43 = internal global ptr @__efc_d_wait_plogi_rsp._entry.41, section ".printk_index", align 4
@__func__.__efc_d_wait_plogi_rsp_recvd_prli = private unnamed_addr constant [34 x i8] c"__efc_d_wait_plogi_rsp_recvd_prli\00", align 1
@__efc_d_wait_plogi_rsp_recvd_prli.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.__efc_d_wait_plogi_rsp_recvd_prli, ptr @.str.2, ptr @.str.6, i8 0, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.__efc_d_wait_domain_attach = private unnamed_addr constant [27 x i8] c"__efc_d_wait_domain_attach\00", align 1
@__efc_d_wait_domain_attach.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.__efc_d_wait_domain_attach, ptr @.str.2, ptr @.str.6, i8 0, i8 -36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.__efc_d_wait_topology_notify = private unnamed_addr constant [29 x i8] c"__efc_d_wait_topology_notify\00", align 1
@__efc_d_wait_topology_notify.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.__efc_d_wait_topology_notify, ptr @.str.2, ptr @.str.6, i8 0, i8 -27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_d_wait_topology_notify._entry = internal constant %struct.pi_entry { ptr @.str.44, ptr @__func__.__efc_d_wait_topology_notify, ptr @.str.2, i32 938, ptr @.str.3, ptr @.str.4 }, align 1
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%s] topology notification, topology=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@__efc_d_wait_topology_notify._entry_ptr = internal global ptr @__efc_d_wait_topology_notify._entry, section ".printk_index", align 4
@__efc_d_wait_topology_notify._entry.45 = internal constant %struct.pi_entry { ptr @.str.46, ptr @__func__.__efc_d_wait_topology_notify, ptr @.str.2, i32 962, ptr @.str.3, ptr @.str.4 }, align 1
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%s] domain attach ok\0A\00", [41 x i8] zeroinitializer }, align 32
@__efc_d_wait_topology_notify._entry_ptr.47 = internal global ptr @__efc_d_wait_topology_notify._entry.45, section ".printk_index", align 4
@__func__.__efc_d_wait_node_attach = private unnamed_addr constant [25 x i8] c"__efc_d_wait_node_attach\00", align 1
@__efc_d_wait_node_attach.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.__efc_d_wait_node_attach, ptr @.str.2, ptr @.str.6, i8 0, i8 -10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_d_wait_node_attach._entry = internal constant %struct.pi_entry { ptr @.str.48, ptr @__func__.__efc_d_wait_node_attach, ptr @.str.2, i32 1028, ptr @.str.3, ptr @.str.4 }, align 1
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%s] node attach failed\0A\00", [39 x i8] zeroinitializer }, align 32
@__efc_d_wait_node_attach._entry_ptr = internal global ptr @__efc_d_wait_node_attach._entry, section ".printk_index", align 4
@__efc_d_wait_node_attach._entry.49 = internal constant %struct.pi_entry { ptr @.str.50, ptr @__func__.__efc_d_wait_node_attach, ptr @.str.2, i32 1035, ptr @.str.3, ptr @.str.4 }, align 1
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[%s] %s received\0A\00", [46 x i8] zeroinitializer }, align 32
@__efc_d_wait_node_attach._entry_ptr.51 = internal global ptr @__efc_d_wait_node_attach._entry.49, section ".printk_index", align 4
@__efc_d_wait_node_attach._entry.52 = internal constant %struct.pi_entry { ptr @.str.50, ptr @__func__.__efc_d_wait_node_attach, ptr @.str.2, i32 1041, ptr @.str.3, ptr @.str.4 }, align 1
@__efc_d_wait_node_attach._entry_ptr.53 = internal global ptr @__efc_d_wait_node_attach._entry.52, section ".printk_index", align 4
@__efc_d_wait_node_attach._entry.54 = internal constant %struct.pi_entry { ptr @.str.50, ptr @__func__.__efc_d_wait_node_attach, ptr @.str.2, i32 1047, ptr @.str.3, ptr @.str.4 }, align 1
@__efc_d_wait_node_attach._entry_ptr.55 = internal global ptr @__efc_d_wait_node_attach._entry.54, section ".printk_index", align 4
@__func__.__efc_d_wait_attach_evt_shutdown = private unnamed_addr constant [33 x i8] c"__efc_d_wait_attach_evt_shutdown\00", align 1
@__efc_d_wait_attach_evt_shutdown.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.__efc_d_wait_attach_evt_shutdown, ptr @.str.2, ptr @.str.6, i8 1, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_d_wait_attach_evt_shutdown._entry = internal constant %struct.pi_entry { ptr @.str.56, ptr @__func__.__efc_d_wait_attach_evt_shutdown, ptr @.str.2, i32 1080, ptr @.str.3, ptr @.str.4 }, align 1
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%s] Attach evt=%s, proceed to shutdown\0A\00", [55 x i8] zeroinitializer }, align 32
@__efc_d_wait_attach_evt_shutdown._entry_ptr = internal global ptr @__efc_d_wait_attach_evt_shutdown._entry, section ".printk_index", align 4
@__efc_d_wait_attach_evt_shutdown._entry.57 = internal constant %struct.pi_entry { ptr @.str.56, ptr @__func__.__efc_d_wait_attach_evt_shutdown, ptr @.str.2, i32 1088, ptr @.str.3, ptr @.str.4 }, align 1
@__efc_d_wait_attach_evt_shutdown._entry_ptr.58 = internal global ptr @__efc_d_wait_attach_evt_shutdown._entry.57, section ".printk_index", align 4
@__efc_d_wait_attach_evt_shutdown._entry.59 = internal constant %struct.pi_entry { ptr @.str.50, ptr @__func__.__efc_d_wait_attach_evt_shutdown, ptr @.str.2, i32 1100, ptr @.str.3, ptr @.str.4 }, align 1
@__efc_d_wait_attach_evt_shutdown._entry_ptr.60 = internal global ptr @__efc_d_wait_attach_evt_shutdown._entry.59, section ".printk_index", align 4
@__func__.__efc_d_port_logged_in = private unnamed_addr constant [23 x i8] c"__efc_d_port_logged_in\00", align 1
@__efc_d_port_logged_in.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.__efc_d_port_logged_in, ptr @.str.2, ptr @.str.6, i8 1, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_d_port_logged_in._entry = internal constant %struct.pi_entry { ptr @.str.61, ptr @__func__.__efc_d_port_logged_in, ptr @.str.2, i32 1246, ptr @.str.3, ptr @.str.4 }, align 1
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%s] %s received attached=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@__efc_d_port_logged_in._entry_ptr = internal global ptr @__efc_d_port_logged_in._entry, section ".printk_index", align 4
@__func__.__efc_d_wait_logo_acc_cmpl = private unnamed_addr constant [27 x i8] c"__efc_d_wait_logo_acc_cmpl\00", align 1
@__efc_d_wait_logo_acc_cmpl.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.__efc_d_wait_logo_acc_cmpl, ptr @.str.2, ptr @.str.6, i8 1, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.__efc_d_device_ready = private unnamed_addr constant [21 x i8] c"__efc_d_device_ready\00", align 1
@__efc_d_device_ready.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.__efc_d_device_ready, ptr @.str.2, ptr @.str.6, i8 1, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_d_device_ready._entry = internal constant %struct.pi_entry { ptr @.str.62, ptr @__func__.__efc_d_device_ready, ptr @.str.2, i32 1310, ptr @.str.3, ptr @.str.4 }, align 1
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%s] found (target) WWPN %s WWNN %s\0A\00", [59 x i8] zeroinitializer }, align 32
@__efc_d_device_ready._entry_ptr = internal global ptr @__efc_d_device_ready._entry, section ".printk_index", align 4
@__efc_d_device_ready._entry.63 = internal constant %struct.pi_entry { ptr @.str.61, ptr @__func__.__efc_d_device_ready, ptr @.str.2, i32 1372, ptr @.str.3, ptr @.str.4 }, align 1
@__efc_d_device_ready._entry_ptr.64 = internal global ptr @__efc_d_device_ready._entry.63, section ".printk_index", align 4
@__efc_d_device_ready._entry.65 = internal constant %struct.pi_entry { ptr @.str.66, ptr @__func__.__efc_d_device_ready, ptr @.str.2, i32 1389, ptr @.str.67, ptr @.str.4 }, align 1
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unexpected event:%s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@__efc_d_device_ready._entry_ptr.68 = internal global ptr @__efc_d_device_ready._entry.65, section ".printk_index", align 4
@__efc_d_device_ready._entry.69 = internal constant %struct.pi_entry { ptr @.str.70, ptr @__func__.__efc_d_device_ready, ptr @.str.2, i32 1414, ptr @.str.3, ptr @.str.4 }, align 1
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%s] Failed to send PRLI LS_ACC\0A\00", [63 x i8] zeroinitializer }, align 32
@__efc_d_device_ready._entry_ptr.71 = internal global ptr @__efc_d_device_ready._entry.69, section ".printk_index", align 4
@__func__.__efc_d_device_gone = private unnamed_addr constant [20 x i8] c"__efc_d_device_gone\00", align 1
@__efc_d_device_gone.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.__efc_d_device_gone, ptr @.str.2, ptr @.str.6, i8 1, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_d_device_gone.labels = internal unnamed_addr constant [4 x ptr] [ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], align 4
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"initiator\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"target\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"initiator+target\00", [47 x i8] zeroinitializer }, align 32
@__efc_d_device_gone._entry = internal constant %struct.pi_entry { ptr @.str.76, ptr @__func__.__efc_d_device_gone, ptr @.str.2, i32 1445, ptr @.str.3, ptr @.str.4 }, align 1
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%s] missing (%s)    WWPN %s WWNN %s\0A\00", [58 x i8] zeroinitializer }, align 32
@__efc_d_device_gone._entry_ptr = internal global ptr @__efc_d_device_gone._entry, section ".printk_index", align 4
@__efc_d_device_gone._entry.77 = internal constant %struct.pi_entry { ptr @.str.42, ptr @__func__.__efc_d_device_gone, ptr @.str.2, i32 1526, ptr @.str.3, ptr @.str.4 }, align 1
@__efc_d_device_gone._entry_ptr.78 = internal global ptr @__efc_d_device_gone._entry.77, section ".printk_index", align 4
@__efc_d_device_gone._entry.79 = internal constant %struct.pi_entry { ptr @.str.61, ptr @__func__.__efc_d_device_gone, ptr @.str.2, i32 1534, ptr @.str.3, ptr @.str.4 }, align 1
@__efc_d_device_gone._entry_ptr.80 = internal global ptr @__efc_d_device_gone._entry.79, section ".printk_index", align 4
@__func__.__efc_d_wait_adisc_rsp = private unnamed_addr constant [23 x i8] c"__efc_d_wait_adisc_rsp\00", align 1
@__efc_d_wait_adisc_rsp.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.__efc_d_wait_adisc_rsp, ptr @.str.2, ptr @.str.6, i8 1, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_d_wait_adisc_rsp._entry = internal constant %struct.pi_entry { ptr @.str.61, ptr @__func__.__efc_d_wait_adisc_rsp, ptr @.str.2, i32 1593, ptr @.str.3, ptr @.str.4 }, align 1
@__efc_d_wait_adisc_rsp._entry_ptr = internal global ptr @__efc_d_wait_adisc_rsp._entry, section ".printk_index", align 4
@__func__.__efc_d_wait_del_node = private unnamed_addr constant [22 x i8] c"__efc_d_wait_del_node\00", align 1
@__efc_d_wait_del_node.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.__efc_d_wait_del_node, ptr @.str.2, ptr @.str.6, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_d_wait_del_node._entry = internal constant %struct.pi_entry { ptr @.str.50, ptr @__func__.__efc_d_wait_del_node, ptr @.str.2, i32 134, ptr @.str.3, ptr @.str.4 }, align 1
@__efc_d_wait_del_node._entry_ptr = internal global ptr @__efc_d_wait_del_node._entry, section ".printk_index", align 4
@__func__.__efc_d_wait_del_ini_tgt = private unnamed_addr constant [25 x i8] c"__efc_d_wait_del_ini_tgt\00", align 1
@__efc_d_wait_del_ini_tgt.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @__func__.__efc_d_wait_del_ini_tgt, ptr @.str.2, ptr @.str.6, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_d_wait_del_ini_tgt._entry = internal constant %struct.pi_entry { ptr @.str.50, ptr @__func__.__efc_d_wait_del_ini_tgt, ptr @.str.2, i32 187, ptr @.str.3, ptr @.str.4 }, align 1
@__efc_d_wait_del_ini_tgt._entry_ptr = internal global ptr @__efc_d_wait_del_ini_tgt._entry, section ".printk_index", align 4
@__efc_d_common.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.82, ptr @.str.2, ptr @.str.6, i8 0, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__efc_d_common\00", [17 x i8] zeroinitializer }, align 32
@__efc_d_common.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.82, ptr @.str.2, ptr @.str.6, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_d_common.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.82, ptr @.str.2, ptr @.str.6, i8 0, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@efc_d_check_plogi_topology._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 494, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s] received PLOGI, unknown topology did=0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"efc_d_check_plogi_topology\00", [37 x i8] zeroinitializer }, align 32
@efc_d_check_plogi_topology._entry_ptr = internal global ptr @efc_d_check_plogi_topology._entry, section ".printk_index", align 4
@efc_d_check_plogi_topology._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 499, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s] received PLOGI, unexpected topology %d\0A\00", [51 x i8] zeroinitializer }, align 32
@efc_d_check_plogi_topology._entry_ptr.87 = internal global ptr @efc_d_check_plogi_topology._entry.85, section ".printk_index", align 4
@str = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"invalid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.88 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_d_initiate_shutdown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.89 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_d_wait_del_ini_tgt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.90 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_d_wait_del_node\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.91 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_d_wait_attach_evt_shutdown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.92 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_d_wait_logo_acc_cmpl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.93 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_d_device_ready\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.94 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_d_device_gone\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.95 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_d_wait_adisc_rsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.96 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_d_port_logged_in\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.97 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_d_wait_plogi_acc_cmpl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.98 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_d_wait_node_attach\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.99 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_d_wait_domain_attach\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.100 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_d_wait_topology_notify\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.101 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_d_wait_logo_rsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.102 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_d_wait_plogi_rsp_recvd_prli\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.103 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_d_wait_plogi_rsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.104 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_d_init\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.105 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_d_wait_loop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.108 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 2, i64 3, i64 4, i64 13, i64 35, i64 50, i64 51, i64 65, i64 66, i64 67]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.110 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 2, i64 3, i64 4, i64 13, i64 35, i64 50, i64 51, i64 65, i64 66, i64 67]
@__sancov_gen_cov_switch_values.111 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 50, i64 51]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.113 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 13]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.115 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 34, i64 36]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.117 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 33, i64 34, i64 35, i64 37, i64 52, i64 54, i64 55, i64 63, i64 68, i64 69]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.119 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 33, i64 35, i64 37]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.121 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 13, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 63]
@__sancov_gen_cov_switch_values.122 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.124 = internal global [15 x i64] [i64 13, i64 32, i64 33, i64 35, i64 37, i64 52, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 63]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.126 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 3, i64 38, i64 39, i64 50, i64 51]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.129 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 34, i64 36]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.131 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 33, i64 35, i64 37]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.133 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 13]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.135 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 13, i64 26]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.137 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 3, i64 38, i64 39, i64 50, i64 51]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.139 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 2, i64 34, i64 36, i64 47, i64 48, i64 49, i64 52, i64 54, i64 55, i64 56, i64 59, i64 65]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.141 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 49, i64 52, i64 54, i64 63]
@__sancov_gen_cov_switch_values.142 = internal global [11 x i64] [i64 9, i64 32, i64 5, i64 6, i64 7, i64 9, i64 10, i64 11, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 32, i64 33, i64 37, i64 54]
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 30, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 206, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 217, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 233, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 249, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 287, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 436, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 531, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 533, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 582, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 600, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 632, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 660, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 666, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 799, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 937, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 962, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1028, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1035, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1079, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1244, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1307, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1388, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1414, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1439, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1439, i32 12 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1439, i32 25 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1439, i32 35 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1442, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 56, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 493, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.269 = private constant [40 x i8] c"../drivers/scsi/elx/libefc/efc_device.c\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 498, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [7 x i8] c"str.88\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [7 x i8] c"str.89\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [7 x i8] c"str.90\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [7 x i8] c"str.91\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [7 x i8] c"str.92\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"str.93\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [7 x i8] c"str.94\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [7 x i8] c"str.95\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [7 x i8] c"str.96\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [7 x i8] c"str.97\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [7 x i8] c"str.98\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [7 x i8] c"str.99\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [8 x i8] c"str.100\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [8 x i8] c"str.101\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [8 x i8] c"str.102\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [8 x i8] c"str.103\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [8 x i8] c"str.104\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [8 x i8] c"str.105\00", align 1
@llvm.compiler.used = appending global [136 x ptr] [ptr @__efc_d_device_gone._entry, ptr @__efc_d_device_gone._entry.77, ptr @__efc_d_device_gone._entry.79, ptr @__efc_d_device_gone._entry_ptr, ptr @__efc_d_device_gone._entry_ptr.78, ptr @__efc_d_device_gone._entry_ptr.80, ptr @__efc_d_device_ready._entry, ptr @__efc_d_device_ready._entry.63, ptr @__efc_d_device_ready._entry.65, ptr @__efc_d_device_ready._entry.69, ptr @__efc_d_device_ready._entry_ptr, ptr @__efc_d_device_ready._entry_ptr.64, ptr @__efc_d_device_ready._entry_ptr.68, ptr @__efc_d_device_ready._entry_ptr.71, ptr @__efc_d_init._entry, ptr @__efc_d_init._entry.19, ptr @__efc_d_init._entry.22, ptr @__efc_d_init._entry.25, ptr @__efc_d_init._entry.28, ptr @__efc_d_init._entry.30, ptr @__efc_d_init._entry.33, ptr @__efc_d_init._entry.35, ptr @__efc_d_init._entry.38, ptr @__efc_d_init._entry_ptr, ptr @__efc_d_init._entry_ptr.21, ptr @__efc_d_init._entry_ptr.24, ptr @__efc_d_init._entry_ptr.27, ptr @__efc_d_init._entry_ptr.29, ptr @__efc_d_init._entry_ptr.32, ptr @__efc_d_init._entry_ptr.34, ptr @__efc_d_init._entry_ptr.37, ptr @__efc_d_init._entry_ptr.40, ptr @__efc_d_initiate_shutdown._entry, ptr @__efc_d_initiate_shutdown._entry.11, ptr @__efc_d_initiate_shutdown._entry.14, ptr @__efc_d_initiate_shutdown._entry.8, ptr @__efc_d_initiate_shutdown._entry_ptr, ptr @__efc_d_initiate_shutdown._entry_ptr.10, ptr @__efc_d_initiate_shutdown._entry_ptr.13, ptr @__efc_d_initiate_shutdown._entry_ptr.16, ptr @__efc_d_port_logged_in._entry, ptr @__efc_d_port_logged_in._entry_ptr, ptr @__efc_d_wait_adisc_rsp._entry, ptr @__efc_d_wait_adisc_rsp._entry_ptr, ptr @__efc_d_wait_attach_evt_shutdown._entry, ptr @__efc_d_wait_attach_evt_shutdown._entry.57, ptr @__efc_d_wait_attach_evt_shutdown._entry.59, ptr @__efc_d_wait_attach_evt_shutdown._entry_ptr, ptr @__efc_d_wait_attach_evt_shutdown._entry_ptr.58, ptr @__efc_d_wait_attach_evt_shutdown._entry_ptr.60, ptr @__efc_d_wait_del_ini_tgt._entry, ptr @__efc_d_wait_del_ini_tgt._entry_ptr, ptr @__efc_d_wait_del_node._entry, ptr @__efc_d_wait_del_node._entry_ptr, ptr @__efc_d_wait_logo_rsp._entry, ptr @__efc_d_wait_logo_rsp._entry_ptr, ptr @__efc_d_wait_node_attach._entry, ptr @__efc_d_wait_node_attach._entry.49, ptr @__efc_d_wait_node_attach._entry.52, ptr @__efc_d_wait_node_attach._entry.54, ptr @__efc_d_wait_node_attach._entry_ptr, ptr @__efc_d_wait_node_attach._entry_ptr.51, ptr @__efc_d_wait_node_attach._entry_ptr.53, ptr @__efc_d_wait_node_attach._entry_ptr.55, ptr @__efc_d_wait_plogi_rsp._entry, ptr @__efc_d_wait_plogi_rsp._entry.41, ptr @__efc_d_wait_plogi_rsp._entry_ptr, ptr @__efc_d_wait_plogi_rsp._entry_ptr.43, ptr @__efc_d_wait_topology_notify._entry, ptr @__efc_d_wait_topology_notify._entry.45, ptr @__efc_d_wait_topology_notify._entry_ptr, ptr @__efc_d_wait_topology_notify._entry_ptr.47, ptr @efc_d_check_plogi_topology._entry, ptr @efc_d_check_plogi_topology._entry.85, ptr @efc_d_check_plogi_topology._entry_ptr, ptr @efc_d_check_plogi_topology._entry_ptr.87, ptr @efc_d_send_prli_rsp._entry, ptr @efc_d_send_prli_rsp._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.31, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.56, ptr @.str.61, ptr @.str.62, ptr @.str.66, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @str, ptr @str.88, ptr @str.89, ptr @str.90, ptr @str.91, ptr @str.92, ptr @str.93, ptr @str.94, ptr @str.95, ptr @str.96, ptr @str.97, ptr @str.98, ptr @str.99, ptr @str.100, ptr @str.101, ptr @str.102, ptr @str.103, ptr @str.104, ptr @str.105], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_d_send_prli_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_d_check_plogi_topology._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_d_check_plogi_topology._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.88 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.89 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.90 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.91 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.92 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.93 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.94 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.95 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.96 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.97 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.98 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.99 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.100 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.101 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.102 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.103 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.104 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.105 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_d_send_prli_rsp(ptr noundef %node, i16 noundef zeroext %ox_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %conv = zext i16 %ox_id to i32
  %ls_acc_oxid = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 22
  %2 = ptrtoint ptr %ls_acc_oxid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %ls_acc_oxid, align 4
  %send_ls_acc = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 20
  %3 = ptrtoint ptr %send_ls_acc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %send_ls_acc, align 4
  %init = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 26
  %4 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %init, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end13.sink.split_crit_edge, label %do.end

entry.if.end13.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.sink.split

do.end:                                           ; preds = %entry
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  %wwpn = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 46
  %wwnn = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 45
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %display_name, ptr noundef %wwpn, ptr noundef %wwnn) #8
  %nport = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %8 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nport, align 4
  %enable_tgt = getelementptr inbounds %struct.efc_nport, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %enable_tgt to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enable_tgt, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %do.end.if.end13.sink.split_crit_edge, label %if.end6

do.end.if.end13.sink.split_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.sink.split

if.end6:                                          ; preds = %do.end
  %scsi_new_node = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 15, i32 2
  %12 = ptrtoint ptr %scsi_new_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scsi_new_node, align 4
  %call = tail call i32 %13(ptr noundef %1, ptr noundef %node) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end6.if.end13.sink.split_crit_edge, label %if.end9

if.end6.if.end13.sink.split_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.sink.split

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10 = icmp eq i32 %call, 0
  br i1 %cmp10, label %if.end9.if.end13.sink.split_crit_edge, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end9.if.end13.sink.split_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.end9.if.end13.sink.split_crit_edge, %if.end6.if.end13.sink.split_crit_edge, %do.end.if.end13.sink.split_crit_edge, %entry.if.end13.sink.split_crit_edge
  %.sink = phi i32 [ 69, %if.end6.if.end13.sink.split_crit_edge ], [ 68, %do.end.if.end13.sink.split_crit_edge ], [ 68, %entry.if.end13.sink.split_crit_edge ], [ 68, %if.end9.if.end13.sink.split_crit_edge ]
  tail call void @efc_node_post_event(ptr noundef %node, i32 noundef %.sink, ptr noundef null) #5
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.end9.if.end13_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_post_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_d_initiate_shutdown(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %5 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.88, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #5
  %6 = call ptr @memcpy(ptr %current_state_name4.i, ptr @str, i32 64)
  br label %efc_node_evt_set.exit

efc_node_evt_set.exit:                            ; preds = %if.then2.i, %if.then.i, %entry.efc_node_evt_set.exit_crit_edge
  %current_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %7 = ptrtoint ptr %current_evt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_evt.i, align 8
  %prev_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %9 = ptrtoint ptr %prev_evt.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %prev_evt.i, align 4
  store i32 %evt, ptr %current_evt.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_initiate_shutdown.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_initiate_shutdown, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call5 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_initiate_shutdown.__UNIQUE_ID_ddebug318, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_d_initiate_shutdown, ptr noundef %call5) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %14 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %evt, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %do.end.sw.epilog_crit_edge
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %els_io_enabled = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %els_io_enabled to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %els_io_enabled, align 1
  %init = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 26
  %16 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %init, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6.not = icmp eq i8 %17, 0
  %targ26 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 25
  %18 = ptrtoint ptr %targ26 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %targ26, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool27.not = icmp eq i8 %19, 0
  br i1 %tobool6.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  br i1 %tobool27.not, label %do.end11, label %if.else.thread

do.end11:                                         ; preds = %land.lhs.true
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %pci13 = getelementptr inbounds %struct.efc, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pci13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci13, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %display_name15 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %wwpn = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 46
  %wwnn = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 45
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14, ptr noundef nonnull @.str.7, ptr noundef %display_name15, ptr noundef %wwpn, ptr noundef %wwnn) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_del_node, ptr noundef null) #5
  %nport = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nport, align 4
  %enable_tgt = getelementptr inbounds %struct.efc_nport, ptr %25, i32 0, i32 25
  %26 = ptrtoint ptr %enable_tgt to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enable_tgt, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool19.not = icmp eq i8 %27, 0
  br i1 %tobool19.not, label %do.end11.if.end97.sink.split_crit_edge, label %if.end22

do.end11.if.end97.sink.split_crit_edge:           ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97.sink.split

if.end22:                                         ; preds = %do.end11
  %scsi_del_node = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 15, i32 3
  %28 = ptrtoint ptr %scsi_del_node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %scsi_del_node, align 4
  %call21 = tail call i32 %29(ptr noundef %3, ptr noundef %1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21)
  %30 = icmp slt i32 %call21, 1
  br i1 %30, label %if.end22.if.end97.sink.split_crit_edge, label %if.end22.if.end97_crit_edge

if.end22.if.end97_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.end22.if.end97.sink.split_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97.sink.split

if.else:                                          ; preds = %sw.bb
  br i1 %tobool27.not, label %if.else.if.end97_crit_edge, label %do.end34

if.else.if.end97_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.else.thread:                                   ; preds = %land.lhs.true
  %31 = ptrtoint ptr %targ26 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %targ26, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool27.not190 = icmp eq i8 %32, 0
  br i1 %tobool27.not190, label %if.else.thread.if.end97_crit_edge, label %do.end63

if.else.thread.if.end97_crit_edge:                ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

do.end34:                                         ; preds = %if.else
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %pci36 = getelementptr inbounds %struct.efc, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %pci36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci36, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %display_name38 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %wwpn40 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 46
  %wwnn42 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 45
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev37, ptr noundef nonnull @.str.9, ptr noundef %display_name38, ptr noundef %wwpn40, ptr noundef %wwnn42) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_del_node, ptr noundef null) #5
  %nport44 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %nport44 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nport44, align 4
  %enable_ini = getelementptr inbounds %struct.efc_nport, ptr %38, i32 0, i32 24
  %39 = ptrtoint ptr %enable_ini to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %enable_ini, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool45.not = icmp eq i8 %40, 0
  br i1 %tobool45.not, label %do.end34.if.end97.sink.split_crit_edge, label %if.then46

do.end34.if.end97.sink.split_crit_edge:           ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97.sink.split

if.then46:                                        ; preds = %do.end34
  %scsi_del_node48 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 15, i32 3
  %41 = ptrtoint ptr %scsi_del_node48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %scsi_del_node48, align 4
  %call49 = tail call i32 %42(ptr noundef %3, ptr noundef %1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %phi.cmp183 = icmp eq i32 %call49, 0
  br i1 %phi.cmp183, label %if.then46.if.end97.sink.split_crit_edge, label %if.then46.if.end97_crit_edge

if.then46.if.end97_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.then46.if.end97.sink.split_crit_edge:          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97.sink.split

do.end63:                                         ; preds = %if.else.thread
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %pci65 = getelementptr inbounds %struct.efc, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %pci65 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pci65, align 4
  %dev66 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %display_name67 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %wwpn69 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 46
  %wwnn71 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 45
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev66, ptr noundef nonnull @.str.12, ptr noundef %display_name67, ptr noundef %wwpn69, ptr noundef %wwnn71) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_del_ini_tgt, ptr noundef null) #5
  %nport73 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %47 = ptrtoint ptr %nport73 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nport73, align 4
  %enable_tgt74 = getelementptr inbounds %struct.efc_nport, ptr %48, i32 0, i32 25
  %49 = ptrtoint ptr %enable_tgt74 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %enable_tgt74, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool75.not = icmp eq i8 %50, 0
  br i1 %tobool75.not, label %do.end63.if.then82_crit_edge, label %if.then76

do.end63.if.then82_crit_edge:                     ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then82

if.then76:                                        ; preds = %do.end63
  %scsi_del_node78 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 15, i32 3
  %51 = ptrtoint ptr %scsi_del_node78 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %scsi_del_node78, align 4
  %call79 = tail call i32 %52(ptr noundef %3, ptr noundef %1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %phi.cmp = icmp eq i32 %call79, 0
  br i1 %phi.cmp, label %if.then76.if.then82_crit_edge, label %if.then76.if.end83_crit_edge

if.then76.if.end83_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then76.if.then82_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then82

if.then82:                                        ; preds = %if.then76.if.then82_crit_edge, %do.end63.if.then82_crit_edge
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 66, ptr noundef null) #5
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.then76.if.end83_crit_edge
  %53 = ptrtoint ptr %nport73 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %nport73, align 4
  %enable_ini85 = getelementptr inbounds %struct.efc_nport, ptr %54, i32 0, i32 24
  %55 = ptrtoint ptr %enable_ini85 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %enable_ini85, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool86.not = icmp eq i8 %56, 0
  br i1 %tobool86.not, label %if.end83.if.end97.sink.split_crit_edge, label %if.then87

if.end83.if.end97.sink.split_crit_edge:           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97.sink.split

if.then87:                                        ; preds = %if.end83
  %scsi_del_node89 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 15, i32 3
  %57 = ptrtoint ptr %scsi_del_node89 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %scsi_del_node89, align 4
  %call90 = tail call i32 %58(ptr noundef %3, ptr noundef %1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %phi.cmp182 = icmp eq i32 %call90, 0
  br i1 %phi.cmp182, label %if.then87.if.end97.sink.split_crit_edge, label %if.then87.if.end97_crit_edge

if.then87.if.end97_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.then87.if.end97.sink.split_crit_edge:          ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97.sink.split

if.end97.sink.split:                              ; preds = %if.then87.if.end97.sink.split_crit_edge, %if.end83.if.end97.sink.split_crit_edge, %if.then46.if.end97.sink.split_crit_edge, %do.end34.if.end97.sink.split_crit_edge, %if.end22.if.end97.sink.split_crit_edge, %do.end11.if.end97.sink.split_crit_edge
  %.sink = phi i32 [ 66, %do.end11.if.end97.sink.split_crit_edge ], [ 66, %if.end22.if.end97.sink.split_crit_edge ], [ 67, %do.end34.if.end97.sink.split_crit_edge ], [ 67, %if.then46.if.end97.sink.split_crit_edge ], [ 67, %if.end83.if.end97.sink.split_crit_edge ], [ 67, %if.then87.if.end97.sink.split_crit_edge ]
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef %.sink, ptr noundef null) #5
  br label %if.end97

if.end97:                                         ; preds = %if.end97.sink.split, %if.then87.if.end97_crit_edge, %if.then46.if.end97_crit_edge, %if.else.thread.if.end97_crit_edge, %if.else.if.end97_crit_edge, %if.end22.if.end97_crit_edge
  %attached = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %59 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %attached, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool98.not = icmp eq i8 %60, 0
  br i1 %tobool98.not, label %if.end97.if.end112_crit_edge, label %if.then99

if.end97.if.end112_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

if.then99:                                        ; preds = %if.end97
  %rnode = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 17
  %call100 = tail call i32 @efc_cmd_node_detach(ptr noundef %3, ptr noundef %rnode) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %do.end105, label %if.then99.if.end112_crit_edge

if.then99.if.end112_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

do.end105:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 8
  %pci107 = getelementptr inbounds %struct.efc, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %pci107 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pci107, align 4
  %dev108 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  %display_name109 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev108, ptr noundef nonnull @.str.15, ptr noundef %display_name109, i32 noundef %call100) #8
  br label %if.end112

if.end112:                                        ; preds = %do.end105, %if.then99.if.end112_crit_edge, %if.end97.if.end112_crit_edge
  %65 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %init, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool114.not = icmp eq i8 %66, 0
  br i1 %tobool114.not, label %land.lhs.true115, label %if.end112.sw.epilog_crit_edge

if.end112.sw.epilog_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true115:                                 ; preds = %if.end112
  %targ116 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 25
  %67 = ptrtoint ptr %targ116 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %targ116, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool117.not = icmp eq i8 %68, 0
  br i1 %tobool117.not, label %if.then118, label %land.lhs.true115.sw.epilog_crit_edge

land.lhs.true115.sw.epilog_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then118:                                       ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @efc_node_initiate_cleanup(ptr noundef %1) #5
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__efc_d_common(ptr noundef nonnull @__func__.__efc_d_initiate_shutdown, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then118, %land.lhs.true115.sw.epilog_crit_edge, %if.end112.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efc_sm_event_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_transition(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__efc_d_wait_del_node(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.90, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #5
  %4 = call ptr @memcpy(ptr %current_state_name4.i, ptr @str, i32 64)
  br label %efc_node_evt_set.exit

efc_node_evt_set.exit:                            ; preds = %if.then2.i, %if.then.i, %entry.efc_node_evt_set.exit_crit_edge
  %current_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %current_evt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_evt.i, align 8
  %prev_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %7 = ptrtoint ptr %prev_evt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %prev_evt.i, align 4
  store i32 %evt, ptr %current_evt.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_wait_del_node.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_wait_del_node, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_wait_del_node.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_d_wait_del_node, ptr noundef %call3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %evt, label %sw.default [
    i32 0, label %sw.bb
    i32 65, label %do.end.sw.epilog_crit_edge
    i32 4, label %do.end.sw.epilog_crit_edge70
    i32 66, label %do.end.sw.bb5_crit_edge
    i32 67, label %do.end.sw.bb5_crit_edge71
    i32 2, label %sw.bb6
    i32 35, label %sw.bb7
    i32 3, label %sw.bb41
    i32 51, label %do.end.do.end45_crit_edge
    i32 50, label %do.end.do.end45_crit_edge72
    i32 13, label %do.end.sw.epilog_crit_edge73
  ]

do.end.sw.epilog_crit_edge73:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end.do.end45_crit_edge72:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end45

do.end.do.end45_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end45

do.end.sw.bb5_crit_edge71:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

do.end.sw.bb5_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

do.end.sw.epilog_crit_edge70:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end.sw.bb5_crit_edge, %do.end.sw.bb5_crit_edge71
  tail call void @efc_node_initiate_cleanup(ptr noundef %1) #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i68 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %hold_frames.i68 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hold_frames.i68, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %15 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %els_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool8.not = icmp eq i32 %16, 0
  br i1 %tobool8.not, label %do.end26, label %sw.bb7.if.end32_crit_edge, !prof !253

sw.bb7.if.end32_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

do.end26:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 122, i32 noundef 9, ptr noundef null) #5
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %sw.bb7.if.end32_crit_edge
  %17 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %els_req_cnt, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %els_req_cnt, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %shutdown_reason = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %19 = ptrtoint ptr %shutdown_reason to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %shutdown_reason, align 4
  br label %do.end45

do.end45:                                         ; preds = %sw.bb41, %do.end.do.end45_crit_edge, %do.end.do.end45_crit_edge72
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %pci47 = getelementptr inbounds %struct.efc, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pci47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci47, align 4
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %display_name49 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call51 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev48, ptr noundef nonnull @.str.50, ptr noundef %display_name49, ptr noundef %call51) #8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__efc_d_common(ptr noundef nonnull @__func__.__efc_d_wait_del_node, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end45, %if.end32, %sw.bb6, %sw.bb5, %sw.bb, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge70, %do.end.sw.epilog_crit_edge73
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__efc_d_wait_del_ini_tgt(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.89, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #5
  %4 = call ptr @memcpy(ptr %current_state_name4.i, ptr @str, i32 64)
  br label %efc_node_evt_set.exit

efc_node_evt_set.exit:                            ; preds = %if.then2.i, %if.then.i, %entry.efc_node_evt_set.exit_crit_edge
  %current_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %current_evt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_evt.i, align 8
  %prev_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %7 = ptrtoint ptr %prev_evt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %prev_evt.i, align 4
  store i32 %evt, ptr %current_evt.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_wait_del_ini_tgt.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_wait_del_ini_tgt, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_wait_del_ini_tgt.__UNIQUE_ID_ddebug317, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_d_wait_del_ini_tgt, ptr noundef %call3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %evt, label %sw.default [
    i32 0, label %sw.bb
    i32 65, label %do.end.sw.epilog_crit_edge
    i32 4, label %do.end.sw.epilog_crit_edge70
    i32 66, label %do.end.sw.bb5_crit_edge
    i32 67, label %do.end.sw.bb5_crit_edge71
    i32 2, label %sw.bb6
    i32 35, label %sw.bb7
    i32 3, label %sw.bb41
    i32 51, label %do.end.do.end45_crit_edge
    i32 50, label %do.end.do.end45_crit_edge72
    i32 13, label %do.end.sw.epilog_crit_edge73
  ]

do.end.sw.epilog_crit_edge73:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end.do.end45_crit_edge72:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end45

do.end.do.end45_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end45

do.end.sw.bb5_crit_edge71:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

do.end.sw.bb5_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

do.end.sw.epilog_crit_edge70:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end.sw.bb5_crit_edge, %do.end.sw.bb5_crit_edge71
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_del_node, ptr noundef null) #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i68 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %hold_frames.i68 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hold_frames.i68, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %15 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %els_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool8.not = icmp eq i32 %16, 0
  br i1 %tobool8.not, label %do.end26, label %sw.bb7.if.end32_crit_edge, !prof !253

sw.bb7.if.end32_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

do.end26:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 175, i32 noundef 9, ptr noundef null) #5
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %sw.bb7.if.end32_crit_edge
  %17 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %els_req_cnt, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %els_req_cnt, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %shutdown_reason = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %19 = ptrtoint ptr %shutdown_reason to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %shutdown_reason, align 4
  br label %do.end45

do.end45:                                         ; preds = %sw.bb41, %do.end.do.end45_crit_edge, %do.end.do.end45_crit_edge72
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %pci47 = getelementptr inbounds %struct.efc, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pci47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci47, align 4
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %display_name49 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call51 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev48, ptr noundef nonnull @.str.50, ptr noundef %display_name49, ptr noundef %call51) #8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__efc_d_common(ptr noundef nonnull @__func__.__efc_d_wait_del_ini_tgt, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end45, %if.end32, %sw.bb6, %sw.bb5, %sw.bb, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge70, %do.end.sw.epilog_crit_edge73
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_cmd_node_detach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_initiate_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__efc_d_common(ptr noundef %funcname, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %evt, label %sw.default [
    i32 3, label %do.body
    i32 51, label %do.body6
    i32 50, label %do.body29
  ]

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_common.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_common, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call4 = tail call ptr @efc_sm_event_name(i32 noundef 3) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_common.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %display_name, ptr noundef %funcname, ptr noundef %call4) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %shutdown_reason = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %7 = ptrtoint ptr %shutdown_reason to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %shutdown_reason, align 4
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_initiate_shutdown, ptr noundef null) #5
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_common.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_common, %if.then18)) #5
          to label %do.end26 [label %if.then18], !srcloc !252

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  %pci19 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %pci19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci19, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %display_name21 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call23 = tail call ptr @efc_sm_event_name(i32 noundef 51) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_common.__UNIQUE_ID_ddebug314, ptr noundef %dev20, ptr noundef nonnull @.str.6, ptr noundef %display_name21, ptr noundef %funcname, ptr noundef %call23) #5
  br label %do.end26

do.end26:                                         ; preds = %if.then18, %do.body6
  %shutdown_reason27 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %10 = ptrtoint ptr %shutdown_reason27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %shutdown_reason27, align 4
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_initiate_shutdown, ptr noundef null) #5
  br label %sw.epilog

do.body29:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_common.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_common, %if.then41)) #5
          to label %do.end49 [label %if.then41], !srcloc !252

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %pci42 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %pci42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci42, align 4
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %display_name44 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call46 = tail call ptr @efc_sm_event_name(i32 noundef 50) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_common.__UNIQUE_ID_ddebug315, ptr noundef %dev43, ptr noundef nonnull @.str.6, ptr noundef %display_name44, ptr noundef %funcname, ptr noundef %call46) #5
  br label %do.end49

do.end49:                                         ; preds = %if.then41, %do.body29
  %shutdown_reason50 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %13 = ptrtoint ptr %shutdown_reason50 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %shutdown_reason50, align 4
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_initiate_shutdown, ptr noundef null) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__efc_node_common(ptr noundef %funcname, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end49, %do.end26, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_d_wait_loop(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.105, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #5
  %4 = call ptr @memcpy(ptr %current_state_name4.i, ptr @str, i32 64)
  br label %efc_node_evt_set.exit

efc_node_evt_set.exit:                            ; preds = %if.then2.i, %if.then.i, %entry.efc_node_evt_set.exit_crit_edge
  %current_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %current_evt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_evt.i, align 8
  %prev_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %7 = ptrtoint ptr %prev_evt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %prev_evt.i, align 4
  store i32 %evt, ptr %current_evt.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_wait_loop.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_wait_loop, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_wait_loop.__UNIQUE_ID_ddebug319, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_d_wait_loop, ptr noundef %call3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %evt, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 13, label %sw.bb5
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i15 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %hold_frames.i15 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hold_frames.i15, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  %send_plogi1.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %send_plogi1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %send_plogi1.i, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %nodedb_mask.i = getelementptr inbounds %struct.efc, ptr %17, i32 0, i32 26
  %18 = ptrtoint ptr %nodedb_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nodedb_mask.i, align 4
  %and.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %sw.bb5.efc_node_init_device.exit_crit_edge, label %land.lhs.true.i

sw.bb5.efc_node_init_device.exit_crit_edge:       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_node_init_device.exit

land.lhs.true.i:                                  ; preds = %sw.bb5
  %fc_id.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 17, i32 2
  %20 = ptrtoint ptr %fc_id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fc_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16776192, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 16776192
  br i1 %cmp.not.i, label %land.lhs.true.i.efc_node_init_device.exit_crit_edge, label %if.then.i16

land.lhs.true.i.efc_node_init_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_node_init_device.exit

if.then.i16:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %nodedb_state.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 42
  %22 = ptrtoint ptr %nodedb_state.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @__efc_d_init, ptr %nodedb_state.i, align 8
  br label %efc_node_init_device.exit

efc_node_init_device.exit:                        ; preds = %if.then.i16, %land.lhs.true.i.efc_node_init_device.exit_crit_edge, %sw.bb5.efc_node_init_device.exit_crit_edge
  %__efc_d_init.sink.i = phi ptr [ @__efc_node_paused, %if.then.i16 ], [ @__efc_d_init, %land.lhs.true.i.efc_node_init_device.exit_crit_edge ], [ @__efc_d_init, %sw.bb5.efc_node_init_device.exit_crit_edge ]
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull %__efc_d_init.sink.i, ptr noundef null) #5
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__efc_d_common(ptr noundef nonnull @__func__.__efc_d_wait_loop, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %efc_node_init_device.exit, %sw.bb4, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_node_init_device(ptr noundef %node, i1 noundef zeroext %send_plogi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %send_plogi to i8
  %send_plogi1 = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 8
  %0 = ptrtoint ptr %send_plogi1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %send_plogi1, align 1
  %1 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %node, align 8
  %nodedb_mask = getelementptr inbounds %struct.efc, ptr %2, i32 0, i32 26
  %3 = ptrtoint ptr %nodedb_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nodedb_mask, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fc_id = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 17, i32 2
  %5 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fc_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16776192, i32 %6)
  %cmp.not = icmp eq i32 %6, 16776192
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %nodedb_state = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 42
  %7 = ptrtoint ptr %nodedb_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @__efc_d_init, ptr %nodedb_state, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %__efc_d_init.sink = phi ptr [ @__efc_node_paused, %if.then ], [ @__efc_d_init, %land.lhs.true.if.end_crit_edge ], [ @__efc_d_init, %entry.if.end_crit_edge ]
  tail call void @efc_node_transition(ptr noundef %node, ptr noundef nonnull %__efc_d_init.sink, ptr noundef null) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_send_ls_acc_after_attach(ptr nocapture noundef %node, ptr nocapture noundef readonly %hdr, i32 noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 9
  %0 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fh_ox_id, align 4
  %send_ls_acc = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 20
  %2 = ptrtoint ptr %send_ls_acc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %send_ls_acc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !254

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 350, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %conv = zext i16 %1 to i32
  %ls_acc_oxid = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 22
  %4 = ptrtoint ptr %ls_acc_oxid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %ls_acc_oxid, align 4
  %5 = ptrtoint ptr %send_ls_acc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %ls, ptr %send_ls_acc, align 4
  %fh_d_id = getelementptr inbounds %struct.fc_frame_header, ptr %hdr, i32 0, i32 1
  %6 = ptrtoint ptr %fh_d_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fh_d_id, align 1
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr %struct.fc_frame_header, ptr %hdr, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %9 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr %struct.fc_frame_header, ptr %hdr, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %11 to i32
  %or6.i = or i32 %or.i, %conv5.i
  %ls_acc_did = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 23
  %12 = ptrtoint ptr %ls_acc_did to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or6.i, ptr %ls_acc_did, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @efc_process_prli_payload(ptr nocapture noundef writeonly %node, ptr nocapture noundef readonly %prli) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spp_flags = getelementptr inbounds %struct.anon.86, ptr %prli, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %spp_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %spp_flags, align 2
  %init = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 26
  %2 = lshr i8 %1, 5
  %.lobit = and i8 %2, 1
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.lobit, ptr %init, align 1
  %4 = load i8, ptr %spp_flags, align 2
  %targ = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 25
  %5 = lshr i8 %4, 4
  %.lobit11 = and i8 %5, 1
  %6 = ptrtoint ptr %targ to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.lobit11, ptr %targ, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_d_wait_plogi_acc_cmpl(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.97, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #5
  %4 = call ptr @memcpy(ptr %current_state_name4.i, ptr @str, i32 64)
  br label %efc_node_evt_set.exit

efc_node_evt_set.exit:                            ; preds = %if.then2.i, %if.then.i, %entry.efc_node_evt_set.exit_crit_edge
  %current_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %current_evt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_evt.i, align 8
  %prev_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %7 = ptrtoint ptr %prev_evt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %prev_evt.i, align 4
  store i32 %evt, ptr %current_evt.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_wait_plogi_acc_cmpl.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_wait_plogi_acc_cmpl, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_wait_plogi_acc_cmpl.__UNIQUE_ID_ddebug320, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_d_wait_plogi_acc_cmpl, ptr noundef %call3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %evt, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 36, label %sw.bb5
    i32 34, label %sw.bb39
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i93 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %hold_frames.i93 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hold_frames.i93, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  %els_cmpl_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 36
  %15 = ptrtoint ptr %els_cmpl_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %els_cmpl_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not = icmp eq i32 %16, 0
  br i1 %tobool6.not, label %do.end24, label %sw.bb5.if.end30_crit_edge, !prof !253

sw.bb5.if.end30_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.end24:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 390, i32 noundef 9, ptr noundef null) #5
  br label %if.end30

if.end30:                                         ; preds = %do.end24, %sw.bb5.if.end30_crit_edge
  %17 = ptrtoint ptr %els_cmpl_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %els_cmpl_cnt, align 8
  %dec = add i32 %18, -1
  store i32 %dec, ptr %els_cmpl_cnt, align 8
  %shutdown_reason = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %19 = ptrtoint ptr %shutdown_reason to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %shutdown_reason, align 4
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_initiate_shutdown, ptr noundef null) #5
  br label %sw.epilog

sw.bb39:                                          ; preds = %do.end
  %els_cmpl_cnt41 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 36
  %20 = ptrtoint ptr %els_cmpl_cnt41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %els_cmpl_cnt41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool42.not = icmp eq i32 %21, 0
  br i1 %tobool42.not, label %do.end60, label %sw.bb39.if.end66_crit_edge, !prof !253

sw.bb39.if.end66_crit_edge:                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

do.end60:                                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 397, i32 noundef 9, ptr noundef null) #5
  br label %if.end66

if.end66:                                         ; preds = %do.end60, %sw.bb39.if.end66_crit_edge
  %22 = ptrtoint ptr %els_cmpl_cnt41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %els_cmpl_cnt41, align 8
  %dec75 = add i32 %23, -1
  store i32 %dec75, ptr %els_cmpl_cnt41, align 8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_port_logged_in, ptr noundef null) #5
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__efc_d_common(ptr noundef nonnull @__func__.__efc_d_wait_plogi_acc_cmpl, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end66, %if.end30, %sw.bb4, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_d_port_logged_in(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.96, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #5
  %4 = call ptr @memcpy(ptr %current_state_name4.i, ptr @str, i32 64)
  br label %efc_node_evt_set.exit

efc_node_evt_set.exit:                            ; preds = %if.then2.i, %if.then.i, %entry.efc_node_evt_set.exit_crit_edge
  %current_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %current_evt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_evt.i, align 8
  %prev_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %7 = ptrtoint ptr %prev_evt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %prev_evt.i, align 4
  store i32 %evt, ptr %current_evt.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_port_logged_in.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_port_logged_in, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_port_logged_in.__UNIQUE_ID_ddebug329, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_d_port_logged_in, ptr noundef %call3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %evt, label %sw.default [
    i32 0, label %sw.bb
    i32 63, label %do.end.cleanup218_crit_edge
    i32 55, label %sw.bb9
    i32 68, label %sw.bb23
    i32 69, label %sw.bb30
    i32 33, label %sw.bb34
    i32 35, label %sw.bb73
    i32 37, label %sw.bb114
    i32 34, label %sw.bb155
    i32 52, label %sw.bb191
    i32 54, label %sw.bb198
  ]

do.end.cleanup218_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup218

sw.bb:                                            ; preds = %do.end
  %nport = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nport, align 4
  %enable_ini = getelementptr inbounds %struct.efc_nport, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %enable_ini to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %enable_ini, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool4.not = icmp eq i8 %16, 0
  br i1 %tobool4.not, label %sw.bb.cleanup218_crit_edge, label %land.lhs.true

sw.bb.cleanup218_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup218

land.lhs.true:                                    ; preds = %sw.bb
  %fc_id = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 17, i32 2
  %17 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fc_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16776192, i32 %18)
  %cmp.not = icmp eq i32 %18, 16776192
  br i1 %cmp.not, label %if.then5, label %land.lhs.true.cleanup218_crit_edge

land.lhs.true.cleanup218_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup218

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @efc_send_prli(ptr noundef %1) #5
  br label %cleanup218

sw.bb9:                                           ; preds = %do.end
  %header = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %19 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %header, align 4
  %dma = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma, align 4
  %payload = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 3
  %23 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %payload, align 4
  %dma10 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %dma10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma10, align 4
  %sp = getelementptr inbounds %struct.anon.87, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %sp to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %28)
  %cmp12.not = icmp eq i8 %28, 8
  br i1 %cmp12.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %22, i32 0, i32 9
  %29 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %fh_ox_id, align 4
  %conv15 = zext i16 %30 to i32
  %call16 = tail call i32 @efc_send_ls_rjt(ptr noundef %1, i32 noundef %conv15, i32 noundef 9, i32 noundef 44, i32 noundef 0) #5
  br label %cleanup218

if.end17:                                         ; preds = %sw.bb9
  %spp_flags.i = getelementptr inbounds %struct.anon.86, ptr %26, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %spp_flags.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %spp_flags.i, align 2
  %init.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 26
  %33 = lshr i8 %32, 5
  %.lobit.i = and i8 %33, 1
  %34 = ptrtoint ptr %init.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.lobit.i, ptr %init.i, align 1
  %35 = load i8, ptr %spp_flags.i, align 2
  %targ.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 25
  %36 = lshr i8 %35, 4
  %.lobit11.i = and i8 %36, 1
  %37 = ptrtoint ptr %targ.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %.lobit11.i, ptr %targ.i, align 8
  %fh_ox_id21 = getelementptr inbounds %struct.fc_frame_header, ptr %22, i32 0, i32 9
  %38 = ptrtoint ptr %fh_ox_id21 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %fh_ox_id21, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %conv.i = zext i16 %39 to i32
  %ls_acc_oxid.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 22
  %42 = ptrtoint ptr %ls_acc_oxid.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv.i, ptr %ls_acc_oxid.i, align 4
  %send_ls_acc.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 20
  %43 = ptrtoint ptr %send_ls_acc.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %send_ls_acc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit.i)
  %tobool.not.i = icmp eq i8 %.lobit.i, 0
  br i1 %tobool.not.i, label %if.end17.if.end13.sink.split.i_crit_edge, label %do.end.i

if.end17.if.end13.sink.split.i_crit_edge:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.sink.split.i

do.end.i:                                         ; preds = %if.end17
  %pci.i = getelementptr inbounds %struct.efc, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %display_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %wwpn.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 46
  %wwnn.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 45
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str, ptr noundef %display_name.i, ptr noundef %wwpn.i, ptr noundef %wwnn.i) #8
  %nport.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %nport.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nport.i, align 4
  %enable_tgt.i = getelementptr inbounds %struct.efc_nport, ptr %47, i32 0, i32 25
  %48 = ptrtoint ptr %enable_tgt.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %enable_tgt.i, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool4.not.i = icmp eq i8 %49, 0
  br i1 %tobool4.not.i, label %do.end.i.if.end13.sink.split.i_crit_edge, label %if.end6.i

do.end.i.if.end13.sink.split.i_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.sink.split.i

if.end6.i:                                        ; preds = %do.end.i
  %scsi_new_node.i = getelementptr inbounds %struct.efc, ptr %41, i32 0, i32 15, i32 2
  %50 = ptrtoint ptr %scsi_new_node.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %scsi_new_node.i, align 4
  %call.i282 = tail call i32 %51(ptr noundef %41, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282)
  %cmp.i = icmp slt i32 %call.i282, 0
  br i1 %cmp.i, label %if.end6.i.if.end13.sink.split.i_crit_edge, label %if.end9.i

if.end6.i.if.end13.sink.split.i_crit_edge:        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.sink.split.i

if.end9.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282)
  %cmp10.i = icmp eq i32 %call.i282, 0
  br i1 %cmp10.i, label %if.end9.i.if.end13.sink.split.i_crit_edge, label %if.end9.i.cleanup218_crit_edge

if.end9.i.cleanup218_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup218

if.end9.i.if.end13.sink.split.i_crit_edge:        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.sink.split.i

if.end13.sink.split.i:                            ; preds = %if.end9.i.if.end13.sink.split.i_crit_edge, %if.end6.i.if.end13.sink.split.i_crit_edge, %do.end.i.if.end13.sink.split.i_crit_edge, %if.end17.if.end13.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 69, %if.end6.i.if.end13.sink.split.i_crit_edge ], [ 68, %do.end.i.if.end13.sink.split.i_crit_edge ], [ 68, %if.end17.if.end13.sink.split.i_crit_edge ], [ 68, %if.end9.i.if.end13.sink.split.i_crit_edge ]
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef %.sink.i, ptr noundef null) #5
  br label %cleanup218

sw.bb23:                                          ; preds = %do.end
  %send_ls_acc = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 20
  %52 = ptrtoint ptr %send_ls_acc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %send_ls_acc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp24 = icmp eq i32 %53, 2
  br i1 %cmp24, label %if.then26, label %sw.bb23.if.end28_crit_edge

sw.bb23.if.end28_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then26:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  %ls_acc_oxid = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 22
  %54 = ptrtoint ptr %ls_acc_oxid to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ls_acc_oxid, align 4
  %call27 = tail call i32 @efc_send_prli_acc(ptr noundef %1, i32 noundef %55) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %sw.bb23.if.end28_crit_edge
  %56 = ptrtoint ptr %send_ls_acc to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %send_ls_acc, align 4
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_device_ready, ptr noundef null) #5
  br label %cleanup218

sw.bb30:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %ls_acc_oxid31 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 22
  %57 = ptrtoint ptr %ls_acc_oxid31 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ls_acc_oxid31, align 4
  %call32 = tail call i32 @efc_send_ls_rjt(ptr noundef %1, i32 noundef %58, i32 noundef 9, i32 noundef 44, i32 noundef 0) #5
  %send_ls_acc33 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 20
  %59 = ptrtoint ptr %send_ls_acc33 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %send_ls_acc33, align 4
  br label %cleanup218

sw.bb34:                                          ; preds = %do.end
  %call35 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef 33, ptr noundef %arg, i8 noundef zeroext 32, ptr noundef nonnull @__efc_d_common, ptr noundef nonnull @__func__.__efc_d_port_logged_in) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %sw.bb34.cleanup218_crit_edge

sw.bb34.cleanup218_crit_edge:                     ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup218

if.end38:                                         ; preds = %sw.bb34
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %60 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %els_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool39.not = icmp eq i32 %61, 0
  br i1 %tobool39.not, label %do.end57, label %if.end38.if.end63_crit_edge, !prof !253

if.end38.if.end63_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

do.end57:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1175, i32 noundef 9, ptr noundef null) #5
  br label %if.end63

if.end63:                                         ; preds = %do.end57, %if.end38.if.end63_crit_edge
  %62 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %els_req_cnt, align 4
  %dec = add i32 %63, -1
  store i32 %dec, ptr %els_req_cnt, align 4
  %els_rsp = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 4
  %64 = ptrtoint ptr %els_rsp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %els_rsp, align 4
  %spp_flags.i283 = getelementptr inbounds %struct.anon.86, ptr %65, i32 0, i32 1, i32 2
  %66 = ptrtoint ptr %spp_flags.i283 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %spp_flags.i283, align 2
  %init.i284 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 26
  %68 = lshr i8 %67, 5
  %.lobit.i285 = and i8 %68, 1
  %69 = ptrtoint ptr %init.i284 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %.lobit.i285, ptr %init.i284, align 1
  %70 = load i8, ptr %spp_flags.i283, align 2
  %targ.i286 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 25
  %71 = lshr i8 %70, 4
  %.lobit11.i287 = and i8 %71, 1
  %72 = ptrtoint ptr %targ.i286 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %.lobit11.i287, ptr %targ.i286, align 8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_device_ready, ptr noundef null) #5
  br label %cleanup218

sw.bb73:                                          ; preds = %do.end
  %call74 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef 35, ptr noundef %arg, i8 noundef zeroext 32, ptr noundef nonnull @__efc_d_common, ptr noundef nonnull @__func__.__efc_d_port_logged_in) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %sw.bb73.cleanup218_crit_edge

sw.bb73.cleanup218_crit_edge:                     ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup218

if.end77:                                         ; preds = %sw.bb73
  %els_req_cnt79 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %73 = ptrtoint ptr %els_req_cnt79 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %els_req_cnt79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool80.not = icmp eq i32 %74, 0
  br i1 %tobool80.not, label %do.end98, label %if.end77.if.end104_crit_edge, !prof !253

if.end77.if.end104_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

do.end98:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1189, i32 noundef 9, ptr noundef null) #5
  br label %if.end104

if.end104:                                        ; preds = %do.end98, %if.end77.if.end104_crit_edge
  %75 = ptrtoint ptr %els_req_cnt79 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %els_req_cnt79, align 4
  %dec113 = add i32 %76, -1
  store i32 %dec113, ptr %els_req_cnt79, align 4
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 3, ptr noundef null) #5
  br label %cleanup218

sw.bb114:                                         ; preds = %do.end
  %call115 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef 37, ptr noundef %arg, i8 noundef zeroext 32, ptr noundef nonnull @__efc_d_common, ptr noundef nonnull @__func__.__efc_d_port_logged_in) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %sw.bb114.cleanup218_crit_edge

sw.bb114.cleanup218_crit_edge:                    ; preds = %sw.bb114
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup218

if.end118:                                        ; preds = %sw.bb114
  %els_req_cnt120 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %77 = ptrtoint ptr %els_req_cnt120 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %els_req_cnt120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool121.not = icmp eq i32 %78, 0
  br i1 %tobool121.not, label %do.end139, label %if.end118.if.end145_crit_edge, !prof !253

if.end118.if.end145_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end145

do.end139:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1206, i32 noundef 9, ptr noundef null) #5
  br label %if.end145

if.end145:                                        ; preds = %do.end139, %if.end118.if.end145_crit_edge
  %79 = ptrtoint ptr %els_req_cnt120 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %els_req_cnt120, align 4
  %dec154 = add i32 %80, -1
  store i32 %dec154, ptr %els_req_cnt120, align 4
  br label %cleanup218

sw.bb155:                                         ; preds = %do.end
  %els_cmpl_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 36
  %81 = ptrtoint ptr %els_cmpl_cnt to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %els_cmpl_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool157.not = icmp eq i32 %82, 0
  br i1 %tobool157.not, label %do.end175, label %sw.bb155.if.end181_crit_edge, !prof !253

sw.bb155.if.end181_crit_edge:                     ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end181

do.end175:                                        ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1217, i32 noundef 9, ptr noundef null) #5
  br label %if.end181

if.end181:                                        ; preds = %do.end175, %sw.bb155.if.end181_crit_edge
  %83 = ptrtoint ptr %els_cmpl_cnt to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %els_cmpl_cnt, align 8
  %dec190 = add i32 %84, -1
  store i32 %dec190, ptr %els_cmpl_cnt, align 8
  br label %cleanup218

sw.bb191:                                         ; preds = %do.end
  %payload192 = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 3
  %85 = ptrtoint ptr %payload192 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %payload192, align 4
  %dma193 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %dma193 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dma193, align 4
  tail call void @efc_node_save_sparms(ptr noundef %1, ptr noundef %88) #5
  %header195 = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %89 = ptrtoint ptr %header195 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %header195, align 4
  %dma196 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %dma196 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dma196, align 4
  %fh_ox_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %fh_ox_id.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %fh_ox_id.i, align 4
  %send_ls_acc.i288 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 20
  %95 = ptrtoint ptr %send_ls_acc.i288 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %send_ls_acc.i288, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.not.i = icmp eq i32 %96, 0
  br i1 %cmp.not.i, label %sw.bb191.efc_send_ls_acc_after_attach.exit_crit_edge, label %do.end.i289, !prof !254

sw.bb191.efc_send_ls_acc_after_attach.exit_crit_edge: ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_send_ls_acc_after_attach.exit

do.end.i289:                                      ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 350, i32 noundef 9, ptr noundef null) #5
  br label %efc_send_ls_acc_after_attach.exit

efc_send_ls_acc_after_attach.exit:                ; preds = %do.end.i289, %sw.bb191.efc_send_ls_acc_after_attach.exit_crit_edge
  %conv.i290 = zext i16 %94 to i32
  %ls_acc_oxid.i291 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 22
  %97 = ptrtoint ptr %ls_acc_oxid.i291 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv.i290, ptr %ls_acc_oxid.i291, align 4
  %98 = ptrtoint ptr %send_ls_acc.i288 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %send_ls_acc.i288, align 4
  %fh_d_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %92, i32 0, i32 1
  %99 = ptrtoint ptr %fh_d_id.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %fh_d_id.i, align 1
  %conv.i.i = zext i8 %100 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %arrayidx1.i.i = getelementptr %struct.fc_frame_header, ptr %92, i32 0, i32 1, i32 1
  %101 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %102 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr %struct.fc_frame_header, ptr %92, i32 0, i32 1, i32 2
  %103 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %104 to i32
  %or6.i.i = or i32 %or.i.i, %conv5.i.i
  %ls_acc_did.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 23
  %105 = ptrtoint ptr %ls_acc_did.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %or6.i.i, ptr %ls_acc_did.i, align 8
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 50, ptr noundef null) #5
  br label %cleanup218

sw.bb198:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %header200 = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %106 = ptrtoint ptr %header200 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %header200, align 4
  %dma201 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %dma201 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dma201, align 4
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 8
  %pci207 = getelementptr inbounds %struct.efc, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %pci207 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pci207, align 4
  %dev208 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  %display_name209 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call211 = tail call ptr @efc_sm_event_name(i32 noundef 54) #5
  %attached = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %114 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %attached, align 2, !range !251
  %116 = zext i8 %115 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev208, ptr noundef nonnull @.str.61, ptr noundef %display_name209, ptr noundef %call211, i32 noundef %116) #8
  %fh_ox_id214 = getelementptr inbounds %struct.fc_frame_header, ptr %109, i32 0, i32 9
  %117 = ptrtoint ptr %fh_ox_id214 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %fh_ox_id214, align 4
  %conv215 = zext i16 %118 to i32
  %call216 = tail call i32 @efc_send_logo_acc(ptr noundef %1, i32 noundef %conv215) #5
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_logo_acc_cmpl, ptr noundef null) #5
  br label %cleanup218

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__efc_d_common(ptr noundef nonnull @__func__.__efc_d_port_logged_in, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %cleanup218

cleanup218:                                       ; preds = %sw.default, %sw.bb198, %efc_send_ls_acc_after_attach.exit, %if.end181, %if.end145, %sw.bb114.cleanup218_crit_edge, %if.end104, %sw.bb73.cleanup218_crit_edge, %if.end63, %sw.bb34.cleanup218_crit_edge, %sw.bb30, %if.end28, %if.end13.sink.split.i, %if.end9.i.cleanup218_crit_edge, %if.then14, %if.then5, %land.lhs.true.cleanup218_crit_edge, %sw.bb.cleanup218_crit_edge, %do.end.cleanup218_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_d_wait_logo_rsp(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.101, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #5
  %4 = call ptr @memcpy(ptr %current_state_name4.i, ptr @str, i32 64)
  br label %efc_node_evt_set.exit

efc_node_evt_set.exit:                            ; preds = %if.then2.i, %if.then.i, %entry.efc_node_evt_set.exit_crit_edge
  %current_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %current_evt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_evt.i, align 8
  %prev_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %7 = ptrtoint ptr %prev_evt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %prev_evt.i, align 4
  store i32 %evt, ptr %current_evt.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_wait_logo_rsp.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_wait_logo_rsp, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_wait_logo_rsp.__UNIQUE_ID_ddebug321, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_d_wait_logo_rsp, ptr noundef %call3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %evt, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 33, label %do.end.sw.bb5_crit_edge
    i32 37, label %do.end.sw.bb5_crit_edge72
    i32 35, label %do.end.sw.bb5_crit_edge73
  ]

do.end.sw.bb5_crit_edge73:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

do.end.sw.bb5_crit_edge72:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

do.end.sw.bb5_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  br label %cleanup

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i70 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %hold_frames.i70 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hold_frames.i70, align 8
  br label %cleanup

sw.bb5:                                           ; preds = %do.end.sw.bb5_crit_edge, %do.end.sw.bb5_crit_edge72, %do.end.sw.bb5_crit_edge73
  %call6 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg, i8 noundef zeroext 5, ptr noundef nonnull @__efc_d_common, ptr noundef nonnull @__func__.__efc_d_wait_logo_rsp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %sw.bb5
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %15 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %els_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %do.end28, label %if.end9.if.end34_crit_edge, !prof !253

if.end9.if.end34_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

do.end28:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 434, i32 noundef 9, ptr noundef null) #5
  br label %if.end34

if.end34:                                         ; preds = %do.end28, %if.end9.if.end34_crit_edge
  %17 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %els_req_cnt, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %els_req_cnt, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %pci47 = getelementptr inbounds %struct.efc, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %pci47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci47, align 4
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %display_name49 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call51 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev48, ptr noundef nonnull @.str.17, ptr noundef %display_name49, ptr noundef %call51) #8
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 51, ptr noundef null) #5
  br label %cleanup

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__efc_d_common(ptr noundef nonnull @__func__.__efc_d_wait_logo_rsp, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end34, %sw.bb5.cleanup_crit_edge, %sw.bb4, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_node_check_els_req(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_d_init(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.104, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #5
  %4 = call ptr @memcpy(ptr %current_state_name4.i, ptr @str, i32 64)
  br label %efc_node_evt_set.exit

efc_node_evt_set.exit:                            ; preds = %if.then2.i, %if.then.i, %entry.efc_node_evt_set.exit_crit_edge
  %current_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %current_evt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_evt.i, align 8
  %prev_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %7 = ptrtoint ptr %prev_evt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %prev_evt.i, align 4
  store i32 %evt, ptr %current_evt.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_init.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_init, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_init.__UNIQUE_ID_ddebug322, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_d_init, ptr noundef %call3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %evt, label %sw.default [
    i32 0, label %sw.bb
    i32 52, label %sw.bb37
    i32 58, label %sw.bb56
    i32 53, label %sw.bb57
    i32 54, label %sw.bb88
    i32 55, label %do.end.sw.bb112_crit_edge
    i32 56, label %do.end.sw.bb112_crit_edge266
    i32 57, label %do.end.sw.bb112_crit_edge267
    i32 59, label %do.end.sw.bb112_crit_edge268
    i32 60, label %do.end.sw.bb112_crit_edge269
    i32 63, label %sw.bb145
    i32 13, label %do.end.sw.epilog_crit_edge
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end.sw.bb112_crit_edge269:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb112

do.end.sw.bb112_crit_edge268:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb112

do.end.sw.bb112_crit_edge267:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb112

do.end.sw.bb112_crit_edge266:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb112

do.end.sw.bb112_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb112

sw.bb:                                            ; preds = %do.end
  %send_plogi = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %send_plogi to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %send_plogi, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not = icmp eq i8 %14, 0
  br i1 %tobool4.not, label %sw.bb.sw.epilog_crit_edge, label %if.end6

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end6:                                          ; preds = %sw.bb
  %nport = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nport, align 4
  %enable_ini = getelementptr inbounds %struct.efc_nport, ptr %16, i32 0, i32 24
  %17 = ptrtoint ptr %enable_ini to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %enable_ini, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool7.not = icmp eq i8 %18, 0
  br i1 %tobool7.not, label %if.end6.do.end14_crit_edge, label %land.lhs.true

if.end6.do.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

land.lhs.true:                                    ; preds = %if.end6
  %domain = getelementptr inbounds %struct.efc_nport, ptr %16, i32 0, i32 11
  %19 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %domain, align 8
  %attached = getelementptr inbounds %struct.efc_domain, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %attached, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool9.not = icmp eq i8 %22, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end14_crit_edge, label %if.then10

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 @efc_send_plogi(ptr noundef %1) #5
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_plogi_rsp, ptr noundef null) #5
  br label %sw.epilog

do.end14:                                         ; preds = %land.lhs.true.do.end14_crit_edge, %if.end6.do.end14_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %pci16 = getelementptr inbounds %struct.efc, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %pci16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci16, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %display_name18 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %27 = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev17, ptr noundef nonnull @.str.18, ptr noundef %display_name18, i32 noundef %27) #8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %pci27 = getelementptr inbounds %struct.efc, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %pci27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci27, align 4
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nport, align 4
  %domain32 = getelementptr inbounds %struct.efc_nport, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %domain32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %domain32, align 8
  %attached33 = getelementptr inbounds %struct.efc_domain, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %attached33 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %attached33, align 4, !range !251
  %38 = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev28, ptr noundef nonnull @.str.20, ptr noundef %display_name18, i32 noundef %38) #8
  br label %sw.epilog

sw.bb37:                                          ; preds = %do.end
  %header = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %39 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %header, align 4
  %dma = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma, align 4
  %payload = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 3
  %43 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %payload, align 4
  %dma38 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %dma38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dma38, align 4
  tail call void @efc_node_save_sparms(ptr noundef %1, ptr noundef %46) #5
  %47 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %header, align 4
  %dma41 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %dma41 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dma41, align 4
  %fh_ox_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %fh_ox_id.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %fh_ox_id.i, align 4
  %send_ls_acc.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 20
  %53 = ptrtoint ptr %send_ls_acc.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %send_ls_acc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.not.i = icmp eq i32 %54, 0
  br i1 %cmp.not.i, label %sw.bb37.efc_send_ls_acc_after_attach.exit_crit_edge, label %do.end.i, !prof !254

sw.bb37.efc_send_ls_acc_after_attach.exit_crit_edge: ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_send_ls_acc_after_attach.exit

do.end.i:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 350, i32 noundef 9, ptr noundef null) #5
  br label %efc_send_ls_acc_after_attach.exit

efc_send_ls_acc_after_attach.exit:                ; preds = %do.end.i, %sw.bb37.efc_send_ls_acc_after_attach.exit_crit_edge
  %conv.i = zext i16 %52 to i32
  %ls_acc_oxid.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 22
  %55 = ptrtoint ptr %ls_acc_oxid.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv.i, ptr %ls_acc_oxid.i, align 4
  %56 = ptrtoint ptr %send_ls_acc.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %send_ls_acc.i, align 4
  %fh_d_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %50, i32 0, i32 1
  %57 = ptrtoint ptr %fh_d_id.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %fh_d_id.i, align 1
  %conv.i.i = zext i8 %58 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %arrayidx1.i.i = getelementptr %struct.fc_frame_header, ptr %50, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %60 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr %struct.fc_frame_header, ptr %50, i32 0, i32 1, i32 2
  %61 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %62 to i32
  %or6.i.i = or i32 %or.i.i, %conv5.i.i
  %ls_acc_did.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 23
  %63 = ptrtoint ptr %ls_acc_did.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or6.i.i, ptr %ls_acc_did.i, align 8
  %nport43 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %nport43 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %nport43, align 4
  %domain44 = getelementptr inbounds %struct.efc_nport, ptr %65, i32 0, i32 11
  %66 = ptrtoint ptr %domain44 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %domain44, align 8
  %attached45 = getelementptr inbounds %struct.efc_domain, ptr %67, i32 0, i32 14
  %68 = ptrtoint ptr %attached45 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %attached45, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool46.not = icmp eq i8 %69, 0
  br i1 %tobool46.not, label %if.then47, label %if.end50

if.then47:                                        ; preds = %efc_send_ls_acc_after_attach.exit
  %fh_d_id = getelementptr inbounds %struct.fc_frame_header, ptr %42, i32 0, i32 1
  %70 = ptrtoint ptr %fh_d_id to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %fh_d_id, align 1
  %conv.i253 = zext i8 %71 to i32
  %shl.i = shl nuw nsw i32 %conv.i253, 16
  %arrayidx1.i = getelementptr %struct.fc_frame_header, ptr %42, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %73 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr %struct.fc_frame_header, ptr %42, i32 0, i32 1, i32 2
  %74 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %75 to i32
  %or6.i = or i32 %or.i, %conv5.i
  %topology.i = getelementptr inbounds %struct.efc_nport, ptr %65, i32 0, i32 29
  %76 = ptrtoint ptr %topology.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %topology.i, align 8
  %78 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %77, label %do.end5.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 0, label %do.end.i254
  ]

sw.bb.i:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @efc_domain_attach(ptr noundef %67, i32 noundef %or6.i) #5
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_domain_attach, ptr noundef null) #5
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_domain_attach, ptr noundef null) #5
  br label %sw.epilog

do.end.i254:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 8
  %pci.i = getelementptr inbounds %struct.efc, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  %display_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.83, ptr noundef %display_name.i, i32 noundef %or6.i) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_topology_notify, ptr noundef null) #5
  br label %sw.epilog

do.end5.i:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 8
  %pci7.i = getelementptr inbounds %struct.efc, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %pci7.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pci7.i, align 4
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  %display_name9.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8.i, ptr noundef nonnull @.str.86, ptr noundef %display_name9.i, i32 noundef %77) #8
  br label %sw.epilog

if.end50:                                         ; preds = %efc_send_ls_acc_after_attach.exit
  %call51 = tail call i32 @efc_node_attach(ptr noundef %1) #5
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_node_attach, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp = icmp slt i32 %call51, 0
  br i1 %cmp, label %if.then53, label %if.end50.sw.epilog_crit_edge

if.end50.sw.epilog_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 39, ptr noundef null) #5
  br label %sw.epilog

sw.bb56:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_d_init, ptr noundef %ctx, i32 noundef 58, ptr noundef %arg) #5
  br label %sw.epilog

sw.bb57:                                          ; preds = %do.end
  %header59 = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %87 = ptrtoint ptr %header59 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %header59, align 4
  %dma60 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %dma60 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dma60, align 4
  %fh_d_id62 = getelementptr inbounds %struct.fc_frame_header, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %fh_d_id62 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %fh_d_id62, align 1
  %conv.i256 = zext i8 %92 to i32
  %shl.i257 = shl nuw nsw i32 %conv.i256, 16
  %arrayidx1.i258 = getelementptr %struct.fc_frame_header, ptr %90, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %arrayidx1.i258 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx1.i258, align 1
  %conv2.i259 = zext i8 %94 to i32
  %shl3.i260 = shl nuw nsw i32 %conv2.i259, 8
  %or.i261 = or i32 %shl3.i260, %shl.i257
  %arrayidx4.i262 = getelementptr %struct.fc_frame_header, ptr %90, i32 0, i32 1, i32 2
  %95 = ptrtoint ptr %arrayidx4.i262 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx4.i262, align 1
  %conv5.i263 = zext i8 %96 to i32
  %or6.i264 = or i32 %or.i261, %conv5.i263
  %nport65 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %97 = ptrtoint ptr %nport65 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %nport65, align 4
  %domain66 = getelementptr inbounds %struct.efc_nport, ptr %98, i32 0, i32 11
  %99 = ptrtoint ptr %domain66 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %domain66, align 8
  %flogi_service_params = getelementptr inbounds %struct.efc_domain, ptr %100, i32 0, i32 24
  %payload68 = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 3
  %101 = ptrtoint ptr %payload68 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %payload68, align 4
  %dma69 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %dma69 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dma69, align 4
  %105 = call ptr @memcpy(ptr %flogi_service_params, ptr %104, i32 116)
  tail call void @efc_fabric_set_topology(ptr noundef %1, i32 noundef 2) #5
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %90, i32 0, i32 9
  %106 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %fh_ox_id, align 4
  %conv71 = zext i16 %107 to i32
  %call72 = tail call i32 @efc_send_flogi_p2p_acc(ptr noundef %1, i32 noundef %conv71, i32 noundef %or6.i264) #5
  %108 = ptrtoint ptr %nport65 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %nport65, align 4
  %call74 = tail call i32 @efc_p2p_setup(ptr noundef %109) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end85, label %do.end79

do.end79:                                         ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #7
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 8
  %pci81 = getelementptr inbounds %struct.efc, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %pci81 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pci81, align 4
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  %display_name83 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev82, ptr noundef nonnull @.str.23, ptr noundef %display_name83) #8
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 3, ptr noundef null) #5
  br label %sw.epilog

if.end85:                                         ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_p2p_wait_flogi_acc_cmpl, ptr noundef null) #5
  br label %sw.epilog

sw.bb88:                                          ; preds = %do.end
  %nport93 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %114 = ptrtoint ptr %nport93 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %nport93, align 4
  %domain94 = getelementptr inbounds %struct.efc_nport, ptr %115, i32 0, i32 11
  %116 = ptrtoint ptr %domain94 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %domain94, align 8
  %attached95 = getelementptr inbounds %struct.efc_domain, ptr %117, i32 0, i32 14
  %118 = ptrtoint ptr %attached95 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %attached95, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool96.not = icmp eq i8 %119, 0
  br i1 %tobool96.not, label %do.end100, label %if.end107

do.end100:                                        ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #7
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 8
  %pci102 = getelementptr inbounds %struct.efc, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %pci102 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pci102, align 4
  %dev103 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  %display_name104 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call106 = tail call ptr @efc_sm_event_name(i32 noundef 54) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev103, ptr noundef nonnull @.str.26, ptr noundef %display_name104, ptr noundef %call106) #8
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 51, ptr noundef null) #5
  br label %sw.epilog

if.end107:                                        ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #7
  %header90 = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %124 = ptrtoint ptr %header90 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %header90, align 4
  %dma91 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %dma91 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dma91, align 4
  %fh_ox_id108 = getelementptr inbounds %struct.fc_frame_header, ptr %127, i32 0, i32 9
  %128 = ptrtoint ptr %fh_ox_id108 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %fh_ox_id108, align 4
  %conv109 = zext i16 %129 to i32
  %call110 = tail call i32 @efc_send_logo_acc(ptr noundef %1, i32 noundef %conv109) #5
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_logo_acc_cmpl, ptr noundef null) #5
  br label %sw.epilog

sw.bb112:                                         ; preds = %do.end.sw.bb112_crit_edge, %do.end.sw.bb112_crit_edge266, %do.end.sw.bb112_crit_edge267, %do.end.sw.bb112_crit_edge268, %do.end.sw.bb112_crit_edge269
  %nport117 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %130 = ptrtoint ptr %nport117 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %nport117, align 4
  %domain118 = getelementptr inbounds %struct.efc_nport, ptr %131, i32 0, i32 11
  %132 = ptrtoint ptr %domain118 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %domain118, align 8
  %attached119 = getelementptr inbounds %struct.efc_domain, ptr %133, i32 0, i32 14
  %134 = ptrtoint ptr %attached119 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %attached119, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool120.not = icmp eq i8 %135, 0
  br i1 %tobool120.not, label %do.end124, label %do.end134

do.end124:                                        ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #7
  %136 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %1, align 8
  %pci126 = getelementptr inbounds %struct.efc, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %pci126 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pci126, align 4
  %dev127 = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 44
  %display_name128 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call130 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev127, ptr noundef nonnull @.str.26, ptr noundef %display_name128, ptr noundef %call130) #8
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 51, ptr noundef null) #5
  br label %sw.epilog

do.end134:                                        ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #7
  %header114 = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %140 = ptrtoint ptr %header114 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %header114, align 4
  %dma115 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %dma115 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dma115, align 4
  %144 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %1, align 8
  %pci136 = getelementptr inbounds %struct.efc, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %pci136 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pci136, align 4
  %dev137 = getelementptr inbounds %struct.pci_dev, ptr %147, i32 0, i32 44
  %display_name138 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call140 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev137, ptr noundef nonnull @.str.31, ptr noundef %display_name138, ptr noundef %call140) #8
  %fh_ox_id141 = getelementptr inbounds %struct.fc_frame_header, ptr %143, i32 0, i32 9
  %148 = ptrtoint ptr %fh_ox_id141 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %fh_ox_id141, align 4
  %conv142 = zext i16 %149 to i32
  %call143 = tail call i32 @efc_send_ls_rjt(ptr noundef %1, i32 noundef %conv142, i32 noundef 9, i32 noundef 30, i32 noundef 0) #5
  br label %sw.epilog

sw.bb145:                                         ; preds = %do.end
  %nport146 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %150 = ptrtoint ptr %nport146 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %nport146, align 4
  %domain147 = getelementptr inbounds %struct.efc_nport, ptr %151, i32 0, i32 11
  %152 = ptrtoint ptr %domain147 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %domain147, align 8
  %attached148 = getelementptr inbounds %struct.efc_domain, ptr %153, i32 0, i32 14
  %154 = ptrtoint ptr %attached148 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %attached148, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool149.not = icmp eq i8 %155, 0
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %1, align 8
  %pci155 = getelementptr inbounds %struct.efc, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %pci155 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pci155, align 4
  %dev156 = getelementptr inbounds %struct.pci_dev, ptr %159, i32 0, i32 44
  %display_name157 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  br i1 %tobool149.not, label %do.end153, label %do.end163

do.end153:                                        ; preds = %sw.bb145
  call void @__sanitizer_cov_trace_pc() #7
  %call159 = tail call ptr @efc_sm_event_name(i32 noundef 63) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev156, ptr noundef nonnull @.str.26, ptr noundef %display_name157, ptr noundef %call159) #8
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 51, ptr noundef null) #5
  br label %sw.epilog

do.end163:                                        ; preds = %sw.bb145
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev156, ptr noundef nonnull @.str.36, ptr noundef %display_name157) #8
  %call169 = tail call i32 @efc_send_logo(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.else180, label %do.end174

do.end174:                                        ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #7
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %1, align 8
  %pci176 = getelementptr inbounds %struct.efc, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %pci176 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pci176, align 4
  %dev177 = getelementptr inbounds %struct.pci_dev, ptr %163, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev177, ptr noundef nonnull @.str.39, ptr noundef %display_name157) #8
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 51, ptr noundef null) #5
  br label %sw.epilog

if.else180:                                       ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_logo_rsp, ptr noundef null) #5
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__efc_d_common(ptr noundef nonnull @__func__.__efc_d_init, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else180, %do.end174, %do.end153, %do.end134, %do.end124, %if.end107, %do.end100, %if.end85, %do.end79, %sw.bb56, %if.then53, %if.end50.sw.epilog_crit_edge, %do.end5.i, %do.end.i254, %sw.bb2.i, %sw.bb.i, %do.end14, %if.then10, %sw.bb.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__efc_node_paused(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_plogi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_d_wait_plogi_rsp(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.103, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #5
  %4 = call ptr @memcpy(ptr %current_state_name4.i, ptr @str, i32 64)
  br label %efc_node_evt_set.exit

efc_node_evt_set.exit:                            ; preds = %if.then2.i, %if.then.i, %entry.efc_node_evt_set.exit_crit_edge
  %current_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %current_evt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_evt.i, align 8
  %prev_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %7 = ptrtoint ptr %prev_evt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %prev_evt.i, align 4
  store i32 %evt, ptr %current_evt.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_wait_plogi_rsp.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_wait_plogi_rsp, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_wait_plogi_rsp.__UNIQUE_ID_ddebug323, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_d_wait_plogi_rsp, ptr noundef %call3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %evt, label %sw.default [
    i32 52, label %sw.bb
    i32 55, label %sw.bb9
    i32 54, label %do.end.sw.bb16_crit_edge
    i32 56, label %do.end.sw.bb16_crit_edge236
    i32 57, label %do.end.sw.bb16_crit_edge237
    i32 58, label %do.end.sw.bb16_crit_edge238
    i32 59, label %do.end.sw.bb16_crit_edge239
    i32 60, label %do.end.sw.bb16_crit_edge240
    i32 61, label %do.end.sw.bb16_crit_edge241
    i32 33, label %sw.bb30
    i32 35, label %sw.bb74
    i32 37, label %sw.bb115
    i32 63, label %do.end159
  ]

do.end.sw.bb16_crit_edge241:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb16

do.end.sw.bb16_crit_edge240:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb16

do.end.sw.bb16_crit_edge239:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb16

do.end.sw.bb16_crit_edge238:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb16

do.end.sw.bb16_crit_edge237:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb16

do.end.sw.bb16_crit_edge236:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb16

do.end.sw.bb16_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb16

sw.bb:                                            ; preds = %do.end
  %payload = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 3
  %13 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %payload, align 4
  %dma = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma, align 4
  tail call void @efc_node_save_sparms(ptr noundef %1, ptr noundef %16) #5
  %header = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %17 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %header, align 4
  %dma4 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %dma4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma4, align 4
  %fh_ox_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %fh_ox_id.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %fh_ox_id.i, align 4
  %send_ls_acc.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 20
  %23 = ptrtoint ptr %send_ls_acc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %send_ls_acc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i = icmp eq i32 %24, 0
  br i1 %cmp.not.i, label %sw.bb.efc_send_ls_acc_after_attach.exit_crit_edge, label %do.end.i, !prof !254

sw.bb.efc_send_ls_acc_after_attach.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_send_ls_acc_after_attach.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 350, i32 noundef 9, ptr noundef null) #5
  br label %efc_send_ls_acc_after_attach.exit

efc_send_ls_acc_after_attach.exit:                ; preds = %do.end.i, %sw.bb.efc_send_ls_acc_after_attach.exit_crit_edge
  %conv.i = zext i16 %22 to i32
  %ls_acc_oxid.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 22
  %25 = ptrtoint ptr %ls_acc_oxid.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.i, ptr %ls_acc_oxid.i, align 4
  %26 = ptrtoint ptr %send_ls_acc.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %send_ls_acc.i, align 4
  %fh_d_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %20, i32 0, i32 1
  %27 = ptrtoint ptr %fh_d_id.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fh_d_id.i, align 1
  %conv.i.i = zext i8 %28 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %arrayidx1.i.i = getelementptr %struct.fc_frame_header, ptr %20, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %30 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr %struct.fc_frame_header, ptr %20, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %32 to i32
  %or6.i.i = or i32 %or.i.i, %conv5.i.i
  %ls_acc_did.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 23
  %33 = ptrtoint ptr %ls_acc_did.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or6.i.i, ptr %ls_acc_did.i, align 8
  %call6 = tail call i32 @efc_node_attach(ptr noundef %1) #5
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_node_attach, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %efc_send_ls_acc_after_attach.exit.cleanup_crit_edge

efc_send_ls_acc_after_attach.exit.cleanup_crit_edge: ; preds = %efc_send_ls_acc_after_attach.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %efc_send_ls_acc_after_attach.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 39, ptr noundef null) #5
  br label %cleanup

sw.bb9:                                           ; preds = %do.end
  %payload10 = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 3
  %34 = ptrtoint ptr %payload10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %payload10, align 4
  %dma11 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %dma11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma11, align 4
  %spp_flags.i = getelementptr inbounds %struct.anon.86, ptr %37, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %spp_flags.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %spp_flags.i, align 2
  %init.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 26
  %40 = lshr i8 %39, 5
  %.lobit.i = and i8 %40, 1
  %41 = ptrtoint ptr %init.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %.lobit.i, ptr %init.i, align 1
  %42 = load i8, ptr %spp_flags.i, align 2
  %targ.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 25
  %43 = lshr i8 %42, 4
  %.lobit11.i = and i8 %43, 1
  %44 = ptrtoint ptr %targ.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %.lobit11.i, ptr %targ.i, align 8
  %header13 = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %45 = ptrtoint ptr %header13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %header13, align 4
  %dma14 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %dma14 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma14, align 4
  %fh_ox_id.i217 = getelementptr inbounds %struct.fc_frame_header, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %fh_ox_id.i217 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %fh_ox_id.i217, align 4
  %send_ls_acc.i218 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 20
  %51 = ptrtoint ptr %send_ls_acc.i218 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %send_ls_acc.i218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.not.i219 = icmp eq i32 %52, 0
  br i1 %cmp.not.i219, label %sw.bb9.efc_send_ls_acc_after_attach.exit234_crit_edge, label %do.end.i220, !prof !254

sw.bb9.efc_send_ls_acc_after_attach.exit234_crit_edge: ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_send_ls_acc_after_attach.exit234

do.end.i220:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 350, i32 noundef 9, ptr noundef null) #5
  br label %efc_send_ls_acc_after_attach.exit234

efc_send_ls_acc_after_attach.exit234:             ; preds = %do.end.i220, %sw.bb9.efc_send_ls_acc_after_attach.exit234_crit_edge
  %conv.i221 = zext i16 %50 to i32
  %ls_acc_oxid.i222 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 22
  %53 = ptrtoint ptr %ls_acc_oxid.i222 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv.i221, ptr %ls_acc_oxid.i222, align 4
  %54 = ptrtoint ptr %send_ls_acc.i218 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %send_ls_acc.i218, align 4
  %fh_d_id.i223 = getelementptr inbounds %struct.fc_frame_header, ptr %48, i32 0, i32 1
  %55 = ptrtoint ptr %fh_d_id.i223 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %fh_d_id.i223, align 1
  %conv.i.i224 = zext i8 %56 to i32
  %shl.i.i225 = shl nuw nsw i32 %conv.i.i224, 16
  %arrayidx1.i.i226 = getelementptr %struct.fc_frame_header, ptr %48, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %arrayidx1.i.i226 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx1.i.i226, align 1
  %conv2.i.i227 = zext i8 %58 to i32
  %shl3.i.i228 = shl nuw nsw i32 %conv2.i.i227, 8
  %or.i.i229 = or i32 %shl3.i.i228, %shl.i.i225
  %arrayidx4.i.i230 = getelementptr %struct.fc_frame_header, ptr %48, i32 0, i32 1, i32 2
  %59 = ptrtoint ptr %arrayidx4.i.i230 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx4.i.i230, align 1
  %conv5.i.i231 = zext i8 %60 to i32
  %or6.i.i232 = or i32 %or.i.i229, %conv5.i.i231
  %ls_acc_did.i233 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 23
  %61 = ptrtoint ptr %ls_acc_did.i233 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or6.i.i232, ptr %ls_acc_did.i233, align 8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_plogi_rsp_recvd_prli, ptr noundef null) #5
  br label %cleanup

sw.bb16:                                          ; preds = %do.end.sw.bb16_crit_edge, %do.end.sw.bb16_crit_edge236, %do.end.sw.bb16_crit_edge237, %do.end.sw.bb16_crit_edge238, %do.end.sw.bb16_crit_edge239, %do.end.sw.bb16_crit_edge240, %do.end.sw.bb16_crit_edge241
  %header17 = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %62 = ptrtoint ptr %header17 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %header17, align 4
  %dma18 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %dma18 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dma18, align 4
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 8
  %pci24 = getelementptr inbounds %struct.efc, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %pci24 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pci24, align 4
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %display_name26 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call28 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev25, ptr noundef nonnull @.str.31, ptr noundef %display_name26, ptr noundef %call28) #8
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %65, i32 0, i32 9
  %70 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %fh_ox_id, align 4
  %conv = zext i16 %71 to i32
  %call29 = tail call i32 @efc_send_ls_rjt(ptr noundef %1, i32 noundef %conv, i32 noundef 9, i32 noundef 30, i32 noundef 0) #5
  br label %cleanup

sw.bb30:                                          ; preds = %do.end
  %call31 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef 33, ptr noundef %arg, i8 noundef zeroext 3, ptr noundef nonnull @__efc_d_common, ptr noundef nonnull @__func__.__efc_d_wait_plogi_rsp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %sw.bb30.cleanup_crit_edge

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %sw.bb30
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %72 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %els_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool35.not = icmp eq i32 %73, 0
  br i1 %tobool35.not, label %do.end53, label %if.end34.if.end59_crit_edge, !prof !253

if.end34.if.end59_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

do.end53:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 762, i32 noundef 9, ptr noundef null) #5
  br label %if.end59

if.end59:                                         ; preds = %do.end53, %if.end34.if.end59_crit_edge
  %74 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %els_req_cnt, align 4
  %dec = add i32 %75, -1
  store i32 %dec, ptr %els_req_cnt, align 4
  %els_rsp = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 4
  %76 = ptrtoint ptr %els_rsp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %els_rsp, align 4
  tail call void @efc_node_save_sparms(ptr noundef %1, ptr noundef %77) #5
  %call69 = tail call i32 @efc_node_attach(ptr noundef %1) #5
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_node_attach, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then72:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 39, ptr noundef null) #5
  br label %cleanup

sw.bb74:                                          ; preds = %do.end
  %call75 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef 35, ptr noundef %arg, i8 noundef zeroext 3, ptr noundef nonnull @__efc_d_common, ptr noundef nonnull @__func__.__efc_d_wait_plogi_rsp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %sw.bb74.cleanup_crit_edge

sw.bb74.cleanup_crit_edge:                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end78:                                         ; preds = %sw.bb74
  %els_req_cnt80 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %78 = ptrtoint ptr %els_req_cnt80 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %els_req_cnt80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool81.not = icmp eq i32 %79, 0
  br i1 %tobool81.not, label %do.end99, label %if.end78.if.end105_crit_edge, !prof !253

if.end78.if.end105_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

do.end99:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 780, i32 noundef 9, ptr noundef null) #5
  br label %if.end105

if.end105:                                        ; preds = %do.end99, %if.end78.if.end105_crit_edge
  %80 = ptrtoint ptr %els_req_cnt80 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %els_req_cnt80, align 4
  %dec114 = add i32 %81, -1
  store i32 %dec114, ptr %els_req_cnt80, align 4
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 3, ptr noundef null) #5
  br label %cleanup

sw.bb115:                                         ; preds = %do.end
  %call116 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef 37, ptr noundef %arg, i8 noundef zeroext 3, ptr noundef nonnull @__efc_d_common, ptr noundef nonnull @__func__.__efc_d_wait_plogi_rsp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %sw.bb115.cleanup_crit_edge

sw.bb115.cleanup_crit_edge:                       ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end119:                                        ; preds = %sw.bb115
  %els_req_cnt121 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %82 = ptrtoint ptr %els_req_cnt121 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %els_req_cnt121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool122.not = icmp eq i32 %83, 0
  br i1 %tobool122.not, label %do.end140, label %if.end119.if.end146_crit_edge, !prof !253

if.end119.if.end146_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end146

do.end140:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 791, i32 noundef 9, ptr noundef null) #5
  br label %if.end146

if.end146:                                        ; preds = %do.end140, %if.end119.if.end146_crit_edge
  %84 = ptrtoint ptr %els_req_cnt121 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %els_req_cnt121, align 4
  %dec155 = add i32 %85, -1
  store i32 %dec155, ptr %els_req_cnt121, align 4
  br label %cleanup

do.end159:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 8
  %pci161 = getelementptr inbounds %struct.efc, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %pci161 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pci161, align 4
  %dev162 = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  %display_name163 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev162, ptr noundef nonnull @.str.42, ptr noundef %display_name163) #8
  br label %cleanup

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__efc_d_common(ptr noundef nonnull @__func__.__efc_d_wait_plogi_rsp, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %do.end159, %if.end146, %sw.bb115.cleanup_crit_edge, %if.end105, %sw.bb74.cleanup_crit_edge, %if.then72, %if.end59.cleanup_crit_edge, %sw.bb30.cleanup_crit_edge, %sw.bb16, %efc_send_ls_acc_after_attach.exit234, %if.then7, %efc_send_ls_acc_after_attach.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_save_sparms(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_node_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_d_wait_node_attach(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.98, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #5
  %4 = call ptr @memcpy(ptr %current_state_name4.i, ptr @str, i32 64)
  br label %efc_node_evt_set.exit

efc_node_evt_set.exit:                            ; preds = %if.then2.i, %if.then.i, %entry.efc_node_evt_set.exit_crit_edge
  %current_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %current_evt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_evt.i, align 8
  %prev_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %7 = ptrtoint ptr %prev_evt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %prev_evt.i, align 4
  store i32 %evt, ptr %current_evt.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_wait_node_attach.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_wait_node_attach, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_wait_node_attach.__UNIQUE_ID_ddebug327, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_d_wait_node_attach, ptr noundef %call3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %evt, label %sw.default57 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 38, label %sw.bb5
    i32 39, label %sw.bb14
    i32 3, label %do.end27
    i32 51, label %do.end38
    i32 50, label %do.end49
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  br label %sw.epilog58

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i99 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %hold_frames.i99 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hold_frames.i99, align 8
  br label %sw.epilog58

sw.bb5:                                           ; preds = %do.end
  %attached = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %attached to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %attached, align 2
  %send_ls_acc = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %send_ls_acc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %send_ls_acc, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %17, label %sw.default [
    i32 1, label %sw.bb6
    i32 2, label %sw.bb9
  ]

sw.bb6:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %ls_acc_oxid = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 22
  %19 = ptrtoint ptr %ls_acc_oxid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ls_acc_oxid, align 4
  %call7 = tail call i32 @efc_send_plogi_acc(ptr noundef %1, i32 noundef %20) #5
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_plogi_acc_cmpl, ptr noundef null) #5
  %21 = ptrtoint ptr %send_ls_acc to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %send_ls_acc, align 4
  %ls_acc_io = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 21
  %22 = ptrtoint ptr %ls_acc_io to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %ls_acc_io, align 8
  br label %sw.epilog58

sw.bb9:                                           ; preds = %sw.bb5
  %ls_acc_oxid10 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 22
  %23 = ptrtoint ptr %ls_acc_oxid10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ls_acc_oxid10, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %conv.i = and i32 %24, 65535
  store i32 %conv.i, ptr %ls_acc_oxid10, align 4
  %27 = ptrtoint ptr %send_ls_acc to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %send_ls_acc, align 4
  %init.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 26
  %28 = ptrtoint ptr %init.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %init.i, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %sw.bb9.if.end13.sink.split.i_crit_edge, label %do.end.i

sw.bb9.if.end13.sink.split.i_crit_edge:           ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.sink.split.i

do.end.i:                                         ; preds = %sw.bb9
  %pci.i = getelementptr inbounds %struct.efc, ptr %26, i32 0, i32 1
  %30 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %display_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %wwpn.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 46
  %wwnn.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 45
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str, ptr noundef %display_name.i, ptr noundef %wwpn.i, ptr noundef %wwnn.i) #8
  %nport.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %nport.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nport.i, align 4
  %enable_tgt.i = getelementptr inbounds %struct.efc_nport, ptr %33, i32 0, i32 25
  %34 = ptrtoint ptr %enable_tgt.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %enable_tgt.i, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool4.not.i = icmp eq i8 %35, 0
  br i1 %tobool4.not.i, label %do.end.i.if.end13.sink.split.i_crit_edge, label %if.end6.i

do.end.i.if.end13.sink.split.i_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.sink.split.i

if.end6.i:                                        ; preds = %do.end.i
  %scsi_new_node.i = getelementptr inbounds %struct.efc, ptr %26, i32 0, i32 15, i32 2
  %36 = ptrtoint ptr %scsi_new_node.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %scsi_new_node.i, align 4
  %call.i100 = tail call i32 %37(ptr noundef %26, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %cmp.i = icmp slt i32 %call.i100, 0
  br i1 %cmp.i, label %if.end6.i.if.end13.sink.split.i_crit_edge, label %if.end9.i

if.end6.i.if.end13.sink.split.i_crit_edge:        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.sink.split.i

if.end9.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %cmp10.i = icmp eq i32 %call.i100, 0
  br i1 %cmp10.i, label %if.end9.i.if.end13.sink.split.i_crit_edge, label %if.end9.i.efc_d_send_prli_rsp.exit_crit_edge

if.end9.i.efc_d_send_prli_rsp.exit_crit_edge:     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_d_send_prli_rsp.exit

if.end9.i.if.end13.sink.split.i_crit_edge:        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.sink.split.i

if.end13.sink.split.i:                            ; preds = %if.end9.i.if.end13.sink.split.i_crit_edge, %if.end6.i.if.end13.sink.split.i_crit_edge, %do.end.i.if.end13.sink.split.i_crit_edge, %sw.bb9.if.end13.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 69, %if.end6.i.if.end13.sink.split.i_crit_edge ], [ 68, %do.end.i.if.end13.sink.split.i_crit_edge ], [ 68, %sw.bb9.if.end13.sink.split.i_crit_edge ], [ 68, %if.end9.i.if.end13.sink.split.i_crit_edge ]
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef %.sink.i, ptr noundef null) #5
  br label %efc_d_send_prli_rsp.exit

efc_d_send_prli_rsp.exit:                         ; preds = %if.end13.sink.split.i, %if.end9.i.efc_d_send_prli_rsp.exit_crit_edge
  %38 = ptrtoint ptr %send_ls_acc to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %send_ls_acc, align 4
  %ls_acc_io12 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 21
  %39 = ptrtoint ptr %ls_acc_io12 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %ls_acc_io12, align 8
  br label %sw.epilog58

sw.default:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_port_logged_in, ptr noundef null) #5
  br label %sw.epilog58

sw.bb14:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %attached15 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %40 = ptrtoint ptr %attached15 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %attached15, align 2
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  %pci20 = getelementptr inbounds %struct.efc, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %pci20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci20, align 4
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %display_name22 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21, ptr noundef nonnull @.str.48, ptr noundef %display_name22) #8
  %shutdown_reason = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %45 = ptrtoint ptr %shutdown_reason to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %shutdown_reason, align 4
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_initiate_shutdown, ptr noundef null) #5
  br label %sw.epilog58

do.end27:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %pci29 = getelementptr inbounds %struct.efc, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %pci29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pci29, align 4
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %display_name31 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call33 = tail call ptr @efc_sm_event_name(i32 noundef 3) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev30, ptr noundef nonnull @.str.50, ptr noundef %display_name31, ptr noundef %call33) #8
  %shutdown_reason34 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %50 = ptrtoint ptr %shutdown_reason34 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %shutdown_reason34, align 4
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_attach_evt_shutdown, ptr noundef null) #5
  br label %sw.epilog58

do.end38:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 8
  %pci40 = getelementptr inbounds %struct.efc, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %pci40 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci40, align 4
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %display_name42 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call44 = tail call ptr @efc_sm_event_name(i32 noundef 51) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev41, ptr noundef nonnull @.str.50, ptr noundef %display_name42, ptr noundef %call44) #8
  %shutdown_reason45 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %55 = ptrtoint ptr %shutdown_reason45 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %shutdown_reason45, align 4
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_attach_evt_shutdown, ptr noundef null) #5
  br label %sw.epilog58

do.end49:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 8
  %pci51 = getelementptr inbounds %struct.efc, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %pci51 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pci51, align 4
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %display_name53 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call55 = tail call ptr @efc_sm_event_name(i32 noundef 50) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev52, ptr noundef nonnull @.str.50, ptr noundef %display_name53, ptr noundef %call55) #8
  %shutdown_reason56 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %60 = ptrtoint ptr %shutdown_reason56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %shutdown_reason56, align 4
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_attach_evt_shutdown, ptr noundef null) #5
  br label %sw.epilog58

sw.default57:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__efc_d_common(ptr noundef nonnull @__func__.__efc_d_wait_node_attach, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %sw.epilog58

sw.epilog58:                                      ; preds = %sw.default57, %do.end49, %do.end38, %do.end27, %sw.bb14, %sw.default, %efc_d_send_prli_rsp.exit, %sw.bb6, %sw.bb4, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_fabric_set_topology(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_flogi_p2p_acc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_p2p_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__efc_p2p_wait_flogi_acc_cmpl(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_logo_acc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_d_wait_logo_acc_cmpl(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.92, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #5
  %4 = call ptr @memcpy(ptr %current_state_name4.i, ptr @str, i32 64)
  br label %efc_node_evt_set.exit

efc_node_evt_set.exit:                            ; preds = %if.then2.i, %if.then.i, %entry.efc_node_evt_set.exit_crit_edge
  %current_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %current_evt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_evt.i, align 8
  %prev_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %7 = ptrtoint ptr %prev_evt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %prev_evt.i, align 4
  store i32 %evt, ptr %current_evt.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_wait_logo_acc_cmpl.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_wait_logo_acc_cmpl, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_wait_logo_acc_cmpl.__UNIQUE_ID_ddebug330, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_d_wait_logo_acc_cmpl, ptr noundef %call3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %evt, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 34, label %do.end.sw.bb5_crit_edge
    i32 36, label %do.end.sw.bb5_crit_edge53
  ]

do.end.sw.bb5_crit_edge53:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

do.end.sw.bb5_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i51 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %hold_frames.i51 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hold_frames.i51, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end.sw.bb5_crit_edge, %do.end.sw.bb5_crit_edge53
  %els_cmpl_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 36
  %15 = ptrtoint ptr %els_cmpl_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %els_cmpl_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not = icmp eq i32 %16, 0
  br i1 %tobool6.not, label %do.end24, label %sw.bb5.if.end30_crit_edge, !prof !253

sw.bb5.if.end30_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.end24:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1280, i32 noundef 9, ptr noundef null) #5
  br label %if.end30

if.end30:                                         ; preds = %do.end24, %sw.bb5.if.end30_crit_edge
  %17 = ptrtoint ptr %els_cmpl_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %els_cmpl_cnt, align 8
  %dec = add i32 %18, -1
  store i32 %dec, ptr %els_cmpl_cnt, align 8
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 51, ptr noundef null) #5
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__efc_d_common(ptr noundef nonnull @__func__.__efc_d_wait_logo_acc_cmpl, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end30, %sw.bb4, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_ls_rjt(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_logo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_d_wait_plogi_rsp_recvd_prli(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.102, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #5
  %4 = call ptr @memcpy(ptr %current_state_name4.i, ptr @str, i32 64)
  br label %efc_node_evt_set.exit

efc_node_evt_set.exit:                            ; preds = %if.then2.i, %if.then.i, %entry.efc_node_evt_set.exit_crit_edge
  %current_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %current_evt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_evt.i, align 8
  %prev_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %7 = ptrtoint ptr %prev_evt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %prev_evt.i, align 4
  store i32 %evt, ptr %current_evt.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_wait_plogi_rsp_recvd_prli.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_wait_plogi_rsp_recvd_prli, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_wait_plogi_rsp_recvd_prli.__UNIQUE_ID_ddebug324, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_d_wait_plogi_rsp_recvd_prli, ptr noundef %call3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %evt, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 33, label %sw.bb5
    i32 35, label %do.end.sw.bb46_crit_edge
    i32 37, label %do.end.sw.bb46_crit_edge117
  ]

do.end.sw.bb46_crit_edge117:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb46

do.end.sw.bb46_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb46

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  br label %cleanup

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i115 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %hold_frames.i115 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hold_frames.i115, align 8
  br label %cleanup

sw.bb5:                                           ; preds = %do.end
  %call6 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef 33, ptr noundef %arg, i8 noundef zeroext 3, ptr noundef nonnull @__efc_d_common, ptr noundef nonnull @__func__.__efc_d_wait_plogi_rsp_recvd_prli) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %sw.bb5
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %15 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %els_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %do.end28, label %if.end9.if.end34_crit_edge, !prof !253

if.end9.if.end34_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

do.end28:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 845, i32 noundef 9, ptr noundef null) #5
  br label %if.end34

if.end34:                                         ; preds = %do.end28, %if.end9.if.end34_crit_edge
  %17 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %els_req_cnt, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %els_req_cnt, align 4
  %els_rsp = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 4
  %19 = ptrtoint ptr %els_rsp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %els_rsp, align 4
  tail call void @efc_node_save_sparms(ptr noundef %1, ptr noundef %20) #5
  %call43 = tail call i32 @efc_node_attach(ptr noundef %1) #5
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_node_attach, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp = icmp slt i32 %call43, 0
  br i1 %cmp, label %if.then44, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then44:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 39, ptr noundef null) #5
  br label %cleanup

sw.bb46:                                          ; preds = %do.end.sw.bb46_crit_edge, %do.end.sw.bb46_crit_edge117
  %call47 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg, i8 noundef zeroext 3, ptr noundef nonnull @__efc_d_common, ptr noundef nonnull @__func__.__efc_d_wait_plogi_rsp_recvd_prli) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %sw.bb46.cleanup_crit_edge

sw.bb46.cleanup_crit_edge:                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end50:                                         ; preds = %sw.bb46
  %els_req_cnt52 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %21 = ptrtoint ptr %els_req_cnt52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %els_req_cnt52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool53.not = icmp eq i32 %22, 0
  br i1 %tobool53.not, label %do.end71, label %if.end50.if.end77_crit_edge, !prof !253

if.end50.if.end77_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

do.end71:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 864, i32 noundef 9, ptr noundef null) #5
  br label %if.end77

if.end77:                                         ; preds = %do.end71, %if.end50.if.end77_crit_edge
  %23 = ptrtoint ptr %els_req_cnt52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %els_req_cnt52, align 4
  %dec86 = add i32 %24, -1
  store i32 %dec86, ptr %els_req_cnt52, align 4
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 3, ptr noundef null) #5
  br label %cleanup

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__efc_d_common(ptr noundef nonnull @__func__.__efc_d_wait_plogi_rsp_recvd_prli, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end77, %sw.bb46.cleanup_crit_edge, %if.then44, %if.end34.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %sw.bb4, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_d_wait_domain_attach(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.99, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #5
  %4 = call ptr @memcpy(ptr %current_state_name4.i, ptr @str, i32 64)
  br label %efc_node_evt_set.exit

efc_node_evt_set.exit:                            ; preds = %if.then2.i, %if.then.i, %entry.efc_node_evt_set.exit_crit_edge
  %current_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %current_evt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_evt.i, align 8
  %prev_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %7 = ptrtoint ptr %prev_evt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %prev_evt.i, align 4
  store i32 %evt, ptr %current_evt.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_wait_domain_attach.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_wait_domain_attach, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_wait_domain_attach.__UNIQUE_ID_ddebug325, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_d_wait_domain_attach, ptr noundef %call3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %evt, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 13, label %sw.bb5
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i54 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %hold_frames.i54 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hold_frames.i54, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  %nport = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nport, align 4
  %domain = getelementptr inbounds %struct.efc_nport, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %domain, align 8
  %attached = getelementptr inbounds %struct.efc_domain, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %attached, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool6.not = icmp eq i8 %20, 0
  br i1 %tobool6.not, label %do.end24, label %sw.bb5.if.end30_crit_edge, !prof !253

sw.bb5.if.end30_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.end24:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 895, i32 noundef 9, ptr noundef null) #5
  br label %if.end30

if.end30:                                         ; preds = %do.end24, %sw.bb5.if.end30_crit_edge
  %call38 = tail call i32 @efc_node_attach(ptr noundef %1) #5
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_node_attach, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp = icmp slt i32 %call38, 0
  br i1 %cmp, label %if.then39, label %if.end30.sw.epilog_crit_edge

if.end30.sw.epilog_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then39:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 39, ptr noundef null) #5
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__efc_d_common(ptr noundef nonnull @__func__.__efc_d_wait_domain_attach, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then39, %if.end30.sw.epilog_crit_edge, %sw.bb4, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_d_wait_topology_notify(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.100, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #5
  %4 = call ptr @memcpy(ptr %current_state_name4.i, ptr @str, i32 64)
  br label %efc_node_evt_set.exit

efc_node_evt_set.exit:                            ; preds = %if.then2.i, %if.then.i, %entry.efc_node_evt_set.exit_crit_edge
  %current_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %current_evt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_evt.i, align 8
  %prev_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %7 = ptrtoint ptr %prev_evt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %prev_evt.i, align 4
  store i32 %evt, ptr %current_evt.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_wait_topology_notify.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_wait_topology_notify, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_wait_topology_notify.__UNIQUE_ID_ddebug326, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_d_wait_topology_notify, ptr noundef %call3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %evt, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 26, label %sw.bb5
    i32 13, label %sw.bb79
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i154 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %hold_frames.i154 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hold_frames.i154, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  %nport = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nport, align 4
  %domain = getelementptr inbounds %struct.efc_nport, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %domain, align 8
  %attached = getelementptr inbounds %struct.efc_domain, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %attached, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool6.not = icmp eq i8 %20, 0
  br i1 %tobool6.not, label %sw.bb5.if.end28_crit_edge, label %do.end22, !prof !254

sw.bb5.if.end28_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

do.end22:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 933, i32 noundef 9, ptr noundef null) #5
  br label %if.end28

if.end28:                                         ; preds = %do.end22, %sw.bb5.if.end28_crit_edge
  %send_ls_acc = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 20
  %21 = ptrtoint ptr %send_ls_acc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %send_ls_acc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.not = icmp eq i32 %22, 1
  br i1 %cmp.not, label %if.end28.if.end58_crit_edge, label %do.end52, !prof !254

if.end28.if.end58_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

do.end52:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 935, i32 noundef 9, ptr noundef null) #5
  br label %if.end58

if.end58:                                         ; preds = %do.end52, %if.end28.if.end58_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %pci70 = getelementptr inbounds %struct.efc, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %pci70 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci70, align 4
  %dev71 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %display_name72 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arg, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev71, ptr noundef nonnull @.str.44, ptr noundef %display_name72, i32 noundef %28) #8
  %29 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp74 = icmp eq i32 %30, 2
  br i1 %cmp74, label %if.then75, label %if.end58.if.end78_crit_edge

if.end58.if.end78_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.then75:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nport, align 4
  %domain77 = getelementptr inbounds %struct.efc_nport, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %domain77 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %domain77, align 8
  %ls_acc_did = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 23
  %35 = ptrtoint ptr %ls_acc_did to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ls_acc_did, align 8
  tail call void @efc_domain_attach(ptr noundef %34, i32 noundef %36) #5
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end58.if.end78_crit_edge
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_domain_attach, ptr noundef null) #5
  br label %sw.epilog

sw.bb79:                                          ; preds = %do.end
  %nport81 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %nport81 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nport81, align 4
  %domain82 = getelementptr inbounds %struct.efc_nport, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %domain82 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %domain82, align 8
  %attached83 = getelementptr inbounds %struct.efc_domain, ptr %40, i32 0, i32 14
  %41 = ptrtoint ptr %attached83 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %attached83, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool84.not = icmp eq i8 %42, 0
  br i1 %tobool84.not, label %do.end102, label %sw.bb79.if.end108_crit_edge, !prof !253

sw.bb79.if.end108_crit_edge:                      ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

do.end102:                                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 961, i32 noundef 9, ptr noundef null) #5
  br label %if.end108

if.end108:                                        ; preds = %do.end102, %sw.bb79.if.end108_crit_edge
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %pci120 = getelementptr inbounds %struct.efc, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %pci120 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pci120, align 4
  %dev121 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %display_name122 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev121, ptr noundef nonnull @.str.46, ptr noundef %display_name122) #8
  %call124 = tail call i32 @efc_node_attach(ptr noundef %1) #5
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_node_attach, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125 = icmp slt i32 %call124, 0
  br i1 %cmp125, label %if.then126, label %if.end108.sw.epilog_crit_edge

if.end108.sw.epilog_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then126:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 39, ptr noundef null) #5
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__efc_d_common(ptr noundef nonnull @__func__.__efc_d_wait_topology_notify, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then126, %if.end108.sw.epilog_crit_edge, %if.end78, %sw.bb4, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_domain_attach(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_plogi_acc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_d_wait_attach_evt_shutdown(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.91, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #5
  %4 = call ptr @memcpy(ptr %current_state_name4.i, ptr @str, i32 64)
  br label %efc_node_evt_set.exit

efc_node_evt_set.exit:                            ; preds = %if.then2.i, %if.then.i, %entry.efc_node_evt_set.exit_crit_edge
  %current_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %current_evt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_evt.i, align 8
  %prev_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %7 = ptrtoint ptr %prev_evt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %prev_evt.i, align 4
  store i32 %evt, ptr %current_evt.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_wait_attach_evt_shutdown.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_wait_attach_evt_shutdown, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_wait_attach_evt_shutdown.__UNIQUE_ID_ddebug328, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_d_wait_attach_evt_shutdown, ptr noundef %call3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %evt, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 38, label %sw.bb5
    i32 39, label %sw.bb15
    i32 3, label %sw.bb26
    i32 51, label %do.end.do.end30_crit_edge
    i32 50, label %do.end.do.end30_crit_edge61
  ]

do.end.do.end30_crit_edge61:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end30

do.end.do.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end30

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hold_frames.i59 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %hold_frames.i59 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hold_frames.i59, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %attached = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %attached to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %attached, align 2
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %pci10 = getelementptr inbounds %struct.efc, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %display_name12 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call14 = tail call ptr @efc_sm_event_name(i32 noundef 38) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev11, ptr noundef nonnull @.str.56, ptr noundef %display_name12, ptr noundef %call14) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_initiate_shutdown, ptr noundef null) #5
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %attached16 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %attached16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %attached16, align 2
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %pci21 = getelementptr inbounds %struct.efc, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %pci21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci21, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %display_name23 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call25 = tail call ptr @efc_sm_event_name(i32 noundef 39) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22, ptr noundef nonnull @.str.56, ptr noundef %display_name23, ptr noundef %call25) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_initiate_shutdown, ptr noundef null) #5
  br label %sw.epilog

sw.bb26:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %shutdown_reason = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %25 = ptrtoint ptr %shutdown_reason to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %shutdown_reason, align 4
  br label %do.end30

do.end30:                                         ; preds = %sw.bb26, %do.end.do.end30_crit_edge, %do.end.do.end30_crit_edge61
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %pci32 = getelementptr inbounds %struct.efc, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %pci32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci32, align 4
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %display_name34 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call36 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev33, ptr noundef nonnull @.str.50, ptr noundef %display_name34, ptr noundef %call36) #8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__efc_d_common(ptr noundef nonnull @__func__.__efc_d_wait_attach_evt_shutdown, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end30, %sw.bb15, %sw.bb5, %sw.bb4, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_prli(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_prli_acc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_d_device_ready(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %evt, label %efc_node_evt_set.exit [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %5 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.93, i32 64)
  br label %efc_node_evt_set.exit.thread

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #5
  %6 = call ptr @memcpy(ptr %current_state_name4.i, ptr @str, i32 64)
  br label %efc_node_evt_set.exit.thread

efc_node_evt_set.exit.thread:                     ; preds = %if.then2.i, %if.then.i
  %current_evt.i231 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %7 = ptrtoint ptr %current_evt.i231 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_evt.i231, align 8
  %prev_evt.i232 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %9 = ptrtoint ptr %prev_evt.i232 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %prev_evt.i232, align 4
  store i32 %evt, ptr %current_evt.i231, align 8
  br label %do.body

efc_node_evt_set.exit:                            ; preds = %entry
  %current_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %10 = ptrtoint ptr %current_evt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %current_evt.i, align 8
  %prev_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %12 = ptrtoint ptr %prev_evt.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %prev_evt.i, align 4
  store i32 %evt, ptr %current_evt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %evt)
  %cond = icmp eq i32 %evt, 63
  br i1 %cond, label %efc_node_evt_set.exit.sw.default_crit_edge, label %efc_node_evt_set.exit.do.body_crit_edge

efc_node_evt_set.exit.do.body_crit_edge:          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

efc_node_evt_set.exit.sw.default_crit_edge:       ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default

do.body:                                          ; preds = %efc_node_evt_set.exit.do.body_crit_edge, %efc_node_evt_set.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_device_ready.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_device_ready, %if.then4)) #5
          to label %if.end7 [label %if.then4], !srcloc !252

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call6 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_device_ready.__UNIQUE_ID_ddebug331, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_d_device_ready, ptr noundef %call6) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %do.body
  %17 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %evt, label %if.end7.sw.default_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb24
    i32 52, label %sw.bb26
    i32 55, label %sw.bb29
    i32 56, label %sw.bb49
    i32 54, label %sw.bb58
    i32 59, label %sw.bb78
    i32 47, label %do.end90
    i32 65, label %if.end7.sw.epilog_crit_edge
    i32 49, label %if.end7.sw.epilog_crit_edge235
    i32 48, label %sw.bb94
    i32 34, label %sw.bb99
    i32 36, label %sw.bb133
  ]

if.end7.sw.epilog_crit_edge235:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end7.sw.default_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default

sw.bb:                                            ; preds = %if.end7
  %fcp_enabled = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %fcp_enabled to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %fcp_enabled, align 1
  %targ = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 25
  %19 = ptrtoint ptr %targ to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %targ, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool8.not = icmp eq i8 %20, 0
  br i1 %tobool8.not, label %sw.bb.sw.epilog_crit_edge, label %do.end12

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end12:                                         ; preds = %sw.bb
  %pci13 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %pci13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci13, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %display_name15 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %wwpn = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 46
  %wwnn = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 45
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14, ptr noundef nonnull @.str.62, ptr noundef %display_name15, ptr noundef %wwpn, ptr noundef %wwnn) #8
  %nport = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nport, align 4
  %enable_ini = getelementptr inbounds %struct.efc_nport, ptr %24, i32 0, i32 24
  %25 = ptrtoint ptr %enable_ini to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %enable_ini, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool19.not = icmp eq i8 %26, 0
  br i1 %tobool19.not, label %do.end12.sw.epilog_crit_edge, label %if.then20

do.end12.sw.epilog_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then20:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  %scsi_new_node = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 15, i32 2
  %27 = ptrtoint ptr %scsi_new_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %scsi_new_node, align 4
  %call21 = tail call i32 %28(ptr noundef %3, ptr noundef %1) #5
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %fcp_enabled25 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %fcp_enabled25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %fcp_enabled25, align 1
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end7
  %payload = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 3
  %30 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %payload, align 4
  %dma = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma, align 4
  tail call void @efc_node_save_sparms(ptr noundef %1, ptr noundef %33) #5
  %header = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %34 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %header, align 4
  %dma27 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %dma27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma27, align 4
  %fh_ox_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %fh_ox_id.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %fh_ox_id.i, align 4
  %send_ls_acc.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 20
  %40 = ptrtoint ptr %send_ls_acc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %send_ls_acc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.not.i = icmp eq i32 %41, 0
  br i1 %cmp.not.i, label %sw.bb26.efc_send_ls_acc_after_attach.exit_crit_edge, label %do.end.i, !prof !254

sw.bb26.efc_send_ls_acc_after_attach.exit_crit_edge: ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_send_ls_acc_after_attach.exit

do.end.i:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 350, i32 noundef 9, ptr noundef null) #5
  br label %efc_send_ls_acc_after_attach.exit

efc_send_ls_acc_after_attach.exit:                ; preds = %do.end.i, %sw.bb26.efc_send_ls_acc_after_attach.exit_crit_edge
  %conv.i = zext i16 %39 to i32
  %ls_acc_oxid.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 22
  %42 = ptrtoint ptr %ls_acc_oxid.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv.i, ptr %ls_acc_oxid.i, align 4
  %43 = ptrtoint ptr %send_ls_acc.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %send_ls_acc.i, align 4
  %fh_d_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %37, i32 0, i32 1
  %44 = ptrtoint ptr %fh_d_id.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fh_d_id.i, align 1
  %conv.i.i = zext i8 %45 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %arrayidx1.i.i = getelementptr %struct.fc_frame_header, ptr %37, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %47 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr %struct.fc_frame_header, ptr %37, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %49 to i32
  %or6.i.i = or i32 %or.i.i, %conv5.i.i
  %ls_acc_did.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 23
  %50 = ptrtoint ptr %ls_acc_did.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or6.i.i, ptr %ls_acc_did.i, align 8
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 50, ptr noundef null) #5
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end7
  %header30 = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %51 = ptrtoint ptr %header30 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %header30, align 4
  %dma31 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %dma31 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dma31, align 4
  %payload33 = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 3
  %55 = ptrtoint ptr %payload33 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %payload33, align 4
  %dma34 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %dma34 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dma34, align 4
  %sp = getelementptr inbounds %struct.anon.88, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %sp to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %sp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %60)
  %cmp36.not = icmp eq i8 %60, 8
  br i1 %cmp36.not, label %if.end41, label %if.then38

if.then38:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %54, i32 0, i32 9
  %61 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %fh_ox_id, align 4
  %conv39 = zext i16 %62 to i32
  %call40 = tail call i32 @efc_send_ls_rjt(ptr noundef %1, i32 noundef %conv39, i32 noundef 9, i32 noundef 44, i32 noundef 0) #5
  br label %sw.epilog

if.end41:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  %spp_flags.i = getelementptr inbounds %struct.anon.86, ptr %58, i32 0, i32 1, i32 2
  %63 = ptrtoint ptr %spp_flags.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %spp_flags.i, align 2
  %init.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 26
  %65 = lshr i8 %64, 5
  %.lobit.i = and i8 %65, 1
  %66 = ptrtoint ptr %init.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %.lobit.i, ptr %init.i, align 1
  %67 = load i8, ptr %spp_flags.i, align 2
  %targ.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 25
  %68 = lshr i8 %67, 4
  %.lobit11.i = and i8 %68, 1
  %69 = ptrtoint ptr %targ.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %.lobit11.i, ptr %targ.i, align 8
  %fh_ox_id45 = getelementptr inbounds %struct.fc_frame_header, ptr %54, i32 0, i32 9
  %70 = ptrtoint ptr %fh_ox_id45 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %fh_ox_id45, align 4
  %conv46 = zext i16 %71 to i32
  %call47 = tail call i32 @efc_send_prli_acc(ptr noundef %1, i32 noundef %conv46) #5
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %header51 = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %72 = ptrtoint ptr %header51 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %header51, align 4
  %dma52 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %dma52 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dma52, align 4
  %fh_ox_id54 = getelementptr inbounds %struct.fc_frame_header, ptr %75, i32 0, i32 9
  %76 = ptrtoint ptr %fh_ox_id54 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %fh_ox_id54, align 4
  %conv55 = zext i16 %77 to i32
  %call56 = tail call i32 @efc_send_prlo_acc(ptr noundef %1, i32 noundef %conv55) #5
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %header60 = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %78 = ptrtoint ptr %header60 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %header60, align 4
  %dma61 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %dma61 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dma61, align 4
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 8
  %pci67 = getelementptr inbounds %struct.efc, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %pci67 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pci67, align 4
  %dev68 = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  %display_name69 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call71 = tail call ptr @efc_sm_event_name(i32 noundef 54) #5
  %attached = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %86 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %attached, align 2, !range !251
  %88 = zext i8 %87 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev68, ptr noundef nonnull @.str.61, ptr noundef %display_name69, ptr noundef %call71, i32 noundef %88) #8
  %fh_ox_id74 = getelementptr inbounds %struct.fc_frame_header, ptr %81, i32 0, i32 9
  %89 = ptrtoint ptr %fh_ox_id74 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %fh_ox_id74, align 4
  %conv75 = zext i16 %90 to i32
  %call76 = tail call i32 @efc_send_logo_acc(ptr noundef %1, i32 noundef %conv75) #5
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_logo_acc_cmpl, ptr noundef null) #5
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %header80 = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %91 = ptrtoint ptr %header80 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %header80, align 4
  %dma81 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %dma81 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dma81, align 4
  %fh_ox_id83 = getelementptr inbounds %struct.fc_frame_header, ptr %94, i32 0, i32 9
  %95 = ptrtoint ptr %fh_ox_id83 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %fh_ox_id83, align 4
  %conv84 = zext i16 %96 to i32
  %call85 = tail call i32 @efc_send_adisc_acc(ptr noundef %1, i32 noundef %conv84) #5
  br label %sw.epilog

do.end90:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %pci91 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %97 = ptrtoint ptr %pci91 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pci91, align 4
  %dev92 = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44
  %call93 = tail call ptr @efc_sm_event_name(i32 noundef 47) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92, ptr noundef nonnull @.str.66, ptr noundef %call93) #8
  br label %sw.epilog

sw.bb94:                                          ; preds = %if.end7
  %nport95 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %99 = ptrtoint ptr %nport95 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %nport95, align 4
  %enable_rscn = getelementptr inbounds %struct.efc_nport, ptr %100, i32 0, i32 26
  %101 = ptrtoint ptr %enable_rscn to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %enable_rscn, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool96.not = icmp eq i8 %102, 0
  br i1 %tobool96.not, label %sw.bb94.sw.epilog_crit_edge, label %if.then97

sw.bb94.sw.epilog_crit_edge:                      ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then97:                                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_device_gone, ptr noundef null) #5
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.end7
  %els_cmpl_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 36
  %103 = ptrtoint ptr %els_cmpl_cnt to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %els_cmpl_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool100.not = icmp eq i32 %104, 0
  br i1 %tobool100.not, label %do.end118, label %sw.bb99.if.end124_crit_edge, !prof !253

sw.bb99.if.end124_crit_edge:                      ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124

do.end118:                                        ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1406, i32 noundef 9, ptr noundef null) #5
  br label %if.end124

if.end124:                                        ; preds = %do.end118, %sw.bb99.if.end124_crit_edge
  %105 = ptrtoint ptr %els_cmpl_cnt to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %els_cmpl_cnt, align 8
  %dec = add i32 %106, -1
  store i32 %dec, ptr %els_cmpl_cnt, align 8
  br label %sw.epilog

sw.bb133:                                         ; preds = %if.end7
  %els_cmpl_cnt135 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 36
  %107 = ptrtoint ptr %els_cmpl_cnt135 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %els_cmpl_cnt135, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool136.not = icmp eq i32 %108, 0
  br i1 %tobool136.not, label %do.end154, label %sw.bb133.if.end160_crit_edge, !prof !253

sw.bb133.if.end160_crit_edge:                     ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end160

do.end154:                                        ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1412, i32 noundef 9, ptr noundef null) #5
  br label %if.end160

if.end160:                                        ; preds = %do.end154, %sw.bb133.if.end160_crit_edge
  %109 = ptrtoint ptr %els_cmpl_cnt135 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %els_cmpl_cnt135, align 8
  %dec169 = add i32 %110, -1
  store i32 %dec169, ptr %els_cmpl_cnt135, align 8
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 8
  %pci174 = getelementptr inbounds %struct.efc, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %pci174 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pci174, align 4
  %dev175 = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  %display_name176 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev175, ptr noundef nonnull @.str.70, ptr noundef %display_name176) #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7.sw.default_crit_edge, %efc_node_evt_set.exit.sw.default_crit_edge
  tail call void @__efc_d_common(ptr noundef nonnull @__func__.__efc_d_device_ready, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end160, %if.end124, %if.then97, %sw.bb94.sw.epilog_crit_edge, %do.end90, %sw.bb78, %sw.bb58, %sw.bb49, %if.end41, %if.then38, %efc_send_ls_acc_after_attach.exit, %sw.bb24, %if.then20, %do.end12.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end7.sw.epilog_crit_edge, %if.end7.sw.epilog_crit_edge235
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_prlo_acc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_adisc_acc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_d_device_gone(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %5 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.94, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #5
  %6 = call ptr @memcpy(ptr %current_state_name4.i, ptr @str, i32 64)
  br label %efc_node_evt_set.exit

efc_node_evt_set.exit:                            ; preds = %if.then2.i, %if.then.i, %entry.efc_node_evt_set.exit_crit_edge
  %current_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %7 = ptrtoint ptr %current_evt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_evt.i, align 8
  %prev_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %9 = ptrtoint ptr %prev_evt.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %prev_evt.i, align 4
  store i32 %evt, ptr %current_evt.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_device_gone.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_device_gone, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call5 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_device_gone.__UNIQUE_ID_ddebug332, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_d_device_gone, ptr noundef %call5) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %14 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %evt, label %sw.default76 [
    i32 0, label %sw.bb
    i32 49, label %sw.bb45
    i32 52, label %sw.bb47
    i32 63, label %do.end53
    i32 54, label %sw.bb59
  ]

sw.bb:                                            ; preds = %do.end
  %pci9 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %pci9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci9, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %display_name11 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %targ = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 25
  %17 = ptrtoint ptr %targ to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %targ, align 8, !range !251
  %19 = shl nuw nsw i8 %18, 1
  %init = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 26
  %20 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %init, align 1, !range !251
  %or126 = or i8 %19, %21
  %or = zext i8 %or126 to i32
  %arrayidx = getelementptr [4 x ptr], ptr @__efc_d_device_gone.labels, i32 0, i32 %or
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %wwpn = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 46
  %wwnn = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 45
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10, ptr noundef nonnull @.str.76, ptr noundef %display_name11, ptr noundef %23, ptr noundef %wwpn, ptr noundef %wwnn) #8
  %nport.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %nport.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nport.i, align 4
  %enable_ini.i = getelementptr inbounds %struct.efc_nport, ptr %25, i32 0, i32 24
  %26 = ptrtoint ptr %enable_ini.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enable_ini.i, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 8
  %enable_tgt.i = getelementptr inbounds %struct.efc_nport, ptr %25, i32 0, i32 25
  %28 = ptrtoint ptr %enable_tgt.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %enable_tgt.i, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool3.not.i = icmp eq i8 %29, 0
  %or5.i = or i32 %spec.select.i, 4
  %retval1.1.i = select i1 %tobool3.not.i, i32 %spec.select.i, i32 %or5.i
  %30 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %init, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool7.not.i = icmp eq i8 %31, 0
  %or9.i = or i32 %retval1.1.i, 2
  %retval1.2.i = select i1 %tobool7.not.i, i32 %retval1.1.i, i32 %or9.i
  %32 = ptrtoint ptr %targ to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %targ, align 8, !range !251
  %34 = zext i8 %33 to i32
  %retval1.3.i = or i32 %retval1.2.i, %34
  %35 = zext i32 %retval1.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %retval1.3.i, label %sw.bb.sw.epilog_crit_edge [
    i32 5, label %sw.bb.sw.bb19_crit_edge
    i32 9, label %sw.bb.sw.bb19_crit_edge128
    i32 13, label %sw.bb.sw.bb19_crit_edge129
    i32 6, label %sw.bb.sw.bb21_crit_edge
    i32 10, label %sw.bb.sw.bb21_crit_edge130
    i32 14, label %sw.bb.sw.bb21_crit_edge131
    i32 7, label %sw.bb25
    i32 11, label %sw.bb29
    i32 15, label %sw.bb33
  ]

sw.bb.sw.bb21_crit_edge131:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb21

sw.bb.sw.bb21_crit_edge130:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb21

sw.bb.sw.bb21_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb21

sw.bb.sw.bb19_crit_edge129:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb19

sw.bb.sw.bb19_crit_edge128:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb19

sw.bb.sw.bb19_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb19

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb19:                                          ; preds = %sw.bb.sw.bb19_crit_edge, %sw.bb.sw.bb19_crit_edge128, %sw.bb.sw.bb19_crit_edge129
  %scsi_del_node = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 15, i32 3
  %36 = ptrtoint ptr %scsi_del_node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %scsi_del_node, align 4
  %call20 = tail call i32 %37(ptr noundef %3, ptr noundef %1, i32 noundef 1) #5
  br label %sw.epilog

sw.bb21:                                          ; preds = %sw.bb.sw.bb21_crit_edge, %sw.bb.sw.bb21_crit_edge130, %sw.bb.sw.bb21_crit_edge131
  %scsi_del_node23 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 15, i32 3
  %38 = ptrtoint ptr %scsi_del_node23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %scsi_del_node23, align 4
  %call24 = tail call i32 %39(ptr noundef %3, ptr noundef %1, i32 noundef 1) #5
  br label %sw.epilog

sw.bb25:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %scsi_del_node27 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 15, i32 3
  %40 = ptrtoint ptr %scsi_del_node27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %scsi_del_node27, align 4
  %call28 = tail call i32 %41(ptr noundef %3, ptr noundef %1, i32 noundef 1) #5
  br label %sw.epilog

sw.bb29:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %scsi_del_node31 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 15, i32 3
  %42 = ptrtoint ptr %scsi_del_node31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %scsi_del_node31, align 4
  %call32 = tail call i32 %43(ptr noundef %3, ptr noundef %1, i32 noundef 1) #5
  br label %sw.epilog

sw.bb33:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %scsi_del_node35 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 15, i32 3
  %44 = ptrtoint ptr %scsi_del_node35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %scsi_del_node35, align 4
  %call36 = tail call i32 %45(ptr noundef %3, ptr noundef %1, i32 noundef 1) #5
  %46 = ptrtoint ptr %scsi_del_node35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %scsi_del_node35, align 4
  %call39 = tail call i32 %47(ptr noundef %3, ptr noundef %1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %phi.cmp = icmp eq i32 %call39, 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb29, %sw.bb25, %sw.bb21, %sw.bb19, %sw.bb.sw.epilog_crit_edge
  %rc.0 = phi i32 [ %call36, %sw.bb33 ], [ %call32, %sw.bb29 ], [ %call28, %sw.bb25 ], [ %call24, %sw.bb21 ], [ %call20, %sw.bb19 ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  %rc_2.0 = phi i1 [ %phi.cmp, %sw.bb33 ], [ true, %sw.bb29 ], [ true, %sw.bb25 ], [ true, %sw.bb21 ], [ true, %sw.bb19 ], [ true, %sw.bb.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp = icmp eq i32 %rc.0, 0
  %or.cond = select i1 %cmp, i1 %rc_2.0, i1 false
  br i1 %or.cond, label %if.then43, label %sw.epilog.sw.epilog77_crit_edge

sw.epilog.sw.epilog77_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog77

if.then43:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 3, ptr noundef null) #5
  br label %sw.epilog77

sw.bb45:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call46 = tail call i32 @efc_send_adisc(ptr noundef %1) #5
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_adisc_rsp, ptr noundef null) #5
  br label %sw.epilog77

sw.bb47:                                          ; preds = %do.end
  %payload = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 3
  %48 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %payload, align 4
  %dma = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dma, align 4
  tail call void @efc_node_save_sparms(ptr noundef %1, ptr noundef %51) #5
  %header = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %52 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %header, align 4
  %dma48 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %dma48 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma48, align 4
  %fh_ox_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %fh_ox_id.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %fh_ox_id.i, align 4
  %send_ls_acc.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 20
  %58 = ptrtoint ptr %send_ls_acc.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %send_ls_acc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.not.i = icmp eq i32 %59, 0
  br i1 %cmp.not.i, label %sw.bb47.efc_send_ls_acc_after_attach.exit_crit_edge, label %do.end.i, !prof !254

sw.bb47.efc_send_ls_acc_after_attach.exit_crit_edge: ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_send_ls_acc_after_attach.exit

do.end.i:                                         ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 350, i32 noundef 9, ptr noundef null) #5
  br label %efc_send_ls_acc_after_attach.exit

efc_send_ls_acc_after_attach.exit:                ; preds = %do.end.i, %sw.bb47.efc_send_ls_acc_after_attach.exit_crit_edge
  %conv.i = zext i16 %57 to i32
  %ls_acc_oxid.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 22
  %60 = ptrtoint ptr %ls_acc_oxid.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv.i, ptr %ls_acc_oxid.i, align 4
  %61 = ptrtoint ptr %send_ls_acc.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %send_ls_acc.i, align 4
  %fh_d_id.i = getelementptr inbounds %struct.fc_frame_header, ptr %55, i32 0, i32 1
  %62 = ptrtoint ptr %fh_d_id.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %fh_d_id.i, align 1
  %conv.i.i = zext i8 %63 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %arrayidx1.i.i = getelementptr %struct.fc_frame_header, ptr %55, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %65 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr %struct.fc_frame_header, ptr %55, i32 0, i32 1, i32 2
  %66 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %67 to i32
  %or6.i.i = or i32 %or.i.i, %conv5.i.i
  %ls_acc_did.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 23
  %68 = ptrtoint ptr %ls_acc_did.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or6.i.i, ptr %ls_acc_did.i, align 8
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 50, ptr noundef null) #5
  br label %sw.epilog77

do.end53:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 8
  %pci55 = getelementptr inbounds %struct.efc, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %pci55 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pci55, align 4
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %display_name57 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev56, ptr noundef nonnull @.str.42, ptr noundef %display_name57) #8
  br label %sw.epilog77

sw.bb59:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %header60 = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %73 = ptrtoint ptr %header60 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %header60, align 4
  %dma61 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %dma61 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dma61, align 4
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 8
  %pci67 = getelementptr inbounds %struct.efc, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %pci67 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pci67, align 4
  %dev68 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  %display_name69 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call71 = tail call ptr @efc_sm_event_name(i32 noundef 54) #5
  %attached = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %81 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %attached, align 2, !range !251
  %83 = zext i8 %82 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev68, ptr noundef nonnull @.str.61, ptr noundef %display_name69, ptr noundef %call71, i32 noundef %83) #8
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %76, i32 0, i32 9
  %84 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %fh_ox_id, align 4
  %conv74 = zext i16 %85 to i32
  %call75 = tail call i32 @efc_send_logo_acc(ptr noundef %1, i32 noundef %conv74) #5
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_logo_acc_cmpl, ptr noundef null) #5
  br label %sw.epilog77

sw.default76:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__efc_d_common(ptr noundef nonnull @__func__.__efc_d_device_gone, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %sw.epilog77

sw.epilog77:                                      ; preds = %sw.default76, %sw.bb59, %do.end53, %efc_send_ls_acc_after_attach.exit, %sw.bb45, %if.then43, %sw.epilog.sw.epilog77_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_adisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_d_wait_adisc_rsp(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.95, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #5
  %4 = call ptr @memcpy(ptr %current_state_name4.i, ptr @str, i32 64)
  br label %efc_node_evt_set.exit

efc_node_evt_set.exit:                            ; preds = %if.then2.i, %if.then.i, %entry.efc_node_evt_set.exit_crit_edge
  %current_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %current_evt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_evt.i, align 8
  %prev_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %7 = ptrtoint ptr %prev_evt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %prev_evt.i, align 4
  store i32 %evt, ptr %current_evt.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_d_wait_adisc_rsp.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_d_wait_adisc_rsp, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_d_wait_adisc_rsp.__UNIQUE_ID_ddebug333, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_d_wait_adisc_rsp, ptr noundef %call3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %evt, label %sw.default [
    i32 33, label %sw.bb
    i32 37, label %sw.bb41
    i32 54, label %sw.bb82
  ]

sw.bb:                                            ; preds = %do.end
  %call4 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef 33, ptr noundef %arg, i8 noundef zeroext 82, ptr noundef nonnull @__efc_d_common, ptr noundef nonnull @__func__.__efc_d_wait_adisc_rsp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %13 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %els_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %do.end26, label %if.end7.if.end32_crit_edge, !prof !253

if.end7.if.end32_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

do.end26:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1562, i32 noundef 9, ptr noundef null) #5
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %if.end7.if.end32_crit_edge
  %15 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %els_req_cnt, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %els_req_cnt, align 4
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_device_ready, ptr noundef null) #5
  br label %cleanup

sw.bb41:                                          ; preds = %do.end
  %call42 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef 37, ptr noundef %arg, i8 noundef zeroext 82, ptr noundef nonnull @__efc_d_common, ptr noundef nonnull @__func__.__efc_d_wait_adisc_rsp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %sw.bb41.cleanup_crit_edge

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %sw.bb41
  %els_req_cnt47 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %17 = ptrtoint ptr %els_req_cnt47 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %els_req_cnt47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool48.not = icmp eq i32 %18, 0
  br i1 %tobool48.not, label %do.end66, label %if.end45.if.end72_crit_edge, !prof !253

if.end45.if.end72_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

do.end66:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1576, i32 noundef 9, ptr noundef null) #5
  br label %if.end72

if.end72:                                         ; preds = %do.end66, %if.end45.if.end72_crit_edge
  %19 = ptrtoint ptr %els_req_cnt47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %els_req_cnt47, align 4
  %dec81 = add i32 %20, -1
  store i32 %dec81, ptr %els_req_cnt47, align 4
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 51, ptr noundef null) #5
  br label %cleanup

sw.bb82:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %header = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %21 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %header, align 4
  %dma = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %pci87 = getelementptr inbounds %struct.efc, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %pci87 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci87, align 4
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %display_name89 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call91 = tail call ptr @efc_sm_event_name(i32 noundef 54) #5
  %attached = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %attached, align 2, !range !251
  %31 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev88, ptr noundef nonnull @.str.61, ptr noundef %display_name89, ptr noundef %call91, i32 noundef %31) #8
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %24, i32 0, i32 9
  %32 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %fh_ox_id, align 4
  %conv93 = zext i16 %33 to i32
  %call94 = tail call i32 @efc_send_logo_acc(ptr noundef %1, i32 noundef %conv93) #5
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_logo_acc_cmpl, ptr noundef null) #5
  br label %cleanup

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__efc_d_common(ptr noundef nonnull @__func__.__efc_d_wait_adisc_rsp, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb82, %if.end72, %sw.bb41.cleanup_crit_edge, %if.end32, %sw.bb.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__efc_node_common(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !73, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !90, !91, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !110, !111, !113, !114, !115, !117, !119, !121, !122, !123, !125, !126, !127, !129, !130, !132, !133, !135, !137, !139, !140, !141, !143, !144, !146, !147, !149, !151, !153, !154, !155, !157, !159, !161, !163, !165, !166, !167, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !183, !185, !187, !189, !191, !193, !195, !196, !197, !199, !200, !202, !203, !205, !207, !209, !210, !212, !214, !216, !218, !219, !221, !223, !225, !226, !228, !229, !231, !233, !235, !236, !237, !238, !240, !241}
!llvm.module.flags = !{!242, !243, !244, !245, !246, !247, !248, !249}
!llvm.ident = !{!250}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 30, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @efc_d_send_prli_rsp._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @efc_d_send_prli_rsp._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__func__.__efc_d_initiate_shutdown, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 204, i32 29}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 206, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__efc_d_initiate_shutdown.__UNIQUE_ID_ddebug318, !11, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 217, i32 4}
!16 = !{ptr @__efc_d_initiate_shutdown._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @__efc_d_initiate_shutdown._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 233, i32 4}
!20 = !{ptr @__efc_d_initiate_shutdown._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @__efc_d_initiate_shutdown._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 249, i32 4}
!24 = !{ptr @__efc_d_initiate_shutdown._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @__efc_d_initiate_shutdown._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 287, i32 5}
!28 = !{ptr @__efc_d_initiate_shutdown._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @__efc_d_initiate_shutdown._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__func__.__efc_d_wait_loop, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 319, i32 29}
!32 = !{ptr @__efc_d_wait_loop.__UNIQUE_ID_ddebug319, !33, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!33 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 321, i32 2}
!34 = !{ptr @__func__.__efc_d_wait_plogi_acc_cmpl, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 376, i32 29}
!36 = !{ptr @__efc_d_wait_plogi_acc_cmpl.__UNIQUE_ID_ddebug320, !37, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!37 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 378, i32 2}
!38 = !{ptr @__func__.__efc_d_wait_logo_rsp, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 413, i32 29}
!40 = !{ptr @__efc_d_wait_logo_rsp.__UNIQUE_ID_ddebug321, !41, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!41 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 415, i32 2}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 436, i32 3}
!44 = !{ptr @__efc_d_wait_logo_rsp._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @__efc_d_wait_logo_rsp._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @__func__.__efc_d_init, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 509, i32 29}
!48 = !{ptr @__efc_d_init.__UNIQUE_ID_ddebug322, !49, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!49 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 511, i32 2}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 531, i32 4}
!52 = !{ptr @__efc_d_init._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @__efc_d_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 533, i32 4}
!56 = !{ptr @__efc_d_init._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @__efc_d_init._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 582, i32 4}
!60 = !{ptr @__efc_d_init._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @__efc_d_init._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 600, i32 4}
!64 = !{ptr @__efc_d_init._entry.25, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @__efc_d_init._entry_ptr.27, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @__efc_d_init._entry.28, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 624, i32 4}
!68 = !{ptr @__efc_d_init._entry_ptr.29, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 632, i32 3}
!71 = !{ptr @__efc_d_init._entry.30, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @__efc_d_init._entry_ptr.32, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @__efc_d_init._entry.33, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 651, i32 4}
!75 = !{ptr @__efc_d_init._entry_ptr.34, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 660, i32 3}
!78 = !{ptr @__efc_d_init._entry.35, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @__efc_d_init._entry_ptr.37, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 666, i32 4}
!82 = !{ptr @__efc_d_init._entry.38, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @__efc_d_init._entry_ptr.40, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @__func__.__efc_d_wait_plogi_rsp, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 694, i32 29}
!86 = !{ptr @__efc_d_wait_plogi_rsp.__UNIQUE_ID_ddebug323, !87, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!87 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 696, i32 2}
!88 = !{ptr @__efc_d_wait_plogi_rsp._entry, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 747, i32 3}
!90 = !{ptr @__efc_d_wait_plogi_rsp._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 799, i32 3}
!93 = !{ptr @__efc_d_wait_plogi_rsp._entry.41, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @__efc_d_wait_plogi_rsp._entry_ptr.43, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @__func__.__efc_d_wait_plogi_rsp_recvd_prli, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 816, i32 29}
!97 = !{ptr @__efc_d_wait_plogi_rsp_recvd_prli.__UNIQUE_ID_ddebug324, !98, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!98 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 818, i32 2}
!99 = !{ptr @__func__.__efc_d_wait_domain_attach, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 881, i32 29}
!101 = !{ptr @__efc_d_wait_domain_attach.__UNIQUE_ID_ddebug325, !102, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!102 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 883, i32 2}
!103 = !{ptr @__func__.__efc_d_wait_topology_notify, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 917, i32 29}
!105 = !{ptr @__efc_d_wait_topology_notify.__UNIQUE_ID_ddebug326, !106, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!106 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 919, i32 2}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 937, i32 3}
!109 = !{ptr @__efc_d_wait_topology_notify._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @__efc_d_wait_topology_notify._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 962, i32 3}
!113 = !{ptr @__efc_d_wait_topology_notify._entry.45, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @__efc_d_wait_topology_notify._entry_ptr.47, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @__func__.__efc_d_wait_node_attach, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 983, i32 29}
!117 = !{ptr @__efc_d_wait_node_attach.__UNIQUE_ID_ddebug327, !118, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!118 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 985, i32 2}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1028, i32 3}
!121 = !{ptr @__efc_d_wait_node_attach._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @__efc_d_wait_node_attach._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1035, i32 3}
!125 = !{ptr @__efc_d_wait_node_attach._entry.49, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @__efc_d_wait_node_attach._entry_ptr.51, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @__efc_d_wait_node_attach._entry.52, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1041, i32 3}
!129 = !{ptr @__efc_d_wait_node_attach._entry_ptr.53, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @__efc_d_wait_node_attach._entry.54, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1047, i32 3}
!132 = !{ptr @__efc_d_wait_node_attach._entry_ptr.55, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @__func__.__efc_d_wait_attach_evt_shutdown, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1063, i32 29}
!135 = !{ptr @__efc_d_wait_attach_evt_shutdown.__UNIQUE_ID_ddebug328, !136, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!136 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1065, i32 2}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1079, i32 3}
!139 = !{ptr @__efc_d_wait_attach_evt_shutdown._entry, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @__efc_d_wait_attach_evt_shutdown._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @__efc_d_wait_attach_evt_shutdown._entry.57, !142, !"_entry", i1 false, i1 false}
!142 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1087, i32 3}
!143 = !{ptr @__efc_d_wait_attach_evt_shutdown._entry_ptr.58, !142, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @__efc_d_wait_attach_evt_shutdown._entry.59, !145, !"_entry", i1 false, i1 false}
!145 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1100, i32 3}
!146 = !{ptr @__efc_d_wait_attach_evt_shutdown._entry_ptr.60, !145, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @__func__.__efc_d_port_logged_in, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1115, i32 29}
!149 = !{ptr @__efc_d_port_logged_in.__UNIQUE_ID_ddebug329, !150, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!150 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1117, i32 2}
!151 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1244, i32 3}
!153 = !{ptr @__efc_d_port_logged_in._entry, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @__efc_d_port_logged_in._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @__func__.__efc_d_wait_logo_acc_cmpl, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1264, i32 29}
!157 = !{ptr @__efc_d_wait_logo_acc_cmpl.__UNIQUE_ID_ddebug330, !158, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!158 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1266, i32 2}
!159 = !{ptr @__func__.__efc_d_device_ready, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1298, i32 29}
!161 = !{ptr @__efc_d_device_ready.__UNIQUE_ID_ddebug331, !162, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!162 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1301, i32 3}
!163 = !{ptr @.str.62, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1307, i32 4}
!165 = !{ptr @__efc_d_device_ready._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @__efc_d_device_ready._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @__efc_d_device_ready._entry.63, !168, !"_entry", i1 false, i1 false}
!168 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1371, i32 3}
!169 = !{ptr @__efc_d_device_ready._entry_ptr.64, !168, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.66, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1388, i32 3}
!172 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @__efc_d_device_ready._entry.65, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @__efc_d_device_ready._entry_ptr.68, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.70, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1414, i32 3}
!177 = !{ptr @__efc_d_device_ready._entry.69, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @__efc_d_device_ready._entry_ptr.71, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @__func__.__efc_d_device_gone, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1430, i32 29}
!181 = !{ptr @__efc_d_device_gone.__UNIQUE_ID_ddebug332, !182, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!182 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1432, i32 2}
!183 = !{ptr @.str.72, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1439, i32 4}
!185 = !{ptr @.str.73, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1439, i32 12}
!187 = !{ptr @.str.74, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1439, i32 25}
!189 = !{ptr @.str.75, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1439, i32 35}
!191 = !{ptr @__efc_d_device_gone.labels, !192, !"labels", i1 false, i1 false}
!192 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1438, i32 29}
!193 = !{ptr @.str.76, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1442, i32 3}
!195 = !{ptr @__efc_d_device_gone._entry, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @__efc_d_device_gone._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @__efc_d_device_gone._entry.77, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1526, i32 3}
!199 = !{ptr @__efc_d_device_gone._entry_ptr.78, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @__efc_d_device_gone._entry.79, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1533, i32 3}
!202 = !{ptr @__efc_d_device_gone._entry_ptr.80, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @__func__.__efc_d_wait_adisc_rsp, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1552, i32 29}
!205 = !{ptr @__efc_d_wait_adisc_rsp.__UNIQUE_ID_ddebug333, !206, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!206 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1554, i32 2}
!207 = !{ptr @__efc_d_wait_adisc_rsp._entry, !208, !"_entry", i1 false, i1 false}
!208 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 1592, i32 3}
!209 = !{ptr @__efc_d_wait_adisc_rsp._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!210 = distinct !{null, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/elx/libefc/efc_node.h", i32 34, i32 37}
!212 = !{ptr @__func__.__efc_d_wait_del_node, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 87, i32 29}
!214 = !{ptr @__efc_d_wait_del_node.__UNIQUE_ID_ddebug316, !215, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!215 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 94, i32 2}
!216 = !{ptr @__efc_d_wait_del_node._entry, !217, !"_entry", i1 false, i1 false}
!217 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 134, i32 3}
!218 = !{ptr @__efc_d_wait_del_node._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @__func__.__efc_d_wait_del_ini_tgt, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 150, i32 29}
!221 = !{ptr @__efc_d_wait_del_ini_tgt.__UNIQUE_ID_ddebug317, !222, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!222 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 152, i32 2}
!223 = !{ptr @__efc_d_wait_del_ini_tgt._entry, !224, !"_entry", i1 false, i1 false}
!224 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 187, i32 3}
!225 = !{ptr @__efc_d_wait_del_ini_tgt._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.82, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 56, i32 3}
!228 = !{ptr @__efc_d_common.__UNIQUE_ID_ddebug313, !227, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!229 = !{ptr @__efc_d_common.__UNIQUE_ID_ddebug314, !230, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!230 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 62, i32 3}
!231 = !{ptr @__efc_d_common.__UNIQUE_ID_ddebug315, !232, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!232 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 69, i32 3}
!233 = !{ptr @.str.83, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 493, i32 3}
!235 = !{ptr @.str.84, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @efc_d_check_plogi_topology._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @efc_d_check_plogi_topology._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.86, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/elx/libefc/efc_device.c", i32 498, i32 3}
!240 = !{ptr @efc_d_check_plogi_topology._entry.85, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @efc_d_check_plogi_topology._entry_ptr.87, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{i32 1, !"wchar_size", i32 2}
!243 = !{i32 1, !"min_enum_size", i32 4}
!244 = !{i32 8, !"branch-target-enforcement", i32 0}
!245 = !{i32 8, !"sign-return-address", i32 0}
!246 = !{i32 8, !"sign-return-address-all", i32 0}
!247 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!248 = !{i32 7, !"uwtable", i32 1}
!249 = !{i32 7, !"frame-pointer", i32 2}
!250 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!251 = !{i8 0, i8 2}
!252 = !{i64 2148526496, i64 2148526501, i64 2148526514, i64 2148526558, i64 2148526592, i64 2148526613}
!253 = !{!"branch_weights", i32 1, i32 2000}
!254 = !{!"branch_weights", i32 2000, i32 1}
