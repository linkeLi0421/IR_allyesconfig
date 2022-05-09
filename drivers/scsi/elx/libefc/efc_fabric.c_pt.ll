; ModuleID = '/llk/IR_all_yes/drivers/scsi/elx/libefc/efc_fabric.c_pt.bc'
source_filename = "../drivers/scsi/elx/libefc/efc_fabric.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.efc_sm_ctx = type { ptr, ptr, ptr }
%struct.efc_node = type { ptr, [32 x i8], ptr, %struct.kref, ptr, i8, i8, i8, i8, i8, i8, i8, i8, %struct.spinlock, %struct.list_head, ptr, ptr, %struct.efc_remote_node, %struct.efc_sm_ctx, i32, i32, ptr, i32, i32, i32, i8, i8, i8, %struct.efc_dma, [120 x i8], %struct.spinlock, %struct.list_head, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], i32, i32, ptr, %struct.timer_list, i64, [32 x i8], [32 x i8] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.efc_remote_node = type { i32, i32, i32, i8, ptr, ptr }
%struct.efc_dma = type { ptr, ptr, i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.efc_domain = type { ptr, [32 x i8], %struct.list_head, %struct.kref, ptr, ptr, ptr, i32, i32, i32, i32, %struct.efc_dma, i64, %struct.efc_sm_ctx, i8, i8, i8, i8, i8, i8, i8, i8, %struct.efc_domain_record, [120 x i8], [120 x i8], %struct.xarray, ptr }
%struct.efc_domain_record = type { i32, i32, [6 x i8], [8 x i8], %union.anon.79, i32, i32, i8, i8 }
%union.anon.79 = type { [512 x i8] }
%struct.efc_node_cb = type { i32, i32, ptr, ptr, %struct.efc_dma, i32 }
%struct.fc_els_flogi = type <{ i8, [3 x i8], %struct.fc_els_csp, i64, i64, [4 x %struct.fc_els_cssp], [16 x i8] }>
%struct.fc_els_csp = type { i8, i8, i16, i16, i16, %union.anon.86, i32 }
%union.anon.86 = type { %struct.anon.88 }
%struct.anon.88 = type { i32 }
%struct.fc_els_cssp = type { i16, i16, i16, i16, i16, i16, i8, i8, [2 x i8] }
%struct.anon.89 = type { %struct.fc_ct_hdr, %struct.fc_gid_pn_resp }
%struct.fc_ct_hdr = type { i8, [3 x i8], i8, i8, i8, i8, i16, i16, i8, i8, i8, i8 }
%struct.fc_gid_pn_resp = type { i8, [3 x i8] }
%struct.efc_hw_rq_buffer = type { i16, %struct.efc_dma }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }

@__func__.__efc_fabric_init = private unnamed_addr constant [18 x i8] c"__efc_fabric_init\00", align 1
@__efc_fabric_init.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_fabric_init, ptr @.str.1, ptr @.str.2, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"efct\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/scsi/elx/libefc/efc_fabric.c\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[%s] %-20s %-20s\0A\00", [46 x i8] zeroinitializer }, align 32
@__efc_fabric_init.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_fabric_init, ptr @.str.1, ptr @.str.3, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c">>> reenter !!\0A\00", [16 x i8] zeroinitializer }, align 32
@__func__.__efc_fabric_flogi_wait_rsp = private unnamed_addr constant [28 x i8] c"__efc_fabric_flogi_wait_rsp\00", align 1
@__efc_fabric_flogi_wait_rsp.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_fabric_flogi_wait_rsp, ptr @.str.1, ptr @.str.2, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_fabric_flogi_wait_rsp._entry = internal constant %struct.pi_entry { ptr @.str.4, ptr @__func__.__efc_fabric_flogi_wait_rsp, ptr @.str.1, i32 173, ptr @.str.5, ptr @.str.6 }, align 1
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%s] p2p setup failed, shutting down node\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__efc_fabric_flogi_wait_rsp._entry_ptr = internal global ptr @__efc_fabric_flogi_wait_rsp._entry, section ".printk_index", align 4
@__efc_fabric_flogi_wait_rsp._entry.7 = internal constant %struct.pi_entry { ptr @.str.8, ptr @__func__.__efc_fabric_flogi_wait_rsp, ptr @.str.1, i32 190, ptr @.str.5, ptr @.str.6 }, align 1
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[%s] p2p winner, domain already attached\0A\00", [54 x i8] zeroinitializer }, align 32
@__efc_fabric_flogi_wait_rsp._entry_ptr.9 = internal global ptr @__efc_fabric_flogi_wait_rsp._entry.7, section ".printk_index", align 4
@__efc_fabric_flogi_wait_rsp._entry.10 = internal constant %struct.pi_entry { ptr @.str.11, ptr @__func__.__efc_fabric_flogi_wait_rsp, ptr @.str.1, i32 224, ptr @.str.5, ptr @.str.6 }, align 1
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[%s] FLOGI failed evt=%s, shutting down nport [%s]\0A\00", [44 x i8] zeroinitializer }, align 32
@__efc_fabric_flogi_wait_rsp._entry_ptr.12 = internal global ptr @__efc_fabric_flogi_wait_rsp._entry.10, section ".printk_index", align 4
@__func__.__efc_vport_fabric_init = private unnamed_addr constant [24 x i8] c"__efc_vport_fabric_init\00", align 1
@__efc_vport_fabric_init.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_vport_fabric_init, ptr @.str.1, ptr @.str.2, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.__efc_fabric_fdisc_wait_rsp = private unnamed_addr constant [28 x i8] c"__efc_fabric_fdisc_wait_rsp\00", align 1
@__efc_fabric_fdisc_wait_rsp.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_fabric_fdisc_wait_rsp, ptr @.str.1, ptr @.str.2, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_fabric_fdisc_wait_rsp._entry = internal constant %struct.pi_entry { ptr @.str.13, ptr @__func__.__efc_fabric_fdisc_wait_rsp, ptr @.str.1, i32 294, ptr @.str.14, ptr @.str.6 }, align 1
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"FDISC failed, shutting down nport\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@__efc_fabric_fdisc_wait_rsp._entry_ptr = internal global ptr @__efc_fabric_fdisc_wait_rsp._entry, section ".printk_index", align 4
@__func__.__efc_fabric_wait_domain_attach = private unnamed_addr constant [32 x i8] c"__efc_fabric_wait_domain_attach\00", align 1
@__efc_fabric_wait_domain_attach.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_fabric_wait_domain_attach, ptr @.str.1, ptr @.str.2, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.__efc_fabric_idle = private unnamed_addr constant [18 x i8] c"__efc_fabric_idle\00", align 1
@__efc_fabric_idle.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_fabric_idle, ptr @.str.1, ptr @.str.2, i8 0, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.__efc_ns_init = private unnamed_addr constant [14 x i8] c"__efc_ns_init\00", align 1
@__efc_ns_init.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_ns_init, ptr @.str.1, ptr @.str.2, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.__efc_ns_plogi_wait_rsp = private unnamed_addr constant [24 x i8] c"__efc_ns_plogi_wait_rsp\00", align 1
@__efc_ns_plogi_wait_rsp.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_ns_plogi_wait_rsp, ptr @.str.1, ptr @.str.2, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.__efc_ns_wait_node_attach = private unnamed_addr constant [26 x i8] c"__efc_ns_wait_node_attach\00", align 1
@__efc_ns_wait_node_attach.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_ns_wait_node_attach, ptr @.str.1, ptr @.str.2, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_ns_wait_node_attach._entry = internal constant %struct.pi_entry { ptr @.str.15, ptr @__func__.__efc_ns_wait_node_attach, ptr @.str.1, i32 496, ptr @.str.5, ptr @.str.6 }, align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%s] Node attach failed\0A\00", [39 x i8] zeroinitializer }, align 32
@__efc_ns_wait_node_attach._entry_ptr = internal global ptr @__efc_ns_wait_node_attach._entry, section ".printk_index", align 4
@__efc_ns_wait_node_attach._entry.16 = internal constant %struct.pi_entry { ptr @.str.17, ptr @__func__.__efc_ns_wait_node_attach, ptr @.str.1, i32 502, ptr @.str.5, ptr @.str.6 }, align 1
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%s] Shutdown event received\0A\00", [34 x i8] zeroinitializer }, align 32
@__efc_ns_wait_node_attach._entry_ptr.18 = internal global ptr @__efc_ns_wait_node_attach._entry.16, section ".printk_index", align 4
@__func__.__efc_fabric_wait_attach_evt_shutdown = private unnamed_addr constant [38 x i8] c"__efc_fabric_wait_attach_evt_shutdown\00", align 1
@__efc_fabric_wait_attach_evt_shutdown.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_fabric_wait_attach_evt_shutdown, ptr @.str.1, ptr @.str.2, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_fabric_wait_attach_evt_shutdown._entry = internal constant %struct.pi_entry { ptr @.str.19, ptr @__func__.__efc_fabric_wait_attach_evt_shutdown, ptr @.str.1, i32 544, ptr @.str.5, ptr @.str.6 }, align 1
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%s] Attach evt=%s, proceed to shutdown\0A\00", [55 x i8] zeroinitializer }, align 32
@__efc_fabric_wait_attach_evt_shutdown._entry_ptr = internal global ptr @__efc_fabric_wait_attach_evt_shutdown._entry, section ".printk_index", align 4
@__efc_fabric_wait_attach_evt_shutdown._entry.20 = internal constant %struct.pi_entry { ptr @.str.19, ptr @__func__.__efc_fabric_wait_attach_evt_shutdown, ptr @.str.1, i32 551, ptr @.str.5, ptr @.str.6 }, align 1
@__efc_fabric_wait_attach_evt_shutdown._entry_ptr.21 = internal global ptr @__efc_fabric_wait_attach_evt_shutdown._entry.20, section ".printk_index", align 4
@__efc_fabric_wait_attach_evt_shutdown._entry.22 = internal constant %struct.pi_entry { ptr @.str.17, ptr @__func__.__efc_fabric_wait_attach_evt_shutdown, ptr @.str.1, i32 557, ptr @.str.5, ptr @.str.6 }, align 1
@__efc_fabric_wait_attach_evt_shutdown._entry_ptr.23 = internal global ptr @__efc_fabric_wait_attach_evt_shutdown._entry.22, section ".printk_index", align 4
@__func__.__efc_ns_rftid_wait_rsp = private unnamed_addr constant [24 x i8] c"__efc_ns_rftid_wait_rsp\00", align 1
@__efc_ns_rftid_wait_rsp.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_ns_rftid_wait_rsp, ptr @.str.1, ptr @.str.2, i8 0, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.__efc_ns_rffid_wait_rsp = private unnamed_addr constant [24 x i8] c"__efc_ns_rffid_wait_rsp\00", align 1
@__efc_ns_rffid_wait_rsp.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_ns_rffid_wait_rsp, ptr @.str.1, ptr @.str.2, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.__efc_ns_gidpt_wait_rsp = private unnamed_addr constant [24 x i8] c"__efc_ns_gidpt_wait_rsp\00", align 1
@__efc_ns_gidpt_wait_rsp.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_ns_gidpt_wait_rsp, ptr @.str.1, ptr @.str.2, i8 0, i8 -58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_ns_gidpt_wait_rsp._entry = internal constant %struct.pi_entry { ptr @.str.24, ptr @__func__.__efc_ns_gidpt_wait_rsp, ptr @.str.1, i32 818, ptr @.str.5, ptr @.str.6 }, align 1
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%s] GID_PT failed to complete\0A\00", [32 x i8] zeroinitializer }, align 32
@__efc_ns_gidpt_wait_rsp._entry_ptr = internal global ptr @__efc_ns_gidpt_wait_rsp._entry, section ".printk_index", align 4
@__efc_ns_gidpt_wait_rsp._entry.25 = internal constant %struct.pi_entry { ptr @.str.26, ptr @__func__.__efc_ns_gidpt_wait_rsp, ptr @.str.1, i32 827, ptr @.str.5, ptr @.str.6 }, align 1
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s] RSCN received during GID_PT processing\0A\00", [51 x i8] zeroinitializer }, align 32
@__efc_ns_gidpt_wait_rsp._entry_ptr.27 = internal global ptr @__efc_ns_gidpt_wait_rsp._entry.25, section ".printk_index", align 4
@__func__.__efc_ns_idle = private unnamed_addr constant [14 x i8] c"__efc_ns_idle\00", align 1
@__efc_ns_idle.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_ns_idle, ptr @.str.1, ptr @.str.2, i8 0, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_ns_idle._entry = internal constant %struct.pi_entry { ptr @.str.28, ptr @__func__.__efc_ns_idle, ptr @.str.1, i32 857, ptr @.str.5, ptr @.str.6 }, align 1
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%s] RSCN pending, restart discovery\0A\00", [58 x i8] zeroinitializer }, align 32
@__efc_ns_idle._entry_ptr = internal global ptr @__efc_ns_idle._entry, section ".printk_index", align 4
@__func__.__efc_ns_gidpt_delay = private unnamed_addr constant [21 x i8] c"__efc_ns_gidpt_delay\00", align 1
@__efc_ns_gidpt_delay.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_ns_gidpt_delay, ptr @.str.1, ptr @.str.2, i8 0, i8 -30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__efc_ns_gidpt_delay.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&node->gidpt_delay_timer)\00", [37 x i8] zeroinitializer }, align 32
@__efc_ns_gidpt_delay.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_ns_gidpt_delay, ptr @.str.1, ptr @.str.30, i8 0, i8 -22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"RSCN received while in GIDPT delay - no action\0A\00", [48 x i8] zeroinitializer }, align 32
@__efc_fabctl_init.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.1, ptr @.str.2, i8 0, i8 -18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__efc_fabctl_init\00", [46 x i8] zeroinitializer }, align 32
@__func__.__efc_fabctl_wait_scr_rsp = private unnamed_addr constant [26 x i8] c"__efc_fabctl_wait_scr_rsp\00", align 1
@__efc_fabctl_wait_scr_rsp.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_fabctl_wait_scr_rsp, ptr @.str.1, ptr @.str.2, i8 0, i8 -12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.__efc_fabctl_ready = private unnamed_addr constant [19 x i8] c"__efc_fabctl_ready\00", align 1
@__efc_fabctl_ready.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_fabctl_ready, ptr @.str.1, ptr @.str.2, i8 1, i8 0, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.__efc_fabctl_wait_ls_acc_cmpl = private unnamed_addr constant [30 x i8] c"__efc_fabctl_wait_ls_acc_cmpl\00", align 1
@__efc_fabctl_wait_ls_acc_cmpl.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_fabctl_wait_ls_acc_cmpl, ptr @.str.1, ptr @.str.2, i8 1, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.__efc_p2p_wait_domain_attach = private unnamed_addr constant [29 x i8] c"__efc_p2p_wait_domain_attach\00", align 1
@__efc_p2p_wait_domain_attach.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_p2p_wait_domain_attach, ptr @.str.1, ptr @.str.2, i8 1, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_p2p_wait_domain_attach._entry = internal constant %struct.pi_entry { ptr @.str.32, ptr @__func__.__efc_p2p_wait_domain_attach, ptr @.str.1, i32 1158, ptr @.str.5, ptr @.str.6 }, align 1
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%s] Node with fc_id x%x already exists\0A\00", [55 x i8] zeroinitializer }, align 32
@__efc_p2p_wait_domain_attach._entry_ptr = internal global ptr @__efc_p2p_wait_domain_attach._entry, section ".printk_index", align 4
@__efc_p2p_wait_domain_attach._entry.33 = internal constant %struct.pi_entry { ptr @.str.34, ptr @__func__.__efc_p2p_wait_domain_attach, ptr @.str.1, i32 1168, ptr @.str.14, ptr @.str.6 }, align 1
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"node alloc failed\0A\00", [45 x i8] zeroinitializer }, align 32
@__efc_p2p_wait_domain_attach._entry_ptr.35 = internal global ptr @__efc_p2p_wait_domain_attach._entry.33, section ".printk_index", align 4
@__func__.__efc_p2p_rnode_init = private unnamed_addr constant [21 x i8] c"__efc_p2p_rnode_init\00", align 1
@__efc_p2p_rnode_init.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_p2p_rnode_init, ptr @.str.1, ptr @.str.2, i8 1, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.__efc_p2p_wait_flogi_acc_cmpl = private unnamed_addr constant [30 x i8] c"__efc_p2p_wait_flogi_acc_cmpl\00", align 1
@__efc_p2p_wait_flogi_acc_cmpl.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_p2p_wait_flogi_acc_cmpl, ptr @.str.1, ptr @.str.2, i8 1, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_p2p_wait_flogi_acc_cmpl._entry = internal constant %struct.pi_entry { ptr @.str.36, ptr @__func__.__efc_p2p_wait_flogi_acc_cmpl, ptr @.str.1, i32 1265, ptr @.str.5, ptr @.str.6 }, align 1
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%s] Domain not attached\0A\00", [38 x i8] zeroinitializer }, align 32
@__efc_p2p_wait_flogi_acc_cmpl._entry_ptr = internal global ptr @__efc_p2p_wait_flogi_acc_cmpl._entry, section ".printk_index", align 4
@__efc_p2p_wait_flogi_acc_cmpl._entry.37 = internal constant %struct.pi_entry { ptr @.str.38, ptr @__func__.__efc_p2p_wait_flogi_acc_cmpl, ptr @.str.1, i32 1269, ptr @.str.5, ptr @.str.6 }, align 1
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%s] Domain already attached\0A\00", [34 x i8] zeroinitializer }, align 32
@__efc_p2p_wait_flogi_acc_cmpl._entry_ptr.39 = internal global ptr @__efc_p2p_wait_flogi_acc_cmpl._entry.37, section ".printk_index", align 4
@__efc_p2p_wait_flogi_acc_cmpl._entry.40 = internal constant %struct.pi_entry { ptr @.str.41, ptr @__func__.__efc_p2p_wait_flogi_acc_cmpl, ptr @.str.1, i32 1293, ptr @.str.5, ptr @.str.6 }, align 1
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%s] FLOGI LS_ACC failed, shutting down\0A\00", [55 x i8] zeroinitializer }, align 32
@__efc_p2p_wait_flogi_acc_cmpl._entry_ptr.42 = internal global ptr @__efc_p2p_wait_flogi_acc_cmpl._entry.40, section ".printk_index", align 4
@__func__.__efc_p2p_wait_plogi_rsp = private unnamed_addr constant [25 x i8] c"__efc_p2p_wait_plogi_rsp\00", align 1
@__efc_p2p_wait_plogi_rsp.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_p2p_wait_plogi_rsp, ptr @.str.1, ptr @.str.2, i8 1, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_p2p_wait_plogi_rsp._entry = internal constant %struct.pi_entry { ptr @.str.43, ptr @__func__.__efc_p2p_wait_plogi_rsp, ptr @.str.1, i32 1346, ptr @.str.5, ptr @.str.6 }, align 1
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s] PLOGI failed, shutting down\0A\00", [62 x i8] zeroinitializer }, align 32
@__efc_p2p_wait_plogi_rsp._entry_ptr = internal global ptr @__efc_p2p_wait_plogi_rsp._entry, section ".printk_index", align 4
@__func__.__efc_p2p_wait_plogi_rsp_recvd_prli = private unnamed_addr constant [36 x i8] c"__efc_p2p_wait_plogi_rsp_recvd_prli\00", align 1
@__efc_p2p_wait_plogi_rsp_recvd_prli.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_p2p_wait_plogi_rsp_recvd_prli, ptr @.str.1, ptr @.str.2, i8 1, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.__efc_p2p_wait_node_attach = private unnamed_addr constant [27 x i8] c"__efc_p2p_wait_node_attach\00", align 1
@__efc_p2p_wait_node_attach.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_p2p_wait_node_attach, ptr @.str.1, ptr @.str.2, i8 1, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_p2p_wait_node_attach._entry = internal constant %struct.pi_entry { ptr @.str.15, ptr @__func__.__efc_p2p_wait_node_attach, ptr @.str.1, i32 1500, ptr @.str.5, ptr @.str.6 }, align 1
@__efc_p2p_wait_node_attach._entry_ptr = internal global ptr @__efc_p2p_wait_node_attach._entry, section ".printk_index", align 4
@__efc_p2p_wait_node_attach._entry.44 = internal constant %struct.pi_entry { ptr @.str.45, ptr @__func__.__efc_p2p_wait_node_attach, ptr @.str.1, i32 1506, ptr @.str.5, ptr @.str.6 }, align 1
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[%s] %s received\0A\00", [46 x i8] zeroinitializer }, align 32
@__efc_p2p_wait_node_attach._entry_ptr.46 = internal global ptr @__efc_p2p_wait_node_attach._entry.44, section ".printk_index", align 4
@__efc_p2p_wait_node_attach._entry.47 = internal constant %struct.pi_entry { ptr @.str.48, ptr @__func__.__efc_p2p_wait_node_attach, ptr @.str.1, i32 1514, ptr @.str.5, ptr @.str.6 }, align 1
@.str.48 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s] %s: PRLI received before node is attached\0A\00", [48 x i8] zeroinitializer }, align 32
@__efc_p2p_wait_node_attach._entry_ptr.49 = internal global ptr @__efc_p2p_wait_node_attach._entry.47, section ".printk_index", align 4
@efc_p2p_setup.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.1, ptr @.str.51, i8 1, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"efc_p2p_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"External loopback mode enabled\0A\00", [32 x i8] zeroinitializer }, align 32
@efc_p2p_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.1, i32 1558, ptr @.str.53, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to determine p2p winner\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@efc_p2p_setup._entry_ptr = internal global ptr @efc_p2p_setup._entry, section ".printk_index", align 4
@efc_fabric_initiate_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.1, i32 40, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%s] Failed freeing HW node, rc=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"efc_fabric_initiate_shutdown\00", [35 x i8] zeroinitializer }, align 32
@efc_fabric_initiate_shutdown._entry_ptr = internal global ptr @efc_fabric_initiate_shutdown._entry, section ".printk_index", align 4
@efc_process_gidpt_payload.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.1, ptr @.str.58, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"efc_process_gidpt_payload\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"residual is %u words\0A\00", [42 x i8] zeroinitializer }, align 32
@efc_process_gidpt_payload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.1, i32 675, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[%s] GIDPT request failed: rsn x%x rsn_expl x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@efc_process_gidpt_payload._entry_ptr = internal global ptr @efc_process_gidpt_payload._entry, section ".printk_index", align 4
@efc_process_gidpt_payload._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.57, ptr @.str.1, i32 690, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%s] efc_malloc failed\0A\00", [40 x i8] zeroinitializer }, align 32
@efc_process_gidpt_payload._entry_ptr.62 = internal global ptr @efc_process_gidpt_payload._entry.60, section ".printk_index", align 4
@efc_process_gidpt_payload._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.57, ptr @.str.1, i32 743, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s] GID_PT: skipping non-tgt port_id x%06x\0A\00", [51 x i8] zeroinitializer }, align 32
@efc_process_gidpt_payload._entry_ptr.65 = internal global ptr @efc_process_gidpt_payload._entry.63, section ".printk_index", align 4
@efc_process_gidpt_payload._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.57, ptr @.str.1, i32 765, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"efc_node_alloc() failed\0A\00", [39 x i8] zeroinitializer }, align 32
@efc_process_gidpt_payload._entry_ptr.68 = internal global ptr @efc_process_gidpt_payload._entry.66, section ".printk_index", align 4
@efc_process_rscn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.1, i32 1013, ptr @.str.53, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't find name server node\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"efc_process_rscn\00", [47 x i8] zeroinitializer }, align 32
@efc_process_rscn._entry_ptr = internal global ptr @efc_process_rscn._entry, section ".printk_index", align 4
@efc_rnode_is_winner.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.1, ptr @.str.72, i8 1, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efc_rnode_is_winner\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"r: %llx\0A\00", [23 x i8] zeroinitializer }, align 32
@efc_rnode_is_winner.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.1, ptr @.str.73, i8 1, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l: %llx\0A\00", [23 x i8] zeroinitializer }, align 32
@efc_rnode_is_winner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.71, ptr @.str.1, i32 1110, ptr @.str.53, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"WWPN of remote node [%08x %08x] matches local WWPN\0A\00", [44 x i8] zeroinitializer }, align 32
@efc_rnode_is_winner._entry_ptr = internal global ptr @efc_rnode_is_winner._entry, section ".printk_index", align 4
@str = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"invalid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.75 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_fabric_wait_attach_evt_shutdown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.76 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_p2p_wait_node_attach\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.77 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_p2p_wait_plogi_rsp_recvd_prli\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.78 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_p2p_wait_plogi_rsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.79 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_p2p_rnode_init\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.80 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_p2p_wait_domain_attach\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.81 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_ns_idle\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.82 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_ns_gidpt_delay\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.83 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_ns_gidpt_wait_rsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.84 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_ns_rffid_wait_rsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.85 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_ns_rftid_wait_rsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.86 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_ns_wait_node_attach\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.87 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_ns_plogi_wait_rsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.88 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_ns_init\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.89 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_fabctl_ready\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.90 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_fabctl_wait_ls_acc_cmpl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.91 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_fabctl_wait_scr_rsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.92 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_fabric_idle\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.93 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_fabric_wait_domain_attach\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.94 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_fabric_flogi_wait_rsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.95 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_fabric_init\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.96 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_fabric_fdisc_wait_rsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.97 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_vport_fabric_init\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.98 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_p2p_wait_flogi_acc_cmpl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.99 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 13]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.101 = internal global [8 x i64] [i64 6, i64 32, i64 3, i64 13, i64 33, i64 35, i64 37, i64 44]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 13]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.104 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 13, i64 22]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.106 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 13]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 13]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.110 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 13, i64 33, i64 35, i64 37]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 13]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.114 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 13]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 13, i64 33]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.118 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 3, i64 13, i64 38, i64 39, i64 60]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.120 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 13, i64 33, i64 60]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.122 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 3, i64 13, i64 38, i64 39]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.124 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 13, i64 33, i64 60]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.126 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 13, i64 33, i64 35, i64 60]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.128 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 13, i64 60]
@__sancov_gen_cov_switch_values.129 = internal global [6 x i64] [i64 4, i64 32, i64 16776192, i64 16777212, i64 16777213, i64 16777214]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.131 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 3, i64 13, i64 60, i64 64]
@__sancov_gen_cov_switch_values.132 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 13, i64 38]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.134 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 13, i64 33]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.136 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 13, i64 60]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.138 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 13, i64 34]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.140 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 13, i64 47]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.142 = internal global [8 x i64] [i64 6, i64 32, i64 3, i64 13, i64 33, i64 35, i64 52, i64 55]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.144 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 3, i64 13, i64 34, i64 36, i64 47]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.146 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 3, i64 13, i64 38, i64 39, i64 55]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.148 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 3, i64 13, i64 33, i64 35, i64 37]
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 81, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 85, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 172, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 189, i32 5 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 222, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 294, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 496, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 502, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 543, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 818, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 827, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 857, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 921, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 937, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 953, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1156, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1168, i32 5 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1265, i32 5 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1269, i32 5 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1293, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1346, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1506, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1513, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1551, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1557, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 39, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 670, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 673, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 690, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 741, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 765, i32 5 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1013, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1102, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1104, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.309 = private constant [40 x i8] c"../drivers/scsi/elx/libefc/efc_fabric.c\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1107, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [7 x i8] c"str.75\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [7 x i8] c"str.76\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [7 x i8] c"str.77\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [7 x i8] c"str.78\00", align 1
@___asan_gen_.316 = private unnamed_addr constant [7 x i8] c"str.79\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [7 x i8] c"str.80\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [7 x i8] c"str.81\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [7 x i8] c"str.82\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [7 x i8] c"str.83\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [7 x i8] c"str.84\00", align 1
@___asan_gen_.322 = private unnamed_addr constant [7 x i8] c"str.85\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [7 x i8] c"str.86\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [7 x i8] c"str.87\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [7 x i8] c"str.88\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [7 x i8] c"str.89\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [7 x i8] c"str.90\00", align 1
@___asan_gen_.328 = private unnamed_addr constant [7 x i8] c"str.91\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [7 x i8] c"str.92\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [7 x i8] c"str.93\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [7 x i8] c"str.94\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [7 x i8] c"str.95\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [7 x i8] c"str.96\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [7 x i8] c"str.97\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [7 x i8] c"str.98\00", align 1
@llvm.compiler.used = appending global [129 x ptr] [ptr @__efc_fabric_fdisc_wait_rsp._entry, ptr @__efc_fabric_fdisc_wait_rsp._entry_ptr, ptr @__efc_fabric_flogi_wait_rsp._entry, ptr @__efc_fabric_flogi_wait_rsp._entry.10, ptr @__efc_fabric_flogi_wait_rsp._entry.7, ptr @__efc_fabric_flogi_wait_rsp._entry_ptr, ptr @__efc_fabric_flogi_wait_rsp._entry_ptr.12, ptr @__efc_fabric_flogi_wait_rsp._entry_ptr.9, ptr @__efc_fabric_wait_attach_evt_shutdown._entry, ptr @__efc_fabric_wait_attach_evt_shutdown._entry.20, ptr @__efc_fabric_wait_attach_evt_shutdown._entry.22, ptr @__efc_fabric_wait_attach_evt_shutdown._entry_ptr, ptr @__efc_fabric_wait_attach_evt_shutdown._entry_ptr.21, ptr @__efc_fabric_wait_attach_evt_shutdown._entry_ptr.23, ptr @__efc_ns_gidpt_wait_rsp._entry, ptr @__efc_ns_gidpt_wait_rsp._entry.25, ptr @__efc_ns_gidpt_wait_rsp._entry_ptr, ptr @__efc_ns_gidpt_wait_rsp._entry_ptr.27, ptr @__efc_ns_idle._entry, ptr @__efc_ns_idle._entry_ptr, ptr @__efc_ns_wait_node_attach._entry, ptr @__efc_ns_wait_node_attach._entry.16, ptr @__efc_ns_wait_node_attach._entry_ptr, ptr @__efc_ns_wait_node_attach._entry_ptr.18, ptr @__efc_p2p_wait_domain_attach._entry, ptr @__efc_p2p_wait_domain_attach._entry.33, ptr @__efc_p2p_wait_domain_attach._entry_ptr, ptr @__efc_p2p_wait_domain_attach._entry_ptr.35, ptr @__efc_p2p_wait_flogi_acc_cmpl._entry, ptr @__efc_p2p_wait_flogi_acc_cmpl._entry.37, ptr @__efc_p2p_wait_flogi_acc_cmpl._entry.40, ptr @__efc_p2p_wait_flogi_acc_cmpl._entry_ptr, ptr @__efc_p2p_wait_flogi_acc_cmpl._entry_ptr.39, ptr @__efc_p2p_wait_flogi_acc_cmpl._entry_ptr.42, ptr @__efc_p2p_wait_node_attach._entry, ptr @__efc_p2p_wait_node_attach._entry.44, ptr @__efc_p2p_wait_node_attach._entry.47, ptr @__efc_p2p_wait_node_attach._entry_ptr, ptr @__efc_p2p_wait_node_attach._entry_ptr.46, ptr @__efc_p2p_wait_node_attach._entry_ptr.49, ptr @__efc_p2p_wait_plogi_rsp._entry, ptr @__efc_p2p_wait_plogi_rsp._entry_ptr, ptr @efc_fabric_initiate_shutdown._entry, ptr @efc_fabric_initiate_shutdown._entry_ptr, ptr @efc_p2p_setup._entry, ptr @efc_p2p_setup._entry_ptr, ptr @efc_process_gidpt_payload._entry, ptr @efc_process_gidpt_payload._entry.60, ptr @efc_process_gidpt_payload._entry.63, ptr @efc_process_gidpt_payload._entry.66, ptr @efc_process_gidpt_payload._entry_ptr, ptr @efc_process_gidpt_payload._entry_ptr.62, ptr @efc_process_gidpt_payload._entry_ptr.65, ptr @efc_process_gidpt_payload._entry_ptr.68, ptr @efc_process_rscn._entry, ptr @efc_process_rscn._entry_ptr, ptr @efc_rnode_is_winner._entry, ptr @efc_rnode_is_winner._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @str, ptr @str.75, ptr @str.76, ptr @str.77, ptr @str.78, ptr @str.79, ptr @str.80, ptr @str.81, ptr @str.82, ptr @str.83, ptr @str.84, ptr @str.85, ptr @str.86, ptr @str.87, ptr @str.88, ptr @str.89, ptr @str.90, ptr @str.91, ptr @str.92, ptr @str.93, ptr @str.94, ptr @str.95, ptr @str.96, ptr @str.97, ptr @str.98], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_p2p_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_fabric_initiate_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_process_gidpt_payload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_process_gidpt_payload._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_process_gidpt_payload._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_process_gidpt_payload._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_process_rscn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_rnode_is_winner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.75 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.76 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.77 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.78 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.79 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.80 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.81 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.82 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.83 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.84 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.85 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.86 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.87 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.88 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.89 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.90 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.91 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.92 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.93 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.94 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.95 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.96 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.97 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.98 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_fabric_init(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %5 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.95, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_fabric_init.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_fabric_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call5 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_fabric_init.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_fabric_init, ptr noundef %call5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %14 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %evt, label %sw.default.i [
    i32 1, label %do.body6
    i32 0, label %do.end.sw.bb24_crit_edge
    i32 13, label %do.end.sw.epilog_crit_edge
    i32 3, label %sw.bb.i
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.sw.bb24_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

do.body6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_fabric_init.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_fabric_init, %if.then18)) #8
          to label %sw.bb24 [label %if.then18], !srcloc !256

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %pci19 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %pci19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci19, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_fabric_init.__UNIQUE_ID_ddebug314, ptr noundef %dev20, ptr noundef nonnull @.str.3) #8
  br label %sw.bb24

sw.bb24:                                          ; preds = %if.then18, %do.body6, %do.end.sw.bb24_crit_edge
  %call25 = tail call i32 @efc_send_flogi(ptr noundef %1) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_fabric_flogi_wait_rsp, ptr noundef null) #8
  br label %sw.epilog

sw.bb.i:                                          ; preds = %do.end
  %17 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 24
  %19 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %shutdown_reason.i, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %18, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 6
  %22 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 11
  %23 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %21, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %18, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %18) #8
  br label %sw.epilog

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_fabric_init, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %sw.bb24, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efc_sm_event_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_flogi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_transition(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_fabric_flogi_wait_rsp(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  %index.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.94, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_fabric_flogi_wait_rsp.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_fabric_flogi_wait_rsp, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_fabric_flogi_wait_rsp.__UNIQUE_ID_ddebug315, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_fabric_flogi_wait_rsp, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %evt, label %sw.default.i [
    i32 33, label %sw.bb
    i32 44, label %do.end.sw.bb117_crit_edge
    i32 37, label %do.end.sw.bb117_crit_edge231
    i32 35, label %do.end.sw.bb117_crit_edge232
    i32 13, label %do.end.cleanup172_crit_edge
    i32 3, label %sw.bb.i
  ]

do.end.cleanup172_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup172

do.end.sw.bb117_crit_edge232:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb117

do.end.sw.bb117_crit_edge231:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb117

do.end.sw.bb117_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb117

sw.bb:                                            ; preds = %do.end
  %call4 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef 33, ptr noundef %arg, i8 noundef zeroext 4, ptr noundef nonnull @__efc_fabric_common, ptr noundef nonnull @__func__.__efc_fabric_flogi_wait_rsp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %sw.bb.cleanup172_crit_edge

sw.bb.cleanup172_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup172

if.end7:                                          ; preds = %sw.bb
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %13 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %els_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %do.end26, label %if.end7.if.end32_crit_edge, !prof !258

if.end7.if.end32_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end26:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 147, i32 noundef 9, ptr noundef null) #8
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %if.end7.if.end32_crit_edge
  %15 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %els_req_cnt, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %els_req_cnt, align 4
  %nport = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nport, align 4
  %domain = getelementptr inbounds %struct.efc_nport, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %domain, align 8
  %flogi_service_params = getelementptr inbounds %struct.efc_domain, ptr %20, i32 0, i32 24
  %els_rsp = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 4
  %21 = ptrtoint ptr %els_rsp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %els_rsp, align 4
  %23 = call ptr @memcpy(ptr %flogi_service_params, ptr %22, i32 116)
  %24 = load ptr, ptr %els_rsp, align 4
  %sp_features.i = getelementptr inbounds %struct.fc_els_flogi, ptr %24, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %sp_features.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %sp_features.i, align 1
  %27 = and i16 %26, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i = icmp eq i16 %27, 0
  %28 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nport, align 4
  %topology1.i228 = getelementptr inbounds %struct.efc_nport, ptr %29, i32 0, i32 29
  br i1 %tobool.not.i, label %if.end81, label %if.then45

if.then45:                                        ; preds = %if.end32
  %30 = ptrtoint ptr %topology1.i228 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %topology1.i228, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #8
  %31 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %index.i, align 4
  %32 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nport, align 4
  %lookup.i = getelementptr inbounds %struct.efc_nport, ptr %33, i32 0, i32 23
  %call.i224 = call ptr @xa_find(ptr noundef %lookup.i, ptr noundef nonnull %index.i, i32 noundef -1, i32 noundef 8) #8
  %tobool.not10.i = icmp eq ptr %call.i224, null
  br i1 %tobool.not10.i, label %if.then45.efc_fabric_notify_topology.exit_crit_edge, label %if.then45.for.body.i_crit_edge

if.then45.for.body.i_crit_edge:                   ; preds = %if.then45
  br label %for.body.i

if.then45.efc_fabric_notify_topology.exit_crit_edge: ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_notify_topology.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then45.for.body.i_crit_edge
  %tmp_node.011.i = phi ptr [ %call4.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i224, %if.then45.for.body.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %tmp_node.011.i, %1
  br i1 %cmp.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i225

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i225:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nport, align 4
  %topology.i = getelementptr inbounds %struct.efc_nport, ptr %35, i32 0, i32 29
  call void @efc_node_post_event(ptr noundef nonnull %tmp_node.011.i, i32 noundef 26, ptr noundef %topology.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i225, %for.body.i.for.inc.i_crit_edge
  %36 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nport, align 4
  %lookup3.i = getelementptr inbounds %struct.efc_nport, ptr %37, i32 0, i32 23
  %call4.i = call ptr @xa_find_after(ptr noundef %lookup3.i, ptr noundef nonnull %index.i, i32 noundef -1, i32 noundef 8) #8
  %tobool.not.i226 = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i226, label %for.inc.i.efc_fabric_notify_topology.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.efc_fabric_notify_topology.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_notify_topology.exit

efc_fabric_notify_topology.exit:                  ; preds = %for.inc.i.efc_fabric_notify_topology.exit_crit_edge, %if.then45.efc_fabric_notify_topology.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #8
  %38 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nport, align 4
  %domain48 = getelementptr inbounds %struct.efc_nport, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %domain48 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %domain48, align 8
  %attached = getelementptr inbounds %struct.efc_domain, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %attached, align 4, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool49.not = icmp eq i8 %43, 0
  br i1 %tobool49.not, label %efc_fabric_notify_topology.exit.if.end71_crit_edge, label %do.end65, !prof !259

efc_fabric_notify_topology.exit.if.end71_crit_edge: ; preds = %efc_fabric_notify_topology.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

do.end65:                                         ; preds = %efc_fabric_notify_topology.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 160, i32 noundef 9, ptr noundef null) #8
  br label %if.end71

if.end71:                                         ; preds = %do.end65, %efc_fabric_notify_topology.exit.if.end71_crit_edge
  %44 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nport, align 4
  %domain80 = getelementptr inbounds %struct.efc_nport, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %domain80 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %domain80, align 8
  %ext_status = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 1
  %48 = ptrtoint ptr %ext_status to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ext_status, align 4
  call void @efc_domain_attach(ptr noundef %47, i32 noundef %49) #8
  call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_fabric_wait_domain_attach, ptr noundef null) #8
  br label %cleanup172

if.end81:                                         ; preds = %if.end32
  %50 = ptrtoint ptr %topology1.i228 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %topology1.i228, align 8
  %51 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %nport, align 4
  %call83 = tail call i32 @efc_p2p_setup(ptr noundef %52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end94, label %do.end88

do.end88:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 8
  %pci90 = getelementptr inbounds %struct.efc, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %pci90 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pci90, align 4
  %dev91 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %display_name92 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev91, ptr noundef nonnull @.str.4, ptr noundef %display_name92) #11
  %shutdown_reason = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %57 = ptrtoint ptr %shutdown_reason to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %shutdown_reason, align 4
  tail call fastcc void @efc_fabric_initiate_shutdown(ptr noundef %1)
  br label %cleanup172

if.end94:                                         ; preds = %if.end81
  %58 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %nport, align 4
  %p2p_winner = getelementptr inbounds %struct.efc_nport, ptr %59, i32 0, i32 10
  %60 = ptrtoint ptr %p2p_winner to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %p2p_winner, align 4, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool96.not = icmp eq i8 %61, 0
  br i1 %tobool96.not, label %if.else, label %if.then97

if.then97:                                        ; preds = %if.end94
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_p2p_wait_domain_attach, ptr noundef null) #8
  %62 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %nport, align 4
  %domain99 = getelementptr inbounds %struct.efc_nport, ptr %63, i32 0, i32 11
  %64 = ptrtoint ptr %domain99 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %domain99, align 8
  %attached100 = getelementptr inbounds %struct.efc_domain, ptr %65, i32 0, i32 14
  %66 = ptrtoint ptr %attached100 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %attached100, align 4, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool101.not = icmp eq i8 %67, 0
  br i1 %tobool101.not, label %if.then97.cleanup172_crit_edge, label %land.lhs.true

if.then97.cleanup172_crit_edge:                   ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup172

land.lhs.true:                                    ; preds = %if.then97
  %domain_notify_pend = getelementptr inbounds %struct.efc_domain, ptr %65, i32 0, i32 21
  %68 = ptrtoint ptr %domain_notify_pend to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %domain_notify_pend, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool104.not = icmp eq i8 %69, 0
  br i1 %tobool104.not, label %do.end108, label %land.lhs.true.cleanup172_crit_edge

land.lhs.true.cleanup172_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup172

do.end108:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  %pci110 = getelementptr inbounds %struct.efc, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %pci110 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pci110, align 4
  %dev111 = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %display_name112 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev111, ptr noundef nonnull @.str.8, ptr noundef %display_name112) #11
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 13, ptr noundef null) #8
  br label %cleanup172

if.else:                                          ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %shutdown_reason115 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %74 = ptrtoint ptr %shutdown_reason115 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %shutdown_reason115, align 4
  tail call fastcc void @efc_fabric_initiate_shutdown(ptr noundef %1)
  br label %cleanup172

sw.bb117:                                         ; preds = %do.end.sw.bb117_crit_edge, %do.end.sw.bb117_crit_edge231, %do.end.sw.bb117_crit_edge232
  %nport119 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %75 = ptrtoint ptr %nport119 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %nport119, align 4
  %call120 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg, i8 noundef zeroext 4, ptr noundef nonnull @__efc_fabric_common, ptr noundef nonnull @__func__.__efc_fabric_flogi_wait_rsp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %do.end126, label %sw.bb117.cleanup172_crit_edge

sw.bb117.cleanup172_crit_edge:                    ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup172

do.end126:                                        ; preds = %sw.bb117
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 8
  %pci128 = getelementptr inbounds %struct.efc, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %pci128 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pci128, align 4
  %dev129 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  %display_name130 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call132 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  %display_name133 = getelementptr inbounds %struct.efc_nport, ptr %76, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev129, ptr noundef nonnull @.str.11, ptr noundef %display_name130, ptr noundef %call132, ptr noundef %display_name133) #11
  %els_req_cnt136 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %81 = ptrtoint ptr %els_req_cnt136 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %els_req_cnt136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool137.not = icmp eq i32 %82, 0
  br i1 %tobool137.not, label %do.end155, label %do.end126.if.end161_crit_edge, !prof !258

do.end126.if.end161_crit_edge:                    ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

do.end155:                                        ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 225, i32 noundef 9, ptr noundef null) #8
  br label %if.end161

if.end161:                                        ; preds = %do.end155, %do.end126.if.end161_crit_edge
  %83 = ptrtoint ptr %els_req_cnt136 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %els_req_cnt136, align 4
  %dec170 = add i32 %84, -1
  store i32 %dec170, ptr %els_req_cnt136, align 4
  %sm = getelementptr inbounds %struct.efc_nport, ptr %76, i32 0, i32 22
  %call171 = tail call i32 @efc_sm_post_event(ptr noundef %sm, i32 noundef 3, ptr noundef null) #8
  br label %cleanup172

sw.bb.i:                                          ; preds = %do.end
  %85 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %86, i32 0, i32 24
  %87 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %shutdown_reason.i, align 4
  %88 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %86, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %86, i32 0, i32 6
  %90 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %86, i32 0, i32 11
  %91 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i.i = icmp eq i8 %92, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %86, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %89, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %86, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %96, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %86, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %86) #8
  br label %cleanup172

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_fabric_flogi_wait_rsp, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %cleanup172

cleanup172:                                       ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %if.end161, %sw.bb117.cleanup172_crit_edge, %if.else, %do.end108, %land.lhs.true.cleanup172_crit_edge, %if.then97.cleanup172_crit_edge, %do.end88, %if.end71, %sw.bb.cleanup172_crit_edge, %do.end.cleanup172_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__efc_fabric_common(ptr noundef %funcname, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %evt, label %sw.default [
    i32 13, label %entry.sw.epilog_crit_edge
    i32 3, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %app, align 4
  %shutdown_reason = getelementptr inbounds %struct.efc_node, ptr %2, i32 0, i32 24
  %3 = ptrtoint ptr %shutdown_reason to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %shutdown_reason, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 8
  %els_io_enabled.i = getelementptr inbounds %struct.efc_node, ptr %2, i32 0, i32 6
  %6 = ptrtoint ptr %els_io_enabled.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %els_io_enabled.i, align 1
  %attached.i = getelementptr inbounds %struct.efc_node, ptr %2, i32 0, i32 11
  %7 = ptrtoint ptr %attached.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %attached.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %sw.bb.efc_fabric_initiate_shutdown.exit_crit_edge, label %if.then.i

sw.bb.efc_fabric_initiate_shutdown.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit

if.then.i:                                        ; preds = %sw.bb
  %rnode.i = getelementptr inbounds %struct.efc_node, ptr %2, i32 0, i32 17
  %call.i = tail call i32 @efc_cmd_node_detach(ptr noundef %5, ptr noundef %rnode.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i.efc_fabric_initiate_shutdown.exit_crit_edge

if.then.i.efc_fabric_initiate_shutdown.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 8
  %pci.i = getelementptr inbounds %struct.efc, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %display_name.i = getelementptr inbounds %struct.efc_node, ptr %2, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i, i32 noundef %call.i) #11
  br label %efc_fabric_initiate_shutdown.exit

efc_fabric_initiate_shutdown.exit:                ; preds = %do.end.i, %if.then.i.efc_fabric_initiate_shutdown.exit_crit_edge, %sw.bb.efc_fabric_initiate_shutdown.exit_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %2) #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef %funcname, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %efc_fabric_initiate_shutdown.exit, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @efc_fabric_set_topology(ptr nocapture noundef readonly %node, i32 noundef %topology) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nport = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nport, align 4
  %topology1 = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %topology1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %topology, ptr %topology1, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_fabric_notify_topology(ptr noundef readonly %node) local_unnamed_addr #0 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #8
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %index, align 4
  %nport = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %1 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nport, align 4
  %lookup = getelementptr inbounds %struct.efc_nport, ptr %2, i32 0, i32 23
  %call = call ptr @xa_find(ptr noundef %lookup, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #8
  %tobool.not10 = icmp eq ptr %call, null
  br i1 %tobool.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %tmp_node.011 = phi ptr [ %call4, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %cmp.not = icmp eq ptr %tmp_node.011, %node
  br i1 %cmp.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nport, align 4
  %topology = getelementptr inbounds %struct.efc_nport, ptr %4, i32 0, i32 29
  call void @efc_node_post_event(ptr noundef nonnull %tmp_node.011, i32 noundef 26, ptr noundef %topology) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nport, align 4
  %lookup3 = getelementptr inbounds %struct.efc_nport, ptr %6, i32 0, i32 23
  %call4 = call ptr @xa_find_after(ptr noundef %lookup3, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #8
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_post_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_node_check_els_req(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_domain_attach(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_fabric_wait_domain_attach(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.93, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_fabric_wait_domain_attach.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_fabric_wait_domain_attach, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_fabric_wait_domain_attach.__UNIQUE_ID_ddebug318, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_fabric_wait_domain_attach, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %evt, label %sw.default.i [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 13, label %do.end.sw.bb5_crit_edge
    i32 22, label %do.end.sw.bb5_crit_edge51
    i32 3, label %sw.bb.i
  ]

do.end.sw.bb5_crit_edge51:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

do.end.sw.bb5_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  br label %cleanup19

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %hold_frames.i34 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %hold_frames.i34 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hold_frames.i34, align 8
  br label %cleanup19

sw.bb5:                                           ; preds = %do.end.sw.bb5_crit_edge, %do.end.sw.bb5_crit_edge51
  %nport = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nport, align 4
  %call.i35 = tail call ptr @efc_node_find(ptr noundef %16, i32 noundef 16777212) #8
  %tobool.not.i = icmp eq ptr %call.i35, null
  br i1 %tobool.not.i, label %if.then.i36, label %sw.bb5.if.end4.i_crit_edge

sw.bb5.if.end4.i_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then.i36:                                      ; preds = %sw.bb5
  %call1.i = tail call ptr @efc_node_alloc(ptr noundef %16, i32 noundef 16777212, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.then.i36.cleanup19_crit_edge, label %if.then.i36.if.end4.i_crit_edge

if.then.i36.if.end4.i_crit_edge:                  ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then.i36.cleanup19_crit_edge:                  ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

if.end4.i:                                        ; preds = %if.then.i36.if.end4.i_crit_edge, %sw.bb5.if.end4.i_crit_edge
  %ns.0.i = phi ptr [ %call.i35, %sw.bb5.if.end4.i_crit_edge ], [ %call1.i, %if.then.i36.if.end4.i_crit_edge ]
  %17 = ptrtoint ptr %ns.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ns.0.i, align 8
  %nodedb_mask.i = getelementptr inbounds %struct.efc, ptr %18, i32 0, i32 26
  %19 = ptrtoint ptr %nodedb_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nodedb_mask.i, align 4
  %and.i = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @efc_node_pause(ptr noundef nonnull %ns.0.i, ptr noundef nonnull @__efc_ns_init) #8
  br label %if.end9

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @efc_node_transition(ptr noundef nonnull %ns.0.i, ptr noundef nonnull @__efc_ns_init, ptr noundef null) #8
  br label %if.end9

if.end9:                                          ; preds = %if.else.i, %if.then6.i
  %21 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nport, align 4
  %enable_rscn = getelementptr inbounds %struct.efc_nport, ptr %22, i32 0, i32 26
  %23 = ptrtoint ptr %enable_rscn to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %enable_rscn, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool11.not = icmp eq i8 %24, 0
  br i1 %tobool11.not, label %if.end9.if.end18_crit_edge, label %if.then12

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then12:                                        ; preds = %if.end9
  %call.i38 = tail call ptr @efc_node_find(ptr noundef %22, i32 noundef 16777213) #8
  %tobool.not.i39 = icmp eq ptr %call.i38, null
  br i1 %tobool.not.i39, label %if.then.i42, label %if.then12.efc_start_fabctl_node.exit.thread_crit_edge

if.then12.efc_start_fabctl_node.exit.thread_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_start_fabctl_node.exit.thread

if.then.i42:                                      ; preds = %if.then12
  %call1.i40 = tail call ptr @efc_node_alloc(ptr noundef %22, i32 noundef 16777213, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %tobool2.not.i41 = icmp eq ptr %call1.i40, null
  br i1 %tobool2.not.i41, label %if.then.i42.cleanup19_crit_edge, label %if.then.i42.efc_start_fabctl_node.exit.thread_crit_edge

if.then.i42.efc_start_fabctl_node.exit.thread_crit_edge: ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_start_fabctl_node.exit.thread

if.then.i42.cleanup19_crit_edge:                  ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

efc_start_fabctl_node.exit.thread:                ; preds = %if.then.i42.efc_start_fabctl_node.exit.thread_crit_edge, %if.then12.efc_start_fabctl_node.exit.thread_crit_edge
  %fabctl.0.i = phi ptr [ %call.i38, %if.then12.efc_start_fabctl_node.exit.thread_crit_edge ], [ %call1.i40, %if.then.i42.efc_start_fabctl_node.exit.thread_crit_edge ]
  tail call void @efc_node_transition(ptr noundef nonnull %fabctl.0.i, ptr noundef nonnull @__efc_fabctl_init, ptr noundef null) #8
  br label %if.end18

if.end18:                                         ; preds = %efc_start_fabctl_node.exit.thread, %if.end9.if.end18_crit_edge
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_fabric_idle, ptr noundef null) #8
  br label %cleanup19

sw.bb.i:                                          ; preds = %do.end
  %25 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %26, i32 0, i32 24
  %27 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %shutdown_reason.i, align 4
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %26, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %26, i32 0, i32 6
  %30 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %26, i32 0, i32 11
  %31 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %26, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %29, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %26, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %26, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %26) #8
  br label %cleanup19

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_fabric_wait_domain_attach, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %cleanup19

cleanup19:                                        ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %if.end18, %if.then.i42.cleanup19_crit_edge, %if.then.i36.cleanup19_crit_edge, %sw.bb4, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_p2p_setup(ptr nocapture noundef %nport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %efc1 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 3
  %0 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efc1, align 8
  %wwpn.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 12
  %2 = ptrtoint ptr %wwpn.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wwpn.i, align 8
  %domain.i = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 11
  %4 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain.i, align 8
  %fl_wwnn.i.i = getelementptr inbounds %struct.efc_domain, ptr %5, i32 0, i32 24, i32 28
  %6 = ptrtoint ptr %fl_wwnn.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %fl_wwnn.i.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_rnode_is_winner.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_p2p_setup, %if.then.i)) #8
          to label %do.body4.i [label %if.then.i], !srcloc !256

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %efc1, align 8
  %pci.i = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %fl_wwpn.i = getelementptr inbounds %struct.efc_domain, ptr %5, i32 0, i32 24, i32 20
  %12 = ptrtoint ptr %fl_wwpn.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %fl_wwpn.i, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_rnode_is_winner.__UNIQUE_ID_ddebug335, ptr noundef %dev.i, ptr noundef nonnull @.str.72, i64 noundef %13) #8
  br label %do.body4.i

do.body4.i:                                       ; preds = %if.then.i, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_rnode_is_winner.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_p2p_setup, %if.then16.i)) #8
          to label %do.end22.i [label %if.then16.i], !srcloc !256

if.then16.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %efc1, align 8
  %pci18.i = getelementptr inbounds %struct.efc, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %pci18.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci18.i, align 4
  %dev19.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_rnode_is_winner.__UNIQUE_ID_ddebug336, ptr noundef %dev19.i, ptr noundef nonnull @.str.73, i64 noundef %3) #8
  br label %do.end22.i

do.end22.i:                                       ; preds = %if.then16.i, %do.body4.i
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %3)
  %cmp.i = icmp eq i64 %7, %3
  br i1 %cmp.i, label %efc_rnode_is_winner.exit.thread, label %efc_rnode_is_winner.exit

efc_rnode_is_winner.exit.thread:                  ; preds = %do.end22.i
  %18 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %efc1, align 8
  %pci28.i = getelementptr inbounds %struct.efc, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %pci28.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci28.i, align 4
  %dev29.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %shr.i = lshr i64 %3, 32
  %conv.i = trunc i64 %shr.i to i32
  %conv30.i = trunc i64 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev29.i, ptr noundef nonnull @.str.74, i32 noundef %conv.i, i32 noundef %conv30.i) #11
  %22 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %efc1, align 8
  %external_loopback = getelementptr inbounds %struct.efc, ptr %23, i32 0, i32 25
  %24 = ptrtoint ptr %external_loopback to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %external_loopback, align 8, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %do.end21, label %do.body

efc_rnode_is_winner.exit:                         ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %3)
  %cmp32.i.not = icmp ugt i64 %7, %3
  %p2p_remote_port_id = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 31
  br i1 %cmp32.i.not, label %if.then, label %if.then3

if.then:                                          ; preds = %efc_rnode_is_winner.exit
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %p2p_remote_port_id to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %p2p_remote_port_id, align 4
  %p2p_port_id = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 28
  %27 = ptrtoint ptr %p2p_port_id to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %p2p_port_id, align 4
  %p2p_winner = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 10
  %28 = ptrtoint ptr %p2p_winner to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %p2p_winner, align 4
  br label %cleanup

if.then3:                                         ; preds = %efc_rnode_is_winner.exit
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %p2p_remote_port_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %p2p_remote_port_id, align 4
  %p2p_port_id5 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 28
  %30 = ptrtoint ptr %p2p_port_id5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %p2p_port_id5, align 4
  %p2p_winner6 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 10
  %31 = ptrtoint ptr %p2p_winner6 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %p2p_winner6, align 4
  br label %cleanup

do.body:                                          ; preds = %efc_rnode_is_winner.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_p2p_setup.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_p2p_setup, %if.then14)) #8
          to label %do.end [label %if.then14], !srcloc !256

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_p2p_setup.__UNIQUE_ID_ddebug343, ptr noundef %dev, ptr noundef nonnull @.str.51) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %p2p_remote_port_id15 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 31
  %34 = ptrtoint ptr %p2p_remote_port_id15 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %p2p_remote_port_id15, align 4
  %p2p_port_id16 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 28
  %35 = ptrtoint ptr %p2p_port_id16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %p2p_port_id16, align 4
  %p2p_winner17 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 10
  %36 = ptrtoint ptr %p2p_winner17 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %p2p_winner17, align 4
  br label %cleanup

do.end21:                                         ; preds = %efc_rnode_is_winner.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  %pci22 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %pci22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci22, align 4
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev23, ptr noundef nonnull @.str.52) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %do.end, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %do.end21 ], [ 0, %if.then3 ], [ 0, %do.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efc_fabric_initiate_shutdown(ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %els_io_enabled = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 6
  %2 = ptrtoint ptr %els_io_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %els_io_enabled, align 1
  %attached = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 11
  %3 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %attached, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %rnode = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 17
  %call = tail call i32 @efc_cmd_node_detach(ptr noundef %1, ptr noundef %rnode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.55, ptr noundef %display_name, i32 noundef %call) #11
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %node) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_p2p_wait_domain_attach(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  %index.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %5 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.80, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_p2p_wait_domain_attach.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_p2p_wait_domain_attach, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call5 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_p2p_wait_domain_attach.__UNIQUE_ID_ddebug337, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_p2p_wait_domain_attach, ptr noundef %call5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %14 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %evt, label %sw.default.i [
    i32 0, label %sw.bb
    i32 2, label %sw.bb6
    i32 13, label %sw.bb7
    i32 3, label %sw.bb.i
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %hold_frames.i, align 8
  br label %cleanup72

sw.bb6:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %hold_frames.i100 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %hold_frames.i100 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %hold_frames.i100, align 8
  br label %cleanup72

sw.bb7:                                           ; preds = %do.end
  %nport8 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %nport8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nport8, align 4
  %p2p_winner = getelementptr inbounds %struct.efc_nport, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %p2p_winner to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %p2p_winner, align 4, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool10.not = icmp eq i8 %20, 0
  br i1 %tobool10.not, label %do.end28, label %sw.bb7.if.end34_crit_edge, !prof !258

sw.bb7.if.end34_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

do.end28:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1147, i32 noundef 9, ptr noundef null) #8
  br label %if.end34

if.end34:                                         ; preds = %do.end28, %sw.bb7.if.end34_crit_edge
  %21 = ptrtoint ptr %nport8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nport8, align 4
  %p2p_remote_port_id = getelementptr inbounds %struct.efc_nport, ptr %22, i32 0, i32 31
  %23 = ptrtoint ptr %p2p_remote_port_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %p2p_remote_port_id, align 4
  %call43 = tail call ptr @efc_node_find(ptr noundef %18, i32 noundef %24) #8
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.else, label %do.end48

do.end48:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %pci50 = getelementptr inbounds %struct.efc, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %pci50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci50, align 4
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %display_name52 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %fc_id = getelementptr inbounds %struct.efc_node, ptr %call43, i32 0, i32 17, i32 2
  %29 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fc_id, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev51, ptr noundef nonnull @.str.32, ptr noundef %display_name52, i32 noundef %30) #11
  br label %if.end65

if.else:                                          ; preds = %if.end34
  %p2p_remote_port_id55 = getelementptr inbounds %struct.efc_nport, ptr %18, i32 0, i32 31
  %31 = ptrtoint ptr %p2p_remote_port_id55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %p2p_remote_port_id55, align 4
  %call56 = tail call ptr @efc_node_alloc(ptr noundef %18, i32 noundef %32, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %do.end61, label %if.end64

do.end61:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %pci62 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %pci62 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci62, align 4
  %dev63 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63, ptr noundef nonnull @.str.34) #11
  br label %cleanup72

if.end64:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #8
  %35 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %index.i, align 4
  %36 = ptrtoint ptr %nport8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nport8, align 4
  %lookup.i = getelementptr inbounds %struct.efc_nport, ptr %37, i32 0, i32 23
  %call.i101 = call ptr @xa_find(ptr noundef %lookup.i, ptr noundef nonnull %index.i, i32 noundef -1, i32 noundef 8) #8
  %tobool.not10.i = icmp eq ptr %call.i101, null
  br i1 %tobool.not10.i, label %if.end64.efc_fabric_notify_topology.exit_crit_edge, label %if.end64.for.body.i_crit_edge

if.end64.for.body.i_crit_edge:                    ; preds = %if.end64
  br label %for.body.i

if.end64.efc_fabric_notify_topology.exit_crit_edge: ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_notify_topology.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end64.for.body.i_crit_edge
  %tmp_node.011.i = phi ptr [ %call4.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i101, %if.end64.for.body.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %tmp_node.011.i, %1
  br i1 %cmp.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i102

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i102:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %nport8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nport8, align 4
  %topology.i = getelementptr inbounds %struct.efc_nport, ptr %39, i32 0, i32 29
  call void @efc_node_post_event(ptr noundef nonnull %tmp_node.011.i, i32 noundef 26, ptr noundef %topology.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i102, %for.body.i.for.inc.i_crit_edge
  %40 = ptrtoint ptr %nport8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nport8, align 4
  %lookup3.i = getelementptr inbounds %struct.efc_nport, ptr %41, i32 0, i32 23
  %call4.i = call ptr @xa_find_after(ptr noundef %lookup3.i, ptr noundef nonnull %index.i, i32 noundef -1, i32 noundef 8) #8
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %for.inc.i.efc_fabric_notify_topology.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.efc_fabric_notify_topology.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_notify_topology.exit

efc_fabric_notify_topology.exit:                  ; preds = %for.inc.i.efc_fabric_notify_topology.exit_crit_edge, %if.end64.efc_fabric_notify_topology.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #8
  call void @efc_node_transition(ptr noundef nonnull %call56, ptr noundef nonnull @__efc_p2p_rnode_init, ptr noundef null) #8
  br label %if.end65

if.end65:                                         ; preds = %efc_fabric_notify_topology.exit, %do.end48
  %fc_id67 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 17, i32 2
  %42 = ptrtoint ptr %fc_id67 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fc_id67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp = icmp eq i32 %43, 0
  br i1 %cmp, label %if.then68, label %if.else69

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  call void @efc_node_init_device(ptr noundef %1, i1 noundef zeroext false) #8
  br label %cleanup72

if.else69:                                        ; preds = %if.end65
  %shutdown_reason = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %44 = ptrtoint ptr %shutdown_reason to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %shutdown_reason, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  %els_io_enabled.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 6
  %47 = ptrtoint ptr %els_io_enabled.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %els_io_enabled.i, align 1
  %attached.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %48 = ptrtoint ptr %attached.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %attached.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i103 = icmp eq i8 %49, 0
  br i1 %tobool.not.i103, label %if.else69.efc_fabric_initiate_shutdown.exit_crit_edge, label %if.then.i105

if.else69.efc_fabric_initiate_shutdown.exit_crit_edge: ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit

if.then.i105:                                     ; preds = %if.else69
  %rnode.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 17
  %call.i104 = call i32 @efc_cmd_node_detach(ptr noundef %46, ptr noundef %rnode.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %cmp.i = icmp slt i32 %call.i104, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i105.efc_fabric_initiate_shutdown.exit_crit_edge

if.then.i105.efc_fabric_initiate_shutdown.exit_crit_edge: ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit

do.end.i:                                         ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %pci.i = getelementptr inbounds %struct.efc, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %display_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i, i32 noundef %call.i104) #11
  br label %efc_fabric_initiate_shutdown.exit

efc_fabric_initiate_shutdown.exit:                ; preds = %do.end.i, %if.then.i105.efc_fabric_initiate_shutdown.exit_crit_edge, %if.else69.efc_fabric_initiate_shutdown.exit_crit_edge
  call void @efc_node_initiate_cleanup(ptr noundef %1) #8
  br label %cleanup72

sw.bb.i:                                          ; preds = %do.end
  %54 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %55, i32 0, i32 24
  %56 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %shutdown_reason.i, align 4
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %55, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %55, i32 0, i32 6
  %59 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %55, i32 0, i32 11
  %60 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %55, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %58, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %55, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %55, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %55) #8
  br label %cleanup72

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_p2p_wait_domain_attach, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %cleanup72

cleanup72:                                        ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %efc_fabric_initiate_shutdown.exit, %if.then68, %do.end61, %sw.bb6, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_sm_post_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_vport_fabric_init(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.97, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_vport_fabric_init.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_vport_fabric_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_vport_fabric_init.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_vport_fabric_init, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %evt, label %sw.default.i [
    i32 0, label %sw.bb
    i32 13, label %do.end.sw.epilog_crit_edge
    i32 3, label %sw.bb.i
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @efc_send_fdisc(ptr noundef %1) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_fabric_fdisc_wait_rsp, ptr noundef null) #8
  br label %sw.epilog

sw.bb.i:                                          ; preds = %do.end
  %13 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %shutdown_reason.i, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %14, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %14, i32 0, i32 6
  %18 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %14, i32 0, i32 11
  %19 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %14, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %17, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %14, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %14, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %14) #8
  br label %sw.epilog

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_vport_fabric_init, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %sw.bb, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_fdisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_fabric_fdisc_wait_rsp(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.96, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_fabric_fdisc_wait_rsp.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_fabric_fdisc_wait_rsp, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_fabric_fdisc_wait_rsp.__UNIQUE_ID_ddebug317, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_fabric_fdisc_wait_rsp, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %evt, label %sw.default.i [
    i32 33, label %sw.bb
    i32 37, label %do.end.sw.bb42_crit_edge
    i32 35, label %do.end.sw.bb42_crit_edge117
    i32 13, label %do.end.cleanup_crit_edge
    i32 3, label %sw.bb.i
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.sw.bb42_crit_edge117:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb42

do.end.sw.bb42_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb42

sw.bb:                                            ; preds = %do.end
  %call4 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef 33, ptr noundef %arg, i8 noundef zeroext 81, ptr noundef nonnull @__efc_fabric_common, ptr noundef nonnull @__func__.__efc_fabric_fdisc_wait_rsp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %13 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %els_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %do.end26, label %if.end7.if.end32_crit_edge, !prof !258

if.end7.if.end32_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end26:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 277, i32 noundef 9, ptr noundef null) #8
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %if.end7.if.end32_crit_edge
  %15 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %els_req_cnt, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %els_req_cnt, align 4
  %nport = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nport, align 4
  %ext_status = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 1
  %19 = ptrtoint ptr %ext_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ext_status, align 4
  %call41 = tail call i32 @efc_nport_attach(ptr noundef %18, i32 noundef %20) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_fabric_wait_domain_attach, ptr noundef null) #8
  br label %cleanup

sw.bb42:                                          ; preds = %do.end.sw.bb42_crit_edge, %do.end.sw.bb42_crit_edge117
  %call43 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg, i8 noundef zeroext 81, ptr noundef nonnull @__efc_fabric_common, ptr noundef nonnull @__func__.__efc_fabric_fdisc_wait_rsp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %sw.bb42.cleanup_crit_edge

sw.bb42.cleanup_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46:                                         ; preds = %sw.bb42
  %els_req_cnt48 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %21 = ptrtoint ptr %els_req_cnt48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %els_req_cnt48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool49.not = icmp eq i32 %22, 0
  br i1 %tobool49.not, label %do.end67, label %if.end46.if.end73_crit_edge, !prof !258

if.end46.if.end73_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

do.end67:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 292, i32 noundef 9, ptr noundef null) #8
  br label %if.end73

if.end73:                                         ; preds = %do.end67, %if.end46.if.end73_crit_edge
  %23 = ptrtoint ptr %els_req_cnt48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %els_req_cnt48, align 4
  %dec82 = add i32 %24, -1
  store i32 %dec82, ptr %els_req_cnt48, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %pci87 = getelementptr inbounds %struct.efc, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %pci87 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci87, align 4
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev88, ptr noundef nonnull @.str.13) #11
  %nport89 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %nport89 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nport89, align 4
  %sm = getelementptr inbounds %struct.efc_nport, ptr %30, i32 0, i32 22
  %call90 = tail call i32 @efc_sm_post_event(ptr noundef %sm, i32 noundef 3, ptr noundef null) #8
  br label %cleanup

sw.bb.i:                                          ; preds = %do.end
  %31 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %32, i32 0, i32 24
  %33 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %shutdown_reason.i, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %32, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %32, i32 0, i32 6
  %36 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %32, i32 0, i32 11
  %37 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %32, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %35, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %32, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %32, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %32) #8
  br label %cleanup

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_fabric_fdisc_wait_rsp, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %if.end73, %sw.bb42.cleanup_crit_edge, %if.end32, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_nport_attach(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_fabric_idle(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.92, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_fabric_idle.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_fabric_idle, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_fabric_idle.__UNIQUE_ID_ddebug319, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_fabric_idle, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %evt, label %sw.default.i [
    i32 13, label %do.end.sw.epilog_crit_edge
    i32 3, label %sw.bb.i
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.i:                                          ; preds = %do.end
  %13 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %shutdown_reason.i, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %14, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %14, i32 0, i32 6
  %18 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %14, i32 0, i32 11
  %19 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %14, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %17, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %14, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %14, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %14) #8
  br label %sw.epilog

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_fabric_idle, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_ns_init(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.88, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_ns_init.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_ns_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_ns_init.__UNIQUE_ID_ddebug320, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_ns_init, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %evt, label %sw.default.i [
    i32 0, label %sw.bb
    i32 13, label %do.end.sw.epilog_crit_edge
    i32 3, label %sw.bb.i
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @efc_send_plogi(ptr noundef %1) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_ns_plogi_wait_rsp, ptr noundef null) #8
  br label %sw.epilog

sw.bb.i:                                          ; preds = %do.end
  %13 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %shutdown_reason.i, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %14, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %14, i32 0, i32 6
  %18 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %14, i32 0, i32 11
  %19 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %14, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %17, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %14, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %14, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %14) #8
  br label %sw.epilog

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_ns_init, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %sw.bb, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_plogi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_ns_plogi_wait_rsp(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.87, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_ns_plogi_wait_rsp.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_ns_plogi_wait_rsp, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_ns_plogi_wait_rsp.__UNIQUE_ID_ddebug321, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_ns_plogi_wait_rsp, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %evt, label %sw.default.i [
    i32 33, label %sw.bb
    i32 13, label %do.end.cleanup44_crit_edge
    i32 3, label %sw.bb.i
  ]

do.end.cleanup44_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

sw.bb:                                            ; preds = %do.end
  %call4 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef 33, ptr noundef %arg, i8 noundef zeroext 3, ptr noundef nonnull @__efc_fabric_common, ptr noundef nonnull @__func__.__efc_ns_plogi_wait_rsp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %sw.bb.cleanup44_crit_edge

sw.bb.cleanup44_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

if.end7:                                          ; preds = %sw.bb
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %13 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %els_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %do.end26, label %if.end7.if.end32_crit_edge, !prof !258

if.end7.if.end32_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end26:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 451, i32 noundef 9, ptr noundef null) #8
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %if.end7.if.end32_crit_edge
  %15 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %els_req_cnt, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %els_req_cnt, align 4
  %els_rsp = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 4
  %17 = ptrtoint ptr %els_rsp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %els_rsp, align 4
  tail call void @efc_node_save_sparms(ptr noundef %1, ptr noundef %18) #8
  %call41 = tail call i32 @efc_node_attach(ptr noundef %1) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_ns_wait_node_attach, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %if.then42, label %if.end32.cleanup44_crit_edge

if.end32.cleanup44_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

if.then42:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 39, ptr noundef null) #8
  br label %cleanup44

sw.bb.i:                                          ; preds = %do.end
  %19 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %20, i32 0, i32 24
  %21 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %shutdown_reason.i, align 4
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %20, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %20, i32 0, i32 6
  %24 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %20, i32 0, i32 11
  %25 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %20, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %23, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %20, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %20, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %20) #8
  br label %cleanup44

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_ns_plogi_wait_rsp, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %cleanup44

cleanup44:                                        ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %if.then42, %if.end32.cleanup44_crit_edge, %sw.bb.cleanup44_crit_edge, %do.end.cleanup44_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_save_sparms(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_node_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_ns_wait_node_attach(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.86, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_ns_wait_node_attach.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_ns_wait_node_attach, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_ns_wait_node_attach.__UNIQUE_ID_ddebug322, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_ns_wait_node_attach, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %evt, label %sw.default.i [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 38, label %sw.bb5
    i32 39, label %sw.bb7
    i32 3, label %do.end20
    i32 60, label %do.end.sw.epilog_crit_edge
    i32 13, label %do.end.sw.epilog_crit_edge50
  ]

do.end.sw.epilog_crit_edge50:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %hold_frames.i47 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %hold_frames.i47 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hold_frames.i47, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %attached = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %attached to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %attached, align 2
  %call6 = tail call i32 @efc_ns_send_rftid(ptr noundef %1) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_ns_rftid_wait_rsp, ptr noundef null) #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %attached8 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %attached8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %attached8, align 2
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %pci13 = getelementptr inbounds %struct.efc, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %pci13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci13, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %display_name15 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14, ptr noundef nonnull @.str.15, ptr noundef %display_name15) #11
  %shutdown_reason = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %21 = ptrtoint ptr %shutdown_reason to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %shutdown_reason, align 4
  tail call fastcc void @efc_fabric_initiate_shutdown(ptr noundef %1)
  br label %sw.epilog

do.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %pci22 = getelementptr inbounds %struct.efc, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %pci22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci22, align 4
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %display_name24 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev23, ptr noundef nonnull @.str.17, ptr noundef %display_name24) #11
  %shutdown_reason26 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %26 = ptrtoint ptr %shutdown_reason26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %shutdown_reason26, align 4
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_fabric_wait_attach_evt_shutdown, ptr noundef null) #8
  br label %sw.epilog

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_ns_wait_node_attach, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.i, %do.end20, %sw.bb7, %sw.bb5, %sw.bb4, %sw.bb, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge50
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_ns_send_rftid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_ns_rftid_wait_rsp(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.85, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_ns_rftid_wait_rsp.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_ns_rftid_wait_rsp, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_ns_rftid_wait_rsp.__UNIQUE_ID_ddebug324, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_ns_rftid_wait_rsp, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %evt, label %sw.default.i [
    i32 33, label %sw.bb
    i32 60, label %do.end.cleanup_crit_edge
    i32 13, label %do.end.cleanup_crit_edge58
    i32 3, label %sw.bb.i
  ]

do.end.cleanup_crit_edge58:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %call4 = tail call i32 @efc_node_check_ns_req(ptr noundef %ctx, i32 noundef 33, ptr noundef %arg, i16 noundef zeroext 535, ptr noundef nonnull @__efc_fabric_common, ptr noundef nonnull @__func__.__efc_ns_rftid_wait_rsp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %13 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %els_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %do.end26, label %if.end7.if.end32_crit_edge, !prof !258

if.end7.if.end32_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end26:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 581, i32 noundef 9, ptr noundef null) #8
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %if.end7.if.end32_crit_edge
  %15 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %els_req_cnt, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %els_req_cnt, align 4
  %call41 = tail call i32 @efc_ns_send_rffid(ptr noundef %1) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_ns_rffid_wait_rsp, ptr noundef null) #8
  br label %cleanup

sw.bb.i:                                          ; preds = %do.end
  %17 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 24
  %19 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %shutdown_reason.i, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %18, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 6
  %22 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 11
  %23 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %21, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %18, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %18) #8
  br label %cleanup

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_ns_rftid_wait_rsp, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %if.end32, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge, %do.end.cleanup_crit_edge58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_fabric_wait_attach_evt_shutdown(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.75, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_fabric_wait_attach_evt_shutdown.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_fabric_wait_attach_evt_shutdown, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_fabric_wait_attach_evt_shutdown.__UNIQUE_ID_ddebug323, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_fabric_wait_attach_evt_shutdown, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %evt, label %sw.default.i [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 38, label %sw.bb5
    i32 39, label %sw.bb15
    i32 3, label %do.end29
    i32 13, label %do.end.sw.epilog_crit_edge
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %hold_frames.i55 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %hold_frames.i55 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hold_frames.i55, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
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
  %call14 = tail call ptr @efc_sm_event_name(i32 noundef 38) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev11, ptr noundef nonnull @.str.19, ptr noundef %display_name12, ptr noundef %call14) #11
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %els_io_enabled.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %els_io_enabled.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %els_io_enabled.i, align 1
  %23 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %attached, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %sw.bb5.efc_fabric_initiate_shutdown.exit_crit_edge, label %if.then.i57

sw.bb5.efc_fabric_initiate_shutdown.exit_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit

if.then.i57:                                      ; preds = %sw.bb5
  %rnode.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 17
  %call.i56 = tail call i32 @efc_cmd_node_detach(ptr noundef %21, ptr noundef %rnode.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp.i = icmp slt i32 %call.i56, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i57.efc_fabric_initiate_shutdown.exit_crit_edge

if.then.i57.efc_fabric_initiate_shutdown.exit_crit_edge: ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit

do.end.i:                                         ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %pci.i = getelementptr inbounds %struct.efc, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef %display_name12, i32 noundef %call.i56) #11
  br label %efc_fabric_initiate_shutdown.exit

efc_fabric_initiate_shutdown.exit:                ; preds = %do.end.i, %if.then.i57.efc_fabric_initiate_shutdown.exit_crit_edge, %sw.bb5.efc_fabric_initiate_shutdown.exit_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %1) #8
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.end
  %attached16 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %attached16 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %attached16, align 2
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %pci21 = getelementptr inbounds %struct.efc, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %pci21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci21, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %display_name23 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call25 = tail call ptr @efc_sm_event_name(i32 noundef 39) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22, ptr noundef nonnull @.str.19, ptr noundef %display_name23, ptr noundef %call25) #11
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %els_io_enabled.i58 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %els_io_enabled.i58 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %els_io_enabled.i58, align 1
  %37 = ptrtoint ptr %attached16 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %attached16, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i60 = icmp eq i8 %38, 0
  br i1 %tobool.not.i60, label %sw.bb15.efc_fabric_initiate_shutdown.exit69_crit_edge, label %if.then.i64

sw.bb15.efc_fabric_initiate_shutdown.exit69_crit_edge: ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit69

if.then.i64:                                      ; preds = %sw.bb15
  %rnode.i61 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 17
  %call.i62 = tail call i32 @efc_cmd_node_detach(ptr noundef %35, ptr noundef %rnode.i61) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp.i63 = icmp slt i32 %call.i62, 0
  br i1 %cmp.i63, label %do.end.i68, label %if.then.i64.efc_fabric_initiate_shutdown.exit69_crit_edge

if.then.i64.efc_fabric_initiate_shutdown.exit69_crit_edge: ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit69

do.end.i68:                                       ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %pci.i65 = getelementptr inbounds %struct.efc, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %pci.i65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci.i65, align 4
  %dev.i66 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i66, ptr noundef nonnull @.str.55, ptr noundef %display_name23, i32 noundef %call.i62) #11
  br label %efc_fabric_initiate_shutdown.exit69

efc_fabric_initiate_shutdown.exit69:              ; preds = %do.end.i68, %if.then.i64.efc_fabric_initiate_shutdown.exit69_crit_edge, %sw.bb15.efc_fabric_initiate_shutdown.exit69_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %1) #8
  br label %sw.epilog

do.end29:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %pci31 = getelementptr inbounds %struct.efc, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %pci31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pci31, align 4
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %display_name33 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32, ptr noundef nonnull @.str.17, ptr noundef %display_name33) #11
  br label %sw.epilog

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_fabric_wait_attach_evt_shutdown, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.i, %do.end29, %efc_fabric_initiate_shutdown.exit69, %efc_fabric_initiate_shutdown.exit, %sw.bb4, %sw.bb, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_node_check_ns_req(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_ns_send_rffid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_ns_rffid_wait_rsp(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.84, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_ns_rffid_wait_rsp.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_ns_rffid_wait_rsp, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_ns_rffid_wait_rsp.__UNIQUE_ID_ddebug325, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_ns_rffid_wait_rsp, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %evt, label %sw.default.i [
    i32 33, label %sw.bb
    i32 60, label %do.end.cleanup_crit_edge
    i32 13, label %do.end.cleanup_crit_edge63
    i32 3, label %sw.bb.i
  ]

do.end.cleanup_crit_edge63:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %call4 = tail call i32 @efc_node_check_ns_req(ptr noundef %ctx, i32 noundef 33, ptr noundef %arg, i16 noundef zeroext 543, ptr noundef nonnull @__efc_fabric_common, ptr noundef nonnull @__func__.__efc_ns_rffid_wait_rsp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %13 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %els_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %do.end26, label %if.end7.if.end32_crit_edge, !prof !258

if.end7.if.end32_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end26:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 620, i32 noundef 9, ptr noundef null) #8
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %if.end7.if.end32_crit_edge
  %15 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %els_req_cnt, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %els_req_cnt, align 4
  %nport = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nport, align 4
  %enable_rscn = getelementptr inbounds %struct.efc_nport, ptr %18, i32 0, i32 26
  %19 = ptrtoint ptr %enable_rscn to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %enable_rscn, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool41.not = icmp eq i8 %20, 0
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %call43 = tail call i32 @efc_ns_send_gidpt(ptr noundef %1) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_ns_gidpt_wait_rsp, ptr noundef null) #8
  br label %cleanup

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_ns_idle, ptr noundef null) #8
  br label %cleanup

sw.bb.i:                                          ; preds = %do.end
  %21 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %22, i32 0, i32 24
  %23 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %shutdown_reason.i, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %22, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %22, i32 0, i32 6
  %26 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %22, i32 0, i32 11
  %27 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %22, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %25, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %22, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %22, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %22) #8
  br label %cleanup

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_ns_rffid_wait_rsp, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %if.else, %if.then42, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge, %do.end.cleanup_crit_edge63
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_ns_send_gidpt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_ns_gidpt_wait_rsp(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.83, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_ns_gidpt_wait_rsp.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_ns_gidpt_wait_rsp, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_ns_gidpt_wait_rsp.__UNIQUE_ID_ddebug327, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_ns_gidpt_wait_rsp, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %evt, label %sw.default.i [
    i32 33, label %sw.bb
    i32 35, label %do.end46
    i32 60, label %do.end91
    i32 13, label %do.end.cleanup_crit_edge
    i32 3, label %sw.bb.i
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %call4 = tail call i32 @efc_node_check_ns_req(ptr noundef %ctx, i32 noundef 33, ptr noundef %arg, i16 noundef zeroext 417, ptr noundef nonnull @__efc_fabric_common, ptr noundef nonnull @__func__.__efc_ns_gidpt_wait_rsp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %13 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %els_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %do.end26, label %if.end7.if.end32_crit_edge, !prof !258

if.end7.if.end32_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end26:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 807, i32 noundef 9, ptr noundef null) #8
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %if.end7.if.end32_crit_edge
  %15 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %els_req_cnt, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %els_req_cnt, align 4
  %els_rsp = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 4
  %17 = ptrtoint ptr %els_rsp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %els_rsp, align 4
  %len = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 4, i32 4
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  tail call fastcc void @efc_process_gidpt_payload(ptr noundef %1, ptr noundef %18, i32 noundef %20)
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_ns_idle, ptr noundef null) #8
  br label %cleanup

do.end46:                                         ; preds = %do.end
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %pci48 = getelementptr inbounds %struct.efc, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %pci48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci48, align 4
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %display_name50 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev49, ptr noundef nonnull @.str.24, ptr noundef %display_name50) #11
  %els_req_cnt53 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %25 = ptrtoint ptr %els_req_cnt53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %els_req_cnt53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool54.not = icmp eq i32 %26, 0
  br i1 %tobool54.not, label %do.end72, label %do.end46.if.end78_crit_edge, !prof !258

do.end46.if.end78_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

do.end72:                                         ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 819, i32 noundef 9, ptr noundef null) #8
  br label %if.end78

if.end78:                                         ; preds = %do.end72, %do.end46.if.end78_crit_edge
  %27 = ptrtoint ptr %els_req_cnt53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %els_req_cnt53, align 4
  %dec87 = add i32 %28, -1
  store i32 %dec87, ptr %els_req_cnt53, align 4
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_ns_idle, ptr noundef null) #8
  br label %cleanup

do.end91:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %pci93 = getelementptr inbounds %struct.efc, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %pci93 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci93, align 4
  %dev94 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %display_name95 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev94, ptr noundef nonnull @.str.26, ptr noundef %display_name95) #11
  %rscn_pending = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %rscn_pending to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %rscn_pending, align 4
  br label %cleanup

sw.bb.i:                                          ; preds = %do.end
  %34 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %35, i32 0, i32 24
  %36 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %shutdown_reason.i, align 4
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %35, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %35, i32 0, i32 6
  %39 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %35, i32 0, i32 11
  %40 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %35, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %38, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %35, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %35, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %35) #8
  br label %cleanup

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_ns_gidpt_wait_rsp, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %do.end91, %if.end78, %if.end32, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_ns_idle(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %5 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.81, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_ns_idle.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_ns_idle, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call5 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_ns_idle.__UNIQUE_ID_ddebug328, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_ns_idle, ptr noundef %call5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %14 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %evt, label %sw.default.i [
    i32 0, label %sw.bb
    i32 60, label %do.end.sw.bb18_crit_edge
    i32 13, label %do.end.sw.epilog_crit_edge
    i32 3, label %sw.bb.i
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.sw.bb18_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

sw.bb:                                            ; preds = %do.end
  %rscn_pending = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %rscn_pending to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rscn_pending, align 4, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool6.not = icmp eq i8 %16, 0
  br i1 %tobool6.not, label %sw.bb.sw.epilog_crit_edge, label %do.end11

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end11:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %pci13 = getelementptr inbounds %struct.efc, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %pci13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci13, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %display_name15 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14, ptr noundef nonnull @.str.28, ptr noundef %display_name15) #11
  %21 = ptrtoint ptr %rscn_pending to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %rscn_pending, align 4
  br label %sw.bb18

sw.bb18:                                          ; preds = %do.end11, %do.end.sw.bb18_crit_edge
  %tgt_rscn_delay_msec = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 23
  %22 = ptrtoint ptr %tgt_rscn_delay_msec to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tgt_rscn_delay_msec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %cmp.not = icmp eq i64 %23, 0
  br i1 %cmp.not, label %sw.bb18.if.else_crit_edge, label %land.lhs.true

sw.bb18.if.else_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb18
  %nport = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nport, align 4
  %enable_ini = getelementptr inbounds %struct.efc_nport, ptr %25, i32 0, i32 24
  %26 = ptrtoint ptr %enable_ini to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enable_ini, align 8, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool19.not = icmp eq i8 %27, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true20:                                  ; preds = %land.lhs.true
  %enable_tgt = getelementptr inbounds %struct.efc_nport, ptr %25, i32 0, i32 25
  %28 = ptrtoint ptr %enable_tgt to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %enable_tgt, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool22.not = icmp eq i8 %29, 0
  br i1 %tobool22.not, label %land.lhs.true20.if.else_crit_edge, label %if.then23

land.lhs.true20.if.else_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then23:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_ns_gidpt_delay, ptr noundef null) #8
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true20.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %sw.bb18.if.else_crit_edge
  %call24 = tail call i32 @efc_ns_send_gidpt(ptr noundef %1) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_ns_gidpt_wait_rsp, ptr noundef null) #8
  br label %sw.epilog

sw.bb.i:                                          ; preds = %do.end
  %30 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %31, i32 0, i32 24
  %32 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %shutdown_reason.i, align 4
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %31, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %31, i32 0, i32 6
  %35 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %31, i32 0, i32 11
  %36 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %31, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %34, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %31, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %31, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %31) #8
  br label %sw.epilog

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_ns_idle, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %if.else, %if.then23, %sw.bb.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efc_process_gidpt_payload(ptr noundef %node, ptr nocapture noundef %data, i32 noundef %gidpt_len) unnamed_addr #0 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nport1 = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %nport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nport1, align 4
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #8
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %index, align 4, !annotation !260
  %pn_rsp = getelementptr inbounds %struct.anon.89, ptr %data, i32 0, i32 1
  %ct_mr_size = getelementptr inbounds %struct.fc_ct_hdr, ptr %data, i32 0, i32 7
  %5 = ptrtoint ptr %ct_mr_size to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ct_mr_size, align 2
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.not = icmp eq i16 %6, 0
  br i1 %cmp.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_process_gidpt_payload.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_process_gidpt_payload, %if.then6)) #8
          to label %if.end8 [label %if.then6], !srcloc !256

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %node, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_process_gidpt_payload.__UNIQUE_ID_ddebug326, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %conv) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.body, %entry.if.end8_crit_edge
  %ct_cmd = getelementptr inbounds %struct.fc_ct_hdr, ptr %data, i32 0, i32 6
  %11 = ptrtoint ptr %ct_cmd to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ct_cmd, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32767, i16 %12)
  %cmp11 = icmp eq i16 %12, -32767
  br i1 %cmp11, label %do.end16, label %if.end24

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %node, align 8
  %pci18 = getelementptr inbounds %struct.efc, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %pci18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci18, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  %ct_reason = getelementptr inbounds %struct.fc_ct_hdr, ptr %data, i32 0, i32 9
  %17 = ptrtoint ptr %ct_reason to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ct_reason, align 1
  %conv21 = zext i8 %18 to i32
  %ct_explan = getelementptr inbounds %struct.fc_ct_hdr, ptr %data, i32 0, i32 10
  %19 = ptrtoint ptr %ct_explan to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ct_explan, align 2
  %conv23 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19, ptr noundef nonnull @.str.59, ptr noundef %display_name, i32 noundef %conv21, i32 noundef %conv23) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end8
  %sub = add i32 %gidpt_len, -16
  %div1 = lshr i32 %sub, 2
  %21 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %index, align 4
  %lookup = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 23
  %call25 = call ptr @xa_find(ptr noundef %lookup, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #8
  %tobool26.not16 = icmp eq ptr %call25, null
  br i1 %tobool26.not16, label %if.end24.for.end_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  br label %for.body

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end24.for.body_crit_edge
  %port_count.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end24.for.body_crit_edge ]
  %inc = add i32 %port_count.017, 1
  %call28 = call ptr @xa_find_after(ptr noundef %lookup, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #8
  %tobool26.not = icmp eq ptr %call28, null
  br i1 %tobool26.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end24.for.end_crit_edge
  %port_count.0.lcssa = phi i32 [ 0, %if.end24.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %22 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %port_count.0.lcssa, i32 4) #8
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %for.end.do.end34_crit_edge, label %if.end7.i.i, !prof !258

for.end.do.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

if.end7.i.i:                                      ; preds = %for.end
  %24 = extractvalue { i32, i1 } %22, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 2848) #12
  %tobool30.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool30.not, label %if.end7.i.i.do.end34_crit_edge, label %if.end40

if.end7.i.i.do.end34_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

do.end34:                                         ; preds = %if.end7.i.i.do.end34_crit_edge, %for.end.do.end34_crit_edge
  %25 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %node, align 8
  %pci36 = getelementptr inbounds %struct.efc, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %pci36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci36, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %display_name38 = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev37, ptr noundef nonnull @.str.61, ptr noundef %display_name38) #11
  br label %cleanup

if.end40:                                         ; preds = %if.end7.i.i
  %29 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %index, align 4
  %call42 = call ptr @xa_find(ptr noundef %lookup, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #8
  %tobool44.not18 = icmp eq ptr %call42, null
  br i1 %tobool44.not18, label %if.end40.for.cond55.preheader_crit_edge, label %if.end40.for.body45_crit_edge

if.end40.for.body45_crit_edge:                    ; preds = %if.end40
  br label %for.body45

if.end40.for.cond55.preheader_crit_edge:          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond55.preheader

for.cond55.preheader:                             ; preds = %for.inc51.for.cond55.preheader_crit_edge, %if.end40.for.cond55.preheader_crit_edge
  %port_id.0.lcssa = phi i32 [ 0, %if.end40.for.cond55.preheader_crit_edge ], [ %31, %for.inc51.for.cond55.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp5624.not = icmp ult i32 %sub, 4
  br i1 %cmp5624.not, label %for.cond55.preheader.for.end85_crit_edge, label %for.body58.lr.ph

for.cond55.preheader.for.end85_crit_edge:         ; preds = %for.cond55.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end85

for.body58.lr.ph:                                 ; preds = %for.cond55.preheader
  %shr.i = lshr i32 %port_id.0.lcssa, 16
  %conv.i = trunc i32 %shr.i to i8
  %shr1.i = lshr i32 %port_id.0.lcssa, 8
  %conv3.i = trunc i32 %shr1.i to i8
  %conv6.i = trunc i32 %port_id.0.lcssa to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port_count.0.lcssa)
  %cmp6222.not = icmp eq i32 %port_count.0.lcssa, 0
  %umax = call i32 @llvm.umax.i32(i32 %div1, i32 1)
  br label %for.body58

for.body45:                                       ; preds = %for.inc51.for.body45_crit_edge, %if.end40.for.body45_crit_edge
  %i.020 = phi i32 [ %i.1, %for.inc51.for.body45_crit_edge ], [ 0, %if.end40.for.body45_crit_edge ]
  %n.119 = phi ptr [ %call53, %for.inc51.for.body45_crit_edge ], [ %call42, %if.end40.for.body45_crit_edge ]
  %fc_id = getelementptr inbounds %struct.efc_node, ptr %n.119, i32 0, i32 17, i32 2
  %30 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fc_id, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %31, label %if.then48 [
    i32 16777214, label %for.body45.for.inc51_crit_edge
    i32 16777213, label %for.body45.for.inc51_crit_edge34
    i32 16777212, label %for.body45.for.inc51_crit_edge35
    i32 16776192, label %for.body45.for.inc51_crit_edge36
  ]

for.body45.for.inc51_crit_edge36:                 ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc51

for.body45.for.inc51_crit_edge35:                 ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc51

for.body45.for.inc51_crit_edge34:                 ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc51

for.body45.for.inc51_crit_edge:                   ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc51

if.then48:                                        ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #10
  %inc49 = add i32 %i.020, 1
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %i.020
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %n.119, ptr %arrayidx, align 4
  br label %for.inc51

for.inc51:                                        ; preds = %if.then48, %for.body45.for.inc51_crit_edge, %for.body45.for.inc51_crit_edge34, %for.body45.for.inc51_crit_edge35, %for.body45.for.inc51_crit_edge36
  %i.1 = phi i32 [ %inc49, %if.then48 ], [ %i.020, %for.body45.for.inc51_crit_edge ], [ %i.020, %for.body45.for.inc51_crit_edge34 ], [ %i.020, %for.body45.for.inc51_crit_edge35 ], [ %i.020, %for.body45.for.inc51_crit_edge36 ]
  %call53 = call ptr @xa_find_after(ptr noundef %lookup, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #8
  %tobool44.not = icmp eq ptr %call53, null
  br i1 %tobool44.not, label %for.inc51.for.cond55.preheader_crit_edge, label %for.inc51.for.body45_crit_edge

for.inc51.for.body45_crit_edge:                   ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body45

for.inc51.for.cond55.preheader_crit_edge:         ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond55.preheader

for.body58:                                       ; preds = %for.end77.for.body58_crit_edge, %for.body58.lr.ph
  %i.225 = phi i32 [ 0, %for.body58.lr.ph ], [ %inc84, %for.end77.for.body58_crit_edge ]
  %arrayidx59 = getelementptr %struct.fc_gid_pn_resp, ptr %pn_rsp, i32 %i.225
  %fp_fid = getelementptr %struct.fc_gid_pn_resp, ptr %pn_rsp, i32 %i.225, i32 1
  %34 = ptrtoint ptr %fp_fid to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i, ptr %fp_fid, align 1
  %arrayidx4.i = getelementptr i8, ptr %fp_fid, i32 1
  %35 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv3.i, ptr %arrayidx4.i, align 1
  %arrayidx7.i = getelementptr i8, ptr %fp_fid, i32 2
  %36 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  br i1 %cmp6222.not, label %for.body58.for.end77_crit_edge, label %for.body58.for.body64_crit_edge

for.body58.for.body64_crit_edge:                  ; preds = %for.body58
  br label %for.body64

for.body58.for.end77_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end77

for.body64:                                       ; preds = %for.inc75.for.body64_crit_edge, %for.body58.for.body64_crit_edge
  %j.023 = phi i32 [ %inc76, %for.inc75.for.body64_crit_edge ], [ 0, %for.body58.for.body64_crit_edge ]
  %arrayidx65 = getelementptr ptr, ptr %call8.i.i, i32 %j.023
  %37 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx65, align 4
  %tobool66.not = icmp eq ptr %38, null
  br i1 %tobool66.not, label %for.body64.for.inc75_crit_edge, label %land.lhs.true

for.body64.for.inc75_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc75

land.lhs.true:                                    ; preds = %for.body64
  %fc_id69 = getelementptr inbounds %struct.efc_node, ptr %38, i32 0, i32 17, i32 2
  %39 = ptrtoint ptr %fc_id69 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fc_id69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %port_id.0.lcssa, i32 %40)
  %cmp70 = icmp eq i32 %port_id.0.lcssa, %40
  br i1 %cmp70, label %if.then72, label %land.lhs.true.for.inc75_crit_edge

land.lhs.true.for.inc75_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc75

if.then72:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx65, align 4
  br label %for.inc75

for.inc75:                                        ; preds = %if.then72, %land.lhs.true.for.inc75_crit_edge, %for.body64.for.inc75_crit_edge
  %inc76 = add nuw i32 %j.023, 1
  %exitcond.not = icmp eq i32 %inc76, %port_count.0.lcssa
  br i1 %exitcond.not, label %for.inc75.for.end77_crit_edge, label %for.inc75.for.body64_crit_edge

for.inc75.for.body64_crit_edge:                   ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body64

for.inc75.for.end77_crit_edge:                    ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end77

for.end77:                                        ; preds = %for.inc75.for.end77_crit_edge, %for.body58.for.end77_crit_edge
  %42 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx59, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool80.not = icmp slt i8 %43, 0
  %inc84 = add nuw nsw i32 %i.225, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc84, i32 %umax)
  %exitcond30.not = icmp eq i32 %inc84, %umax
  %or.cond = select i1 %tobool80.not, i1 true, i1 %exitcond30.not
  br i1 %or.cond, label %for.end77.for.end85_crit_edge, label %for.end77.for.body58_crit_edge

for.end77.for.body58_crit_edge:                   ; preds = %for.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body58

for.end77.for.end85_crit_edge:                    ; preds = %for.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end85

for.end85:                                        ; preds = %for.end77.for.end85_crit_edge, %for.cond55.preheader.for.end85_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port_count.0.lcssa)
  %cmp8726.not = icmp eq i32 %port_count.0.lcssa, 0
  br i1 %cmp8726.not, label %for.end85.for.end120_crit_edge, label %for.body89.lr.ph

for.end85.for.end120_crit_edge:                   ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end120

for.body89.lr.ph:                                 ; preds = %for.end85
  %display_name112 = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  br label %for.body89

for.body89:                                       ; preds = %for.inc118.for.body89_crit_edge, %for.body89.lr.ph
  %i.327 = phi i32 [ 0, %for.body89.lr.ph ], [ %inc119, %for.inc118.for.body89_crit_edge ]
  %arrayidx90 = getelementptr ptr, ptr %call8.i.i, i32 %i.327
  %44 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx90, align 4
  %tobool91.not = icmp eq ptr %45, null
  br i1 %tobool91.not, label %for.body89.for.inc118_crit_edge, label %if.end93

for.body89.for.inc118_crit_edge:                  ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc118

if.end93:                                         ; preds = %for.body89
  %46 = ptrtoint ptr %nport1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nport1, align 4
  %enable_ini = getelementptr inbounds %struct.efc_nport, ptr %47, i32 0, i32 24
  %48 = ptrtoint ptr %enable_ini to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %enable_ini, align 8, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool95.not = icmp eq i8 %49, 0
  br i1 %tobool95.not, label %if.end93.lor.lhs.false_crit_edge, label %land.lhs.true97

if.end93.lor.lhs.false_crit_edge:                 ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true97:                                  ; preds = %if.end93
  %targ = getelementptr inbounds %struct.efc_node, ptr %45, i32 0, i32 25
  %50 = ptrtoint ptr %targ to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %targ, align 8, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool99.not = icmp eq i8 %51, 0
  br i1 %tobool99.not, label %land.lhs.true97.lor.lhs.false_crit_edge, label %land.lhs.true97.if.then104_crit_edge

land.lhs.true97.if.then104_crit_edge:             ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then104

land.lhs.true97.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true97.lor.lhs.false_crit_edge, %if.end93.lor.lhs.false_crit_edge
  %enable_tgt = getelementptr inbounds %struct.efc_nport, ptr %47, i32 0, i32 25
  %52 = ptrtoint ptr %enable_tgt to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %enable_tgt, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool102.not = icmp eq i8 %53, 0
  br i1 %tobool102.not, label %do.end108, label %lor.lhs.false.if.then104_crit_edge

lor.lhs.false.if.then104_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then104

if.then104:                                       ; preds = %lor.lhs.false.if.then104_crit_edge, %land.lhs.true97.if.then104_crit_edge
  call void @efc_node_post_event(ptr noundef nonnull %45, i32 noundef 48, ptr noundef null) #8
  br label %for.inc118

do.end108:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %node, align 8
  %pci110 = getelementptr inbounds %struct.efc, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %pci110 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pci110, align 4
  %dev111 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %fc_id116 = getelementptr inbounds %struct.efc_node, ptr %45, i32 0, i32 17, i32 2
  %58 = ptrtoint ptr %fc_id116 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fc_id116, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev111, ptr noundef nonnull @.str.64, ptr noundef %display_name112, i32 noundef %59) #11
  br label %for.inc118

for.inc118:                                       ; preds = %do.end108, %if.then104, %for.body89.for.inc118_crit_edge
  %inc119 = add nuw i32 %i.327, 1
  %exitcond31.not = icmp eq i32 %inc119, %port_count.0.lcssa
  br i1 %exitcond31.not, label %for.inc118.for.end120_crit_edge, label %for.inc118.for.body89_crit_edge

for.inc118.for.body89_crit_edge:                  ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body89

for.inc118.for.end120_crit_edge:                  ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end120

for.end120:                                       ; preds = %for.inc118.for.end120_crit_edge, %for.end85.for.end120_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br i1 %cmp5624.not, label %for.end120.cleanup_crit_edge, label %for.body124.lr.ph

for.end120.cleanup_crit_edge:                     ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body124.lr.ph:                                ; preds = %for.end120
  %shr.i2 = lshr i32 %port_id.0.lcssa, 16
  %conv.i3 = trunc i32 %shr.i2 to i8
  %shr1.i4 = lshr i32 %port_id.0.lcssa, 8
  %conv3.i5 = trunc i32 %shr1.i4 to i8
  %conv6.i7 = trunc i32 %port_id.0.lcssa to i8
  %nport129 = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 17, i32 4
  %umax32 = call i32 @llvm.umax.i32(i32 %div1, i32 1)
  br label %for.body124

for.body124:                                      ; preds = %for.inc177.for.body124_crit_edge, %for.body124.lr.ph
  %i.429 = phi i32 [ 0, %for.body124.lr.ph ], [ %inc178, %for.inc177.for.body124_crit_edge ]
  %arrayidx125 = getelementptr %struct.fc_gid_pn_resp, ptr %pn_rsp, i32 %i.429
  %fp_fid126 = getelementptr %struct.fc_gid_pn_resp, ptr %pn_rsp, i32 %i.429, i32 1
  %60 = ptrtoint ptr %fp_fid126 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv.i3, ptr %fp_fid126, align 1
  %arrayidx4.i6 = getelementptr i8, ptr %fp_fid126, i32 1
  %61 = ptrtoint ptr %arrayidx4.i6 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv3.i5, ptr %arrayidx4.i6, align 1
  %arrayidx7.i8 = getelementptr i8, ptr %fp_fid126, i32 2
  %62 = ptrtoint ptr %arrayidx7.i8 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv6.i7, ptr %arrayidx7.i8, align 1
  %63 = ptrtoint ptr %nport129 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %nport129, align 4
  %fc_id130 = getelementptr inbounds %struct.efc_nport, ptr %64, i32 0, i32 17
  %65 = ptrtoint ptr %fc_id130 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fc_id130, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %port_id.0.lcssa, i32 %66)
  %cmp131 = icmp eq i32 %port_id.0.lcssa, %66
  br i1 %cmp131, label %if.then133, label %if.end141

if.then133:                                       ; preds = %for.body124
  %67 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx125, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %68)
  %tobool138.not = icmp sgt i8 %68, -1
  br i1 %tobool138.not, label %if.then133.for.inc177_crit_edge, label %if.then133.cleanup_crit_edge

if.then133.cleanup_crit_edge:                     ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then133.for.inc177_crit_edge:                  ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc177

if.end141:                                        ; preds = %for.body124
  %call142 = call ptr @efc_node_find(ptr noundef %1, i32 noundef %port_id.0.lcssa) #8
  %tobool143.not = icmp eq ptr %call142, null
  br i1 %tobool143.not, label %if.then144, label %if.end141.if.end159_crit_edge

if.end141.if.end159_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

if.then144:                                       ; preds = %if.end141
  %69 = ptrtoint ptr %nport1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %nport1, align 4
  %enable_ini146 = getelementptr inbounds %struct.efc_nport, ptr %70, i32 0, i32 24
  %71 = ptrtoint ptr %enable_ini146 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %enable_ini146, align 8, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool147.not = icmp eq i8 %72, 0
  br i1 %tobool147.not, label %if.then144.for.inc177_crit_edge, label %if.end149

if.then144.for.inc177_crit_edge:                  ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc177

if.end149:                                        ; preds = %if.then144
  %call150 = call ptr @efc_node_alloc(ptr noundef %1, i32 noundef %port_id.0.lcssa, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %tobool151.not = icmp eq ptr %call150, null
  br i1 %tobool151.not, label %do.end155, label %if.end158

do.end155:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  %pci156 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %73 = ptrtoint ptr %pci156 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pci156, align 4
  %dev157 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev157, ptr noundef nonnull @.str.67) #11
  br label %cleanup

if.end158:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  call void @efc_node_init_device(ptr noundef nonnull %call150, i1 noundef zeroext true) #8
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.end141.if.end159_crit_edge
  %newnode.0 = phi ptr [ %call142, %if.end141.if.end159_crit_edge ], [ %call150, %if.end158 ]
  %75 = ptrtoint ptr %nport1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %nport1, align 4
  %enable_ini161 = getelementptr inbounds %struct.efc_nport, ptr %76, i32 0, i32 24
  %77 = ptrtoint ptr %enable_ini161 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %enable_ini161, align 8, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool162.not = icmp eq i8 %78, 0
  br i1 %tobool162.not, label %if.end159.if.end169_crit_edge, label %land.lhs.true164

if.end159.if.end169_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169

land.lhs.true164:                                 ; preds = %if.end159
  %targ165 = getelementptr inbounds %struct.efc_node, ptr %newnode.0, i32 0, i32 25
  %79 = ptrtoint ptr %targ165 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %targ165, align 8, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool166.not = icmp eq i8 %80, 0
  br i1 %tobool166.not, label %land.lhs.true164.if.end169_crit_edge, label %if.then168

land.lhs.true164.if.end169_crit_edge:             ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169

if.then168:                                       ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #10
  call void @efc_node_post_event(ptr noundef nonnull %newnode.0, i32 noundef 49, ptr noundef null) #8
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %land.lhs.true164.if.end169_crit_edge, %if.end159.if.end169_crit_edge
  %81 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx125, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %82)
  %tobool174.not = icmp sgt i8 %82, -1
  br i1 %tobool174.not, label %if.end169.for.inc177_crit_edge, label %if.end169.cleanup_crit_edge

if.end169.cleanup_crit_edge:                      ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end169.for.inc177_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc177

for.inc177:                                       ; preds = %if.end169.for.inc177_crit_edge, %if.then144.for.inc177_crit_edge, %if.then133.for.inc177_crit_edge
  %inc178 = add nuw nsw i32 %i.429, 1
  %exitcond33.not = icmp eq i32 %inc178, %umax32
  br i1 %exitcond33.not, label %for.inc177.cleanup_crit_edge, label %for.inc177.for.body124_crit_edge

for.inc177.for.body124_crit_edge:                 ; preds = %for.inc177
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body124

for.inc177.cleanup_crit_edge:                     ; preds = %for.inc177
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc177.cleanup_crit_edge, %if.end169.cleanup_crit_edge, %do.end155, %if.then133.cleanup_crit_edge, %for.end120.cleanup_crit_edge, %do.end34, %do.end16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_ns_gidpt_delay(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i64
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i64:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %5 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.82, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
  %6 = call ptr @memcpy(ptr %current_state_name4.i, ptr @str, i32 64)
  br label %efc_node_evt_set.exit

efc_node_evt_set.exit:                            ; preds = %if.then2.i, %if.then.i64, %entry.efc_node_evt_set.exit_crit_edge
  %current_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 40
  %7 = ptrtoint ptr %current_evt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_evt.i, align 8
  %prev_evt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 41
  %9 = ptrtoint ptr %prev_evt.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %prev_evt.i, align 4
  store i32 %evt, ptr %current_evt.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_ns_gidpt_delay.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_ns_gidpt_delay, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call5 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_ns_gidpt_delay.__UNIQUE_ID_ddebug329, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_ns_gidpt_delay, ptr noundef %call5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %14 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %evt, label %sw.default.i [
    i32 0, label %sw.bb
    i32 64, label %sw.bb19
    i32 60, label %do.body25
    i32 13, label %do.end.sw.epilog_crit_edge
    i32 3, label %sw.bb.i
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %tgt_rscn_delay_msec = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 23
  %15 = ptrtoint ptr %tgt_rscn_delay_msec to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tgt_rscn_delay_msec, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %call7 = tail call i32 @jiffies_to_msecs(i32 noundef %17) #8
  %time_last_gidpt_msec = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 44
  %18 = ptrtoint ptr %time_last_gidpt_msec to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %time_last_gidpt_msec, align 8
  %tgt_rscn_period_msec = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 24
  %20 = ptrtoint ptr %tgt_rscn_period_msec to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tgt_rscn_period_msec, align 8
  %gidpt_delay_timer = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 43
  tail call void @init_timer_key(ptr noundef %gidpt_delay_timer, ptr noundef nonnull @gidpt_delay_timer_cb, i32 noundef 0, ptr noundef nonnull @.str.29, ptr noundef nonnull @__efc_ns_gidpt_delay.__key) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %call7 to i64
  %sub = sub i64 %conv, %19
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %21)
  %cmp = icmp ult i64 %sub, %21
  %spec.select.v = select i1 %cmp, i64 %21, i64 %16
  %spec.select = trunc i64 %spec.select.v to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %spec.select) #8
  %add = add i32 %call2.i, %22
  %call18 = tail call i32 @mod_timer(ptr noundef %gidpt_delay_timer, i32 noundef %add) #8
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %call20 = tail call i32 @jiffies_to_msecs(i32 noundef %23) #8
  %conv21 = zext i32 %call20 to i64
  %time_last_gidpt_msec22 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 44
  %24 = ptrtoint ptr %time_last_gidpt_msec22 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv21, ptr %time_last_gidpt_msec22, align 8
  %call23 = tail call i32 @efc_ns_send_gidpt(ptr noundef %1) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_ns_gidpt_wait_rsp, ptr noundef null) #8
  br label %sw.epilog

do.body25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_ns_gidpt_delay.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_ns_gidpt_delay, %if.then37)) #8
          to label %sw.epilog [label %if.then37], !srcloc !256

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %pci38 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %pci38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci38, align 4
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_ns_gidpt_delay.__UNIQUE_ID_ddebug330, ptr noundef %dev39, ptr noundef nonnull @.str.30) #8
  br label %sw.epilog

sw.bb.i:                                          ; preds = %do.end
  %27 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %28, i32 0, i32 24
  %29 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %shutdown_reason.i, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %28, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %28, i32 0, i32 6
  %32 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %28, i32 0, i32 11
  %33 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %28, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %31, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %28, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %28, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %28) #8
  br label %sw.epilog

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_ns_gidpt_delay, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %if.then37, %do.body25, %sw.bb19, %sw.bb, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gidpt_delay_timer_cb(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -540
  %call = tail call i32 @del_timer(ptr noundef %t) #8
  tail call void @efc_node_post_event(ptr noundef %add.ptr, i32 noundef 64, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_fabctl_init(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_fabctl_init.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_fabctl_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_fabctl_init.__UNIQUE_ID_ddebug331, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @.str.31, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %evt, label %sw.default.i [
    i32 0, label %sw.bb
    i32 38, label %sw.bb5
    i32 13, label %do.end.sw.epilog_crit_edge
    i32 3, label %sw.bb.i
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @efc_send_scr(ptr noundef %1) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_fabctl_wait_scr_rsp, ptr noundef null) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %attached = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %attached to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %attached, align 2
  br label %sw.epilog

sw.bb.i:                                          ; preds = %do.end
  %8 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %9, i32 0, i32 24
  %10 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %shutdown_reason.i, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %9, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %9, i32 0, i32 6
  %13 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %9, i32 0, i32 11
  %14 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %9, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %12, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %9, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %9) #8
  br label %sw.epilog

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @.str.31, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %sw.bb5, %sw.bb, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_scr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_fabctl_wait_scr_rsp(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.91, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_fabctl_wait_scr_rsp.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_fabctl_wait_scr_rsp, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_fabctl_wait_scr_rsp.__UNIQUE_ID_ddebug332, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_fabctl_wait_scr_rsp, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %evt, label %sw.default.i [
    i32 33, label %sw.bb
    i32 13, label %do.end.cleanup_crit_edge
    i32 3, label %sw.bb.i
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %call4 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef 33, ptr noundef %arg, i8 noundef zeroext 98, ptr noundef nonnull @__efc_fabric_common, ptr noundef nonnull @__func__.__efc_fabctl_wait_scr_rsp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %13 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %els_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %do.end26, label %if.end7.if.end32_crit_edge, !prof !258

if.end7.if.end32_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end26:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %if.end7.if.end32_crit_edge
  %15 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %els_req_cnt, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %els_req_cnt, align 4
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_fabctl_ready, ptr noundef null) #8
  br label %cleanup

sw.bb.i:                                          ; preds = %do.end
  %17 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 24
  %19 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %shutdown_reason.i, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %18, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 6
  %22 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 11
  %23 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %21, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %18, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %18) #8
  br label %cleanup

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_fabctl_wait_scr_rsp, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %if.end32, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_fabctl_ready(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.89, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_fabctl_ready.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_fabctl_ready, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_fabctl_ready.__UNIQUE_ID_ddebug333, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_fabctl_ready, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %evt, label %sw.default.i [
    i32 60, label %sw.bb
    i32 13, label %do.end.sw.epilog_crit_edge
    i32 3, label %sw.bb.i
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %header = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %13 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %header, align 4
  %dma = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %nport2.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %nport2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nport2.i, align 4
  %call.i16 = tail call ptr @efc_node_find(ptr noundef %20, i32 noundef 16777212) #8
  %tobool.not.i = icmp eq ptr %call.i16, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i17

if.then.i17:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @efc_node_post_event(ptr noundef nonnull %call.i16, i32 noundef 60, ptr noundef %arg) #8
  br label %efc_process_rscn.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %pci.i = getelementptr inbounds %struct.efc, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.69) #11
  br label %efc_process_rscn.exit

efc_process_rscn.exit:                            ; preds = %do.end.i, %if.then.i17
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %16, i32 0, i32 9
  %23 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %fh_ox_id, align 4
  %conv = zext i16 %24 to i32
  %call4 = tail call i32 @efc_send_ls_acc(ptr noundef %1, i32 noundef %conv) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_fabctl_wait_ls_acc_cmpl, ptr noundef null) #8
  br label %sw.epilog

sw.bb.i:                                          ; preds = %do.end
  %25 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %26, i32 0, i32 24
  %27 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %shutdown_reason.i, align 4
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %26, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %26, i32 0, i32 6
  %30 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %26, i32 0, i32 11
  %31 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %26, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %29, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %26, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %26, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %26) #8
  br label %sw.epilog

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_fabctl_ready, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %efc_process_rscn.exit, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_ls_acc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_fabctl_wait_ls_acc_cmpl(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.90, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_fabctl_wait_ls_acc_cmpl.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_fabctl_wait_ls_acc_cmpl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_fabctl_wait_ls_acc_cmpl.__UNIQUE_ID_ddebug334, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_fabctl_wait_ls_acc_cmpl, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %evt, label %sw.default.i [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 34, label %sw.bb5
    i32 13, label %do.end.sw.epilog_crit_edge
    i32 3, label %sw.bb.i
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %hold_frames.i51 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %hold_frames.i51 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hold_frames.i51, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  %els_cmpl_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 36
  %15 = ptrtoint ptr %els_cmpl_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %els_cmpl_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not = icmp eq i32 %16, 0
  br i1 %tobool6.not, label %do.end24, label %sw.bb5.if.end30_crit_edge, !prof !258

sw.bb5.if.end30_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.end24:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1073, i32 noundef 9, ptr noundef null) #8
  br label %if.end30

if.end30:                                         ; preds = %do.end24, %sw.bb5.if.end30_crit_edge
  %17 = ptrtoint ptr %els_cmpl_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %els_cmpl_cnt, align 8
  %dec = add i32 %18, -1
  store i32 %dec, ptr %els_cmpl_cnt, align 8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_fabctl_ready, ptr noundef null) #8
  br label %sw.epilog

sw.bb.i:                                          ; preds = %do.end
  %19 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %20, i32 0, i32 24
  %21 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %shutdown_reason.i, align 4
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %20, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %20, i32 0, i32 6
  %24 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %20, i32 0, i32 11
  %25 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %20, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %23, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %20, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %20, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %20) #8
  br label %sw.epilog

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_fabctl_wait_ls_acc_cmpl, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %if.end30, %sw.bb4, %sw.bb, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efc_node_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efc_node_alloc(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_p2p_rnode_init(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.79, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_p2p_rnode_init.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_p2p_rnode_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_p2p_rnode_init.__UNIQUE_ID_ddebug338, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_p2p_rnode_init, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %evt, label %sw.default.i [
    i32 0, label %sw.bb
    i32 47, label %sw.bb5
    i32 13, label %do.end.sw.epilog_crit_edge
    i32 3, label %sw.bb.i
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @efc_send_plogi(ptr noundef %1) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_p2p_wait_plogi_rsp, ptr noundef null) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %header = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %13 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %header, align 4
  %dma = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma, align 4
  %call6 = tail call i32 @efc_send_bls_acc(ptr noundef %1, ptr noundef %16) #8
  br label %sw.epilog

sw.bb.i:                                          ; preds = %do.end
  %17 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 24
  %19 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %shutdown_reason.i, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %18, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 6
  %22 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 11
  %23 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %21, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %18, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %18, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %18) #8
  br label %sw.epilog

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_p2p_rnode_init, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %sw.bb5, %sw.bb, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_init_device(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_p2p_wait_plogi_rsp(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.78, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_p2p_wait_plogi_rsp.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_p2p_wait_plogi_rsp, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_p2p_wait_plogi_rsp.__UNIQUE_ID_ddebug340, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_p2p_wait_plogi_rsp, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %evt, label %sw.default.i [
    i32 33, label %sw.bb
    i32 35, label %sw.bb44
    i32 52, label %sw.bb93
    i32 55, label %sw.bb101
    i32 13, label %do.end.cleanup107_crit_edge
    i32 3, label %sw.bb.i
  ]

do.end.cleanup107_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup107

sw.bb:                                            ; preds = %do.end
  %call4 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef 33, ptr noundef %arg, i8 noundef zeroext 3, ptr noundef nonnull @__efc_fabric_common, ptr noundef nonnull @__func__.__efc_p2p_wait_plogi_rsp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %sw.bb.cleanup107_crit_edge

sw.bb.cleanup107_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup107

if.end7:                                          ; preds = %sw.bb
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %13 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %els_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %do.end26, label %if.end7.if.end32_crit_edge, !prof !258

if.end7.if.end32_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end26:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1330, i32 noundef 9, ptr noundef null) #8
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %if.end7.if.end32_crit_edge
  %15 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %els_req_cnt, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %els_req_cnt, align 4
  %els_rsp = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 4
  %17 = ptrtoint ptr %els_rsp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %els_rsp, align 4
  tail call void @efc_node_save_sparms(ptr noundef %1, ptr noundef %18) #8
  %call41 = tail call i32 @efc_node_attach(ptr noundef %1) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_p2p_wait_node_attach, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %if.then42, label %if.end32.cleanup107_crit_edge

if.end32.cleanup107_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup107

if.then42:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 39, ptr noundef null) #8
  br label %cleanup107

sw.bb44:                                          ; preds = %do.end
  %call45 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef 35, ptr noundef %arg, i8 noundef zeroext 3, ptr noundef nonnull @__efc_fabric_common, ptr noundef nonnull @__func__.__efc_p2p_wait_plogi_rsp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.end51, label %sw.bb44.cleanup107_crit_edge

sw.bb44.cleanup107_crit_edge:                     ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup107

do.end51:                                         ; preds = %sw.bb44
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %pci53 = getelementptr inbounds %struct.efc, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %pci53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci53, align 4
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %display_name55 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev54, ptr noundef nonnull @.str.43, ptr noundef %display_name55) #11
  %els_req_cnt58 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %23 = ptrtoint ptr %els_req_cnt58 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %els_req_cnt58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool59.not = icmp eq i32 %24, 0
  br i1 %tobool59.not, label %do.end77, label %do.end51.if.end83_crit_edge, !prof !258

do.end51.if.end83_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

do.end77:                                         ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1347, i32 noundef 9, ptr noundef null) #8
  br label %if.end83

if.end83:                                         ; preds = %do.end77, %do.end51.if.end83_crit_edge
  %25 = ptrtoint ptr %els_req_cnt58 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %els_req_cnt58, align 4
  %dec92 = add i32 %26, -1
  store i32 %dec92, ptr %els_req_cnt58, align 4
  %shutdown_reason = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %27 = ptrtoint ptr %shutdown_reason to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %shutdown_reason, align 4
  tail call fastcc void @efc_fabric_initiate_shutdown(ptr noundef %1)
  br label %cleanup107

sw.bb93:                                          ; preds = %do.end
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %external_loopback = getelementptr inbounds %struct.efc, ptr %29, i32 0, i32 25
  %30 = ptrtoint ptr %external_loopback to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %external_loopback, align 8, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool96.not = icmp eq i8 %31, 0
  br i1 %tobool96.not, label %if.else, label %if.then97

if.then97:                                        ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #10
  %header = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %32 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %header, align 4
  %dma = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dma, align 4
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %fh_ox_id, align 4
  %conv = zext i16 %37 to i32
  %call98 = tail call i32 @efc_send_plogi_acc(ptr noundef %1, i32 noundef %conv) #8
  br label %cleanup107

if.else:                                          ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_p2p_wait_plogi_rsp, ptr noundef %ctx, i32 noundef 52, ptr noundef %arg) #8
  br label %cleanup107

sw.bb101:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %payload = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 3
  %38 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %payload, align 4
  %dma102 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %dma102 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dma102, align 4
  tail call void @efc_process_prli_payload(ptr noundef %1, ptr noundef %41) #8
  %header104 = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %42 = ptrtoint ptr %header104 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %header104, align 4
  %dma105 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %dma105 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma105, align 4
  tail call void @efc_send_ls_acc_after_attach(ptr noundef %1, ptr noundef %45, i32 noundef 2) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_p2p_wait_plogi_rsp_recvd_prli, ptr noundef null) #8
  br label %cleanup107

sw.bb.i:                                          ; preds = %do.end
  %46 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %47, i32 0, i32 24
  %48 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %shutdown_reason.i, align 4
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %47, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %47, i32 0, i32 6
  %51 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %47, i32 0, i32 11
  %52 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %47, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %50, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %47, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %47, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %47) #8
  br label %cleanup107

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_p2p_wait_plogi_rsp, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %cleanup107

cleanup107:                                       ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %sw.bb101, %if.else, %if.then97, %if.end83, %sw.bb44.cleanup107_crit_edge, %if.then42, %if.end32.cleanup107_crit_edge, %sw.bb.cleanup107_crit_edge, %do.end.cleanup107_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_bls_acc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_p2p_wait_flogi_acc_cmpl(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.98, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_p2p_wait_flogi_acc_cmpl.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_p2p_wait_flogi_acc_cmpl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_p2p_wait_flogi_acc_cmpl.__UNIQUE_ID_ddebug339, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_p2p_wait_flogi_acc_cmpl, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %evt, label %sw.default.i [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 34, label %sw.bb5
    i32 36, label %do.end69
    i32 47, label %sw.bb111
    i32 13, label %do.end.sw.epilog_crit_edge
    i32 3, label %sw.bb.i
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %hold_frames.i144 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %hold_frames.i144 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hold_frames.i144, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  %els_cmpl_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 36
  %15 = ptrtoint ptr %els_cmpl_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %els_cmpl_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not = icmp eq i32 %16, 0
  br i1 %tobool6.not, label %do.end24, label %sw.bb5.if.end30_crit_edge, !prof !258

sw.bb5.if.end30_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.end24:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1256, i32 noundef 9, ptr noundef null) #8
  br label %if.end30

if.end30:                                         ; preds = %do.end24, %sw.bb5.if.end30_crit_edge
  %17 = ptrtoint ptr %els_cmpl_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %els_cmpl_cnt, align 8
  %dec = add i32 %18, -1
  store i32 %dec, ptr %els_cmpl_cnt, align 8
  %nport = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nport, align 4
  %p2p_winner = getelementptr inbounds %struct.efc_nport, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %p2p_winner to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %p2p_winner, align 4, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool39.not = icmp eq i8 %22, 0
  br i1 %tobool39.not, label %if.else64, label %if.then40

if.then40:                                        ; preds = %if.end30
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_p2p_wait_domain_attach, ptr noundef null) #8
  %23 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nport, align 4
  %domain = getelementptr inbounds %struct.efc_nport, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %domain, align 8
  %attached = getelementptr inbounds %struct.efc_domain, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %attached, align 4, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool42.not = icmp eq i8 %28, 0
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %pci48 = getelementptr inbounds %struct.efc, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %pci48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci48, align 4
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %display_name50 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  br i1 %tobool42.not, label %do.end46, label %do.end57

do.end46:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev49, ptr noundef nonnull @.str.36, ptr noundef %display_name50) #11
  %33 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nport, align 4
  %domain53 = getelementptr inbounds %struct.efc_nport, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %domain53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %domain53, align 8
  %p2p_port_id = getelementptr inbounds %struct.efc_nport, ptr %34, i32 0, i32 28
  %37 = ptrtoint ptr %p2p_port_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %p2p_port_id, align 4
  tail call void @efc_domain_attach(ptr noundef %36, i32 noundef %38) #8
  br label %sw.epilog

do.end57:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev49, ptr noundef nonnull @.str.38, ptr noundef %display_name50) #11
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 13, ptr noundef null) #8
  br label %sw.epilog

if.else64:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @efc_node_init_device(ptr noundef %1, i1 noundef zeroext false) #8
  br label %sw.epilog

do.end69:                                         ; preds = %do.end
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %pci71 = getelementptr inbounds %struct.efc, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %pci71 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci71, align 4
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %display_name73 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev72, ptr noundef nonnull @.str.41, ptr noundef %display_name73) #11
  %els_cmpl_cnt76 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 36
  %43 = ptrtoint ptr %els_cmpl_cnt76 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %els_cmpl_cnt76, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool77.not = icmp eq i32 %44, 0
  br i1 %tobool77.not, label %do.end95, label %do.end69.if.end101_crit_edge, !prof !258

do.end69.if.end101_crit_edge:                     ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

do.end95:                                         ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1294, i32 noundef 9, ptr noundef null) #8
  br label %if.end101

if.end101:                                        ; preds = %do.end95, %do.end69.if.end101_crit_edge
  %45 = ptrtoint ptr %els_cmpl_cnt76 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %els_cmpl_cnt76, align 8
  %dec110 = add i32 %46, -1
  store i32 %dec110, ptr %els_cmpl_cnt76, align 8
  %shutdown_reason = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %47 = ptrtoint ptr %shutdown_reason to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %shutdown_reason, align 4
  tail call fastcc void @efc_fabric_initiate_shutdown(ptr noundef %1)
  br label %sw.epilog

sw.bb111:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %header = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %48 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %header, align 4
  %dma = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dma, align 4
  %call112 = tail call i32 @efc_send_bls_acc(ptr noundef %1, ptr noundef %51) #8
  br label %sw.epilog

sw.bb.i:                                          ; preds = %do.end
  %52 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %53, i32 0, i32 24
  %54 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %shutdown_reason.i, align 4
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %53, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %53, i32 0, i32 6
  %57 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %53, i32 0, i32 11
  %58 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i.i = icmp eq i8 %59, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %53, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %56, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %53, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %53, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %53) #8
  br label %sw.epilog

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_p2p_wait_flogi_acc_cmpl, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %sw.bb111, %if.end101, %if.else64, %do.end57, %do.end46, %sw.bb4, %sw.bb, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_p2p_wait_node_attach(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.76, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_p2p_wait_node_attach.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_p2p_wait_node_attach, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_p2p_wait_node_attach.__UNIQUE_ID_ddebug342, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_p2p_wait_node_attach, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %evt, label %sw.default.i [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 38, label %sw.bb5
    i32 39, label %sw.bb10
    i32 3, label %do.end23
    i32 55, label %do.end34
    i32 13, label %do.end.sw.epilog44_crit_edge
  ]

do.end.sw.epilog44_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog44

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  br label %sw.epilog44

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %hold_frames.i77 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %hold_frames.i77 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hold_frames.i77, align 8
  br label %sw.epilog44

sw.bb5:                                           ; preds = %do.end
  %attached = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %attached to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %attached, align 2
  %send_ls_acc = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %send_ls_acc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %send_ls_acc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cond = icmp eq i32 %17, 2
  br i1 %cond, label %sw.bb6, label %sw.default

sw.bb6:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %ls_acc_io = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 21
  %18 = ptrtoint ptr %ls_acc_io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ls_acc_io, align 8
  %ls_acc_oxid = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 22
  %20 = ptrtoint ptr %ls_acc_oxid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ls_acc_oxid, align 4
  %conv = trunc i32 %21 to i16
  tail call void @efc_d_send_prli_rsp(ptr noundef %19, i16 noundef zeroext %conv) #8
  %22 = ptrtoint ptr %send_ls_acc to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %send_ls_acc, align 4
  %23 = ptrtoint ptr %ls_acc_io to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %ls_acc_io, align 8
  br label %sw.epilog44

sw.default:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_port_logged_in, ptr noundef null) #8
  br label %sw.epilog44

sw.bb10:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %attached11 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %attached11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %attached11, align 2
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %pci16 = getelementptr inbounds %struct.efc, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %pci16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci16, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %display_name18 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev17, ptr noundef nonnull @.str.15, ptr noundef %display_name18) #11
  %shutdown_reason = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %29 = ptrtoint ptr %shutdown_reason to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %shutdown_reason, align 4
  tail call fastcc void @efc_fabric_initiate_shutdown(ptr noundef %1)
  br label %sw.epilog44

do.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %pci25 = getelementptr inbounds %struct.efc, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %pci25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci25, align 4
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %display_name27 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call29 = tail call ptr @efc_sm_event_name(i32 noundef 3) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev26, ptr noundef nonnull @.str.45, ptr noundef %display_name27, ptr noundef %call29) #11
  %shutdown_reason30 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %34 = ptrtoint ptr %shutdown_reason30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %shutdown_reason30, align 4
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_fabric_wait_attach_evt_shutdown, ptr noundef null) #8
  br label %sw.epilog44

do.end34:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %pci36 = getelementptr inbounds %struct.efc, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %pci36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci36, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %display_name38 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call40 = tail call ptr @efc_sm_event_name(i32 noundef 55) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev37, ptr noundef nonnull @.str.48, ptr noundef %display_name38, ptr noundef %call40) #11
  %payload = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 3
  %39 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %payload, align 4
  %dma = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma, align 4
  tail call void @efc_process_prli_payload(ptr noundef %1, ptr noundef %42) #8
  %header = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %43 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %header, align 4
  %dma41 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %dma41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dma41, align 4
  tail call void @efc_send_ls_acc_after_attach(ptr noundef %1, ptr noundef %46, i32 noundef 2) #8
  br label %sw.epilog44

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_p2p_wait_node_attach, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %sw.epilog44

sw.epilog44:                                      ; preds = %sw.default.i, %do.end34, %do.end23, %sw.bb10, %sw.default, %sw.bb6, %sw.bb4, %sw.bb, %do.end.sw.epilog44_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_plogi_acc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_process_prli_payload(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_send_ls_acc_after_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_p2p_wait_plogi_rsp_recvd_prli(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.77, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_p2p_wait_plogi_rsp_recvd_prli.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_p2p_wait_plogi_rsp_recvd_prli, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !256

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_p2p_wait_plogi_rsp_recvd_prli.__UNIQUE_ID_ddebug341, ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_p2p_wait_plogi_rsp_recvd_prli, ptr noundef %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %evt, label %sw.default.i [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 33, label %sw.bb5
    i32 35, label %do.end.sw.bb46_crit_edge
    i32 37, label %do.end.sw.bb46_crit_edge123
    i32 13, label %do.end.cleanup87_crit_edge
    i32 3, label %sw.bb.i
  ]

do.end.cleanup87_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup87

do.end.sw.bb46_crit_edge123:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46

do.end.sw.bb46_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  br label %cleanup87

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %hold_frames.i118 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %hold_frames.i118 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hold_frames.i118, align 8
  br label %cleanup87

sw.bb5:                                           ; preds = %do.end
  %call6 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef 33, ptr noundef %arg, i8 noundef zeroext 3, ptr noundef nonnull @__efc_fabric_common, ptr noundef nonnull @__func__.__efc_p2p_wait_plogi_rsp_recvd_prli) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %sw.bb5.cleanup87_crit_edge

sw.bb5.cleanup87_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup87

if.end9:                                          ; preds = %sw.bb5
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %15 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %els_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %do.end28, label %if.end9.if.end34_crit_edge, !prof !258

if.end9.if.end34_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

do.end28:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1427, i32 noundef 9, ptr noundef null) #8
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
  tail call void @efc_node_save_sparms(ptr noundef %1, ptr noundef %20) #8
  %call43 = tail call i32 @efc_node_attach(ptr noundef %1) #8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_p2p_wait_node_attach, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp = icmp slt i32 %call43, 0
  br i1 %cmp, label %if.then44, label %if.end34.cleanup87_crit_edge

if.end34.cleanup87_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup87

if.then44:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @efc_node_post_event(ptr noundef %1, i32 noundef 39, ptr noundef null) #8
  br label %cleanup87

sw.bb46:                                          ; preds = %do.end.sw.bb46_crit_edge, %do.end.sw.bb46_crit_edge123
  %call47 = tail call i32 @efc_node_check_els_req(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg, i8 noundef zeroext 3, ptr noundef nonnull @__efc_fabric_common, ptr noundef nonnull @__func__.__efc_p2p_wait_plogi_rsp_recvd_prli) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %sw.bb46.cleanup87_crit_edge

sw.bb46.cleanup87_crit_edge:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup87

if.end50:                                         ; preds = %sw.bb46
  %els_req_cnt52 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %21 = ptrtoint ptr %els_req_cnt52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %els_req_cnt52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool53.not = icmp eq i32 %22, 0
  br i1 %tobool53.not, label %do.end71, label %if.end50.if.end77_crit_edge, !prof !258

if.end50.if.end77_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

do.end71:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1445, i32 noundef 9, ptr noundef null) #8
  br label %if.end77

if.end77:                                         ; preds = %do.end71, %if.end50.if.end77_crit_edge
  %23 = ptrtoint ptr %els_req_cnt52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %els_req_cnt52, align 4
  %dec86 = add i32 %24, -1
  store i32 %dec86, ptr %els_req_cnt52, align 4
  %shutdown_reason = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %25 = ptrtoint ptr %shutdown_reason to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %shutdown_reason, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %els_io_enabled.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %els_io_enabled.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %els_io_enabled.i, align 1
  %attached.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %attached.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %attached.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.end77.efc_fabric_initiate_shutdown.exit_crit_edge, label %if.then.i120

if.end77.efc_fabric_initiate_shutdown.exit_crit_edge: ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit

if.then.i120:                                     ; preds = %if.end77
  %rnode.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 17
  %call.i119 = tail call i32 @efc_cmd_node_detach(ptr noundef %27, ptr noundef %rnode.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp.i = icmp slt i32 %call.i119, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i120.efc_fabric_initiate_shutdown.exit_crit_edge

if.then.i120.efc_fabric_initiate_shutdown.exit_crit_edge: ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit

do.end.i:                                         ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %pci.i = getelementptr inbounds %struct.efc, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %display_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i, i32 noundef %call.i119) #11
  br label %efc_fabric_initiate_shutdown.exit

efc_fabric_initiate_shutdown.exit:                ; preds = %do.end.i, %if.then.i120.efc_fabric_initiate_shutdown.exit_crit_edge, %if.end77.efc_fabric_initiate_shutdown.exit_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %1) #8
  br label %cleanup87

sw.bb.i:                                          ; preds = %do.end
  %35 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %app, align 4
  %shutdown_reason.i = getelementptr inbounds %struct.efc_node, ptr %36, i32 0, i32 24
  %37 = ptrtoint ptr %shutdown_reason.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %shutdown_reason.i, align 4
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %36, align 8
  %els_io_enabled.i.i = getelementptr inbounds %struct.efc_node, ptr %36, i32 0, i32 6
  %40 = ptrtoint ptr %els_io_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %els_io_enabled.i.i, align 1
  %attached.i.i = getelementptr inbounds %struct.efc_node, ptr %36, i32 0, i32 11
  %41 = ptrtoint ptr %attached.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %attached.i.i, align 2, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %rnode.i.i = getelementptr inbounds %struct.efc_node, ptr %36, i32 0, i32 17
  %call.i.i = tail call i32 @efc_cmd_node_detach(ptr noundef %39, ptr noundef %rnode.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge

if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efc_fabric_initiate_shutdown.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %36, align 8
  %pci.i.i = getelementptr inbounds %struct.efc, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %display_name.i.i = getelementptr inbounds %struct.efc_node, ptr %36, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.55, ptr noundef %display_name.i.i, i32 noundef %call.i.i) #11
  br label %efc_fabric_initiate_shutdown.exit.i

efc_fabric_initiate_shutdown.exit.i:              ; preds = %do.end.i.i, %if.then.i.i.efc_fabric_initiate_shutdown.exit.i_crit_edge, %sw.bb.i.efc_fabric_initiate_shutdown.exit.i_crit_edge
  tail call void @efc_node_initiate_cleanup(ptr noundef %36) #8
  br label %cleanup87

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_p2p_wait_plogi_rsp_recvd_prli, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #8
  br label %cleanup87

cleanup87:                                        ; preds = %sw.default.i, %efc_fabric_initiate_shutdown.exit.i, %efc_fabric_initiate_shutdown.exit, %sw.bb46.cleanup87_crit_edge, %if.then44, %if.end34.cleanup87_crit_edge, %sw.bb5.cleanup87_crit_edge, %sw.bb4, %sw.bb, %do.end.cleanup87_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_d_send_prli_rsp(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__efc_d_port_logged_in(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__efc_node_common(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_cmd_node_detach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_initiate_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_pause(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !76, !77, !79, !80, !82, !83, !85, !87, !89, !91, !93, !95, !97, !98, !99, !101, !102, !103, !105, !107, !109, !110, !111, !113, !115, !117, !118, !120, !121, !123, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !144, !146, !147, !148, !150, !152, !154, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !172, !174, !175, !176, !178, !180, !182, !184, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !204, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !236, !238, !239, !240, !242, !243, !245, !246}
!llvm.module.flags = !{!247, !248, !249, !250, !251, !252, !253, !254}
!llvm.ident = !{!255}

!0 = !{ptr @__func__.__efc_fabric_init, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 79, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 81, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__efc_fabric_init.__UNIQUE_ID_ddebug313, !3, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 85, i32 3}
!9 = !{ptr @__efc_fabric_init.__UNIQUE_ID_ddebug314, !8, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!10 = !{ptr @__func__.__efc_fabric_flogi_wait_rsp, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 137, i32 29}
!12 = !{ptr @__efc_fabric_flogi_wait_rsp.__UNIQUE_ID_ddebug315, !13, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!13 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 139, i32 2}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 172, i32 4}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__efc_fabric_flogi_wait_rsp._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @__efc_fabric_flogi_wait_rsp._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 189, i32 5}
!22 = !{ptr @__efc_fabric_flogi_wait_rsp._entry.7, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @__efc_fabric_flogi_wait_rsp._entry_ptr.9, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 222, i32 3}
!26 = !{ptr @__efc_fabric_flogi_wait_rsp._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @__efc_fabric_flogi_wait_rsp._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__func__.__efc_vport_fabric_init, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 242, i32 29}
!30 = !{ptr @__efc_vport_fabric_init.__UNIQUE_ID_ddebug316, !31, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!31 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 244, i32 2}
!32 = !{ptr @__func__.__efc_fabric_fdisc_wait_rsp, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 265, i32 29}
!34 = !{ptr @__efc_fabric_fdisc_wait_rsp.__UNIQUE_ID_ddebug317, !35, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!35 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 267, i32 2}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 294, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @__efc_fabric_fdisc_wait_rsp._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @__efc_fabric_fdisc_wait_rsp._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @__func__.__efc_fabric_wait_domain_attach, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 358, i32 29}
!43 = !{ptr @__efc_fabric_wait_domain_attach.__UNIQUE_ID_ddebug318, !44, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!44 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 360, i32 2}
!45 = !{ptr @__func__.__efc_fabric_idle, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 399, i32 29}
!47 = !{ptr @__efc_fabric_idle.__UNIQUE_ID_ddebug319, !48, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!48 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 401, i32 2}
!49 = !{ptr @__func__.__efc_ns_init, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 416, i32 29}
!51 = !{ptr @__efc_ns_init.__UNIQUE_ID_ddebug320, !52, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!52 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 418, i32 2}
!53 = !{ptr @__func__.__efc_ns_plogi_wait_rsp, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 438, i32 29}
!55 = !{ptr @__efc_ns_plogi_wait_rsp.__UNIQUE_ID_ddebug321, !56, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!56 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 440, i32 2}
!57 = !{ptr @__func__.__efc_ns_wait_node_attach, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 473, i32 29}
!59 = !{ptr @__efc_ns_wait_node_attach.__UNIQUE_ID_ddebug322, !60, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!60 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 475, i32 2}
!61 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 496, i32 3}
!63 = !{ptr @__efc_ns_wait_node_attach._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @__efc_ns_wait_node_attach._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 502, i32 3}
!67 = !{ptr @__efc_ns_wait_node_attach._entry.16, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @__efc_ns_wait_node_attach._entry_ptr.18, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @__func__.__efc_fabric_wait_attach_evt_shutdown, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 527, i32 29}
!71 = !{ptr @__efc_fabric_wait_attach_evt_shutdown.__UNIQUE_ID_ddebug323, !72, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!72 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 529, i32 2}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 543, i32 3}
!75 = !{ptr @__efc_fabric_wait_attach_evt_shutdown._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @__efc_fabric_wait_attach_evt_shutdown._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @__efc_fabric_wait_attach_evt_shutdown._entry.20, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 550, i32 3}
!79 = !{ptr @__efc_fabric_wait_attach_evt_shutdown._entry_ptr.21, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @__efc_fabric_wait_attach_evt_shutdown._entry.22, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 557, i32 3}
!82 = !{ptr @__efc_fabric_wait_attach_evt_shutdown._entry_ptr.23, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @__func__.__efc_ns_rftid_wait_rsp, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 571, i32 29}
!85 = !{ptr @__efc_ns_rftid_wait_rsp.__UNIQUE_ID_ddebug324, !86, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!86 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 573, i32 2}
!87 = !{ptr @__func__.__efc_ns_rffid_wait_rsp, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 606, i32 29}
!89 = !{ptr @__efc_ns_rffid_wait_rsp.__UNIQUE_ID_ddebug325, !90, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!90 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 608, i32 2}
!91 = !{ptr @__func__.__efc_ns_gidpt_wait_rsp, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 793, i32 29}
!93 = !{ptr @__efc_ns_gidpt_wait_rsp.__UNIQUE_ID_ddebug327, !94, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!94 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 795, i32 2}
!95 = !{ptr @.str.24, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 818, i32 3}
!97 = !{ptr @__efc_ns_gidpt_wait_rsp._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @__efc_ns_gidpt_wait_rsp._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.26, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 827, i32 3}
!101 = !{ptr @__efc_ns_gidpt_wait_rsp._entry.25, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @__efc_ns_gidpt_wait_rsp._entry_ptr.27, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @__func__.__efc_ns_idle, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 843, i32 29}
!105 = !{ptr @__efc_ns_idle.__UNIQUE_ID_ddebug328, !106, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!106 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 845, i32 2}
!107 = !{ptr @.str.28, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 857, i32 3}
!109 = !{ptr @__efc_ns_idle._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @__efc_ns_idle._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @__func__.__efc_ns_gidpt_delay, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 903, i32 29}
!113 = !{ptr @__efc_ns_gidpt_delay.__UNIQUE_ID_ddebug329, !114, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!114 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 905, i32 2}
!115 = !{ptr @__efc_ns_gidpt_delay.__key, !116, !"__key", i1 false, i1 false}
!116 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 921, i32 3}
!117 = !{ptr @.str.29, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.30, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 937, i32 3}
!120 = !{ptr @__efc_ns_gidpt_delay.__UNIQUE_ID_ddebug330, !119, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!121 = !{ptr @.str.31, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 953, i32 2}
!123 = !{ptr @__efc_fabctl_init.__UNIQUE_ID_ddebug331, !122, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!124 = !{ptr @__func__.__efc_fabctl_wait_scr_rsp, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 977, i32 29}
!126 = !{ptr @__efc_fabctl_wait_scr_rsp.__UNIQUE_ID_ddebug332, !127, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!127 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 979, i32 2}
!128 = !{ptr @__func__.__efc_fabctl_ready, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1023, i32 29}
!130 = !{ptr @__efc_fabctl_ready.__UNIQUE_ID_ddebug333, !131, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!131 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1025, i32 2}
!132 = !{ptr @__func__.__efc_fabctl_wait_ls_acc_cmpl, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1059, i32 29}
!134 = !{ptr @__efc_fabctl_wait_ls_acc_cmpl.__UNIQUE_ID_ddebug334, !135, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!135 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1061, i32 2}
!136 = !{ptr @__func__.__efc_p2p_wait_domain_attach, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1124, i32 29}
!138 = !{ptr @__efc_p2p_wait_domain_attach.__UNIQUE_ID_ddebug337, !139, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!139 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1126, i32 2}
!140 = !{ptr @.str.32, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1156, i32 4}
!142 = !{ptr @__efc_p2p_wait_domain_attach._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @__efc_p2p_wait_domain_attach._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.34, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1168, i32 5}
!146 = !{ptr @__efc_p2p_wait_domain_attach._entry.33, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @__efc_p2p_wait_domain_attach._entry_ptr.35, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @__func__.__efc_p2p_rnode_init, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1213, i32 29}
!150 = !{ptr @__efc_p2p_rnode_init.__UNIQUE_ID_ddebug338, !151, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!151 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1215, i32 2}
!152 = !{ptr @__func__.__efc_p2p_wait_flogi_acc_cmpl, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1242, i32 29}
!154 = !{ptr @__efc_p2p_wait_flogi_acc_cmpl.__UNIQUE_ID_ddebug339, !155, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!155 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1244, i32 2}
!156 = !{ptr @.str.36, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1265, i32 5}
!158 = !{ptr @__efc_p2p_wait_flogi_acc_cmpl._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @__efc_p2p_wait_flogi_acc_cmpl._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.38, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1269, i32 5}
!162 = !{ptr @__efc_p2p_wait_flogi_acc_cmpl._entry.37, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @__efc_p2p_wait_flogi_acc_cmpl._entry_ptr.39, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.41, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1293, i32 3}
!166 = !{ptr @__efc_p2p_wait_flogi_acc_cmpl._entry.40, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @__efc_p2p_wait_flogi_acc_cmpl._entry_ptr.42, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @__func__.__efc_p2p_wait_plogi_rsp, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1318, i32 29}
!170 = !{ptr @__efc_p2p_wait_plogi_rsp.__UNIQUE_ID_ddebug340, !171, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!171 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1320, i32 2}
!172 = !{ptr @.str.43, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1346, i32 3}
!174 = !{ptr @__efc_p2p_wait_plogi_rsp._entry, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @__efc_p2p_wait_plogi_rsp._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @__func__.__efc_p2p_wait_plogi_rsp_recvd_prli, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1395, i32 29}
!178 = !{ptr @__efc_p2p_wait_plogi_rsp_recvd_prli.__UNIQUE_ID_ddebug341, !179, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!179 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1397, i32 2}
!180 = !{ptr @__func__.__efc_p2p_wait_node_attach, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1463, i32 29}
!182 = !{ptr @__efc_p2p_wait_node_attach.__UNIQUE_ID_ddebug342, !183, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!183 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1465, i32 2}
!184 = !{ptr @__efc_p2p_wait_node_attach._entry, !185, !"_entry", i1 false, i1 false}
!185 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1500, i32 3}
!186 = !{ptr @__efc_p2p_wait_node_attach._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.45, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1506, i32 3}
!189 = !{ptr @__efc_p2p_wait_node_attach._entry.44, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @__efc_p2p_wait_node_attach._entry_ptr.46, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.48, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1513, i32 3}
!193 = !{ptr @__efc_p2p_wait_node_attach._entry.47, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @__efc_p2p_wait_node_attach._entry_ptr.49, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.50, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1551, i32 4}
!197 = !{ptr @.str.51, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @efc_p2p_setup.__UNIQUE_ID_ddebug343, !196, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!199 = !{ptr @.str.52, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1557, i32 4}
!201 = !{ptr @.str.53, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @efc_p2p_setup._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @efc_p2p_setup._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = distinct !{null, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/elx/libefc/efc_node.h", i32 34, i32 37}
!206 = !{ptr @.str.55, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 39, i32 4}
!208 = !{ptr @.str.56, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @efc_fabric_initiate_shutdown._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @efc_fabric_initiate_shutdown._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.57, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 670, i32 3}
!213 = !{ptr @.str.58, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @efc_process_gidpt_payload.__UNIQUE_ID_ddebug326, !212, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!215 = !{ptr @.str.59, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 673, i32 3}
!217 = !{ptr @efc_process_gidpt_payload._entry, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @efc_process_gidpt_payload._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.61, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 690, i32 3}
!221 = !{ptr @efc_process_gidpt_payload._entry.60, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @efc_process_gidpt_payload._entry_ptr.62, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.64, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 741, i32 4}
!225 = !{ptr @efc_process_gidpt_payload._entry.63, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @efc_process_gidpt_payload._entry_ptr.65, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.67, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 765, i32 5}
!229 = !{ptr @efc_process_gidpt_payload._entry.66, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @efc_process_gidpt_payload._entry_ptr.68, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.69, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1013, i32 3}
!233 = !{ptr @.str.70, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @efc_process_rscn._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @efc_process_rscn._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.71, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1102, i32 2}
!238 = !{ptr @.str.72, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @efc_rnode_is_winner.__UNIQUE_ID_ddebug335, !237, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!240 = !{ptr @.str.73, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1104, i32 2}
!242 = !{ptr @efc_rnode_is_winner.__UNIQUE_ID_ddebug336, !241, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!243 = !{ptr @.str.74, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/scsi/elx/libefc/efc_fabric.c", i32 1107, i32 3}
!245 = !{ptr @efc_rnode_is_winner._entry, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @efc_rnode_is_winner._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{i32 1, !"wchar_size", i32 2}
!248 = !{i32 1, !"min_enum_size", i32 4}
!249 = !{i32 8, !"branch-target-enforcement", i32 0}
!250 = !{i32 8, !"sign-return-address", i32 0}
!251 = !{i32 8, !"sign-return-address-all", i32 0}
!252 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!253 = !{i32 7, !"uwtable", i32 1}
!254 = !{i32 7, !"frame-pointer", i32 2}
!255 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!256 = !{i64 2148521915, i64 2148521920, i64 2148521933, i64 2148521977, i64 2148522011, i64 2148522032}
!257 = !{i8 0, i8 2}
!258 = !{!"branch_weights", i32 1, i32 2000}
!259 = !{!"branch_weights", i32 2000, i32 1}
!260 = !{!"auto-init"}
