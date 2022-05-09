; ModuleID = '/llk/IR_all_yes/drivers/scsi/elx/libefc/efc_node.c_pt.bc'
source_filename = "../drivers/scsi/elx/libefc/efc_node.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.efc_remote_node = type { i32, i32, i32, i8, ptr, ptr }
%struct.efc = type { ptr, ptr, ptr, i32, i64, i64, i64, i64, i64, ptr, ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.libefc_function_template, %struct.spinlock, i8, i8, i32, ptr, ptr, ptr, i64, i64, i8, i32, i32, ptr, %struct.atomic_t, i8, %struct.spinlock, %struct.list_head, i32 }
%struct.libefc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.efc_node = type { ptr, [32 x i8], ptr, %struct.kref, ptr, i8, i8, i8, i8, i8, i8, i8, i8, %struct.spinlock, %struct.list_head, ptr, ptr, %struct.efc_remote_node, %struct.efc_sm_ctx, i32, i32, ptr, i32, i32, i32, i8, i8, i8, %struct.efc_dma, [120 x i8], %struct.spinlock, %struct.list_head, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], i32, i32, ptr, %struct.timer_list, i64, [32 x i8], [32 x i8] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.efc_sm_ctx = type { ptr, ptr, ptr }
%struct.efc_dma = type { ptr, ptr, i32, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.efc_nport = type { %struct.list_head, %struct.kref, ptr, ptr, i32, [32 x i8], i8, i8, i8, i8, i8, ptr, i64, i64, ptr, ptr, i32, i32, %struct.efc_dma, [32 x i8], i64, i64, %struct.efc_sm_ctx, %struct.xarray, i8, i8, i8, i8, i32, i32, [120 x i8], i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
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
%struct.efc_domain = type { ptr, [32 x i8], %struct.list_head, %struct.kref, ptr, ptr, ptr, i32, i32, i32, i32, %struct.efc_dma, i64, %struct.efc_sm_ctx, i8, i8, i8, i8, i8, i8, i8, i8, %struct.efc_domain_record, [120 x i8], [120 x i8], %struct.xarray, ptr }
%struct.efc_domain_record = type { i32, i32, [6 x i8], [8 x i8], %union.anon.79, i32, i32, i8, i8 }
%union.anon.79 = type { [512 x i8] }
%struct.efc_node_cb = type { i32, i32, ptr, ptr, %struct.efc_dma, i32 }
%struct.efc_hw_rq_buffer = type { i16, %struct.efc_dma }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.anon.89 = type { i32, i32, i32 }
%struct.efc_hw_sequence = type { %struct.list_head, ptr, i8, ptr, ptr, ptr }
%struct.fc_ct_hdr = type { i8, [3 x i8], i8, i8, i8, i8, i16, i16, i8, i8, i8, i8 }

@efc_node_alloc.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"efct\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efc_node_alloc\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/elx/libefc/efc_node.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"node allocation when shutting down %06x\00", [56 x i8] zeroinitializer }, align 32
@efc_node_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 60, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"node allocation failed %06x\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@efc_node_alloc._entry_ptr = internal global ptr @efc_node_alloc._entry, section ".printk_index", align 4
@efc_node_alloc._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 69, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"node dma alloc failed\0A\00", [41 x i8] zeroinitializer }, align 32
@efc_node_alloc._entry_ptr.9 = internal global ptr @efc_node_alloc._entry.7, section ".printk_index", align 4
@efc_node_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&node->pend_frames_lock\00", [40 x i8] zeroinitializer }, align 32
@efc_node_alloc.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&node->els_ios_lock\00", [44 x i8] zeroinitializer }, align 32
@efc_node_alloc._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 87, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"efc_hw_node_alloc failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@efc_node_alloc._entry_ptr.15 = internal global ptr @efc_node_alloc._entry.13, section ".printk_index", align 4
@efc_node_alloc._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 99, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Node lookup store failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@efc_node_alloc._entry_ptr.18 = internal global ptr @efc_node_alloc._entry.16, section ".printk_index", align 4
@efc_node_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 130, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[%s] Free'd\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"efc_node_free\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@efc_node_free._entry_ptr = internal global ptr @efc_node_free._entry, section ".printk_index", align 4
@efc_node_free._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.2, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Node already Freed\0A\00", [44 x i8] zeroinitializer }, align 32
@efc_node_free._entry_ptr.24 = internal global ptr @efc_node_free._entry.22, section ".printk_index", align 4
@efc_node_free._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.2, i32 148, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"efc_hw_node_free failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@efc_node_free._entry_ptr.27 = internal global ptr @efc_node_free._entry.25, section ".printk_index", align 4
@efc_node_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 200, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Warning: unattached domain\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efc_node_attach\00", [16 x i8] zeroinitializer }, align 32
@efc_node_attach._entry_ptr = internal global ptr @efc_node_attach._entry, section ".printk_index", align 4
@efc_node_attach.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"efc_hw_node_attach failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fabric\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fabctl\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nserve\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dctl%02x\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%06x\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%s\00", [26 x i8] zeroinitializer }, align 32
@efc_node_send_ls_io_cleanup.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"efc_node_send_ls_io_cleanup\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%s] cleaning up LS_ACC oxid=0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.__efc_node_shutdown = private unnamed_addr constant [20 x i8] c"__efc_node_shutdown\00", align 1
@__efc_node_shutdown.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_node_shutdown, ptr @.str.2, ptr @.str.39, i8 0, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[%s] %-20s %-20s\0A\00", [46 x i8] zeroinitializer }, align 32
@__efc_node_shutdown._entry = internal constant %struct.pi_entry { ptr @.str.40, ptr @__func__.__efc_node_shutdown, ptr @.str.2, i32 407, ptr @.str.21, ptr @.str.6 }, align 1
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%s] Shutdown reason: default, purge pending\0A\00", [50 x i8] zeroinitializer }, align 32
@__efc_node_shutdown._entry_ptr = internal global ptr @__efc_node_shutdown._entry, section ".printk_index", align 4
@__func__.__efc_node_wait_els_shutdown = private unnamed_addr constant [29 x i8] c"__efc_node_wait_els_shutdown\00", align 1
@__efc_node_wait_els_shutdown.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_node_wait_els_shutdown, ptr @.str.2, ptr @.str.39, i8 0, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_node_wait_els_shutdown._entry = internal constant %struct.pi_entry { ptr @.str.41, ptr @__func__.__efc_node_wait_els_shutdown, ptr @.str.2, i32 478, ptr @.str.21, ptr @.str.6 }, align 1
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%s] All ELS IOs complete\0A\00", [37 x i8] zeroinitializer }, align 32
@__efc_node_wait_els_shutdown._entry_ptr = internal global ptr @__efc_node_wait_els_shutdown._entry, section ".printk_index", align 4
@__efc_node_wait_els_shutdown._entry.42 = internal constant %struct.pi_entry { ptr @.str.41, ptr @__func__.__efc_node_wait_els_shutdown, ptr @.str.2, i32 506, ptr @.str.21, ptr @.str.6 }, align 1
@__efc_node_wait_els_shutdown._entry_ptr.43 = internal global ptr @__efc_node_wait_els_shutdown._entry.42, section ".printk_index", align 4
@__efc_node_wait_els_shutdown._entry.44 = internal constant %struct.pi_entry { ptr @.str.45, ptr @__func__.__efc_node_wait_els_shutdown, ptr @.str.2, i32 527, ptr @.str.21, ptr @.str.6 }, align 1
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[%s] %s received\0A\00", [46 x i8] zeroinitializer }, align 32
@__efc_node_wait_els_shutdown._entry_ptr.46 = internal global ptr @__efc_node_wait_els_shutdown._entry.44, section ".printk_index", align 4
@__func__.__efc_node_wait_node_free = private unnamed_addr constant [26 x i8] c"__efc_node_wait_node_free\00", align 1
@__efc_node_wait_node_free.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_node_wait_node_free, ptr @.str.2, ptr @.str.39, i8 0, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_node_wait_node_free._entry = internal constant %struct.pi_entry { ptr @.str.45, ptr @__func__.__efc_node_wait_node_free, ptr @.str.2, i32 580, ptr @.str.21, ptr @.str.6 }, align 1
@__efc_node_wait_node_free._entry_ptr = internal global ptr @__efc_node_wait_node_free._entry, section ".printk_index", align 4
@__func__.__efc_node_wait_ios_shutdown = private unnamed_addr constant [29 x i8] c"__efc_node_wait_ios_shutdown\00", align 1
@__efc_node_wait_ios_shutdown.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_node_wait_ios_shutdown, ptr @.str.2, ptr @.str.39, i8 0, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_node_wait_ios_shutdown.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_node_wait_ios_shutdown, ptr @.str.2, ptr @.str.47, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"[%s] %-20s\0A\00", [20 x i8] zeroinitializer }, align 32
@__efc_node_common.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__efc_node_common\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%s] (%s) ELS x%02x, LS_RJT not supported\0A\00", [53 x i8] zeroinitializer }, align 32
@__efc_node_common.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.50, i8 0, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%s] (%s) %s sending ELS_RJT\0A\00", [34 x i8] zeroinitializer }, align 32
@__efc_node_common.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.51, i8 0, i8 -69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%s] (%s) %s sending BA_ACC\0A\00", [35 x i8] zeroinitializer }, align 32
@__efc_node_common.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.52, i8 0, i8 -67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%s] %-20s %-20s not handled\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"eui.%016llX\00", [20 x i8] zeroinitializer }, align 32
@__func__.__efc_node_paused = private unnamed_addr constant [18 x i8] c"__efc_node_paused\00", align 1
@__efc_node_paused.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__efc_node_paused, ptr @.str.2, ptr @.str.39, i8 0, i8 -34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__efc_node_paused._entry = internal constant %struct.pi_entry { ptr @.str.54, ptr @__func__.__efc_node_paused, ptr @.str.2, i32 898, ptr @.str.21, ptr @.str.6 }, align 1
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[%s] Paused\0A\00", [19 x i8] zeroinitializer }, align 32
@__efc_node_paused._entry_ptr = internal global ptr @__efc_node_paused._entry, section ".printk_index", align 4
@efc_node_recv_ct_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 975, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%s] Received cmd :%x sending CT_REJECT\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efc_node_recv_ct_frame\00", [41 x i8] zeroinitializer }, align 32
@efc_node_recv_ct_frame._entry_ptr = internal global ptr @efc_node_recv_ct_frame._entry, section ".printk_index", align 4
@efc_process_node_pending.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 1, i8 2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"efc_process_node_pending\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%u node frames held and processed\0A\00", [61 x i8] zeroinitializer }, align 32
@efc_node_handle_implicit_logo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 280, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[%s] Reason: implicit logout, re-authenticate\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"efc_node_handle_implicit_logo\00", [34 x i8] zeroinitializer }, align 32
@efc_node_handle_implicit_logo._entry_ptr = internal global ptr @efc_node_handle_implicit_logo._entry, section ".printk_index", align 4
@efc_node_handle_explicit_logo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 312, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%s] Shutdown: explicit logo pend=%d \00", [58 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"efc_node_handle_explicit_logo\00", [34 x i8] zeroinitializer }, align 32
@efc_node_handle_explicit_logo._entry_ptr = internal global ptr @efc_node_handle_explicit_logo._entry, section ".printk_index", align 4
@efc_node_handle_explicit_logo._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 314, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%s] nport.ini=%d node.tgt=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@efc_node_handle_explicit_logo._entry_ptr.66 = internal global ptr @efc_node_handle_explicit_logo._entry.64, section ".printk_index", align 4
@efc_node_check_els_quiesced._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 432, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%s] HW node not attached\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"efc_node_check_els_quiesced\00", [36 x i8] zeroinitializer }, align 32
@efc_node_check_els_quiesced._entry_ptr = internal global ptr @efc_node_check_els_quiesced._entry, section ".printk_index", align 4
@efc_node_check_els_quiesced._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 441, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%s] HW node still attached\0A\00", [35 x i8] zeroinitializer }, align 32
@efc_node_check_els_quiesced._entry_ptr.71 = internal global ptr @efc_node_check_els_quiesced._entry.69, section ".printk_index", align 4
@str = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"invalid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.72 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_node_shutdown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.73 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_node_wait_ios_shutdown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.74 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_node_wait_node_free\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.75 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_node_wait_els_shutdown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.76 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"__efc_node_paused\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 16776192, i64 16777212, i64 16777213, i64 16777214]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [30 x i64] [i64 28, i64 32, i64 0, i64 1, i64 2, i64 26, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 44, i64 47, i64 48, i64 49, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.82 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 2, i64 3, i64 4, i64 13, i64 33, i64 34, i64 35, i64 36, i64 37, i64 44, i64 50, i64 51, i64 65]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 2, i64 3, i64 4, i64 13, i64 40, i64 50, i64 51, i64 65]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 2, i64 3, i64 4, i64 13, i64 35, i64 50, i64 51, i64 65]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.88 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 5, i64 13]
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 53, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 60, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 69, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 79, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 81, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 87, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 99, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 130, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 141, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 148, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 200, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 216, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 226, i32 35 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 229, i32 35 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 232, i32 35 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 236, i32 36 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 239, i32 36 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 254, i32 59 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 262, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 370, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 406, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 478, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 527, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 633, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 714, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 737, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 746, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 756, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 821, i32 25 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 898, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 974, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1032, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 280, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 312, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 313, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 432, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.291 = private constant [38 x i8] c"../drivers/scsi/elx/libefc/efc_node.c\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 441, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [7 x i8] c"str.72\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [7 x i8] c"str.73\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [7 x i8] c"str.74\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [7 x i8] c"str.75\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [7 x i8] c"str.76\00", align 1
@llvm.compiler.used = appending global [100 x ptr] [ptr @__efc_node_paused._entry, ptr @__efc_node_paused._entry_ptr, ptr @__efc_node_shutdown._entry, ptr @__efc_node_shutdown._entry_ptr, ptr @__efc_node_wait_els_shutdown._entry, ptr @__efc_node_wait_els_shutdown._entry.42, ptr @__efc_node_wait_els_shutdown._entry.44, ptr @__efc_node_wait_els_shutdown._entry_ptr, ptr @__efc_node_wait_els_shutdown._entry_ptr.43, ptr @__efc_node_wait_els_shutdown._entry_ptr.46, ptr @__efc_node_wait_node_free._entry, ptr @__efc_node_wait_node_free._entry_ptr, ptr @efc_node_alloc._entry, ptr @efc_node_alloc._entry.13, ptr @efc_node_alloc._entry.16, ptr @efc_node_alloc._entry.7, ptr @efc_node_alloc._entry_ptr, ptr @efc_node_alloc._entry_ptr.15, ptr @efc_node_alloc._entry_ptr.18, ptr @efc_node_alloc._entry_ptr.9, ptr @efc_node_attach._entry, ptr @efc_node_attach._entry_ptr, ptr @efc_node_check_els_quiesced._entry, ptr @efc_node_check_els_quiesced._entry.69, ptr @efc_node_check_els_quiesced._entry_ptr, ptr @efc_node_check_els_quiesced._entry_ptr.71, ptr @efc_node_free._entry, ptr @efc_node_free._entry.22, ptr @efc_node_free._entry.25, ptr @efc_node_free._entry_ptr, ptr @efc_node_free._entry_ptr.24, ptr @efc_node_free._entry_ptr.27, ptr @efc_node_handle_explicit_logo._entry, ptr @efc_node_handle_explicit_logo._entry.64, ptr @efc_node_handle_explicit_logo._entry_ptr, ptr @efc_node_handle_explicit_logo._entry_ptr.66, ptr @efc_node_handle_implicit_logo._entry, ptr @efc_node_handle_implicit_logo._entry_ptr, ptr @efc_node_recv_ct_frame._entry, ptr @efc_node_recv_ct_frame._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @efc_node_alloc.__key, ptr @.str.10, ptr @efc_node_alloc.__key.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @str, ptr @str.72, ptr @str.73, ptr @str.74, ptr @str.75, ptr @str.76], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_alloc._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_alloc.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_alloc._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_alloc._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_free._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_free._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_recv_ct_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_handle_implicit_logo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_handle_explicit_logo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_handle_explicit_logo._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_check_els_quiesced._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_check_els_quiesced._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.72 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.73 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.74 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.75 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.76 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_remote_node_cb(ptr noundef %arg, i32 noundef %event, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %node1 = getelementptr inbounds %struct.efc_remote_node, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node1, align 4
  %lock = getelementptr inbounds %struct.efc, ptr %arg, i32 0, i32 16
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %evtdepth.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %evtdepth.i, align 8
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %evtdepth.i, align 8
  %sm.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 18
  %call.i = tail call i32 @efc_sm_post_event(ptr noundef %sm.i, i32 noundef %event, ptr noundef null) #12
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hold_frames.i, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %6 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_process_node_pending(ptr noundef %1) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %8 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %evtdepth.i, align 8
  %dec.i = add i32 %9, -1
  store i32 %dec.i, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp4.i = icmp eq i32 %dec.i, 0
  br i1 %cmp4.i, label %land.lhs.true5.i, label %if.end.i.efc_node_post_event.exit_crit_edge

if.end.i.efc_node_post_event.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit

land.lhs.true5.i:                                 ; preds = %if.end.i
  %req_free.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %req_free.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %req_free.i, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not.not.i = icmp eq i8 %11, 0
  br i1 %tobool6.not.not.i, label %land.lhs.true5.i.efc_node_post_event.exit_crit_edge, label %if.then10.i

land.lhs.true5.i.efc_node_post_event.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit

if.then10.i:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_node_free(ptr noundef %1) #12
  br label %efc_node_post_event.exit

efc_node_post_event.exit:                         ; preds = %if.then10.i, %land.lhs.true5.i.efc_node_post_event.exit_crit_edge, %if.end.i.efc_node_post_event.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_node_post_event(ptr noundef %node, i32 noundef %evt, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %evtdepth = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 19
  %0 = ptrtoint ptr %evtdepth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %evtdepth, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %evtdepth, align 8
  %sm = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 18
  %call = tail call i32 @efc_sm_post_event(ptr noundef %sm, i32 noundef %evt, ptr noundef %arg) #12
  %hold_frames = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 5
  %2 = ptrtoint ptr %hold_frames to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hold_frames, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %evtdepth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %evtdepth, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_process_node_pending(ptr noundef %node)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %evtdepth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %evtdepth, align 8
  %dec = add i32 %7, -1
  store i32 %dec, ptr %evtdepth, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp4 = icmp eq i32 %dec, 0
  br i1 %cmp4, label %land.lhs.true5, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

land.lhs.true5:                                   ; preds = %if.end
  %req_free = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 12
  %8 = ptrtoint ptr %req_free to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %req_free, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not.not = icmp eq i8 %9, 0
  br i1 %tobool6.not.not, label %land.lhs.true5.if.end11_crit_edge, label %if.then10

land.lhs.true5.if.end11_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_node_free(ptr noundef %node)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true5.if.end11_crit_edge, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efc_node_find(ptr noundef %nport, i32 noundef %port_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lookup = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 23
  %call = tail call ptr @xa_load(ptr noundef %lookup, i32 noundef %port_id) #12
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efc_node_alloc(ptr noundef %nport, i32 noundef %port_id, i1 noundef zeroext %init, i1 noundef zeroext %targ) local_unnamed_addr #0 align 64 {
entry:
  %portid_display.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %init to i8
  %frombool1 = zext i1 %targ to i8
  %efc2 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 3
  %0 = ptrtoint ptr %efc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efc2, align 8
  %shutting_down = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 27
  %2 = ptrtoint ptr %shutting_down to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shutting_down, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_node_alloc.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_node_alloc, %if.then7)) #12
          to label %cleanup [label %if.then7], !srcloc !173

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_node_alloc.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %port_id) #12
  br label %cleanup

if.end8:                                          ; preds = %entry
  %node_pool = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %node_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node_pool, align 8
  %call9 = tail call noalias ptr @mempool_alloc(ptr noundef %7, i32 noundef 2592) #12
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %pci15 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %pci15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci15, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.4, i32 noundef %port_id) #15
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %10 = call ptr @memset(ptr %call9, i32 0, i32 664)
  %sparm_dma_buf = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 28
  %size = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 28, i32 3
  %11 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 256, ptr %size, align 4
  %node_dma_pool = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %node_dma_pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node_dma_pool, align 4
  %phys = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 28, i32 2
  %call.i = tail call ptr @dma_pool_alloc(ptr noundef %13, i32 noundef 2848, ptr noundef %phys) #12
  %14 = ptrtoint ptr %sparm_dma_buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %sparm_dma_buf, align 4
  %tobool20.not = icmp eq ptr %call.i, null
  br i1 %tobool20.not, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %pci25 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %pci25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci25, align 4
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.8) #15
  br label %dma_fail

if.end27:                                         ; preds = %if.end17
  %rnode = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 17
  %17 = ptrtoint ptr %rnode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %rnode, align 4
  %nport28 = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 2
  %18 = ptrtoint ptr %nport28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %nport, ptr %nport28, align 4
  %19 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %call9, align 8
  %init31 = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 26
  %20 = ptrtoint ptr %init31 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool, ptr %init31, align 1
  %targ34 = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 25
  %21 = ptrtoint ptr %targ34 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool1, ptr %targ34, align 8
  %pend_frames_lock = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 30
  tail call void @__raw_spin_lock_init(ptr noundef %pend_frames_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @efc_node_alloc.__key, i16 noundef signext 3) #12
  %pend_frames = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 31
  %22 = ptrtoint ptr %pend_frames to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %pend_frames, ptr %pend_frames, align 4
  %prev.i = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 31, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pend_frames, ptr %prev.i, align 4
  %els_ios_lock = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %els_ios_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @efc_node_alloc.__key.11, i16 noundef signext 3) #12
  %els_ios_list = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 14
  %24 = ptrtoint ptr %els_ios_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %els_ios_list, ptr %els_ios_list, align 4
  %prev.i128 = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 14, i32 1
  %25 = ptrtoint ptr %prev.i128 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %els_ios_list, ptr %prev.i128, align 4
  %els_io_enabled = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 6
  %26 = ptrtoint ptr %els_io_enabled to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %els_io_enabled, align 1
  %call45 = tail call i32 @efc_cmd_node_alloc(ptr noundef %1, ptr noundef %rnode, i32 noundef %port_id, ptr noundef %nport) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end53, label %do.end50

do.end50:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %pci51 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %pci51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci51, align 4
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52, ptr noundef nonnull @.str.14, i32 noundef %call45) #15
  br label %hw_alloc_fail

if.end53:                                         ; preds = %if.end27
  %node55 = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 17, i32 5
  %29 = ptrtoint ptr %node55 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9, ptr %node55, align 4
  %app = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 18, i32 2
  %30 = ptrtoint ptr %app to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call9, ptr %app, align 4
  %evtdepth = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 19
  %31 = ptrtoint ptr %evtdepth to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %evtdepth, align 8
  %fc_id.i = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 17, i32 2
  %32 = ptrtoint ptr %fc_id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fc_id.i, align 4
  %34 = ptrtoint ptr %nport28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nport28, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %portid_display.i) #12
  %36 = call ptr @memset(ptr %portid_display.i, i32 255, i32 16)
  call void @efc_node_fcid_display(i32 noundef %33, ptr noundef nonnull %portid_display.i, i32 noundef 16) #12
  %display_name.i = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 1
  %display_name3.i = getelementptr inbounds %struct.efc_nport, ptr %35, i32 0, i32 5
  %call.i129 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %display_name.i, i32 noundef 32, ptr noundef nonnull @.str.36, ptr noundef %display_name3.i, ptr noundef nonnull %portid_display.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %portid_display.i) #12
  %lookup = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 23
  %call56 = call ptr @xa_store(ptr noundef %lookup, i32 noundef %port_id, ptr noundef nonnull %call9, i32 noundef 2592) #12
  %37 = ptrtoint ptr %call56 to i32
  %and.i.i.i = and i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i)
  %cmp.i.i.i = icmp ne i32 %and.i.i.i, 2
  %cmp.i.i = icmp ult ptr %call56, inttoptr (i32 -16378 to ptr)
  %tobool58.not132 = icmp ult ptr %call56, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i = or i1 %cmp.i.i, %cmp.i.i.i
  %tobool58.not = or i1 %tobool58.not132, %not.spec.select.i.i
  br i1 %tobool58.not, label %if.end65, label %do.end62

do.end62:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i = ashr i32 %37, 2
  %pci63 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %pci63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pci63, align 4
  %dev64 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.17, i32 noundef %shr.i) #15
  %call68 = call i32 @efc_node_free_resources(ptr noundef %1, ptr noundef %rnode) #12
  br label %hw_alloc_fail

if.end65:                                         ; preds = %if.end53
  %ref = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 3
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  %40 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 1, ptr %ref, align 4
  %release = getelementptr inbounds %struct.efc_node, ptr %call9, i32 0, i32 4
  %41 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @_efc_node_free, ptr %release, align 4
  %ref66 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref66, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %ref66, i32 1, i32 3, i32 1) #12
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref66, ptr %ref66, i32 1, ptr elementtype(i32) %ref66) #12, !srcloc !174
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end65.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !175

if.end65.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end65
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %43 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %.not.i.i.i.i = icmp sgt i32 %43, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !176

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end65.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end65.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref66, i32 noundef %.sink.i.i.i.i) #12
  br label %cleanup

hw_alloc_fail:                                    ; preds = %do.end62, %do.end50
  %44 = ptrtoint ptr %node_dma_pool to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %node_dma_pool, align 4
  %46 = ptrtoint ptr %sparm_dma_buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sparm_dma_buf, align 4
  %48 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %phys, align 4
  call void @dma_pool_free(ptr noundef %45, ptr noundef %47, i32 noundef %49) #12
  br label %dma_fail

dma_fail:                                         ; preds = %hw_alloc_fail, %do.end24
  %50 = ptrtoint ptr %node_pool to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %node_pool, align 8
  call void @mempool_free(ptr noundef nonnull %call9, ptr noundef %51) #12
  br label %cleanup

cleanup:                                          ; preds = %dma_fail, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge, %do.end14, %if.then7, %do.body
  %retval.0 = phi ptr [ null, %dma_fail ], [ null, %do.end14 ], [ null, %if.then7 ], [ null, %do.body ], [ %call9, %if.else.i.i.i.i.cleanup_crit_edge ], [ %call9, %if.end15.sink.split.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_cmd_node_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_node_update_display_name(ptr nocapture noundef %node) local_unnamed_addr #4 align 64 {
entry:
  %portid_display = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_id = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fc_id, align 4
  %nport1 = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %2 = ptrtoint ptr %nport1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nport1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %portid_display) #12
  %4 = call ptr @memset(ptr %portid_display, i32 255, i32 16)
  call void @efc_node_fcid_display(i32 noundef %1, ptr noundef nonnull %portid_display, i32 noundef 16)
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  %display_name3 = getelementptr inbounds %struct.efc_nport, ptr %3, i32 0, i32 5
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %display_name, i32 noundef 32, ptr noundef nonnull @.str.36, ptr noundef %display_name3, ptr noundef nonnull %portid_display)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %portid_display) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_efc_node_free(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %arg, i32 -40
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %sparm_dma_buf = getelementptr i8, ptr %arg, i32 140
  %node_dma_pool = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %node_dma_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node_dma_pool, align 4
  %4 = ptrtoint ptr %sparm_dma_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sparm_dma_buf, align 4
  %phys = getelementptr i8, ptr %arg, i32 148
  %6 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phys, align 4
  tail call void @dma_pool_free(ptr noundef %3, ptr noundef %5, i32 noundef %7) #12
  %8 = call ptr @memset(ptr %sparm_dma_buf, i32 0, i32 24)
  %node_pool = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %node_pool to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node_pool, align 8
  tail call void @mempool_free(ptr noundef %add.ptr, ptr noundef %10) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_node_free_resources(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_node_free(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %tailrecurse

tailrecurse:                                      ; preds = %land.lhs.true5.i.tailrecurse_crit_edge, %entry
  %node.tr = phi ptr [ %node, %entry ], [ %ns.0, %land.lhs.true5.i.tailrecurse_crit_edge ]
  %nport1 = getelementptr inbounds %struct.efc_node, ptr %node.tr, i32 0, i32 2
  %0 = ptrtoint ptr %nport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nport1, align 4
  %2 = ptrtoint ptr %node.tr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node.tr, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node.tr, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef %display_name) #15
  %refound = getelementptr inbounds %struct.efc_node, ptr %node.tr, i32 0, i32 27
  %6 = ptrtoint ptr %refound to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %refound, align 2, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %tailrecurse.if.end_crit_edge, label %if.then

tailrecurse.if.end_crit_edge:                     ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %nport1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nport1, align 4
  %lookup.i = getelementptr inbounds %struct.efc_nport, ptr %9, i32 0, i32 23
  %call.i = tail call ptr @xa_load(ptr noundef %lookup.i, i32 noundef 16777212) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %tailrecurse.if.end_crit_edge
  %ns.0 = phi ptr [ %call.i, %if.then ], [ null, %tailrecurse.if.end_crit_edge ]
  %10 = ptrtoint ptr %nport1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nport1, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.23) #15
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %rnode = getelementptr inbounds %struct.efc_node, ptr %node.tr, i32 0, i32 17
  %call14 = tail call i32 @efc_node_free_resources(ptr noundef %3, ptr noundef %rnode) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %do.end18, label %if.end13.if.end21_crit_edge

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.26, i32 noundef %call14) #15
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %if.end13.if.end21_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.efc_node, ptr %node.tr, i32 0, i32 43, i32 0, i32 1
  %16 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.not, label %if.end21.if.end27_crit_edge, label %if.then24

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %gidpt_delay_timer = getelementptr inbounds %struct.efc_node, ptr %node.tr, i32 0, i32 43
  %call26 = tail call i32 @del_timer(ptr noundef %gidpt_delay_timer) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21.if.end27_crit_edge
  %lookup = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 23
  %fc_id = getelementptr inbounds %struct.efc_node, ptr %node.tr, i32 0, i32 17, i32 2
  %18 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fc_id, align 4
  %call29 = tail call ptr @xa_erase(ptr noundef %lookup, i32 noundef %19) #12
  %xa_head.i = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 23, i32 2
  %20 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xa_head.i, align 4
  %cmp.i = icmp eq ptr %21, null
  br i1 %cmp.i, label %if.then32, label %if.end27.if.end34_crit_edge

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %sm = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 22
  %call33 = tail call i32 @efc_sm_post_event(ptr noundef %sm, i32 noundef 4, ptr noundef null) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end27.if.end34_crit_edge
  %22 = ptrtoint ptr %nport1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %nport1, align 4
  %sm36 = getelementptr inbounds %struct.efc_node, ptr %node.tr, i32 0, i32 18
  %23 = ptrtoint ptr %sm36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %sm36, align 4
  %ref = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 1
  %release = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #12
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #12, !srcloc !178
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !176

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !179
  tail call void %25(ptr noundef %ref) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %ref38 = getelementptr inbounds %struct.efc_node, ptr %node.tr, i32 0, i32 3
  %release39 = getelementptr inbounds %struct.efc_node, ptr %node.tr, i32 0, i32 4
  %27 = ptrtoint ptr %release39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %release39, align 4
  %call.i.i.i.i.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref38, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @llvm.prefetch.p0(ptr %ref38, i32 1, i32 3, i32 1) #12
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref38, ptr %ref38, i32 1, ptr elementtype(i32) %ref38) #12, !srcloc !178
  %asmresult.i.i.i.i.i.i.i70 = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i70)
  %cmp.i.i.i.i71 = icmp eq i32 %asmresult.i.i.i.i.i.i.i70, 1
  br i1 %cmp.i.i.i.i71, label %if.then.i75, label %if.end5.i.i.i.i73

if.end5.i.i.i.i73:                                ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i70)
  %.not.i.i.i.i72 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i70, 0
  br i1 %.not.i.i.i.i72, label %if.end5.i.i.i.i73.kref_put.exit76_crit_edge, label %if.then10.i.i.i.i74, !prof !176

if.end5.i.i.i.i73.kref_put.exit76_crit_edge:      ; preds = %if.end5.i.i.i.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit76

if.then10.i.i.i.i74:                              ; preds = %if.end5.i.i.i.i73
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %ref38, i32 noundef 3) #12
  br label %kref_put.exit76

if.then.i75:                                      ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !179
  tail call void %28(ptr noundef %ref38) #12
  br label %kref_put.exit76

kref_put.exit76:                                  ; preds = %if.then.i75, %if.then10.i.i.i.i74, %if.end5.i.i.i.i73.kref_put.exit76_crit_edge
  %tobool41.not = icmp eq ptr %ns.0, null
  br i1 %tobool41.not, label %kref_put.exit76.cleanup_crit_edge, label %if.then42

kref_put.exit76.cleanup_crit_edge:                ; preds = %kref_put.exit76
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then42:                                        ; preds = %kref_put.exit76
  %evtdepth.i = getelementptr inbounds %struct.efc_node, ptr %ns.0, i32 0, i32 19
  %30 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %evtdepth.i, align 8
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %evtdepth.i, align 8
  %sm.i = getelementptr inbounds %struct.efc_node, ptr %ns.0, i32 0, i32 18
  %call.i77 = tail call i32 @efc_sm_post_event(ptr noundef %sm.i, i32 noundef 60, ptr noundef null) #12
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %ns.0, i32 0, i32 5
  %32 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hold_frames.i, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then42.if.end.i_crit_edge

if.then42.if.end.i_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then42
  %34 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.i78 = icmp eq i32 %35, 1
  br i1 %cmp.i78, label %if.then.i79, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i79:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_process_node_pending(ptr noundef nonnull %ns.0) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i79, %land.lhs.true.i.if.end.i_crit_edge, %if.then42.if.end.i_crit_edge
  %36 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %evtdepth.i, align 8
  %dec.i = add i32 %37, -1
  store i32 %dec.i, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp4.i = icmp eq i32 %dec.i, 0
  br i1 %cmp4.i, label %land.lhs.true5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true5.i:                                 ; preds = %if.end.i
  %req_free.i = getelementptr inbounds %struct.efc_node, ptr %ns.0, i32 0, i32 12
  %38 = ptrtoint ptr %req_free.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %req_free.i, align 1, !range !172
  %tobool6.not.i.not = icmp eq i8 %39, 0
  br i1 %tobool6.not.i.not, label %land.lhs.true5.i.cleanup_crit_edge, label %land.lhs.true5.i.tailrecurse_crit_edge

land.lhs.true5.i.tailrecurse_crit_edge:           ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tailrecurse

land.lhs.true5.i.cleanup_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %kref_put.exit76.cleanup_crit_edge, %do.end10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_sm_post_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_node_attach(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nport1 = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %nport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nport1, align 4
  %domain2 = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %domain2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain2, align 8
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 8
  %attached = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %attached, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pci = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %wwpn = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 46
  %fl_wwpn.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 29, i32 20
  %10 = ptrtoint ptr %fl_wwpn.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %fl_wwpn.i, align 1
  %12 = call ptr @memset(ptr %wwpn, i32 0, i32 32)
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %wwpn, i32 noundef 32, ptr noundef nonnull @.str.53, i64 noundef %11) #12
  %wwnn = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 45
  %fl_wwnn.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 29, i32 28
  %13 = ptrtoint ptr %fl_wwnn.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %fl_wwnn.i, align 1
  %15 = call ptr @memset(ptr %wwnn, i32 0, i32 32)
  %call.i38 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %wwnn, i32 noundef 32, ptr noundef nonnull @.str.53, i64 noundef %14) #12
  %sparm_dma_buf = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 28
  %add.ptr = getelementptr %struct.efc_node, ptr %node, i32 0, i32 29, i32 4
  %tobool.not.i = icmp eq ptr %sparm_dma_buf, null
  %tobool1.not.i = icmp eq ptr %add.ptr, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.end.efc_dma_copy_in.exit_crit_edge, label %if.end.i

if.end.efc_dma_copy_in.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_dma_copy_in.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %size.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 28, i32 3
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 116) #12
  %19 = ptrtoint ptr %sparm_dma_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sparm_dma_buf, align 4
  %21 = call ptr @memcpy(ptr %20, ptr %add.ptr, i32 %18)
  %len.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 28, i32 4
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %18, ptr %len.i, align 4
  br label %efc_dma_copy_in.exit

efc_dma_copy_in.exit:                             ; preds = %if.end.i, %if.end.efc_dma_copy_in.exit_crit_edge
  %rnode = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 17
  %call8 = tail call i32 @efc_cmd_node_attach(ptr noundef %5, ptr noundef %rnode, ptr noundef %sparm_dma_buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.body10, label %efc_dma_copy_in.exit.cleanup_crit_edge

efc_dma_copy_in.exit.cleanup_crit_edge:           ; preds = %efc_dma_copy_in.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body10:                                        ; preds = %efc_dma_copy_in.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_node_attach.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_node_attach, %if.then15)) #12
          to label %cleanup [label %if.then15], !srcloc !173

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  %pci16 = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %pci16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci16, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_node_attach.__UNIQUE_ID_ddebug314, ptr noundef %dev17, ptr noundef nonnull @.str.30, i32 noundef %call8) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body10, %efc_dma_copy_in.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call8, %if.then15 ], [ %call8, %efc_dma_copy_in.exit.cleanup_crit_edge ], [ %call8, %do.body10 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_node_build_eui_name(ptr nocapture noundef writeonly %buf, i32 noundef %buf_len, i64 noundef %eui_name) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %buf, i32 0, i32 %buf_len)
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %buf_len, ptr noundef nonnull @.str.53, i64 noundef %eui_name)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @efc_node_get_wwpn(ptr nocapture noundef readonly %node) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fl_wwpn = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 29, i32 20
  %0 = ptrtoint ptr %fl_wwpn to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %fl_wwpn, align 1
  ret i64 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @efc_node_get_wwnn(ptr nocapture noundef readonly %node) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fl_wwnn = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 29, i32 28
  %0 = ptrtoint ptr %fl_wwnn to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %fl_wwnn, align 1
  ret i64 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_cmd_node_attach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_node_fcid_display(i32 noundef %fc_id, ptr nocapture noundef writeonly %buffer, i32 noundef %buffer_length) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fc_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fc_id, label %if.else [
    i32 16777214, label %sw.bb
    i32 16777213, label %sw.bb1
    i32 16777212, label %sw.bb3
    i32 16776192, label %if.then
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef %buffer_length, ptr noundef nonnull @.str.31)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef %buffer_length, ptr noundef nonnull @.str.32)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef %buffer_length, ptr noundef nonnull @.str.33)
  br label %sw.epilog

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef %buffer_length, ptr noundef nonnull @.str.34, i32 noundef 0)
  br label %sw.epilog

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef %buffer_length, ptr noundef nonnull @.str.35, i32 noundef %fc_id)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then, %sw.bb3, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_node_send_ls_io_cleanup(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %send_ls_acc = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 20
  %0 = ptrtoint ptr %send_ls_acc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %send_ls_acc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %do.body

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_node_send_ls_io_cleanup.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_node_send_ls_io_cleanup, %if.then3)) #12
          to label %do.end [label %if.then3], !srcloc !173

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  %ls_acc_oxid = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 22
  %6 = ptrtoint ptr %ls_acc_oxid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ls_acc_oxid, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_node_send_ls_io_cleanup.__UNIQUE_ID_ddebug315, ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef %display_name, i32 noundef %7) #12
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body
  %8 = ptrtoint ptr %send_ls_acc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %send_ls_acc, align 4
  %ls_acc_io = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 21
  %9 = ptrtoint ptr %ls_acc_io to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ls_acc_io, align 8
  br label %if.end5

if.end5:                                          ; preds = %do.end, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_node_shutdown(ptr nocapture noundef readonly %ctx, i32 noundef %evt, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.72, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #12
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_node_shutdown.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_node_shutdown, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_node_shutdown.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_node_shutdown, ptr noundef %call3) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %evt, label %sw.default49 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb48
  ]

sw.bb:                                            ; preds = %do.end
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  %els_ios_list = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 14
  %els_ios_lock.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %els_ios_lock.i) #12
  %14 = ptrtoint ptr %els_ios_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %els_ios_list, align 4
  %cmp.i.i.not = icmp eq ptr %15, %els_ios_list
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %els_ios_lock.i, i32 noundef %call2.i) #12
  br i1 %cmp.i.i.not, label %sw.bb.if.end29_crit_edge, label %do.end23, !prof !176

sw.bb.if.end29_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

do.end23:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 375, i32 noundef 9, ptr noundef null) #12
  br label %if.end29

if.end29:                                         ; preds = %do.end23, %sw.bb.if.end29_crit_edge
  %req_free = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %req_free to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %req_free, align 1
  %shutdown_reason = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %17 = ptrtoint ptr %shutdown_reason to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %shutdown_reason, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %18, label %sw.default [
    i32 2, label %sw.bb37
    i32 1, label %sw.bb38
  ]

sw.bb37:                                          ; preds = %if.end29
  %send_ls_acc.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 20
  %20 = ptrtoint ptr %send_ls_acc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %send_ls_acc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 1
  br i1 %cmp.not.i, label %sw.bb37.if.end.i_crit_edge, label %do.end.i, !prof !176

sw.bb37.if.end.i_crit_edge:                       ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 279, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.bb37.if.end.i_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %pci.i = getelementptr inbounds %struct.efc, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %display_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.60, ptr noundef %display_name.i) #15
  %26 = ptrtoint ptr %req_free to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %req_free, align 1
  %call.i70 = tail call i32 @efc_node_attach(ptr noundef %1) #12
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_d_wait_node_attach, ptr noundef null) #12
  %els_io_enabled.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %els_io_enabled.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %els_io_enabled.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp22.i = icmp slt i32 %call.i70, 0
  br i1 %cmp22.i, label %if.then23.i, label %if.end.i.sw.epilog50_crit_edge

if.end.i.sw.epilog50_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog50

if.then23.i:                                      ; preds = %if.end.i
  %evtdepth.i.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 19
  %28 = ptrtoint ptr %evtdepth.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %evtdepth.i.i, align 8
  %inc.i.i = add i32 %29, 1
  store i32 %inc.i.i, ptr %evtdepth.i.i, align 8
  %sm.i.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 18
  %call.i.i = tail call i32 @efc_sm_post_event(ptr noundef %sm.i.i, i32 noundef 39, ptr noundef null) #12
  %30 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hold_frames.i, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then23.i.if.end.i.i_crit_edge

if.then23.i.if.end.i.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then23.i
  %32 = ptrtoint ptr %evtdepth.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %evtdepth.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i.i71 = icmp eq i32 %33, 1
  br i1 %cmp.i.i71, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_process_node_pending(ptr noundef %1) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then23.i.if.end.i.i_crit_edge
  %34 = ptrtoint ptr %evtdepth.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %evtdepth.i.i, align 8
  %dec.i.i = add i32 %35, -1
  store i32 %dec.i.i, ptr %evtdepth.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp4.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp4.i.i, label %land.lhs.true5.i.i, label %if.end.i.i.sw.epilog50_crit_edge

if.end.i.i.sw.epilog50_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog50

land.lhs.true5.i.i:                               ; preds = %if.end.i.i
  %36 = ptrtoint ptr %req_free to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %req_free, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool6.not.not.i.i = icmp eq i8 %37, 0
  br i1 %tobool6.not.not.i.i, label %land.lhs.true5.i.i.sw.epilog50_crit_edge, label %if.then10.i.i

land.lhs.true5.i.i.sw.epilog50_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog50

if.then10.i.i:                                    ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_node_free(ptr noundef %1) #12
  br label %sw.epilog50

sw.bb38:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @efc_node_handle_explicit_logo(ptr noundef %1)
  br label %sw.epilog50

sw.default:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_node_send_ls_io_cleanup(ptr noundef %1)
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %pci44 = getelementptr inbounds %struct.efc, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %pci44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pci44, align 4
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %display_name46 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev45, ptr noundef nonnull @.str.40, ptr noundef %display_name46) #15
  tail call fastcc void @efc_node_purge_pending(ptr noundef %1)
  br label %sw.epilog50

sw.bb48:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %hold_frames.i72 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %42 = ptrtoint ptr %hold_frames.i72 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %hold_frames.i72, align 8
  br label %sw.epilog50

sw.default49:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_node_shutdown, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %sw.epilog50

sw.epilog50:                                      ; preds = %sw.default49, %sw.bb48, %sw.default, %sw.bb38, %if.then10.i.i, %land.lhs.true5.i.i.sw.epilog50_crit_edge, %if.end.i.i.sw.epilog50_crit_edge, %if.end.i.sw.epilog50_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efc_sm_event_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_els_io_list_empty(ptr noundef %node, ptr noundef %list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %els_ios_lock = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %els_ios_lock) #12
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.i = icmp eq ptr %1, %list
  %conv.i = zext i1 %cmp.i to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %els_ios_lock, i32 noundef %call2) #12
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efc_node_handle_explicit_logo(ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %send_ls_acc.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 20
  %0 = ptrtoint ptr %send_ls_acc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %send_ls_acc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %entry.efc_node_send_ls_io_cleanup.exit_crit_edge, label %do.body.i

entry.efc_node_send_ls_io_cleanup.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_send_ls_io_cleanup.exit

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_node_send_ls_io_cleanup.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_node_handle_explicit_logo, %if.then3.i)) #12
          to label %do.end.i [label %if.then3.i], !srcloc !173

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 8
  %pci.i = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  %ls_acc_oxid.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 22
  %6 = ptrtoint ptr %ls_acc_oxid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ls_acc_oxid.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_node_send_ls_io_cleanup.__UNIQUE_ID_ddebug315, ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef %display_name.i, i32 noundef %7) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i, %do.body.i
  %8 = ptrtoint ptr %send_ls_acc.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %send_ls_acc.i, align 4
  %ls_acc_io.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 21
  %9 = ptrtoint ptr %ls_acc_io.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ls_acc_io.i, align 8
  br label %efc_node_send_ls_io_cleanup.exit

efc_node_send_ls_io_cleanup.exit:                 ; preds = %do.end.i, %entry.efc_node_send_ls_io_cleanup.exit_crit_edge
  %pend_frames_lock = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 30
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pend_frames_lock) #12
  %pend_frames = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 31
  %10 = ptrtoint ptr %pend_frames to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %pend_frames, align 4
  %cmp.i = icmp ne ptr %11, %pend_frames
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pend_frames_lock, i32 noundef %call2) #12
  %12 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  %lnot.ext = zext i1 %cmp.i to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef %display_name, i32 noundef %lnot.ext) #15
  %16 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %node, align 8
  %pci15 = getelementptr inbounds %struct.efc, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %pci15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci15, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %nport = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 2
  %20 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nport, align 4
  %enable_ini = getelementptr inbounds %struct.efc_nport, ptr %21, i32 0, i32 24
  %22 = ptrtoint ptr %enable_ini to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enable_ini, align 8, !range !172
  %24 = zext i8 %23 to i32
  %targ = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 25
  %25 = ptrtoint ptr %targ to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %targ, align 8, !range !172
  %27 = zext i8 %26 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16, ptr noundef nonnull @.str.65, ptr noundef %display_name, i32 noundef %24, i32 noundef %27) #15
  br i1 %cmp.i, label %efc_node_send_ls_io_cleanup.exit.if.then_crit_edge, label %lor.lhs.false

efc_node_send_ls_io_cleanup.exit.if.then_crit_edge: ; preds = %efc_node_send_ls_io_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %efc_node_send_ls_io_cleanup.exit
  %28 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nport, align 4
  %enable_ini25 = getelementptr inbounds %struct.efc_nport, ptr %29, i32 0, i32 24
  %30 = ptrtoint ptr %enable_ini25 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %enable_ini25, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool26.not = icmp eq i8 %31, 0
  br i1 %tobool26.not, label %lor.lhs.false.if.end41_crit_edge, label %land.lhs.true

lor.lhs.false.if.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

land.lhs.true:                                    ; preds = %lor.lhs.false
  %32 = ptrtoint ptr %targ to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %targ, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool29.not = icmp eq i8 %33, 0
  br i1 %tobool29.not, label %land.lhs.true.if.end41_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %efc_node_send_ls_io_cleanup.exit.if.then_crit_edge
  %34 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nport, align 4
  %enable_ini32 = getelementptr inbounds %struct.efc_nport, ptr %35, i32 0, i32 24
  %36 = ptrtoint ptr %enable_ini32 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %enable_ini32, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool33.not = icmp eq i8 %37, 0
  br i1 %tobool33.not, label %if.then.if.end_crit_edge, label %land.lhs.true35

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true35:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %targ to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %targ, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool37.not = icmp ne i8 %39, 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true35, %if.then.if.end_crit_edge
  %tobool40 = phi i1 [ false, %if.then.if.end_crit_edge ], [ %tobool37.not, %land.lhs.true35 ]
  %els_io_enabled = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 6
  %40 = ptrtoint ptr %els_io_enabled to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %els_io_enabled, align 1
  %req_free = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 12
  %41 = ptrtoint ptr %req_free to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %req_free, align 1
  tail call void @efc_node_init_device(ptr noundef %node, i1 noundef zeroext %tobool40) #12
  br label %if.end41

if.end41:                                         ; preds = %if.end, %land.lhs.true.if.end41_crit_edge, %lor.lhs.false.if.end41_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efc_node_purge_pending(ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %pend_frames_lock = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 30
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pend_frames_lock) #12
  %pend_frames = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 31
  %2 = ptrtoint ptr %pend_frames to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pend_frames, align 8
  %cmp14.not33 = icmp eq ptr %3, %pend_frames
  br i1 %cmp14.not33, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hw_seq_free = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 15, i32 7
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %frame.034 = phi ptr [ %3, %for.body.lr.ph ], [ %next.0, %list_del.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %frame.034 to i32
  call void @__asan_load4_noabort(i32 %4)
  %next.0 = load ptr, ptr %frame.034, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %frame.034) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %frame.034, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %frame.034 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %frame.034, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %frame.034 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %frame.034, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %frame.034, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %13 = ptrtoint ptr %hw_seq_free to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_seq_free, align 4
  %call17 = tail call i32 %14(ptr noundef %1, ptr noundef %frame.034) #12
  %cmp14.not = icmp eq ptr %next.0, %pend_frames
  br i1 %cmp14.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pend_frames_lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_node_common(ptr noundef %funcname, ptr nocapture noundef readonly %ctx, i32 noundef %evt, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %evt, label %do.body143 [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge207
    i32 2, label %entry.sw.epilog_crit_edge208
    i32 26, label %entry.sw.epilog_crit_edge209
    i32 48, label %entry.sw.epilog_crit_edge210
    i32 63, label %entry.sw.epilog_crit_edge211
    i32 49, label %sw.bb2
    i32 38, label %sw.bb3
    i32 40, label %entry.sw.bb4_crit_edge
    i32 39, label %entry.sw.bb4_crit_edge212
    i32 34, label %entry.sw.bb6_crit_edge
    i32 36, label %entry.sw.bb6_crit_edge213
    i32 33, label %entry.sw.bb31_crit_edge
    i32 35, label %entry.sw.bb31_crit_edge214
    i32 37, label %entry.sw.bb31_crit_edge215
    i32 44, label %entry.sw.bb31_crit_edge216
    i32 62, label %sw.bb70
    i32 52, label %entry.sw.bb88_crit_edge
    i32 53, label %entry.sw.bb88_crit_edge217
    i32 54, label %entry.sw.bb88_crit_edge218
    i32 55, label %entry.sw.bb88_crit_edge219
    i32 56, label %entry.sw.bb88_crit_edge220
    i32 57, label %entry.sw.bb88_crit_edge221
    i32 58, label %entry.sw.bb88_crit_edge222
    i32 59, label %entry.sw.bb88_crit_edge223
    i32 60, label %entry.sw.bb88_crit_edge224
    i32 61, label %entry.sw.bb88_crit_edge225
    i32 47, label %do.body118
  ]

entry.sw.bb88_crit_edge225:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb88

entry.sw.bb88_crit_edge224:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb88

entry.sw.bb88_crit_edge223:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb88

entry.sw.bb88_crit_edge222:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb88

entry.sw.bb88_crit_edge221:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb88

entry.sw.bb88_crit_edge220:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb88

entry.sw.bb88_crit_edge219:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb88

entry.sw.bb88_crit_edge218:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb88

entry.sw.bb88_crit_edge217:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb88

entry.sw.bb88_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb88

entry.sw.bb31_crit_edge216:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb31

entry.sw.bb31_crit_edge215:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb31

entry.sw.bb31_crit_edge214:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb31

entry.sw.bb31_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb31

entry.sw.bb6_crit_edge213:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb4_crit_edge212:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.epilog_crit_edge211:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge210:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge209:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge208:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge207:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %refound = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 27
  %5 = ptrtoint ptr %refound to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %refound, align 2
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %attached = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %attached to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %attached, align 2
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge212
  %attached5 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %attached5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %attached5, align 2
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge213
  %els_cmpl_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 36
  %8 = ptrtoint ptr %els_cmpl_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %els_cmpl_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.end, label %if.end29.critedge, !prof !175

do.end:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 688, i32 noundef 9, ptr noundef null) #12
  br label %sw.epilog

if.end29.critedge:                                ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  %dec = add i32 %9, -1
  %10 = ptrtoint ptr %els_cmpl_cnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dec, ptr %els_cmpl_cnt, align 8
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry.sw.bb31_crit_edge, %entry.sw.bb31_crit_edge214, %entry.sw.bb31_crit_edge215, %entry.sw.bb31_crit_edge216
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %11 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %els_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool33.not = icmp eq i32 %12, 0
  br i1 %tobool33.not, label %do.end51, label %if.end67.critedge, !prof !175

do.end51:                                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 702, i32 noundef 9, ptr noundef null) #12
  br label %sw.epilog

if.end67.critedge:                                ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #14
  %dec69 = add i32 %12, -1
  %13 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dec69, ptr %els_req_cnt, align 4
  br label %sw.epilog

sw.bb70:                                          ; preds = %entry
  %header = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %14 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %header, align 4
  %dma = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_node_common.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_node_common, %if.then80)) #12
          to label %do.end85 [label %if.then80], !srcloc !173

if.then80:                                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #14
  %pci = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %payload = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 3
  %20 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %payload, align 4
  %dma81 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %dma81 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma81, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %conv = zext i8 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_node_common.__UNIQUE_ID_ddebug321, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef %display_name, ptr noundef %funcname, i32 noundef %conv) #12
  br label %do.end85

do.end85:                                         ; preds = %if.then80, %sw.bb70
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %17, i32 0, i32 9
  %26 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %fh_ox_id, align 4
  %conv86 = zext i16 %27 to i32
  %call87 = tail call i32 @efc_send_ls_rjt(ptr noundef %1, i32 noundef %conv86, i32 noundef 11, i32 noundef 0, i32 noundef 0) #12
  br label %sw.epilog

sw.bb88:                                          ; preds = %entry.sw.bb88_crit_edge, %entry.sw.bb88_crit_edge217, %entry.sw.bb88_crit_edge218, %entry.sw.bb88_crit_edge219, %entry.sw.bb88_crit_edge220, %entry.sw.bb88_crit_edge221, %entry.sw.bb88_crit_edge222, %entry.sw.bb88_crit_edge223, %entry.sw.bb88_crit_edge224, %entry.sw.bb88_crit_edge225
  %header90 = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %28 = ptrtoint ptr %header90 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %header90, align 4
  %dma91 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %dma91 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma91, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_node_common.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_node_common, %if.then105)) #12
          to label %do.end113 [label %if.then105], !srcloc !173

if.then105:                                       ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #14
  %pci106 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %pci106 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci106, align 4
  %dev107 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %display_name108 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call110 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_node_common.__UNIQUE_ID_ddebug322, ptr noundef %dev107, ptr noundef nonnull @.str.50, ptr noundef %display_name108, ptr noundef %funcname, ptr noundef %call110) #12
  br label %do.end113

do.end113:                                        ; preds = %if.then105, %sw.bb88
  %fh_ox_id114 = getelementptr inbounds %struct.fc_frame_header, ptr %31, i32 0, i32 9
  %34 = ptrtoint ptr %fh_ox_id114 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %fh_ox_id114, align 4
  %conv115 = zext i16 %35 to i32
  %call116 = tail call i32 @efc_send_ls_rjt(ptr noundef %1, i32 noundef %conv115, i32 noundef 9, i32 noundef 0, i32 noundef 0) #12
  br label %sw.epilog

do.body118:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_node_common.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_node_common, %if.then130)) #12
          to label %do.end138 [label %if.then130], !srcloc !173

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #14
  %pci131 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %36 = ptrtoint ptr %pci131 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci131, align 4
  %dev132 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %display_name133 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call135 = tail call ptr @efc_sm_event_name(i32 noundef 47) #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_node_common.__UNIQUE_ID_ddebug323, ptr noundef %dev132, ptr noundef nonnull @.str.51, ptr noundef %display_name133, ptr noundef %funcname, ptr noundef %call135) #12
  br label %do.end138

do.end138:                                        ; preds = %if.then130, %do.body118
  %header139 = getelementptr inbounds %struct.efc_node_cb, ptr %arg, i32 0, i32 2
  %38 = ptrtoint ptr %header139 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %header139, align 4
  %dma140 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %dma140 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dma140, align 4
  %call142 = tail call i32 @efc_send_bls_acc(ptr noundef %1, ptr noundef %41) #12
  br label %sw.epilog

do.body143:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_node_common.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_node_common, %if.then155)) #12
          to label %sw.epilog [label %if.then155], !srcloc !173

if.then155:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %pci157 = getelementptr inbounds %struct.efc, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %pci157 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pci157, align 4
  %dev158 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %display_name159 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call161 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_node_common.__UNIQUE_ID_ddebug324, ptr noundef %dev158, ptr noundef nonnull @.str.52, ptr noundef %display_name159, ptr noundef %funcname, ptr noundef %call161) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then155, %do.body143, %do.end138, %do.end113, %do.end85, %if.end67.critedge, %do.end51, %if.end29.critedge, %do.end, %sw.bb4, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge207, %entry.sw.epilog_crit_edge208, %entry.sw.epilog_crit_edge209, %entry.sw.epilog_crit_edge210, %entry.sw.epilog_crit_edge211
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_node_initiate_cleanup(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %els_req_cnt.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 35
  %0 = ptrtoint ptr %els_req_cnt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %els_req_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.true.i:                                  ; preds = %entry
  %els_cmpl_cnt.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 36
  %2 = ptrtoint ptr %els_cmpl_cnt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %els_cmpl_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.i = icmp eq i32 %3, 0
  br i1 %cmp1.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.then_crit_edge

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %els_ios_list.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 14
  %els_ios_lock.i.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 13
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %els_ios_lock.i.i) #12
  %4 = ptrtoint ptr %els_ios_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %els_ios_list.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %5, %els_ios_list.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %els_ios_lock.i.i, i32 noundef %call2.i.i) #12
  br i1 %cmp.i.i.not.i, label %efc_node_check_els_quiesced.exit, label %land.lhs.true2.i.if.then_crit_edge

land.lhs.true2.i.if.then_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

efc_node_check_els_quiesced.exit:                 ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  %attached.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 11
  %6 = ptrtoint ptr %attached.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %attached.i, align 2, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not.i = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 8
  %pci.i = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  %.str.67..str.70.i = select i1 %tobool3.not.i, ptr @.str.67, ptr @.str.70
  %__efc_node_wait_ios_shutdown.__efc_node_wait_node_free.i = select i1 %tobool3.not.i, ptr @__efc_node_wait_ios_shutdown, ptr @__efc_node_wait_node_free
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull %.str.67..str.70.i, ptr noundef %display_name.i) #15
  tail call void @efc_node_transition(ptr noundef %node, ptr noundef nonnull %__efc_node_wait_ios_shutdown.__efc_node_wait_node_free.i, ptr noundef null) #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 5
  %12 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %hold_frames.i, align 8
  tail call void @efc_node_transition(ptr noundef %node, ptr noundef nonnull @__efc_node_wait_els_shutdown, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then, %efc_node_check_els_quiesced.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_node_transition(ptr noundef %node, ptr noundef %state, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sm = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 18
  %0 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm, align 4
  %cmp = icmp eq ptr %1, %state
  %evtdepth.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 19
  %2 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %evtdepth.i, align 8
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %evtdepth.i, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @efc_sm_post_event(ptr noundef %sm, i32 noundef 1, ptr noundef %data) #12
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 5
  %4 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hold_frames.i, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %6 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_process_node_pending(ptr noundef %node) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %8 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %evtdepth.i, align 8
  %dec.i = add i32 %9, -1
  store i32 %dec.i, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp4.i = icmp eq i32 %dec.i, 0
  br i1 %cmp4.i, label %land.lhs.true5.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true5.i:                                 ; preds = %if.end.i
  %req_free.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 12
  %10 = ptrtoint ptr %req_free.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %req_free.i, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not.not.i = icmp eq i8 %11, 0
  br i1 %tobool6.not.not.i, label %land.lhs.true5.i.if.end_crit_edge, label %land.lhs.true5.i.if.end.sink.split_crit_edge

land.lhs.true5.i.if.end.sink.split_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.sink.split

land.lhs.true5.i.if.end_crit_edge:                ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i12 = tail call i32 @efc_sm_post_event(ptr noundef %sm, i32 noundef 2, ptr noundef %data) #12
  %hold_frames.i13 = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 5
  %12 = ptrtoint ptr %hold_frames.i13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hold_frames.i13, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i14 = icmp eq i8 %13, 0
  br i1 %tobool.not.i14, label %land.lhs.true.i16, label %if.else.if.end.i20_crit_edge

if.else.if.end.i20_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i20

land.lhs.true.i16:                                ; preds = %if.else
  %14 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i15 = icmp eq i32 %15, 1
  br i1 %cmp.i15, label %if.then.i17, label %land.lhs.true.i16.if.end.i20_crit_edge

land.lhs.true.i16.if.end.i20_crit_edge:           ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i20

if.then.i17:                                      ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_process_node_pending(ptr noundef %node) #12
  br label %if.end.i20

if.end.i20:                                       ; preds = %if.then.i17, %land.lhs.true.i16.if.end.i20_crit_edge, %if.else.if.end.i20_crit_edge
  %16 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %evtdepth.i, align 8
  %dec.i18 = add i32 %17, -1
  store i32 %dec.i18, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i18)
  %cmp4.i19 = icmp eq i32 %dec.i18, 0
  br i1 %cmp4.i19, label %land.lhs.true5.i23, label %if.end.i20.efc_node_post_event.exit25_crit_edge

if.end.i20.efc_node_post_event.exit25_crit_edge:  ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit25

land.lhs.true5.i23:                               ; preds = %if.end.i20
  %req_free.i21 = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 12
  %18 = ptrtoint ptr %req_free.i21 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %req_free.i21, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool6.not.not.i22 = icmp eq i8 %19, 0
  br i1 %tobool6.not.not.i22, label %land.lhs.true5.i23.efc_node_post_event.exit25_crit_edge, label %if.then10.i24

land.lhs.true5.i23.efc_node_post_event.exit25_crit_edge: ; preds = %land.lhs.true5.i23
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit25

if.then10.i24:                                    ; preds = %land.lhs.true5.i23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_node_free(ptr noundef %node) #12
  br label %efc_node_post_event.exit25

efc_node_post_event.exit25:                       ; preds = %if.then10.i24, %land.lhs.true5.i23.efc_node_post_event.exit25_crit_edge, %if.end.i20.efc_node_post_event.exit25_crit_edge
  %20 = ptrtoint ptr %sm to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %state, ptr %sm, align 4
  %21 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %evtdepth.i, align 8
  %inc.i27 = add i32 %22, 1
  store i32 %inc.i27, ptr %evtdepth.i, align 8
  %call.i29 = tail call i32 @efc_sm_post_event(ptr noundef %sm, i32 noundef 0, ptr noundef %data) #12
  %23 = ptrtoint ptr %hold_frames.i13 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hold_frames.i13, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i31 = icmp eq i8 %24, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i33, label %efc_node_post_event.exit25.if.end.i37_crit_edge

efc_node_post_event.exit25.if.end.i37_crit_edge:  ; preds = %efc_node_post_event.exit25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i37

land.lhs.true.i33:                                ; preds = %efc_node_post_event.exit25
  %25 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i32 = icmp eq i32 %26, 1
  br i1 %cmp.i32, label %if.then.i34, label %land.lhs.true.i33.if.end.i37_crit_edge

land.lhs.true.i33.if.end.i37_crit_edge:           ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i37

if.then.i34:                                      ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_process_node_pending(ptr noundef %node) #12
  br label %if.end.i37

if.end.i37:                                       ; preds = %if.then.i34, %land.lhs.true.i33.if.end.i37_crit_edge, %efc_node_post_event.exit25.if.end.i37_crit_edge
  %27 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %evtdepth.i, align 8
  %dec.i35 = add i32 %28, -1
  store i32 %dec.i35, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i35)
  %cmp4.i36 = icmp eq i32 %dec.i35, 0
  br i1 %cmp4.i36, label %land.lhs.true5.i40, label %if.end.i37.if.end_crit_edge

if.end.i37.if.end_crit_edge:                      ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true5.i40:                               ; preds = %if.end.i37
  %req_free.i38 = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 12
  %29 = ptrtoint ptr %req_free.i38 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %req_free.i38, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool6.not.not.i39 = icmp eq i8 %30, 0
  br i1 %tobool6.not.not.i39, label %land.lhs.true5.i40.if.end_crit_edge, label %land.lhs.true5.i40.if.end.sink.split_crit_edge

land.lhs.true5.i40.if.end.sink.split_crit_edge:   ; preds = %land.lhs.true5.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.sink.split

land.lhs.true5.i40.if.end_crit_edge:              ; preds = %land.lhs.true5.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.sink.split:                                ; preds = %land.lhs.true5.i40.if.end.sink.split_crit_edge, %land.lhs.true5.i.if.end.sink.split_crit_edge
  tail call void @efc_node_free(ptr noundef %node) #12
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %land.lhs.true5.i40.if.end_crit_edge, %if.end.i37.if.end_crit_edge, %land.lhs.true5.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_node_wait_els_shutdown(ptr nocapture noundef readonly %ctx, i32 noundef %evt, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.75, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #12
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_node_wait_els_shutdown.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_node_wait_els_shutdown, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_node_wait_els_shutdown.__UNIQUE_ID_ddebug317, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_node_wait_els_shutdown, ptr noundef %call3) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %evt, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb16
    i32 33, label %do.end.sw.bb17_crit_edge
    i32 35, label %do.end.sw.bb17_crit_edge195
    i32 37, label %do.end.sw.bb17_crit_edge196
    i32 44, label %do.end.sw.bb17_crit_edge197
    i32 34, label %do.end.sw.bb54_crit_edge
    i32 36, label %do.end.sw.bb54_crit_edge198
    i32 4, label %do.end96
    i32 65, label %do.end.if.then150_crit_edge
    i32 13, label %do.end.if.end152_crit_edge
    i32 3, label %sw.bb138
    i32 51, label %do.end.do.end142_crit_edge
    i32 50, label %do.end.do.end142_crit_edge199
  ]

do.end.do.end142_crit_edge199:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end142

do.end.do.end142_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end142

do.end.if.end152_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

do.end.if.then150_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then150

do.end.sw.bb54_crit_edge198:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb54

do.end.sw.bb54_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb54

do.end.sw.bb17_crit_edge197:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb17

do.end.sw.bb17_crit_edge196:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb17

do.end.sw.bb17_crit_edge195:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb17

do.end.sw.bb17_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb17

sw.bb:                                            ; preds = %do.end
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  %els_ios_list = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 14
  %els_ios_lock.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %els_ios_lock.i) #12
  %14 = ptrtoint ptr %els_ios_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %els_ios_list, align 4
  %cmp.i.i.not = icmp eq ptr %15, %els_ios_list
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %els_ios_lock.i, i32 noundef %call2.i) #12
  br i1 %cmp.i.i.not, label %do.end9, label %sw.bb.if.end152_crit_edge

sw.bb.if.end152_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

do.end9:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %pci11 = getelementptr inbounds %struct.efc, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %pci11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci11, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %display_name13 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.41, ptr noundef %display_name13) #15
  br label %if.then150

sw.bb16:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %hold_frames.i191 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %hold_frames.i191 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %hold_frames.i191, align 8
  br label %if.end152

sw.bb17:                                          ; preds = %do.end.sw.bb17_crit_edge, %do.end.sw.bb17_crit_edge195, %do.end.sw.bb17_crit_edge196, %do.end.sw.bb17_crit_edge197
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %21 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %els_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool18.not = icmp eq i32 %22, 0
  br i1 %tobool18.not, label %do.end36, label %if.end52.critedge, !prof !175

do.end36:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 490, i32 noundef 9, ptr noundef null) #12
  br label %if.end152

if.end52.critedge:                                ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #14
  %dec = add i32 %22, -1
  %23 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %dec, ptr %els_req_cnt, align 4
  br label %if.then150

sw.bb54:                                          ; preds = %do.end.sw.bb54_crit_edge, %do.end.sw.bb54_crit_edge198
  %els_cmpl_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 36
  %24 = ptrtoint ptr %els_cmpl_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %els_cmpl_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool56.not = icmp eq i32 %25, 0
  br i1 %tobool56.not, label %do.end74, label %if.end90.critedge, !prof !175

do.end74:                                         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 498, i32 noundef 9, ptr noundef null) #12
  br label %if.end152

if.end90.critedge:                                ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #14
  %dec92 = add i32 %25, -1
  %26 = ptrtoint ptr %els_cmpl_cnt to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %dec92, ptr %els_cmpl_cnt, align 8
  br label %if.then150

do.end96:                                         ; preds = %do.end
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %pci98 = getelementptr inbounds %struct.efc, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pci98 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci98, align 4
  %dev99 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %display_name100 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev99, ptr noundef nonnull @.str.41, ptr noundef %display_name100) #15
  %els_ios_list103 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 14
  %call104 = tail call i32 @efc_els_io_list_empty(ptr noundef %1, ptr noundef %els_ios_list103)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %do.end123, label %do.end96.if.then150_crit_edge, !prof !175

do.end96.if.then150_crit_edge:                    ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then150

do.end123:                                        ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 507, i32 noundef 9, ptr noundef null) #12
  br label %if.then150

sw.bb138:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %shutdown_reason = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %31 = ptrtoint ptr %shutdown_reason to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %shutdown_reason, align 4
  br label %do.end142

do.end142:                                        ; preds = %sw.bb138, %do.end.do.end142_crit_edge, %do.end.do.end142_crit_edge199
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %pci144 = getelementptr inbounds %struct.efc, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %pci144 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci144, align 4
  %dev145 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %display_name146 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call148 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev145, ptr noundef nonnull @.str.45, ptr noundef %display_name146, ptr noundef %call148) #15
  br label %if.end152

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_node_wait_els_shutdown, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %if.end152

if.then150:                                       ; preds = %do.end123, %do.end96.if.then150_crit_edge, %if.end90.critedge, %if.end52.critedge, %do.end9, %do.end.if.then150_crit_edge
  %els_req_cnt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %36 = ptrtoint ptr %els_req_cnt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %els_req_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i = icmp eq i32 %37, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then150.if.end152_crit_edge

if.then150.if.end152_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

land.lhs.true.i:                                  ; preds = %if.then150
  %els_cmpl_cnt.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 36
  %38 = ptrtoint ptr %els_cmpl_cnt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %els_cmpl_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp1.i = icmp eq i32 %39, 0
  br i1 %cmp1.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.end152_crit_edge

land.lhs.true.i.if.end152_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %els_ios_list.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 14
  %els_ios_lock.i.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 13
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %els_ios_lock.i.i) #12
  %40 = ptrtoint ptr %els_ios_list.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %els_ios_list.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %41, %els_ios_list.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %els_ios_lock.i.i, i32 noundef %call2.i.i) #12
  br i1 %cmp.i.i.not.i, label %if.then.i192, label %land.lhs.true2.i.if.end152_crit_edge

land.lhs.true2.i.if.end152_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

if.then.i192:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  %attached.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %attached.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %attached.i, align 2, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool3.not.i = icmp eq i8 %43, 0
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %pci.i = getelementptr inbounds %struct.efc, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %display_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %.str.67..str.70.i = select i1 %tobool3.not.i, ptr @.str.67, ptr @.str.70
  %__efc_node_wait_ios_shutdown.__efc_node_wait_node_free.i = select i1 %tobool3.not.i, ptr @__efc_node_wait_ios_shutdown, ptr @__efc_node_wait_node_free
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull %.str.67..str.70.i, ptr noundef %display_name.i) #15
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull %__efc_node_wait_ios_shutdown.__efc_node_wait_node_free.i, ptr noundef null) #12
  br label %if.end152

if.end152:                                        ; preds = %if.then.i192, %land.lhs.true2.i.if.end152_crit_edge, %land.lhs.true.i.if.end152_crit_edge, %if.then150.if.end152_crit_edge, %sw.default, %do.end142, %do.end74, %do.end36, %sw.bb16, %sw.bb.if.end152_crit_edge, %do.end.if.end152_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_node_wait_node_free(ptr nocapture noundef readonly %ctx, i32 noundef %evt, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.74, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #12
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_node_wait_node_free.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_node_wait_node_free, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_node_wait_node_free.__UNIQUE_ID_ddebug318, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_node_wait_node_free, ptr noundef %call3) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %evt, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 40, label %sw.bb5
    i32 4, label %do.end.sw.epilog_crit_edge
    i32 65, label %do.end.sw.epilog_crit_edge34
    i32 13, label %do.end.sw.epilog_crit_edge35
    i32 3, label %sw.bb7
    i32 51, label %do.end.do.end11_crit_edge
    i32 50, label %do.end.do.end11_crit_edge36
  ]

do.end.do.end11_crit_edge36:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

do.end.do.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

do.end.sw.epilog_crit_edge35:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end.sw.epilog_crit_edge34:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hold_frames.i, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %hold_frames.i32 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %hold_frames.i32 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %hold_frames.i32, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %attached = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %attached to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %attached, align 2
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_node_wait_ios_shutdown, ptr noundef null)
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %shutdown_reason = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %16 = ptrtoint ptr %shutdown_reason to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %shutdown_reason, align 4
  br label %do.end11

do.end11:                                         ; preds = %sw.bb7, %do.end.do.end11_crit_edge, %do.end.do.end11_crit_edge36
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %pci13 = getelementptr inbounds %struct.efc, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %pci13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci13, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %display_name15 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call17 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14, ptr noundef nonnull @.str.45, ptr noundef %display_name15, ptr noundef %call17) #15
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_node_wait_node_free, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end11, %sw.bb5, %sw.bb4, %sw.bb, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge34, %do.end.sw.epilog_crit_edge35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_node_wait_ios_shutdown(ptr nocapture noundef readonly %ctx, i32 noundef %evt, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %5 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.73, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #12
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_node_wait_ios_shutdown.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_node_wait_ios_shutdown, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call5 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_node_wait_ios_shutdown.__UNIQUE_ID_ddebug319, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_node_wait_ios_shutdown, ptr noundef %call5) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %14 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %evt, label %sw.default [
    i32 0, label %sw.bb
    i32 65, label %do.end.sw.bb10_crit_edge
    i32 4, label %do.end.sw.bb10_crit_edge108
    i32 2, label %sw.bb16
    i32 35, label %sw.bb17
    i32 3, label %sw.bb54
    i32 51, label %do.end.do.body56_crit_edge
    i32 50, label %do.end.do.body56_crit_edge109
    i32 13, label %do.end.sw.epilog_crit_edge
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end.do.body56_crit_edge109:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body56

do.end.do.body56_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body56

do.end.sw.bb10_crit_edge108:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

do.end.sw.bb10_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb10

sw.bb:                                            ; preds = %do.end
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %hold_frames.i, align 8
  %els_ios_list = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 14
  %els_ios_lock.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %els_ios_lock.i) #12
  %16 = ptrtoint ptr %els_ios_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %els_ios_list, align 4
  %cmp.i.i.not = icmp eq ptr %17, %els_ios_list
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %els_ios_lock.i, i32 noundef %call2.i) #12
  br i1 %cmp.i.i.not, label %if.then8, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_node_shutdown, ptr noundef null)
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end.sw.bb10_crit_edge, %do.end.sw.bb10_crit_edge108
  %els_ios_list11 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 14
  %els_ios_lock.i101 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 13
  %call2.i102 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %els_ios_lock.i101) #12
  %18 = ptrtoint ptr %els_ios_list11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %els_ios_list11, align 4
  %cmp.i.i103.not = icmp eq ptr %19, %els_ios_list11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %els_ios_lock.i101, i32 noundef %call2.i102) #12
  br i1 %cmp.i.i103.not, label %if.then14, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then14:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef nonnull @__efc_node_shutdown, ptr noundef null)
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %hold_frames.i105 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %hold_frames.i105 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %hold_frames.i105, align 8
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.end
  %els_req_cnt = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 35
  %21 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %els_req_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool18.not = icmp eq i32 %22, 0
  br i1 %tobool18.not, label %do.end36, label %if.end52.critedge, !prof !175

do.end36:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 620, i32 noundef 9, ptr noundef null) #12
  br label %sw.epilog

if.end52.critedge:                                ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #14
  %dec = add i32 %22, -1
  %23 = ptrtoint ptr %els_req_cnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %dec, ptr %els_req_cnt, align 4
  br label %sw.epilog

sw.bb54:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %shutdown_reason = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 24
  %24 = ptrtoint ptr %shutdown_reason to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %shutdown_reason, align 4
  br label %do.body56

do.body56:                                        ; preds = %sw.bb54, %do.end.do.body56_crit_edge, %do.end.do.body56_crit_edge109
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_node_wait_ios_shutdown.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_node_wait_ios_shutdown, %if.then68)) #12
          to label %sw.epilog [label %if.then68], !srcloc !173

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  %pci69 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %pci69 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci69, align 4
  %dev70 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %display_name71 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call73 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_node_wait_ios_shutdown.__UNIQUE_ID_ddebug320, ptr noundef %dev70, ptr noundef nonnull @.str.47, ptr noundef %display_name71, ptr noundef %call73) #12
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_node_wait_ios_shutdown, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then68, %do.body56, %if.end52.critedge, %do.end36, %sw.bb16, %if.then14, %sw.bb10.sw.epilog_crit_edge, %if.then8, %sw.bb.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_ls_rjt(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_bls_acc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @efc_node_save_sparms(ptr nocapture noundef writeonly %node, ptr nocapture noundef readonly %payload) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %service_params = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 29
  %0 = call ptr @memcpy(ptr %service_params, ptr %payload, i32 120)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_process_node_pending(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %hold_frames = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 5
  %2 = ptrtoint ptr %hold_frames to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hold_frames, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not56 = icmp eq i8 %3, 0
  br i1 %tobool.not56, label %if.end.lr.ph, label %entry.if.end33_crit_edge

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.end.lr.ph:                                     ; preds = %entry
  %pend_frames_lock = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 30
  %pend_frames = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 31
  %pend_frames_processed18 = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 32
  %hw_seq_free = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 15, i32 7
  br label %if.end

if.end:                                           ; preds = %if.end17.if.end_crit_edge, %if.end.lr.ph
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pend_frames_lock) #12
  %4 = ptrtoint ptr %pend_frames to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pend_frames, align 4
  %cmp.i.not = icmp eq ptr %5, %pend_frames
  br i1 %cmp.i.not, label %if.end11.thread, label %if.then8

if.end11.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pend_frames_lock, i32 noundef %call3) #12
  br label %for.end

if.then8:                                         ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.if.end11_crit_edge

if.then8.if.end11_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end.i.i, %if.then8.if.end11_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pend_frames_lock, i32 noundef %call3) #12
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %if.end11.for.end_crit_edge, label %if.end17

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end17:                                         ; preds = %if.end11
  %14 = ptrtoint ptr %pend_frames_processed18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pend_frames_processed18, align 8
  %inc = add i32 %15, 1
  store i32 %inc, ptr %pend_frames_processed18, align 8
  tail call void @efc_node_dispatch_frame(ptr noundef %node, ptr noundef nonnull %5) #12
  %16 = ptrtoint ptr %hw_seq_free to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_seq_free, align 4
  %call19 = tail call i32 %17(ptr noundef %1, ptr noundef nonnull %5) #12
  %18 = ptrtoint ptr %hold_frames to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hold_frames, align 8, !range !172
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.end17.if.end_crit_edge, label %if.end17.if.end33_crit_edge

if.end17.if.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.end17.if.end_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %if.end11.thread
  %20 = ptrtoint ptr %pend_frames_processed18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pend_frames_processed18, align 8
  store i32 0, ptr %pend_frames_processed18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp20.not = icmp eq i32 %21, 0
  br i1 %cmp20.not, label %for.end.if.end33_crit_edge, label %do.body23

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

do.body23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_process_node_pending.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_process_node_pending, %if.then29)) #12
          to label %if.end33 [label %if.then29], !srcloc !173

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_process_node_pending.__UNIQUE_ID_ddebug326, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %21) #12
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %do.body23, %for.end.if.end33_crit_edge, %if.end17.if.end33_crit_edge, %entry.if.end33_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efc_node_check_els_req(ptr nocapture noundef readnone %ctx, i32 noundef %evt, ptr nocapture noundef readnone %arg, i8 noundef zeroext %cmd, ptr nocapture noundef readnone %efc_node_common_func, ptr nocapture noundef readnone %funcname) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efc_node_check_ns_req(ptr nocapture noundef readnone %ctx, i32 noundef %evt, ptr nocapture noundef readnone %arg, i16 noundef zeroext %cmd, ptr nocapture noundef readnone %efc_node_common_func, ptr nocapture noundef readnone %funcname) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_node_pause(ptr noundef %node, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nodedb_state = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 42
  %0 = ptrtoint ptr %nodedb_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %state, ptr %nodedb_state, align 8
  tail call void @efc_node_transition(ptr noundef %node, ptr noundef nonnull @__efc_node_paused, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_node_paused(ptr nocapture noundef readonly %ctx, i32 noundef %evt, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %evt, label %entry.efc_node_evt_set.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then2.i
  ]

entry.efc_node_evt_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_evt_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %current_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %3 = call ptr @memcpy(ptr %current_state_name.i, ptr @str.76, i32 64)
  br label %efc_node_evt_set.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev_state_name.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 39
  %current_state_name4.i = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 38
  %call6.i = tail call ptr @strncpy(ptr noundef %prev_state_name.i, ptr noundef %current_state_name4.i, i32 noundef 64) #12
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_node_paused.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_node_paused, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %efc_node_evt_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_node_paused.__UNIQUE_ID_ddebug325, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef %display_name, ptr noundef nonnull @__func__.__efc_node_paused, ptr noundef %call3) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %efc_node_evt_set.exit
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %evt, label %sw.default [
    i32 0, label %do.end6
    i32 5, label %sw.bb12
    i32 13, label %do.end.sw.epilog_crit_edge
    i32 3, label %sw.bb14
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %pci8 = getelementptr inbounds %struct.efc, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %pci8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci8, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %display_name10 = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9, ptr noundef nonnull @.str.54, ptr noundef %display_name10) #15
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %nodedb_state = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 42
  %17 = ptrtoint ptr %nodedb_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nodedb_state, align 8
  store ptr null, ptr %nodedb_state, align 8
  tail call void @efc_node_transition(ptr noundef %1, ptr noundef %18, ptr noundef null)
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %req_free = getelementptr inbounds %struct.efc_node, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %req_free to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %req_free, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__efc_node_common(ptr noundef nonnull @__func__.__efc_node_paused, ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb12, %do.end6, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_node_recv_els_frame(ptr noundef %node, ptr nocapture noundef readonly %seq) local_unnamed_addr #0 align 64 {
entry:
  %els_cmd_list = alloca [10 x %struct.anon.89], align 4
  %cbdata = alloca %struct.efc_node_cb, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %els_cmd_list) #12
  %0 = ptrtoint ptr %els_cmd_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %els_cmd_list, align 4
  %evt = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 0, i32 1
  %1 = ptrtoint ptr %evt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 52, ptr %evt, align 4
  %payload_size = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 0, i32 2
  %2 = ptrtoint ptr %payload_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 116, ptr %payload_size, align 4
  %arrayinit.element = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 1
  %3 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %arrayinit.element, align 4
  %evt2 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 1, i32 1
  %4 = ptrtoint ptr %evt2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 53, ptr %evt2, align 4
  %payload_size3 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 1, i32 2
  %5 = ptrtoint ptr %payload_size3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 116, ptr %payload_size3, align 4
  %arrayinit.element4 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 2
  %6 = ptrtoint ptr %arrayinit.element4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %arrayinit.element4, align 4
  %evt6 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 2, i32 1
  %7 = ptrtoint ptr %evt6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 54, ptr %evt6, align 4
  %payload_size7 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 2, i32 2
  %8 = ptrtoint ptr %payload_size7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %payload_size7, align 4
  %arrayinit.element8 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 3
  %9 = ptrtoint ptr %arrayinit.element8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32, ptr %arrayinit.element8, align 4
  %evt10 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 3, i32 1
  %10 = ptrtoint ptr %evt10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 55, ptr %evt10, align 4
  %payload_size11 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 3, i32 2
  %11 = ptrtoint ptr %payload_size11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 20, ptr %payload_size11, align 4
  %arrayinit.element12 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 4
  %12 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 33, ptr %arrayinit.element12, align 4
  %evt14 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 4, i32 1
  %13 = ptrtoint ptr %evt14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 56, ptr %evt14, align 4
  %payload_size15 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 4, i32 2
  %14 = ptrtoint ptr %payload_size15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 20, ptr %payload_size15, align 4
  %arrayinit.element16 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 5
  %15 = ptrtoint ptr %arrayinit.element16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 80, ptr %arrayinit.element16, align 4
  %evt18 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 5, i32 1
  %16 = ptrtoint ptr %evt18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 57, ptr %evt18, align 4
  %payload_size19 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 5, i32 2
  %17 = ptrtoint ptr %payload_size19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %payload_size19, align 4
  %arrayinit.element20 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 6
  %18 = ptrtoint ptr %arrayinit.element20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 81, ptr %arrayinit.element20, align 4
  %evt22 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 6, i32 1
  %19 = ptrtoint ptr %evt22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 58, ptr %evt22, align 4
  %payload_size23 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 6, i32 2
  %20 = ptrtoint ptr %payload_size23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %payload_size23, align 4
  %arrayinit.element24 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 7
  %21 = ptrtoint ptr %arrayinit.element24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 82, ptr %arrayinit.element24, align 4
  %evt26 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 7, i32 1
  %22 = ptrtoint ptr %evt26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 59, ptr %evt26, align 4
  %payload_size27 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 7, i32 2
  %23 = ptrtoint ptr %payload_size27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 28, ptr %payload_size27, align 4
  %arrayinit.element28 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 8
  %24 = ptrtoint ptr %arrayinit.element28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 97, ptr %arrayinit.element28, align 4
  %evt30 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 8, i32 1
  %25 = ptrtoint ptr %evt30 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 60, ptr %evt30, align 4
  %payload_size31 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 8, i32 2
  %26 = ptrtoint ptr %payload_size31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %payload_size31, align 4
  %arrayinit.element32 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 9
  %27 = ptrtoint ptr %arrayinit.element32 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 98, ptr %arrayinit.element32, align 4
  %evt34 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 9, i32 1
  %28 = ptrtoint ptr %evt34 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 61, ptr %evt34, align 4
  %payload_size35 = getelementptr inbounds %struct.anon.89, ptr %els_cmd_list, i32 9, i32 2
  %29 = ptrtoint ptr %payload_size35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8, ptr %payload_size35, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cbdata) #12
  %payload = getelementptr inbounds %struct.efc_hw_sequence, ptr %seq, i32 0, i32 4
  %30 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %payload, align 4
  %dma = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma, align 4
  %34 = call ptr @memset(ptr %cbdata, i32 0, i32 44)
  %header = getelementptr inbounds %struct.efc_hw_sequence, ptr %seq, i32 0, i32 3
  %35 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %header, align 4
  %header37 = getelementptr inbounds %struct.efc_node_cb, ptr %cbdata, i32 0, i32 2
  %37 = ptrtoint ptr %header37 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %header37, align 4
  %payload39 = getelementptr inbounds %struct.efc_node_cb, ptr %cbdata, i32 0, i32 3
  %38 = ptrtoint ptr %payload39 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %31, ptr %payload39, align 4
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %33, align 1
  %conv = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %40)
  %cmp42 = icmp eq i8 %40, 3
  br i1 %cmp42, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %for.inc.8.if.then_crit_edge, %for.inc.7.if.then_crit_edge, %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.053.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ], [ 8, %for.inc.7.if.then_crit_edge ], [ 9, %for.inc.8.if.then_crit_edge ]
  %evt45 = getelementptr [10 x %struct.anon.89], ptr %els_cmd_list, i32 0, i32 %i.053.lcssa, i32 1
  %41 = ptrtoint ptr %evt45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %evt45, align 4
  br label %for.end

for.inc:                                          ; preds = %entry
  %43 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayinit.element, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv)
  %cmp42.1 = icmp eq i32 %44, %conv
  br i1 %cmp42.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %45 = ptrtoint ptr %arrayinit.element4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayinit.element4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %conv)
  %cmp42.2 = icmp eq i32 %46, %conv
  br i1 %cmp42.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %47 = ptrtoint ptr %arrayinit.element8 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayinit.element8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %conv)
  %cmp42.3 = icmp eq i32 %48, %conv
  br i1 %cmp42.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %49 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayinit.element12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %conv)
  %cmp42.4 = icmp eq i32 %50, %conv
  br i1 %cmp42.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %51 = ptrtoint ptr %arrayinit.element16 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayinit.element16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %conv)
  %cmp42.5 = icmp eq i32 %52, %conv
  br i1 %cmp42.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %53 = ptrtoint ptr %arrayinit.element20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayinit.element20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %conv)
  %cmp42.6 = icmp eq i32 %54, %conv
  br i1 %cmp42.6, label %for.inc.5.if.then_crit_edge, label %for.inc.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %55 = ptrtoint ptr %arrayinit.element24 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayinit.element24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv)
  %cmp42.7 = icmp eq i32 %56, %conv
  br i1 %cmp42.7, label %for.inc.6.if.then_crit_edge, label %for.inc.7

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  %57 = ptrtoint ptr %arrayinit.element28 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayinit.element28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %conv)
  %cmp42.8 = icmp eq i32 %58, %conv
  br i1 %cmp42.8, label %for.inc.7.if.then_crit_edge, label %for.inc.8

for.inc.7.if.then_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  %59 = ptrtoint ptr %arrayinit.element32 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayinit.element32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %conv)
  %cmp42.9 = icmp eq i32 %60, %conv
  br i1 %cmp42.9, label %for.inc.8.if.then_crit_edge, label %for.inc.8.for.end_crit_edge

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.8.if.then_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.end:                                          ; preds = %for.inc.8.for.end_crit_edge, %if.then
  %evt36.0 = phi i32 [ %42, %if.then ], [ 62, %for.inc.8.for.end_crit_edge ]
  %evtdepth.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 19
  %61 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %evtdepth.i, align 8
  %inc.i = add i32 %62, 1
  store i32 %inc.i, ptr %evtdepth.i, align 8
  %sm.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 18
  %call.i = call i32 @efc_sm_post_event(ptr noundef %sm.i, i32 noundef %evt36.0, ptr noundef nonnull %cbdata) #12
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 5
  %63 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %hold_frames.i, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i = icmp eq i8 %64, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.end.if.end.i_crit_edge

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.end
  %65 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp.i = icmp eq i32 %66, 1
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @efc_process_node_pending(ptr noundef %node) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %for.end.if.end.i_crit_edge
  %67 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %evtdepth.i, align 8
  %dec.i = add i32 %68, -1
  store i32 %dec.i, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp4.i = icmp eq i32 %dec.i, 0
  br i1 %cmp4.i, label %land.lhs.true5.i, label %if.end.i.efc_node_post_event.exit_crit_edge

if.end.i.efc_node_post_event.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit

land.lhs.true5.i:                                 ; preds = %if.end.i
  %req_free.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 12
  %69 = ptrtoint ptr %req_free.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %req_free.i, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool6.not.not.i = icmp eq i8 %70, 0
  br i1 %tobool6.not.not.i, label %land.lhs.true5.i.efc_node_post_event.exit_crit_edge, label %if.then10.i

land.lhs.true5.i.efc_node_post_event.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit

if.then10.i:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @efc_node_free(ptr noundef %node) #12
  br label %efc_node_post_event.exit

efc_node_post_event.exit:                         ; preds = %if.then10.i, %land.lhs.true5.i.efc_node_post_event.exit_crit_edge, %if.end.i.efc_node_post_event.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cbdata) #12
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %els_cmd_list) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_node_recv_ct_frame(ptr noundef %node, ptr nocapture noundef readonly %seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %payload = getelementptr inbounds %struct.efc_hw_sequence, ptr %seq, i32 0, i32 4
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %payload, align 4
  %dma = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma, align 4
  %header = getelementptr inbounds %struct.efc_hw_sequence, ptr %seq, i32 0, i32 3
  %4 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %header, align 4
  %dma1 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma1, align 4
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 8
  %ct_cmd = getelementptr inbounds %struct.fc_ct_hdr, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %ct_cmd to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ct_cmd, align 2
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 1
  %conv = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, ptr noundef %display_name, i32 noundef %conv) #15
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %7, i32 0, i32 9
  %14 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %fh_ox_id, align 4
  %call = tail call i32 @efc_send_ct_rsp(ptr noundef %9, ptr noundef %node, i16 noundef zeroext %15, ptr noundef %3, i32 noundef 32769, i32 noundef 11, i32 noundef 0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_ct_rsp(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_node_recv_fcp_cmd(ptr noundef %node, ptr nocapture noundef readonly %seq) local_unnamed_addr #0 align 64 {
entry:
  %cbdata = alloca %struct.efc_node_cb, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cbdata) #12
  %0 = call ptr @memset(ptr %cbdata, i32 0, i32 44)
  %header = getelementptr inbounds %struct.efc_hw_sequence, ptr %seq, i32 0, i32 3
  %1 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %header, align 4
  %header1 = getelementptr inbounds %struct.efc_node_cb, ptr %cbdata, i32 0, i32 2
  %3 = ptrtoint ptr %header1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %header1, align 4
  %payload = getelementptr inbounds %struct.efc_hw_sequence, ptr %seq, i32 0, i32 4
  %4 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %payload, align 4
  %payload2 = getelementptr inbounds %struct.efc_node_cb, ptr %cbdata, i32 0, i32 3
  %6 = ptrtoint ptr %payload2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %payload2, align 4
  %evtdepth.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 19
  %7 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %evtdepth.i, align 8
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %evtdepth.i, align 8
  %sm.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 18
  %call.i = call i32 @efc_sm_post_event(ptr noundef %sm.i, i32 noundef 63, ptr noundef nonnull %cbdata) #12
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 5
  %9 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hold_frames.i, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %11 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp eq i32 %12, 1
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @efc_process_node_pending(ptr noundef %node) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %13 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %evtdepth.i, align 8
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp4.i = icmp eq i32 %dec.i, 0
  br i1 %cmp4.i, label %land.lhs.true5.i, label %if.end.i.efc_node_post_event.exit_crit_edge

if.end.i.efc_node_post_event.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit

land.lhs.true5.i:                                 ; preds = %if.end.i
  %req_free.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 12
  %15 = ptrtoint ptr %req_free.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %req_free.i, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool6.not.not.i = icmp eq i8 %16, 0
  br i1 %tobool6.not.not.i, label %land.lhs.true5.i.efc_node_post_event.exit_crit_edge, label %if.then10.i

land.lhs.true5.i.efc_node_post_event.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit

if.then10.i:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @efc_node_free(ptr noundef %node) #12
  br label %efc_node_post_event.exit

efc_node_post_event.exit:                         ; preds = %if.then10.i, %land.lhs.true5.i.efc_node_post_event.exit_crit_edge, %if.end.i.efc_node_post_event.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cbdata) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_dispatch_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_scsi_sess_reg_complete(ptr noundef %node, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not = icmp eq i32 %status, 0
  %spec.select = select i1 %tobool.not, i32 68, i32 69
  %lock = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 16
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %evtdepth.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 19
  %2 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %evtdepth.i, align 8
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %evtdepth.i, align 8
  %sm.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 18
  %call.i = tail call i32 @efc_sm_post_event(ptr noundef %sm.i, i32 noundef %spec.select, ptr noundef null) #12
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 5
  %4 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hold_frames.i, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %6 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_process_node_pending(ptr noundef %node) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %8 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %evtdepth.i, align 8
  %dec.i = add i32 %9, -1
  store i32 %dec.i, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp4.i = icmp eq i32 %dec.i, 0
  br i1 %cmp4.i, label %land.lhs.true5.i, label %if.end.i.efc_node_post_event.exit_crit_edge

if.end.i.efc_node_post_event.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit

land.lhs.true5.i:                                 ; preds = %if.end.i
  %req_free.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 12
  %10 = ptrtoint ptr %req_free.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %req_free.i, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not.not.i = icmp eq i8 %11, 0
  br i1 %tobool6.not.not.i, label %land.lhs.true5.i.efc_node_post_event.exit_crit_edge, label %if.then10.i

land.lhs.true5.i.efc_node_post_event.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit

if.then10.i:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_node_free(ptr noundef %node) #12
  br label %efc_node_post_event.exit

efc_node_post_event.exit:                         ; preds = %if.then10.i, %land.lhs.true5.i.efc_node_post_event.exit_crit_edge, %if.end.i.efc_node_post_event.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_scsi_del_initiator_complete(ptr noundef %efc, ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 16
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %evtdepth.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 19
  %0 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %evtdepth.i, align 8
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr %evtdepth.i, align 8
  %sm.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 18
  %call.i = tail call i32 @efc_sm_post_event(ptr noundef %sm.i, i32 noundef 66, ptr noundef null) #12
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 5
  %2 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hold_frames.i, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_process_node_pending(ptr noundef %node) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %6 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %evtdepth.i, align 8
  %dec.i = add i32 %7, -1
  store i32 %dec.i, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp4.i = icmp eq i32 %dec.i, 0
  br i1 %cmp4.i, label %land.lhs.true5.i, label %if.end.i.efc_node_post_event.exit_crit_edge

if.end.i.efc_node_post_event.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit

land.lhs.true5.i:                                 ; preds = %if.end.i
  %req_free.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 12
  %8 = ptrtoint ptr %req_free.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %req_free.i, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not.not.i = icmp eq i8 %9, 0
  br i1 %tobool6.not.not.i, label %land.lhs.true5.i.efc_node_post_event.exit_crit_edge, label %if.then10.i

land.lhs.true5.i.efc_node_post_event.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit

if.then10.i:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_node_free(ptr noundef %node) #12
  br label %efc_node_post_event.exit

efc_node_post_event.exit:                         ; preds = %if.then10.i, %land.lhs.true5.i.efc_node_post_event.exit_crit_edge, %if.end.i.efc_node_post_event.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_scsi_del_target_complete(ptr noundef %efc, ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 16
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %evtdepth.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 19
  %0 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %evtdepth.i, align 8
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr %evtdepth.i, align 8
  %sm.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 18
  %call.i = tail call i32 @efc_sm_post_event(ptr noundef %sm.i, i32 noundef 67, ptr noundef null) #12
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 5
  %2 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hold_frames.i, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_process_node_pending(ptr noundef %node) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %6 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %evtdepth.i, align 8
  %dec.i = add i32 %7, -1
  store i32 %dec.i, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp4.i = icmp eq i32 %dec.i, 0
  br i1 %cmp4.i, label %land.lhs.true5.i, label %if.end.i.efc_node_post_event.exit_crit_edge

if.end.i.efc_node_post_event.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit

land.lhs.true5.i:                                 ; preds = %if.end.i
  %req_free.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 12
  %8 = ptrtoint ptr %req_free.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %req_free.i, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not.not.i = icmp eq i8 %9, 0
  br i1 %tobool6.not.not.i, label %land.lhs.true5.i.efc_node_post_event.exit_crit_edge, label %if.then10.i

land.lhs.true5.i.efc_node_post_event.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit

if.then10.i:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_node_free(ptr noundef %node) #12
  br label %efc_node_post_event.exit

efc_node_post_event.exit:                         ; preds = %if.then10.i, %land.lhs.true5.i.efc_node_post_event.exit_crit_edge, %if.end.i.efc_node_post_event.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_scsi_io_list_empty(ptr noundef %efc, ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 16
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %evtdepth.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 19
  %0 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %evtdepth.i, align 8
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr %evtdepth.i, align 8
  %sm.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 18
  %call.i = tail call i32 @efc_sm_post_event(ptr noundef %sm.i, i32 noundef 65, ptr noundef null) #12
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 5
  %2 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hold_frames.i, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_process_node_pending(ptr noundef %node) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %6 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %evtdepth.i, align 8
  %dec.i = add i32 %7, -1
  store i32 %dec.i, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp4.i = icmp eq i32 %dec.i, 0
  br i1 %cmp4.i, label %land.lhs.true5.i, label %if.end.i.efc_node_post_event.exit_crit_edge

if.end.i.efc_node_post_event.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit

land.lhs.true5.i:                                 ; preds = %if.end.i
  %req_free.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 12
  %8 = ptrtoint ptr %req_free.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %req_free.i, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not.not.i = icmp eq i8 %9, 0
  br i1 %tobool6.not.not.i, label %land.lhs.true5.i.efc_node_post_event.exit_crit_edge, label %if.then10.i

land.lhs.true5.i.efc_node_post_event.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit

if.then10.i:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_node_free(ptr noundef %node) #12
  br label %efc_node_post_event.exit

efc_node_post_event.exit:                         ; preds = %if.then10.i, %land.lhs.true5.i.efc_node_post_event.exit_crit_edge, %if.end.i.efc_node_post_event.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_node_post_els_resp(ptr noundef %node, i32 noundef %evt, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %lock = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 16
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %evtdepth.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 19
  %2 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %evtdepth.i, align 8
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %evtdepth.i, align 8
  %sm.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 18
  %call.i = tail call i32 @efc_sm_post_event(ptr noundef %sm.i, i32 noundef %evt, ptr noundef %arg) #12
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 5
  %4 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hold_frames.i, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %6 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_process_node_pending(ptr noundef %node) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %8 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %evtdepth.i, align 8
  %dec.i = add i32 %9, -1
  store i32 %dec.i, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp4.i = icmp eq i32 %dec.i, 0
  br i1 %cmp4.i, label %land.lhs.true5.i, label %if.end.i.efc_node_post_event.exit_crit_edge

if.end.i.efc_node_post_event.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit

land.lhs.true5.i:                                 ; preds = %if.end.i
  %req_free.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 12
  %10 = ptrtoint ptr %req_free.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %req_free.i, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not.not.i = icmp eq i8 %11, 0
  br i1 %tobool6.not.not.i, label %land.lhs.true5.i.efc_node_post_event.exit_crit_edge, label %if.then10.i

land.lhs.true5.i.efc_node_post_event.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit

if.then10.i:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_node_free(ptr noundef %node) #12
  br label %efc_node_post_event.exit

efc_node_post_event.exit:                         ; preds = %if.then10.i, %land.lhs.true5.i.efc_node_post_event.exit_crit_edge, %if.end.i.efc_node_post_event.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_node_post_shutdown(ptr noundef %node, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %lock = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 16
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %evtdepth.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 19
  %2 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %evtdepth.i, align 8
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %evtdepth.i, align 8
  %sm.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 18
  %call.i = tail call i32 @efc_sm_post_event(ptr noundef %sm.i, i32 noundef 3, ptr noundef %arg) #12
  %hold_frames.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 5
  %4 = ptrtoint ptr %hold_frames.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hold_frames.i, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %6 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_process_node_pending(ptr noundef %node) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %8 = ptrtoint ptr %evtdepth.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %evtdepth.i, align 8
  %dec.i = add i32 %9, -1
  store i32 %dec.i, ptr %evtdepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp4.i = icmp eq i32 %dec.i, 0
  br i1 %cmp4.i, label %land.lhs.true5.i, label %if.end.i.efc_node_post_event.exit_crit_edge

if.end.i.efc_node_post_event.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit

land.lhs.true5.i:                                 ; preds = %if.end.i
  %req_free.i = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 12
  %10 = ptrtoint ptr %req_free.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %req_free.i, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not.not.i = icmp eq i8 %11, 0
  br i1 %tobool6.not.not.i, label %land.lhs.true5.i.efc_node_post_event.exit_crit_edge, label %if.then10.i

land.lhs.true5.i.efc_node_post_event.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efc_node_post_event.exit

if.then10.i:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @efc_node_free(ptr noundef %node) #12
  br label %efc_node_post_event.exit

efc_node_post_event.exit:                         ; preds = %if.then10.i, %land.lhs.true5.i.efc_node_post_event.exit_crit_edge, %if.end.i.efc_node_post_event.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__efc_d_wait_node_attach(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_init_device(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !70, !72, !73, !75, !76, !77, !79, !81, !83, !84, !85, !87, !88, !90, !91, !92, !94, !96, !98, !99, !101, !103, !105, !106, !108, !109, !110, !112, !113, !115, !116, !118, !119, !121, !123, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 53, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @efc_node_alloc.__UNIQUE_ID_ddebug313, !1, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 60, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @efc_node_alloc._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @efc_node_alloc._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 69, i32 3}
!14 = !{ptr @efc_node_alloc._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @efc_node_alloc._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @efc_node_alloc.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 79, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @efc_node_alloc.__key.11, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 81, i32 2}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 87, i32 3}
!24 = !{ptr @efc_node_alloc._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @efc_node_alloc._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 99, i32 3}
!28 = !{ptr @efc_node_alloc._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @efc_node_alloc._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 130, i32 2}
!32 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @efc_node_free._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @efc_node_free._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 141, i32 3}
!38 = !{ptr @efc_node_free._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @efc_node_free._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 148, i32 3}
!42 = !{ptr @efc_node_free._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @efc_node_free._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 200, i32 3}
!46 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @efc_node_attach._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @efc_node_attach._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 216, i32 3}
!51 = !{ptr @efc_node_attach.__UNIQUE_ID_ddebug314, !50, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 226, i32 35}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 229, i32 35}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 232, i32 35}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 236, i32 36}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 239, i32 36}
!62 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 254, i32 59}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 262, i32 3}
!66 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @efc_node_send_ls_io_cleanup.__UNIQUE_ID_ddebug315, !65, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!68 = !{ptr @__func__.__efc_node_shutdown, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 368, i32 29}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 370, i32 2}
!72 = !{ptr @__efc_node_shutdown.__UNIQUE_ID_ddebug316, !71, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 406, i32 4}
!75 = !{ptr @__efc_node_shutdown._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @__efc_node_shutdown._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @__func__.__efc_node_wait_els_shutdown, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 470, i32 29}
!79 = !{ptr @__efc_node_wait_els_shutdown.__UNIQUE_ID_ddebug317, !80, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!80 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 472, i32 2}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 478, i32 4}
!83 = !{ptr @__efc_node_wait_els_shutdown._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @__efc_node_wait_els_shutdown._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @__efc_node_wait_els_shutdown._entry.42, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 506, i32 3}
!87 = !{ptr @__efc_node_wait_els_shutdown._entry_ptr.43, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 527, i32 3}
!90 = !{ptr @__efc_node_wait_els_shutdown._entry.44, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @__efc_node_wait_els_shutdown._entry_ptr.46, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @__func__.__efc_node_wait_node_free, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 544, i32 29}
!94 = !{ptr @__efc_node_wait_node_free.__UNIQUE_ID_ddebug318, !95, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!95 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 546, i32 2}
!96 = !{ptr @__efc_node_wait_node_free._entry, !97, !"_entry", i1 false, i1 false}
!97 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 580, i32 3}
!98 = !{ptr @__efc_node_wait_node_free._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @__func__.__efc_node_wait_ios_shutdown, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 594, i32 29}
!101 = !{ptr @__efc_node_wait_ios_shutdown.__UNIQUE_ID_ddebug319, !102, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!102 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 596, i32 2}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 633, i32 3}
!105 = !{ptr @__efc_node_wait_ios_shutdown.__UNIQUE_ID_ddebug320, !104, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 714, i32 3}
!108 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @__efc_node_common.__UNIQUE_ID_ddebug321, !107, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 737, i32 3}
!112 = !{ptr @__efc_node_common.__UNIQUE_ID_ddebug322, !111, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 746, i32 3}
!115 = !{ptr @__efc_node_common.__UNIQUE_ID_ddebug323, !114, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 756, i32 3}
!118 = !{ptr @__efc_node_common.__UNIQUE_ID_ddebug324, !117, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 821, i32 25}
!121 = !{ptr @__func__.__efc_node_paused, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 888, i32 29}
!123 = !{ptr @__efc_node_paused.__UNIQUE_ID_ddebug325, !124, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!124 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 890, i32 2}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 898, i32 3}
!127 = !{ptr @__efc_node_paused._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @__efc_node_paused._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 974, i32 2}
!131 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @efc_node_recv_ct_frame._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @efc_node_recv_ct_frame._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 1032, i32 3}
!136 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @efc_process_node_pending.__UNIQUE_ID_ddebug326, !135, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!138 = distinct !{null, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/elx/libefc/efc_node.h", i32 34, i32 37}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 280, i32 2}
!142 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @efc_node_handle_implicit_logo._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @efc_node_handle_implicit_logo._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.62, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 312, i32 2}
!147 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @efc_node_handle_explicit_logo._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @efc_node_handle_explicit_logo._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 313, i32 2}
!152 = !{ptr @efc_node_handle_explicit_logo._entry.64, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @efc_node_handle_explicit_logo._entry_ptr.66, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 432, i32 4}
!156 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @efc_node_check_els_quiesced._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @efc_node_check_els_quiesced._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/elx/libefc/efc_node.c", i32 441, i32 4}
!161 = !{ptr @efc_node_check_els_quiesced._entry.69, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @efc_node_check_els_quiesced._entry_ptr.71, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{i8 0, i8 2}
!173 = !{i64 2148512211, i64 2148512216, i64 2148512229, i64 2148512273, i64 2148512307, i64 2148512328}
!174 = !{i64 2148689926, i64 2148689958, i64 2148689987, i64 2148690021, i64 2148690052, i64 2148690075}
!175 = !{!"branch_weights", i32 1, i32 2000}
!176 = !{!"branch_weights", i32 2000, i32 1}
!177 = !{i64 2148777951}
!178 = !{i64 2148692391, i64 2148692423, i64 2148692452, i64 2148692486, i64 2148692517, i64 2148692540}
!179 = !{i64 2150080792}
