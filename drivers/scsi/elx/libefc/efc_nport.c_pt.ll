; ModuleID = '/llk/IR_all_yes/drivers/scsi/elx/libefc/efc_nport.c_pt.bc'
source_filename = "../drivers/scsi/elx/libefc/efc_nport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.efc = type { ptr, ptr, ptr, i32, i64, i64, i64, i64, i64, ptr, ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.libefc_function_template, %struct.spinlock, i8, i8, i32, ptr, ptr, ptr, i64, i64, i8, i32, i32, ptr, %struct.atomic_t, i8, %struct.spinlock, %struct.list_head, i32 }
%struct.libefc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.efc_dma = type { ptr, ptr, i32, i32, i32, ptr }
%struct.efc_sm_ctx = type { ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.efc_domain = type { ptr, [32 x i8], %struct.list_head, %struct.kref, ptr, ptr, ptr, i32, i32, i32, i32, %struct.efc_dma, i64, %struct.efc_sm_ctx, i8, i8, i8, i8, i8, i8, i8, i8, %struct.efc_domain_record, [120 x i8], [120 x i8], %struct.xarray, ptr }
%struct.efc_domain_record = type { i32, i32, [6 x i8], [8 x i8], %union.anon.79, i32, i32, i8, i8 }
%union.anon.79 = type { [512 x i8] }
%struct.efc_vport = type { %struct.list_head, i64, i64, i32, i8, i8, ptr, ptr, ptr }
%struct.efc_node = type { ptr, [32 x i8], ptr, %struct.kref, ptr, i8, i8, i8, i8, i8, i8, i8, i8, %struct.spinlock, %struct.list_head, ptr, ptr, %struct.efc_remote_node, %struct.efc_sm_ctx, i32, i32, ptr, i32, i32, i32, i8, i8, i8, %struct.efc_dma, [120 x i8], %struct.spinlock, %struct.list_head, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], i32, i32, ptr, %struct.timer_list, i64, [32 x i8], [32 x i8] }
%struct.efc_remote_node = type { i32, i32, i32, i8, ptr, ptr }

@efc_nport_cb.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"efct\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"efc_nport_cb\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/scsi/elx/libefc/efc_nport.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nport event: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@efc_nport_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 80, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NPORT %016llX %016llX already allocated\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efc_nport_alloc\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@efc_nport_alloc._entry_ptr = internal global ptr @efc_nport_alloc._entry, section ".printk_index", align 4
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"------\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%016llX\00", [24 x i8] zeroinitializer }, align 32
@efc_nport_alloc.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.10, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"New Nport [%s]\0A\00", [16 x i8] zeroinitializer }, align 32
@efc_nport_free.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efc_nport_free\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"[%s] free nport\0A\00", [47 x i8] zeroinitializer }, align 32
@efc_nport_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 187, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Sport lookup store failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"efc_nport_attach\00", [47 x i8] zeroinitializer }, align 32
@efc_nport_attach._entry_ptr = internal global ptr @efc_nport_attach._entry, section ".printk_index", align 4
@efc_nport_attach.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%s] attach nport: fc_id x%06x\0A\00", [32 x i8] zeroinitializer }, align 32
@efc_nport_attach._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.2, i32 206, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"efc_hw_port_attach failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@efc_nport_attach._entry_ptr.18 = internal global ptr @efc_nport_attach._entry.16, section ".printk_index", align 4
@__efc_nport_allocated.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__efc_nport_allocated\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%s]  %-20s %-20s\0A\00", [45 x i8] zeroinitializer }, align 32
@__efc_nport_vport_init.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.20, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__efc_nport_vport_init\00", [41 x i8] zeroinitializer }, align 32
@__efc_nport_vport_init.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vport: letting f/w select WWN\0A\00", [33 x i8] zeroinitializer }, align 32
@__efc_nport_vport_init.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vport: hard coding port id: %x\0A\00", [32 x i8] zeroinitializer }, align 32
@__efc_nport_vport_init._entry = internal constant %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.2, i32 369, ptr @.str.6, ptr @.str.7 }, align 1
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Can't allocate port\0A\00", [43 x i8] zeroinitializer }, align 32
@__efc_nport_vport_init._entry_ptr = internal global ptr @__efc_nport_vport_init._entry, section ".printk_index", align 4
@__efc_nport_vport_wait_alloc.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.20, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"__efc_nport_vport_wait_alloc\00", [35 x i8] zeroinitializer }, align 32
@__efc_nport_vport_wait_alloc._entry = internal constant %struct.pi_entry { ptr @.str.26, ptr @.str.25, ptr @.str.2, i32 419, ptr @.str.6, ptr @.str.7 }, align 1
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"efc_node_alloc() failed\0A\00", [39 x i8] zeroinitializer }, align 32
@__efc_nport_vport_wait_alloc._entry_ptr = internal global ptr @__efc_nport_vport_wait_alloc._entry, section ".printk_index", align 4
@__efc_nport_vport_allocated.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.20, i8 0, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"__efc_nport_vport_allocated\00", [36 x i8] zeroinitializer }, align 32
@__efc_nport_vport_allocated.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't find node %06x\0A\00", [42 x i8] zeroinitializer }, align 32
@__efc_nport_attached.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.20, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__efc_nport_attached\00", [43 x i8] zeroinitializer }, align 32
@__efc_nport_attached.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[%s] NPORT attached WWPN %016llX WWNN %016llX\0A\00", [49 x i8] zeroinitializer }, align 32
@__efc_nport_attached.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.31, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[%s] NPORT deattached WWPN %016llX WWNN %016llX\0A\00", [47 x i8] zeroinitializer }, align 32
@__efc_nport_wait_shutdown.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.20, i8 0, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__efc_nport_wait_shutdown\00", [38 x i8] zeroinitializer }, align 32
@__efc_nport_wait_shutdown._entry = internal constant %struct.pi_entry { ptr @.str.33, ptr @.str.32, ptr @.str.2, i32 564, ptr @.str.6, ptr @.str.7 }, align 1
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"efc_hw_port_free failed\0A\00", [39 x i8] zeroinitializer }, align 32
@__efc_nport_wait_shutdown._entry_ptr = internal global ptr @__efc_nport_wait_shutdown._entry, section ".printk_index", align 4
@__efc_nport_wait_port_free.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.20, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__efc_nport_wait_port_free\00", [37 x i8] zeroinitializer }, align 32
@efc_nport_vport_new.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efc_nport_vport_new\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"driver initiator mode not enabled\0A\00", [61 x i8] zeroinitializer }, align 32
@efc_nport_vport_new.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.37, i8 0, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"driver target mode not enabled\0A\00", [32 x i8] zeroinitializer }, align 32
@efc_nport_vport_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.2, i32 669, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to create vport object entry\0A\00", [59 x i8] zeroinitializer }, align 32
@efc_nport_vport_new._entry_ptr = internal global ptr @efc_nport_vport_new._entry, section ".printk_index", align 4
@efc_vport_create_spec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 753, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"VPORT %016llX %016llX already allocated\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"efc_vport_create_spec\00", [42 x i8] zeroinitializer }, align 32
@efc_vport_create_spec._entry_ptr = internal global ptr @efc_vport_create_spec._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__efc_nport_common.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.33, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__efc_nport_common\00", [45 x i8] zeroinitializer }, align 32
@__efc_nport_common.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%s] %-20s %-20s not handled\0A\00", [34 x i8] zeroinitializer }, align 32
@efc_nport_shutdown.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efc_nport_shutdown\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%s] nport shutdown vport, send logo\0A\00", [58 x i8] zeroinitializer }, align 32
@efc_nport_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 249, ptr @.str.47, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%s] Failed to send LOGO\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@efc_nport_shutdown._entry_ptr = internal global ptr @efc_nport_shutdown._entry, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 22]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.49 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 22]
@__sancov_gen_cov_switch_values.50 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 22, i64 24]
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 37, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 78, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 94, i32 61 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 114, i32 53 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 129, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 143, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 187, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 199, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 205, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 326, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 350, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 357, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 360, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 369, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 387, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 419, i32 5 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 444, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 459, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 499, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 506, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 526, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 546, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 564, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 581, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 653, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 658, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 669, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 751, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 378, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 300, i32 5 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 313, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 236, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private constant [39 x i8] c"../drivers/scsi/elx/libefc/efc_nport.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 249, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__efc_nport_vport_init._entry, ptr @__efc_nport_vport_init._entry_ptr, ptr @__efc_nport_vport_wait_alloc._entry, ptr @__efc_nport_vport_wait_alloc._entry_ptr, ptr @__efc_nport_wait_shutdown._entry, ptr @__efc_nport_wait_shutdown._entry_ptr, ptr @efc_nport_alloc._entry, ptr @efc_nport_alloc._entry_ptr, ptr @efc_nport_attach._entry, ptr @efc_nport_attach._entry.16, ptr @efc_nport_attach._entry_ptr, ptr @efc_nport_attach._entry_ptr.18, ptr @efc_nport_shutdown._entry, ptr @efc_nport_shutdown._entry_ptr, ptr @efc_nport_vport_new._entry, ptr @efc_nport_vport_new._entry_ptr, ptr @efc_vport_create_spec._entry, ptr @efc_vport_create_spec._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @xa_init_flags.__key, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_nport_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_nport_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_nport_attach._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_nport_vport_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_vport_create_spec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_nport_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_nport_cb(ptr noundef %arg, i32 noundef %event, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_nport_cb.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_nport_cb, %if.then)) #7
          to label %do.body5 [label %if.then], !srcloc !128

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pci = getelementptr inbounds %struct.efc, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %event) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_nport_cb.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %call3) #7
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.efc, ptr %arg, i32 0, i32 16
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %sm = getelementptr inbounds %struct.efc_nport, ptr %data, i32 0, i32 22
  %call13 = tail call i32 @efc_sm_post_event(ptr noundef %sm, i32 noundef %event, ptr noundef null) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #7
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
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_sm_post_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efc_nport_alloc(ptr noundef %domain, i64 noundef %wwpn, i64 noundef %wwnn, i32 noundef %fc_id, i1 noundef zeroext %enable_ini, i1 noundef zeroext %enable_tgt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool1 = zext i1 %enable_tgt to i8
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 8
  %enable_ini2 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %enable_ini2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_ini2, align 8, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %spec.select = and i1 %tobool.not, %enable_ini
  %4 = or i64 %wwnn, %wwpn
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %entry.if.end9_crit_edge, label %if.then4

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %entry
  %nport_list.i = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 2
  %6 = ptrtoint ptr %nport_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %nport.016.i = load ptr, ptr %nport_list.i, align 4
  %cmp.not17.i = icmp eq ptr %nport.016.i, %nport_list.i
  br i1 %cmp.not17.i, label %if.then4.if.end9_crit_edge, label %if.then4.for.body.i_crit_edge

if.then4.for.body.i_crit_edge:                    ; preds = %if.then4
  br label %for.body.i

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then4.for.body.i_crit_edge
  %nport.018.i = phi ptr [ %nport.0.i, %for.inc.i.for.body.i_crit_edge ], [ %nport.016.i, %if.then4.for.body.i_crit_edge ]
  %wwnn2.i = getelementptr inbounds %struct.efc_nport, ptr %nport.018.i, i32 0, i32 13
  %7 = ptrtoint ptr %wwnn2.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %wwnn2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %wwnn)
  %cmp3.i = icmp eq i64 %8, %wwnn
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %wwpn4.i = getelementptr inbounds %struct.efc_nport, ptr %nport.018.i, i32 0, i32 12
  %9 = ptrtoint ptr %wwpn4.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %wwpn4.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %wwpn)
  %cmp5.i = icmp eq i64 %10, %wwpn
  br i1 %cmp5.i, label %efc_nport_find_wwn.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %nport.018.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %nport.0.i = load ptr, ptr %nport.018.i, align 4
  %cmp.not.i = icmp eq ptr %nport.0.i, %nport_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.end9_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end9_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

efc_nport_find_wwn.exit:                          ; preds = %land.lhs.true.i
  %tobool5.not = icmp eq ptr %nport.018.i, null
  br i1 %tobool5.not, label %efc_nport_find_wwn.exit.if.end9_crit_edge, label %do.end

efc_nport_find_wwn.exit.if.end9_crit_edge:        ; preds = %efc_nport_find_wwn.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end:                                           ; preds = %efc_nport_find_wwn.exit
  call void @__sanitizer_cov_trace_pc() #9
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i64 noundef %wwnn, i64 noundef %wwpn) #10
  br label %cleanup

if.end9:                                          ; preds = %efc_nport_find_wwn.exit.if.end9_crit_edge, %for.inc.i.if.end9_crit_edge, %if.then4.if.end9_crit_edge, %entry.if.end9_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 2848, i32 noundef 376) #11
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %ref = getelementptr inbounds %struct.efc_nport, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #7
  %15 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %ref, align 8
  %release = getelementptr inbounds %struct.efc_nport, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @_efc_nport_free, ptr %release, align 4
  %17 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %domain, align 8
  %efc15 = getelementptr inbounds %struct.efc_nport, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %efc15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %efc15, align 8
  %display_name = getelementptr inbounds %struct.efc_nport, ptr %call7.i.i, i32 0, i32 5
  %20 = call ptr @memcpy(ptr %display_name, ptr @.str.8, i32 7)
  %domain17 = getelementptr inbounds %struct.efc_nport, ptr %call7.i.i, i32 0, i32 11
  %21 = ptrtoint ptr %domain17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %domain, ptr %domain17, align 8
  %lookup = getelementptr inbounds %struct.efc_nport, ptr %call7.i.i, i32 0, i32 23
  tail call void @__raw_spin_lock_init(ptr noundef %lookup, ptr noundef nonnull @.str.41, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  %xa_flags.i.i = getelementptr inbounds %struct.efc_nport, ptr %call7.i.i, i32 0, i32 23, i32 1
  %22 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %xa_flags.i.i, align 8
  %xa_head.i.i = getelementptr inbounds %struct.efc_nport, ptr %call7.i.i, i32 0, i32 23, i32 2
  %23 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %xa_head.i.i, align 4
  %nport_count = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 10
  %24 = ptrtoint ptr %nport_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nport_count, align 8
  %inc = add i32 %25, 1
  store i32 %inc, ptr %nport_count, align 8
  %instance_index = getelementptr inbounds %struct.efc_nport, ptr %call7.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %instance_index to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %instance_index, align 4
  %app = getelementptr inbounds %struct.efc_nport, ptr %call7.i.i, i32 0, i32 22, i32 2
  %27 = ptrtoint ptr %app to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %app, align 8
  %enable_ini19 = getelementptr inbounds %struct.efc_nport, ptr %call7.i.i, i32 0, i32 24
  %frombool20 = zext i1 %spec.select to i8
  %28 = ptrtoint ptr %enable_ini19 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool20, ptr %enable_ini19, align 8
  %enable_tgt22 = getelementptr inbounds %struct.efc_nport, ptr %call7.i.i, i32 0, i32 25
  %29 = ptrtoint ptr %enable_tgt22 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool1, ptr %enable_tgt22, align 1
  %spec.select104 = or i1 %spec.select, %enable_tgt
  %enable_rscn = getelementptr inbounds %struct.efc_nport, ptr %call7.i.i, i32 0, i32 26
  %frombool28 = zext i1 %spec.select104 to i8
  %30 = ptrtoint ptr %enable_rscn to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool28, ptr %enable_rscn, align 2
  %service_params = getelementptr inbounds %struct.efc_nport, ptr %call7.i.i, i32 0, i32 30
  %service_params30 = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 23
  %31 = call ptr @memcpy(ptr %service_params, ptr %service_params30, i32 116)
  %fc_id32 = getelementptr inbounds %struct.efc_nport, ptr %call7.i.i, i32 0, i32 17
  %32 = ptrtoint ptr %fc_id32 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %fc_id, ptr %fc_id32, align 4
  %wwpn33 = getelementptr inbounds %struct.efc_nport, ptr %call7.i.i, i32 0, i32 12
  %33 = ptrtoint ptr %wwpn33 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %wwpn, ptr %wwpn33, align 8
  %wwnn34 = getelementptr inbounds %struct.efc_nport, ptr %call7.i.i, i32 0, i32 13
  %34 = ptrtoint ptr %wwnn34 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %wwnn, ptr %wwnn34, align 8
  %wwnn_str = getelementptr inbounds %struct.efc_nport, ptr %call7.i.i, i32 0, i32 19
  %call36 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %wwnn_str, i32 noundef 32, ptr noundef nonnull @.str.9, i64 noundef %wwnn)
  %nport_list = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 2
  %35 = ptrtoint ptr %nport_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %nport_list, align 4
  %cmp.i.not = icmp eq ptr %36, %nport_list
  br i1 %cmp.i.not, label %if.then39, label %if.end13.if.end41_crit_edge

if.end13.if.end41_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then39:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %nport40 = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 26
  %37 = ptrtoint ptr %nport40 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %nport40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end13.if.end41_crit_edge
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %prev.i106 = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %prev.i106 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i106, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %41, ptr noundef %nport_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end41.list_add_tail.exit_crit_edge

if.end41.list_add_tail.exit_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %prev.i106 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i, ptr %prev.i106, align 4
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %nport_list, ptr %call7.i.i, align 8
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %call7.i.i, ptr %41, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end41.list_add_tail.exit_crit_edge
  %ref44 = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref44, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %ref44, i32 1, i32 3, i32 1) #7
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref44, ptr %ref44, i32 1, ptr elementtype(i32) %ref44) #7, !srcloc !130
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !131

list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %list_add_tail.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %47 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %.not.i.i.i.i = icmp sgt i32 %47, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !132

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref44, i32 noundef %.sink.i.i.i.i) #7
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_nport_alloc.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_nport_alloc, %if.then51)) #7
          to label %cleanup [label %if.then51], !srcloc !128

if.then51:                                        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %domain, align 8
  %pci53 = getelementptr inbounds %struct.efc, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %pci53 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pci53, align 4
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_nport_alloc.__UNIQUE_ID_ddebug314, ptr noundef %dev54, ptr noundef nonnull @.str.10, ptr noundef %display_name) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %kref_get.exit, %if.end9.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %if.end9.cleanup_crit_edge ], [ %call7.i.i, %if.then51 ], [ %call7.i.i, %kref_get.exit ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_efc_nport_free(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %arg, i32 -8
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_nport_free(ptr noundef %nport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %nport, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %domain1 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 11
  %0 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_nport_free.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_nport_free, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !128

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_nport_free.__UNIQUE_ID_ddebug315, ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef %display_name) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %nport) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %nport, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nport, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %12 = ptrtoint ptr %nport to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %nport, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %nport, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %nport7 = getelementptr inbounds %struct.efc_domain, ptr %1, i32 0, i32 26
  %14 = ptrtoint ptr %nport7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nport7, align 4
  %cmp = icmp eq ptr %15, %nport
  br i1 %cmp, label %if.then8, label %list_del.exit.if.end10_crit_edge

list_del.exit.if.end10_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %nport7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %nport7, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %list_del.exit.if.end10_crit_edge
  %lookup = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 23
  tail call void @xa_destroy(ptr noundef %lookup) #7
  %lookup11 = getelementptr inbounds %struct.efc_domain, ptr %1, i32 0, i32 25
  %fc_id = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 17
  %17 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fc_id, align 4
  %call12 = tail call ptr @xa_erase(ptr noundef %lookup11, i32 noundef %18) #7
  %nport_list = getelementptr inbounds %struct.efc_domain, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %nport_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %nport_list, align 4
  %cmp.i.not = icmp eq ptr %20, %nport_list
  br i1 %cmp.i.not, label %if.then15, label %if.end10.if.end17_crit_edge

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 @efc_domain_post_event(ptr noundef %1, i32 noundef 4, ptr noundef null) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end10.if.end17_crit_edge
  %ref = getelementptr inbounds %struct.efc_domain, ptr %1, i32 0, i32 3
  %release = getelementptr inbounds %struct.efc_domain, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %release, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #7
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #7, !srcloc !134
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !132

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #7
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void %22(ptr noundef %ref) #7
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %ref19 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 1
  %release20 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 2
  %24 = ptrtoint ptr %release20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release20, align 4
  %call.i.i.i.i.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref19, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %ref19, i32 1, i32 3, i32 1) #7
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref19, ptr %ref19, i32 1, ptr elementtype(i32) %ref19) #7, !srcloc !134
  %asmresult.i.i.i.i.i.i.i38 = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i38)
  %cmp.i.i.i.i39 = icmp eq i32 %asmresult.i.i.i.i.i.i.i38, 1
  br i1 %cmp.i.i.i.i39, label %if.then.i43, label %if.end5.i.i.i.i41

if.end5.i.i.i.i41:                                ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i38)
  %.not.i.i.i.i40 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i38, 0
  br i1 %.not.i.i.i.i40, label %if.end5.i.i.i.i41.cleanup_crit_edge, label %if.then10.i.i.i.i42, !prof !132

if.end5.i.i.i.i41.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i42:                              ; preds = %if.end5.i.i.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %ref19, i32 noundef 3) #7
  br label %cleanup

if.then.i43:                                      ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void %25(ptr noundef %ref19) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i43, %if.then10.i.i.i.i42, %if.end5.i.i.i.i41.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_domain_post_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efc_nport_find(ptr noundef %domain, i32 noundef %d_id) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lookup = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 25
  %call = tail call ptr @xa_load(ptr noundef %lookup, i32 noundef %d_id) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ref = getelementptr inbounds %struct.efc_nport, ptr %call, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #7
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.lhs.false
  %2 = phi i32 [ %1, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #7
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #7
  %4 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 %5, i32 %add.i.i.i.i, ptr elementtype(i32) %ref) #7, !srcloc !136
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !132

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !132

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 0) #7
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.i.not = icmp eq i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %spec.select = select i1 %tobool12.i.i.i.i.not, ptr null, ptr %call
  br label %cleanup

cleanup:                                          ; preds = %kref_get_unless_zero.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %spec.select, %kref_get_unless_zero.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_nport_attach(ptr noundef %nport, i32 noundef %fc_id) local_unnamed_addr #0 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %efc1 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 3
  %0 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efc1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #7
  %domain = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 11
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain, align 8
  %lookup = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 25
  %call = tail call ptr @xa_store(ptr noundef %lookup, i32 noundef %fc_id, ptr noundef %nport, i32 noundef 2592) #7
  %4 = ptrtoint ptr %call to i32
  %and.i.i.i = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 2
  %cmp.i.i = icmp uge ptr %call, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i = and i1 %cmp.i.i, %cmp.i.i.i
  %shr.i = ashr i32 %4, 2
  %retval.0.i52 = select i1 %spec.select.i.i, i32 %shr.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i52)
  %tobool.not = icmp eq i32 %retval.0.i52, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i52) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %display_name = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 5
  tail call void @efc_node_fcid_display(i32 noundef %fc_id, ptr noundef %display_name, i32 noundef 32) #7
  %7 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %index, align 4
  %lookup3 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 23
  %call4 = call ptr @xa_find(ptr noundef %lookup3, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #7
  %tobool5.not54 = icmp eq ptr %call4, null
  br i1 %tobool5.not54, label %if.end.do.body8_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.do.body8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %node.055 = phi ptr [ %call7, %for.body.for.body_crit_edge ], [ %call4, %if.end.for.body_crit_edge ]
  call void @efc_node_update_display_name(ptr noundef nonnull %node.055) #7
  %call7 = call ptr @xa_find_after(ptr noundef %lookup3, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #7
  %tobool5.not = icmp eq ptr %call7, null
  br i1 %tobool5.not, label %for.body.do.body8_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.do.body8_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8

do.body8:                                         ; preds = %for.body.do.body8_crit_edge, %if.end.do.body8_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_nport_attach.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_nport_attach, %if.then13)) #7
          to label %do.end21 [label %if.then13], !srcloc !128

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %efc1, align 8
  %pci15 = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci15, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_nport_attach.__UNIQUE_ID_ddebug316, ptr noundef %dev16, ptr noundef nonnull @.str.15, ptr noundef %display_name, i32 noundef %fc_id) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then13, %do.body8
  %call22 = call i32 @efc_cmd_nport_attach(ptr noundef %1, ptr noundef %nport, i32 noundef %fc_id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %do.end26, label %do.end21.cleanup_crit_edge

do.end21.cleanup_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end26:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %efc1, align 8
  %pci28 = getelementptr inbounds %struct.efc, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pci28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci28, align 4
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.17, i32 noundef %call22) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %do.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i52, %do.end ], [ -5, %do.end26 ], [ 0, %do.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_fcid_display(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_update_display_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_cmd_nport_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_nport_allocated(ptr noundef %ctx, i32 noundef %evt, ptr nocapture noundef readnone %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %domain1 = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_nport_allocated.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_nport_allocated, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !128

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %efc = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %efc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %efc, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 5
  %call4 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_nport_allocated.__UNIQUE_ID_ddebug320, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %display_name, ptr noundef nonnull @.str.19, ptr noundef %call4) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %evt, label %sw.default [
    i32 22, label %sw.bb
    i32 20, label %do.end.sw.epilog_crit_edge
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %nport5 = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 26
  %9 = ptrtoint ptr %nport5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nport5, align 4
  %cmp.not = icmp eq ptr %1, %10
  br i1 %cmp.not, label %sw.bb.if.end27_crit_edge, label %do.end21, !prof !132

sw.bb.if.end27_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end21:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 331, i32 noundef 9, ptr noundef null) #7
  br label %if.end27

if.end27:                                         ; preds = %do.end21, %sw.bb.if.end27_crit_edge
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_nport_attached, ptr noundef null) #7
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__efc_nport_common(ptr noundef nonnull @.str.19, ptr noundef %ctx, i32 noundef %evt)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end27, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_sm_transition(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_nport_attached(ptr noundef %ctx, i32 noundef %evt, ptr nocapture readnone %arg) #0 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %efc1 = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %efc1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_nport_attached.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_nport_attached, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !128

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %efc1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 5
  %call5 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_nport_attached.__UNIQUE_ID_ddebug327, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %display_name, ptr noundef nonnull @.str.29, ptr noundef %call5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %evt, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %do.body35
  ]

sw.bb:                                            ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_nport_attached.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_nport_attached, %if.then18)) #7
          to label %do.end25 [label %if.then18], !srcloc !128

if.then18:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %pci19 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %pci19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci19, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %display_name21 = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 5
  %wwpn = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %wwpn, align 8
  %wwnn = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %wwnn to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %wwnn, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_nport_attached.__UNIQUE_ID_ddebug328, ptr noundef %dev20, ptr noundef nonnull @.str.30, ptr noundef %display_name21, i64 noundef %12, i64 noundef %14) #7
  br label %do.end25

do.end25:                                         ; preds = %if.then18, %sw.bb
  %15 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %index, align 4
  %lookup = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 23
  %call26 = call ptr @xa_find(ptr noundef %lookup, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #7
  %tobool27.not91 = icmp eq ptr %call26, null
  br i1 %tobool27.not91, label %do.end25.for.end_crit_edge, label %do.end25.for.body_crit_edge

do.end25.for.body_crit_edge:                      ; preds = %do.end25
  br label %for.body

do.end25.for.end_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end25.for.body_crit_edge
  %node.092 = phi ptr [ %call29, %for.body.for.body_crit_edge ], [ %call26, %do.end25.for.body_crit_edge ]
  call void @efc_node_update_display_name(ptr noundef nonnull %node.092) #7
  %call29 = call ptr @xa_find_after(ptr noundef %lookup, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #7
  %tobool27.not = icmp eq ptr %call29, null
  br i1 %tobool27.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end25.for.end_crit_edge
  %tt = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 15
  %16 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tt, align 4
  %call30 = call i32 %17(ptr noundef %3, ptr noundef %1) #7
  %is_vport = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %is_vport to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_vport, align 8, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool31.not = icmp eq i8 %19, 0
  br i1 %tobool31.not, label %for.end.if.end33_crit_edge, label %if.then32

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then32:                                        ; preds = %for.end
  %20 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %efc1, align 8
  %vport_lock.i = getelementptr inbounds %struct.efc, ptr %21, i32 0, i32 14
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %vport_lock.i) #7
  %vport_list.i = getelementptr inbounds %struct.efc, ptr %21, i32 0, i32 13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then32
  %vport.0.in.i = phi ptr [ %vport_list.i, %if.then32 ], [ %vport.0.i, %for.body.i.for.cond.i_crit_edge ]
  %22 = ptrtoint ptr %vport.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %vport.0.i = load ptr, ptr %vport.0.in.i, align 8
  %cmp8.not.i = icmp eq ptr %vport.0.i, %vport_list.i
  br i1 %cmp8.not.i, label %for.cond.i.efc_vport_update_spec.exit_crit_edge, label %for.body.i

for.cond.i.efc_vport_update_spec.exit_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %efc_vport_update_spec.exit

for.body.i:                                       ; preds = %for.cond.i
  %nport10.i = getelementptr inbounds %struct.efc_vport, ptr %vport.0.i, i32 0, i32 8
  %23 = ptrtoint ptr %nport10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nport10.i, align 8
  %cmp11.i = icmp eq ptr %24, %1
  br i1 %cmp11.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %wwnn.i = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 13
  %25 = ptrtoint ptr %wwnn.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %wwnn.i, align 8
  %wwnn13.i = getelementptr inbounds %struct.efc_vport, ptr %vport.0.i, i32 0, i32 1
  %27 = ptrtoint ptr %wwnn13.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %wwnn13.i, align 8
  %wwpn.i = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 12
  %28 = ptrtoint ptr %wwpn.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %wwpn.i, align 8
  %wwpn14.i = getelementptr inbounds %struct.efc_vport, ptr %vport.0.i, i32 0, i32 2
  %30 = ptrtoint ptr %wwpn14.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %wwpn14.i, align 8
  %tgt_data.i = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 14
  %31 = ptrtoint ptr %tgt_data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tgt_data.i, align 8
  %tgt_data15.i = getelementptr inbounds %struct.efc_vport, ptr %vport.0.i, i32 0, i32 6
  %33 = ptrtoint ptr %tgt_data15.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %tgt_data15.i, align 8
  %ini_data.i = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 15
  %34 = ptrtoint ptr %ini_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ini_data.i, align 4
  %ini_data16.i = getelementptr inbounds %struct.efc_vport, ptr %vport.0.i, i32 0, i32 7
  %36 = ptrtoint ptr %ini_data16.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %ini_data16.i, align 4
  br label %efc_vport_update_spec.exit

efc_vport_update_spec.exit:                       ; preds = %if.then.i, %for.cond.i.efc_vport_update_spec.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %vport_lock.i, i32 noundef %call3.i) #7
  br label %if.end33

if.end33:                                         ; preds = %efc_vport_update_spec.exit, %for.end.if.end33_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #7
  br label %sw.epilog

do.body35:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_nport_attached.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_nport_attached, %if.then47)) #7
          to label %do.end56 [label %if.then47], !srcloc !128

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  %pci48 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %37 = ptrtoint ptr %pci48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci48, align 4
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %display_name50 = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 5
  %wwpn52 = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 12
  %39 = ptrtoint ptr %wwpn52 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %wwpn52, align 8
  %wwnn53 = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 13
  %41 = ptrtoint ptr %wwnn53 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %wwnn53, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_nport_attached.__UNIQUE_ID_ddebug329, ptr noundef %dev49, ptr noundef nonnull @.str.31, ptr noundef %display_name50, i64 noundef %40, i64 noundef %42) #7
  br label %do.end56

do.end56:                                         ; preds = %if.then47, %do.body35
  %del_nport = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 15, i32 1
  %43 = ptrtoint ptr %del_nport to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %del_nport, align 4
  tail call void %44(ptr noundef %3, ptr noundef %1) #7
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__efc_nport_common(ptr noundef nonnull @.str.29, ptr noundef %ctx, i32 noundef %evt)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end56, %if.end33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__efc_nport_common(ptr noundef %funcname, ptr noundef %ctx, i32 noundef %evt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %domain1 = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain1, align 8
  %efc2 = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %efc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %efc2, align 8
  %6 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %evt, label %do.body20 [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge10
    i32 2, label %entry.sw.epilog_crit_edge11
    i32 4, label %entry.sw.epilog_crit_edge12
    i32 22, label %sw.bb3
    i32 3, label %sw.bb4
  ]

entry.sw.epilog_crit_edge12:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge11:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge10:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_nport_attached, ptr noundef null) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %shutting_down = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 27
  %7 = ptrtoint ptr %shutting_down to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %shutting_down, align 1
  %is_vport = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %is_vport to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_vport, align 8, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %sw.bb4.if.end_crit_edge, label %if.then

sw.bb4.if.end_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb4
  %vport_list.i = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then
  %vport.0.in.i = phi ptr [ %vport_list.i, %if.then ], [ %vport.0.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %vport.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %vport.0.i = load ptr, ptr %vport.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %vport.0.i, %vport_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %nport3.i = getelementptr inbounds %struct.efc_vport, ptr %vport.0.i, i32 0, i32 8
  %11 = ptrtoint ptr %nport3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nport3.i, align 8
  %cmp4.i = icmp eq ptr %12, %1
  br i1 %cmp4.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %nport3.i.le = getelementptr inbounds %struct.efc_vport, ptr %vport.0.i, i32 0, i32 8
  %ref.i = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 1
  %release.i = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %release.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #7
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #7, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.kref_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !132

if.end5.i.i.i.i.i.kref_put.exit.i_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #7
  br label %kref_put.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void %14(ptr noundef %ref.i) #7
  br label %kref_put.exit.i

kref_put.exit.i:                                  ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.kref_put.exit.i_crit_edge
  %16 = ptrtoint ptr %nport3.i.le to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %nport3.i.le, align 8
  br label %if.end

if.end:                                           ; preds = %kref_put.exit.i, %for.cond.i.if.end_crit_edge, %sw.bb4.if.end_crit_edge
  %xa_head.i = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 23, i32 2
  %17 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xa_head.i, align 4
  %cmp.i = icmp eq ptr %18, null
  br i1 %cmp.i, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %lookup6 = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 25
  %fc_id = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fc_id, align 4
  %call7 = tail call ptr @xa_erase(ptr noundef %lookup6, i32 noundef %20) #7
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_nport_wait_port_free, ptr noundef null) #7
  %call8 = tail call i32 @efc_cmd_nport_free(ptr noundef %5, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then5.sw.epilog_crit_edge, label %do.body

if.then5.sw.epilog_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body:                                          ; preds = %if.then5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_nport_common.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_nport_common, %if.then15)) #7
          to label %do.end [label %if.then15], !srcloc !128

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %efc2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %efc2, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_nport_common.__UNIQUE_ID_ddebug318, ptr noundef %dev, ptr noundef nonnull @.str.33) #7
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  tail call void @efc_nport_free(ptr noundef %1)
  br label %sw.epilog

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_nport_wait_shutdown, ptr noundef null) #7
  tail call fastcc void @efc_nport_shutdown(ptr noundef %1)
  br label %sw.epilog

do.body20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_nport_common.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_nport_common, %if.then32)) #7
          to label %sw.epilog [label %if.then32], !srcloc !128

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %efc2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %efc2, align 8
  %pci34 = getelementptr inbounds %struct.efc, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %pci34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci34, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 5
  %call36 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_nport_common.__UNIQUE_ID_ddebug319, ptr noundef %dev35, ptr noundef nonnull @.str.43, ptr noundef %display_name, ptr noundef %funcname, ptr noundef %call36) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then32, %do.body20, %if.else, %do.end, %if.then5.sw.epilog_crit_edge, %sw.bb3, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge10, %entry.sw.epilog_crit_edge11, %entry.sw.epilog_crit_edge12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_nport_vport_init(ptr noundef %ctx, i32 noundef %evt, ptr nocapture readnone %arg) #0 align 64 {
entry:
  %be_wwpn = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %efc1 = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %efc1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_nport_vport_init.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_nport_vport_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !128

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %efc1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 5
  %call5 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_nport_vport_init.__UNIQUE_ID_ddebug321, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %display_name, ptr noundef nonnull @.str.21, ptr noundef %call5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %evt)
  %cond60 = icmp eq i32 %evt, 0
  br i1 %cond60, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %be_wwpn) #7
  %wwpn = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %wwpn, align 8
  %10 = ptrtoint ptr %be_wwpn to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %be_wwpn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp = icmp eq i64 %9, 0
  br i1 %cmp, label %do.body8, label %sw.bb.if.end26_crit_edge

sw.bb.if.end26_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.body8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_nport_vport_init.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_nport_vport_init, %if.then20)) #7
          to label %if.end26 [label %if.then20], !srcloc !128

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %pci21 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %pci21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci21, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_nport_vport_init.__UNIQUE_ID_ddebug322, ptr noundef %dev22, ptr noundef nonnull @.str.22) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %do.body8, %sw.bb.if.end26_crit_edge
  %fc_id = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 17
  %13 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fc_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp27.not = icmp eq i32 %14, -1
  br i1 %cmp27.not, label %if.end26.if.end48_crit_edge, label %do.body29

if.end26.if.end48_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

do.body29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_nport_vport_init.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_nport_vport_init, %if.then41)) #7
          to label %if.end48 [label %if.then41], !srcloc !128

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %pci42 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %pci42 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci42, align 4
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fc_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_nport_vport_init.__UNIQUE_ID_ddebug323, ptr noundef %dev43, ptr noundef nonnull @.str.23, i32 noundef %18) #7
  br label %if.end48

if.end48:                                         ; preds = %if.then41, %do.body29, %if.end26.if.end48_crit_edge
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_nport_vport_wait_alloc, ptr noundef null) #7
  %domain = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %domain, align 8
  %21 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %wwpn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %cmp50 = icmp eq i64 %22, 0
  %.be_wwpn = select i1 %cmp50, ptr null, ptr %be_wwpn
  %call51 = call i32 @efc_cmd_nport_alloc(ptr noundef %3, ptr noundef %1, ptr noundef %20, ptr noundef %.be_wwpn) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end48.cleanup_crit_edge, label %do.end56

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %pci57 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %pci57 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci57, align 4
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58, ptr noundef nonnull @.str.24) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %if.end48.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %be_wwpn) #7
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__efc_nport_common(ptr noundef nonnull @.str.21, ptr noundef %ctx, i32 noundef %evt)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cleanup
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_nport_vport_wait_alloc(ptr noundef %ctx, i32 noundef %evt, ptr nocapture readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %efc1 = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %efc1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_nport_vport_wait_alloc.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_nport_vport_wait_alloc, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !128

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %efc1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 5
  %call5 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_nport_vport_wait_alloc.__UNIQUE_ID_ddebug324, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %display_name, ptr noundef nonnull @.str.25, ptr noundef %call5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %evt)
  %cond = icmp eq i32 %evt, 20
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %do.end
  %wwnn = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %wwnn to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %wwnn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp = icmp eq i64 %9, 0
  br i1 %cmp, label %if.then7, label %sw.bb.if.end12_crit_edge

sw.bb.if.end12_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %sli_wwnn = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %sli_wwnn to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sli_wwnn, align 8
  %12 = ptrtoint ptr %wwnn to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %wwnn, align 8
  %sli_wwpn = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 20
  %13 = ptrtoint ptr %sli_wwpn to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %sli_wwpn, align 8
  %wwpn = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %wwpn to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %wwpn, align 8
  %wwnn_str = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 19
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %wwnn_str, i32 noundef 32, ptr noundef nonnull @.str.9, i64 noundef %14)
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %sw.bb.if.end12_crit_edge
  %wwpn13 = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %wwpn13 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %wwpn13, align 8
  %fl_wwpn = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 30, i32 20
  %18 = ptrtoint ptr %fl_wwpn to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %fl_wwpn, align 1
  %19 = ptrtoint ptr %wwnn to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %wwnn, align 8
  %fl_wwnn = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 30, i32 28
  %21 = ptrtoint ptr %fl_wwnn to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %fl_wwnn, align 1
  %fc_id = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 17
  %22 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fc_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp15 = icmp eq i32 %23, -1
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end12
  %call17 = tail call ptr @efc_node_alloc(ptr noundef %1, i32 noundef 16777214, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %pci23 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %pci23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci23, align 4
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.26) #10
  br label %cleanup35

if.end25:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_node_transition(ptr noundef nonnull %call17, ptr noundef nonnull @__efc_vport_fabric_init, ptr noundef null) #7
  br label %if.end32

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %wwnn_str26 = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 19
  %call29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %wwnn_str26, i32 noundef 32, ptr noundef nonnull @.str.9, i64 noundef %17)
  %26 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fc_id, align 4
  %call31 = tail call i32 @efc_nport_attach(ptr noundef %1, i32 noundef %27)
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.end25
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_nport_vport_allocated, ptr noundef null) #7
  br label %cleanup35

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__efc_nport_common(ptr noundef nonnull @.str.25, ptr noundef %ctx, i32 noundef %evt)
  br label %cleanup35

cleanup35:                                        ; preds = %sw.default, %if.end32, %do.end22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_cmd_nport_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efc_node_alloc(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_transition(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__efc_vport_fabric_init(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_nport_vport_allocated(ptr noundef %ctx, i32 noundef %evt, ptr nocapture readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %efc1 = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %efc1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_nport_vport_allocated.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_nport_vport_allocated, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !128

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %efc1, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 5
  %call5 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_nport_vport_allocated.__UNIQUE_ID_ddebug325, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %display_name, ptr noundef nonnull @.str.27, ptr noundef %call5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %evt)
  %cond = icmp eq i32 %evt, 22
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %do.end
  %call6 = tail call ptr @efc_node_find(ptr noundef %1, i32 noundef 16777214) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.body9, label %if.end27

do.body9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_nport_vport_allocated.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_nport_vport_allocated, %if.then21)) #7
          to label %sw.epilog [label %if.then21], !srcloc !128

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %pci22 = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %pci22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci22, align 4
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_nport_vport_allocated.__UNIQUE_ID_ddebug326, ptr noundef %dev23, ptr noundef nonnull @.str.28, i32 noundef 16777214) #7
  br label %sw.epilog

if.end27:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_node_post_event(ptr noundef nonnull %call6, i32 noundef 22, ptr noundef null) #7
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_nport_attached, ptr noundef null) #7
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__efc_nport_common(ptr noundef nonnull @.str.27, ptr noundef %ctx, i32 noundef %evt)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end27, %if.then21, %do.body9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efc_node_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_post_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_nport_wait_shutdown(ptr noundef %ctx, i32 noundef %evt, ptr nocapture readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %domain1 = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain1, align 8
  %efc2 = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %efc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %efc2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_nport_wait_shutdown.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_nport_wait_shutdown, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !128

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %efc2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %efc2, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 5
  %call6 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_nport_wait_shutdown.__UNIQUE_ID_ddebug330, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %display_name, ptr noundef nonnull @.str.32, ptr noundef %call6) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %evt, label %sw.default [
    i32 20, label %do.end.sw.epilog_crit_edge
    i32 21, label %do.end.sw.epilog_crit_edge31
    i32 22, label %do.end.sw.epilog_crit_edge32
    i32 23, label %do.end.sw.epilog_crit_edge33
    i32 4, label %sw.bb7
  ]

do.end.sw.epilog_crit_edge33:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.sw.epilog_crit_edge32:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.sw.epilog_crit_edge31:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  %lookup = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 25
  %fc_id = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fc_id, align 4
  %call8 = tail call ptr @xa_erase(ptr noundef %lookup, i32 noundef %12) #7
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_nport_wait_port_free, ptr noundef null) #7
  %call9 = tail call i32 @efc_cmd_nport_free(ptr noundef %5, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %sw.bb7.sw.epilog_crit_edge, label %do.end14

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end14:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %efc2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %efc2, align 8
  %pci16 = getelementptr inbounds %struct.efc, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %pci16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci16, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.33) #10
  tail call void @efc_nport_free(ptr noundef %1)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__efc_nport_common(ptr noundef nonnull @.str.32, ptr noundef %ctx, i32 noundef %evt)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end14, %sw.bb7.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge31, %do.end.sw.epilog_crit_edge32, %do.end.sw.epilog_crit_edge33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_nport_wait_port_free(ptr noundef %ctx, i32 noundef %evt, ptr nocapture readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_nport_wait_port_free.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_nport_wait_port_free, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !128

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %efc = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %efc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %efc, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_nport, ptr %1, i32 0, i32 5
  %call3 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_nport_wait_port_free.__UNIQUE_ID_ddebug331, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %display_name, ptr noundef nonnull @.str.34, ptr noundef %call3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %evt, label %sw.default [
    i32 22, label %do.end.sw.epilog_crit_edge
    i32 24, label %sw.bb
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_nport_free(ptr noundef %1)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__efc_nport_common(ptr noundef nonnull @.str.34, ptr noundef %ctx, i32 noundef %evt)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_cmd_nport_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_vport_start(ptr noundef %domain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 8
  %vport_lock = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 14
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vport_lock) #7
  %vport_list = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %vport_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vport_list, align 8
  %cmp14.not35 = icmp eq ptr %3, %vport_list
  br i1 %cmp14.not35, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %vport.037 = phi ptr [ %next.038, %for.inc.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %rc.036 = phi i32 [ %rc.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %vport.037 to i32
  call void @__asan_load4_noabort(i32 %4)
  %next.038 = load ptr, ptr %vport.037, align 8
  %nport = getelementptr inbounds %struct.efc_vport, ptr %vport.037, i32 0, i32 8
  %5 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nport, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call fastcc i32 @efc_vport_nport_alloc(ptr noundef %domain, ptr noundef %vport.037)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  %spec.select = select i1 %tobool17.not, i32 %rc.036, i32 -5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %rc.1 = phi i32 [ %rc.036, %for.body.for.inc_crit_edge ], [ %spec.select, %if.then ]
  %cmp14.not = icmp eq ptr %next.038, %vport_list
  br i1 %cmp14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %rc.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %rc.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vport_lock, i32 noundef %call3) #7
  ret i32 %rc.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efc_vport_nport_alloc(ptr noundef %domain, ptr nocapture noundef %vport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %1 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %domain, align 8
  %dep_map = getelementptr inbounds %struct.efc, ptr %2, i32 0, i32 16, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !131

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 602, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %wwpn = getelementptr inbounds %struct.efc_vport, ptr %vport, i32 0, i32 2
  %3 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %wwpn, align 8
  %wwnn = getelementptr inbounds %struct.efc_vport, ptr %vport, i32 0, i32 1
  %5 = ptrtoint ptr %wwnn to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %wwnn, align 8
  %fc_id = getelementptr inbounds %struct.efc_vport, ptr %vport, i32 0, i32 3
  %7 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fc_id, align 8
  %enable_ini = getelementptr inbounds %struct.efc_vport, ptr %vport, i32 0, i32 5
  %9 = ptrtoint ptr %enable_ini to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable_ini, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool24 = icmp ne i8 %10, 0
  %enable_tgt = getelementptr inbounds %struct.efc_vport, ptr %vport, i32 0, i32 4
  %11 = ptrtoint ptr %enable_tgt to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable_tgt, align 4, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool25 = icmp ne i8 %12, 0
  %call26 = tail call ptr @efc_nport_alloc(ptr noundef %domain, i64 noundef %4, i64 noundef %6, i32 noundef %8, i1 noundef zeroext %tobool24, i1 noundef zeroext %tobool25)
  %nport27 = getelementptr inbounds %struct.efc_vport, ptr %vport, i32 0, i32 8
  %13 = ptrtoint ptr %nport27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call26, ptr %nport27, align 8
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %if.end.cleanup_crit_edge, label %if.end30

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %ref = getelementptr inbounds %struct.efc_nport, ptr %call26, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #7
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #7, !srcloc !130
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end30.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !131

if.end30.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end30
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !132

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end30.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end30.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #7
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %is_vport = getelementptr inbounds %struct.efc_nport, ptr %call26, i32 0, i32 6
  %16 = ptrtoint ptr %is_vport to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %is_vport, align 8
  %tgt_data = getelementptr inbounds %struct.efc_vport, ptr %vport, i32 0, i32 6
  %17 = ptrtoint ptr %tgt_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tgt_data, align 8
  %tgt_data31 = getelementptr inbounds %struct.efc_nport, ptr %call26, i32 0, i32 14
  %19 = ptrtoint ptr %tgt_data31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %tgt_data31, align 8
  %ini_data = getelementptr inbounds %struct.efc_vport, ptr %vport, i32 0, i32 7
  %20 = ptrtoint ptr %ini_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ini_data, align 4
  %ini_data32 = getelementptr inbounds %struct.efc_nport, ptr %call26, i32 0, i32 15
  %22 = ptrtoint ptr %ini_data32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %ini_data32, align 4
  %sm = getelementptr inbounds %struct.efc_nport, ptr %call26, i32 0, i32 22
  tail call void @efc_sm_transition(ptr noundef %sm, ptr noundef nonnull @__efc_nport_vport_init, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %kref_get.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %kref_get.exit ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_nport_vport_new(ptr noundef %domain, i64 noundef %wwpn, i64 noundef %wwnn, i32 noundef %fc_id, i1 noundef zeroext %ini, i1 noundef zeroext %tgt, ptr noundef %tgt_data, ptr noundef %ini_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 8
  br i1 %ini, label %land.lhs.true, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %enable_ini = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %enable_ini to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_ini, align 8, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %do.body, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_nport_vport_new.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_nport_vport_new, %if.then10)) #7
          to label %cleanup [label %if.then10], !srcloc !128

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_nport_vport_new.__UNIQUE_ID_ddebug332, ptr noundef %dev, ptr noundef nonnull @.str.36) #7
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  br i1 %tgt, label %land.lhs.true14, label %if.end11.if.end39_crit_edge

if.end11.if.end39_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

land.lhs.true14:                                  ; preds = %if.end11
  %enable_tgt = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %enable_tgt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enable_tgt, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp18 = icmp eq i8 %7, 0
  br i1 %cmp18, label %do.body21, label %land.lhs.true14.if.end39_crit_edge

land.lhs.true14.if.end39_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

do.body21:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_nport_vport_new.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_nport_vport_new, %if.then33)) #7
          to label %cleanup [label %if.then33], !srcloc !128

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %pci34 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %pci34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci34, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_nport_vport_new.__UNIQUE_ID_ddebug333, ptr noundef %dev35, ptr noundef nonnull @.str.37) #7
  br label %cleanup

if.end39:                                         ; preds = %land.lhs.true14.if.end39_crit_edge, %if.end11.if.end39_crit_edge
  %call43 = tail call ptr @efc_vport_create_spec(ptr noundef %1, i64 noundef %wwnn, i64 noundef %wwpn, i32 noundef %fc_id, i1 noundef zeroext %ini, i1 noundef zeroext %tgt, ptr noundef %tgt_data, ptr noundef %ini_data)
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %do.end48, label %do.body53

do.end48:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %pci49 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pci49 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci49, align 4
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.38) #10
  br label %cleanup

do.body53:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 16
  %call58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %call63 = tail call fastcc i32 @efc_vport_nport_alloc(ptr noundef %domain, ptr noundef nonnull %call43)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call58) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body53, %do.end48, %if.then33, %do.body21, %if.then10, %do.body
  %retval.0 = phi i32 [ %call63, %do.body53 ], [ -5, %do.end48 ], [ -5, %if.then10 ], [ -5, %if.then33 ], [ -5, %do.body ], [ -5, %do.body21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efc_vport_create_spec(ptr noundef %efc, i64 noundef %wwnn, i64 noundef %wwpn, i32 noundef %fc_id, i1 noundef zeroext %enable_ini, i1 noundef zeroext %enable_tgt, ptr noundef %tgt_data, ptr noundef %ini_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable_ini to i8
  %frombool1 = zext i1 %enable_tgt to i8
  %vport_lock = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 14
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vport_lock) #7
  %vport_list = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 13
  %0 = ptrtoint ptr %vport_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %vport.079 = load ptr, ptr %vport_list, align 8
  %cmp8.not80 = icmp eq ptr %vport.079, %vport_list
  br i1 %cmp8.not80, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %wwpn)
  %tobool.not = icmp eq i64 %wwpn, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %wwnn)
  %tobool14.not = icmp eq i64 %wwnn, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vport.081 = phi ptr [ %vport.079, %for.body.lr.ph ], [ %vport.0, %for.inc.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %wwpn10 = getelementptr inbounds %struct.efc_vport, ptr %vport.081, i32 0, i32 2
  %1 = ptrtoint ptr %wwpn10 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %wwpn10, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %wwpn)
  %cmp11 = icmp ne i64 %2, %wwpn
  %or.cond = or i1 %tobool14.not, %cmp11
  br i1 %or.cond, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true15

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true15:                                  ; preds = %land.lhs.true
  %wwnn16 = getelementptr inbounds %struct.efc_vport, ptr %vport.081, i32 0, i32 1
  %3 = ptrtoint ptr %wwnn16 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %wwnn16, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %wwnn)
  %cmp17 = icmp eq i64 %4, %wwnn
  br i1 %cmp17, label %do.end21, label %land.lhs.true15.for.inc_crit_edge

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end21:                                         ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  %pci = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %5 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i64 noundef %wwnn, i64 noundef %wwpn) #10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true15.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %vport.081 to i32
  call void @__asan_load4_noabort(i32 %7)
  %vport.0 = load ptr, ptr %vport.081, align 8
  %cmp8.not = icmp eq ptr %vport.0, %vport_list
  br i1 %cmp8.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 48) #11
  %tobool29.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool29.not, label %for.end.cleanup_crit_edge, label %if.end32

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %for.end
  %wwnn33 = getelementptr inbounds %struct.efc_vport, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %wwnn33 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %wwnn, ptr %wwnn33, align 8
  %wwpn34 = getelementptr inbounds %struct.efc_vport, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %wwpn34 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %wwpn, ptr %wwpn34, align 8
  %fc_id35 = getelementptr inbounds %struct.efc_vport, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %fc_id35 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %fc_id, ptr %fc_id35, align 8
  %enable_tgt37 = getelementptr inbounds %struct.efc_vport, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %enable_tgt37 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool1, ptr %enable_tgt37, align 4
  %enable_ini40 = getelementptr inbounds %struct.efc_vport, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %enable_ini40 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %enable_ini40, align 1
  %tgt_data42 = getelementptr inbounds %struct.efc_vport, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %tgt_data42 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tgt_data, ptr %tgt_data42, align 8
  %ini_data43 = getelementptr inbounds %struct.efc_vport, ptr %call7.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %ini_data43 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ini_data, ptr %ini_data43, align 4
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %prev.i78 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 13, i32 1
  %18 = ptrtoint ptr %prev.i78 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i78, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %19, ptr noundef %vport_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %prev.i78 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %prev.i78, align 4
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %vport_list, ptr %call7.i.i, align 8
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i.i, ptr %19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end32.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end21
  %retval.0 = phi ptr [ null, %do.end21 ], [ null, %for.end.cleanup_crit_edge ], [ %call7.i.i, %if.end32.cleanup_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vport_lock, i32 noundef %call3) #7
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_nport_vport_del(ptr noundef %efc, ptr noundef readonly %domain, i64 noundef %wwpn, i64 noundef %wwnn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vport_lock = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vport_lock) #7
  %vport_list = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 13
  %0 = ptrtoint ptr %vport_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport_list, align 8
  %cmp13.not102 = icmp eq ptr %1, %vport_list
  br i1 %cmp13.not102, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %vport.0103 = phi ptr [ %next.0104, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %vport.0103 to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.0104 = load ptr, ptr %vport.0103, align 8
  %wwpn15 = getelementptr inbounds %struct.efc_vport, ptr %vport.0103, i32 0, i32 2
  %3 = ptrtoint ptr %wwpn15 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %wwpn15, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %wwpn)
  %cmp16 = icmp eq i64 %4, %wwpn
  br i1 %cmp16, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %wwnn18 = getelementptr inbounds %struct.efc_vport, ptr %vport.0103, i32 0, i32 1
  %5 = ptrtoint ptr %wwnn18 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %wwnn18, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %wwnn)
  %cmp19 = icmp eq i64 %6, %wwnn
  br i1 %cmp19, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vport.0103) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %vport.0103, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %vport.0103 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vport.0103, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %13 = ptrtoint ptr %vport.0103 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %vport.0103, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %vport.0103, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %vport.0103) #7
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp13.not = icmp eq ptr %next.0104, %vport_list
  br i1 %cmp13.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del.exit, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vport_lock, i32 noundef %call2) #7
  %tobool.not = icmp eq ptr %domain, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %do.body31

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body31:                                        ; preds = %for.end
  %lock = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 16
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %nport_list = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 2
  %15 = ptrtoint ptr %nport_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %nport.0105 = load ptr, ptr %nport_list, align 4
  %cmp50.not106 = icmp eq ptr %nport.0105, %nport_list
  br i1 %cmp50.not106, label %do.body31.for.end71_crit_edge, label %do.body31.for.body53_crit_edge

do.body31.for.body53_crit_edge:                   ; preds = %do.body31
  br label %for.body53

do.body31.for.end71_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end71

for.body53:                                       ; preds = %for.inc65.for.body53_crit_edge, %do.body31.for.body53_crit_edge
  %nport.0107 = phi ptr [ %nport.0, %for.inc65.for.body53_crit_edge ], [ %nport.0105, %do.body31.for.body53_crit_edge ]
  %wwpn54 = getelementptr inbounds %struct.efc_nport, ptr %nport.0107, i32 0, i32 12
  %16 = ptrtoint ptr %wwpn54 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %wwpn54, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %wwpn)
  %cmp55 = icmp eq i64 %17, %wwpn
  br i1 %cmp55, label %land.lhs.true57, label %for.body53.for.inc65_crit_edge

for.body53.for.inc65_crit_edge:                   ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc65

land.lhs.true57:                                  ; preds = %for.body53
  %wwnn58 = getelementptr inbounds %struct.efc_nport, ptr %nport.0107, i32 0, i32 13
  %18 = ptrtoint ptr %wwnn58 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %wwnn58, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %wwnn)
  %cmp59 = icmp eq i64 %19, %wwnn
  br i1 %cmp59, label %if.then61, label %land.lhs.true57.for.inc65_crit_edge

land.lhs.true57.for.inc65_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc65

if.then61:                                        ; preds = %land.lhs.true57
  %ref = getelementptr inbounds %struct.efc_nport, ptr %nport.0107, i32 0, i32 1
  %release = getelementptr inbounds %struct.efc_nport, ptr %nport.0107, i32 0, i32 2
  %20 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %release, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #7
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #7, !srcloc !134
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !132

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #7
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void %21(ptr noundef %ref) #7
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %sm = getelementptr inbounds %struct.efc_nport, ptr %nport.0107, i32 0, i32 22
  %call63 = tail call i32 @efc_sm_post_event(ptr noundef %sm, i32 noundef 3, ptr noundef null) #7
  br label %for.end71

for.inc65:                                        ; preds = %land.lhs.true57.for.inc65_crit_edge, %for.body53.for.inc65_crit_edge
  %23 = ptrtoint ptr %nport.0107 to i32
  call void @__asan_load4_noabort(i32 %23)
  %nport.0 = load ptr, ptr %nport.0107, align 4
  %cmp50.not = icmp eq ptr %nport.0, %nport_list
  br i1 %cmp50.not, label %for.inc65.for.end71_crit_edge, label %for.inc65.for.body53_crit_edge

for.inc65.for.body53_crit_edge:                   ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body53

for.inc65.for.end71_crit_edge:                    ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end71

for.end71:                                        ; preds = %for.inc65.for.end71_crit_edge, %kref_put.exit, %do.body31.for.end71_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call38) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end71, %for.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_vport_del_all(ptr noundef %efc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vport_lock = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vport_lock) #7
  %vport_list = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 13
  %0 = ptrtoint ptr %vport_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport_list, align 8
  %cmp13.not29 = icmp eq ptr %1, %vport_list
  br i1 %cmp13.not29, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %vport.030 = phi ptr [ %next.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %vport.030 to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.0 = load ptr, ptr %vport.030, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vport.030) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %vport.030, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %vport.030 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vport.030, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %vport.030 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %vport.030, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %vport.030, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %vport.030) #7
  %cmp13.not = icmp eq ptr %next.0, %vport_list
  br i1 %cmp13.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vport_lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efc_nport_shutdown(ptr noundef %nport) unnamed_addr #0 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %efc1 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 3
  %0 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efc1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #7
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %index, align 4
  %lookup = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 23
  %call = call ptr @xa_find(ptr noundef %lookup, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #7
  %tobool.not40 = icmp eq ptr %call, null
  br i1 %tobool.not40, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %is_vport = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 6
  %link_status = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 12
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %node.041 = phi ptr [ %call, %for.body.lr.ph ], [ %call25, %for.inc.for.body_crit_edge ]
  %fc_id = getelementptr inbounds %struct.efc_node, ptr %node.041, i32 0, i32 17, i32 2
  %3 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fc_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777214, i32 %4)
  %cmp = icmp eq i32 %4, 16777214
  br i1 %cmp, label %land.lhs.true, label %for.body.if.then_crit_edge

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true:                                    ; preds = %for.body
  %5 = ptrtoint ptr %is_vport to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_vport, align 8, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %land.lhs.true.if.then_crit_edge, label %if.end

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %for.body.if.then_crit_edge
  call void @efc_node_post_event(ptr noundef nonnull %node.041, i32 noundef 3, ptr noundef null) #7
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true
  %7 = ptrtoint ptr %link_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %link_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp3 = icmp eq i32 %8, 1
  br i1 %cmp3, label %if.then4, label %do.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @efc_node_post_event(ptr noundef nonnull %node.041, i32 noundef 3, ptr noundef null) #7
  br label %for.inc

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_nport_shutdown.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_nport_shutdown, %if.then10)) #7
          to label %do.end [label %if.then10], !srcloc !128

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %node.041, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_nport_shutdown.__UNIQUE_ID_ddebug317, ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef %display_name) #7
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %call12 = call i32 @efc_send_logo(ptr noundef nonnull %node.041) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %do.end18

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @efc_node_transition(ptr noundef nonnull %node.041, ptr noundef nonnull @__efc_d_wait_logo_rsp, ptr noundef null) #7
  br label %for.inc

do.end18:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %node.041 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node.041, align 8
  %pci20 = getelementptr inbounds %struct.efc, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %pci20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci20, align 4
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %display_name22 = getelementptr inbounds %struct.efc_node, ptr %node.041, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21, ptr noundef nonnull @.str.46, ptr noundef %display_name22) #10
  call void @efc_node_post_event(ptr noundef nonnull %node.041, i32 noundef 51, ptr noundef null) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end18, %if.then14, %if.then4, %if.then
  %call25 = call ptr @xa_find_after(ptr noundef %lookup, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #7
  %tobool.not = icmp eq ptr %call25, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_send_logo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__efc_d_wait_logo_rsp(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15, !17, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !82, !84, !85, !87, !88, !89, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !114, !116, !117, !118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 37, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @efc_nport_cb.__UNIQUE_ID_ddebug313, !1, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 78, i32 4}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @efc_nport_alloc._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @efc_nport_alloc._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 94, i32 61}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 114, i32 53}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 129, i32 2}
!19 = !{ptr @efc_nport_alloc.__UNIQUE_ID_ddebug314, !18, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 143, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @efc_nport_free.__UNIQUE_ID_ddebug315, !21, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 187, i32 3}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @efc_nport_attach._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @efc_nport_attach._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 199, i32 2}
!31 = !{ptr @efc_nport_attach.__UNIQUE_ID_ddebug316, !30, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 205, i32 3}
!34 = !{ptr @efc_nport_attach._entry.16, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @efc_nport_attach._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 326, i32 2}
!38 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @__efc_nport_allocated.__UNIQUE_ID_ddebug320, !37, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 350, i32 2}
!42 = !{ptr @__efc_nport_vport_init.__UNIQUE_ID_ddebug321, !41, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 357, i32 4}
!45 = !{ptr @__efc_nport_vport_init.__UNIQUE_ID_ddebug322, !44, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 360, i32 4}
!48 = !{ptr @__efc_nport_vport_init.__UNIQUE_ID_ddebug323, !47, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 369, i32 4}
!51 = !{ptr @__efc_nport_vport_init._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @__efc_nport_vport_init._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 387, i32 2}
!55 = !{ptr @__efc_nport_vport_wait_alloc.__UNIQUE_ID_ddebug324, !54, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 419, i32 5}
!58 = !{ptr @__efc_nport_vport_wait_alloc._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @__efc_nport_vport_wait_alloc._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 444, i32 2}
!62 = !{ptr @__efc_nport_vport_allocated.__UNIQUE_ID_ddebug325, !61, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 459, i32 4}
!65 = !{ptr @__efc_nport_vport_allocated.__UNIQUE_ID_ddebug326, !64, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 499, i32 2}
!68 = !{ptr @__efc_nport_attached.__UNIQUE_ID_ddebug327, !67, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 506, i32 3}
!71 = !{ptr @__efc_nport_attached.__UNIQUE_ID_ddebug328, !70, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 526, i32 3}
!74 = !{ptr @__efc_nport_attached.__UNIQUE_ID_ddebug329, !73, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 546, i32 2}
!77 = !{ptr @__efc_nport_wait_shutdown.__UNIQUE_ID_ddebug330, !76, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 564, i32 4}
!80 = !{ptr @__efc_nport_wait_shutdown._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @__efc_nport_wait_shutdown._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 581, i32 2}
!84 = !{ptr @__efc_nport_wait_port_free.__UNIQUE_ID_ddebug331, !83, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 653, i32 3}
!87 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @efc_nport_vport_new.__UNIQUE_ID_ddebug332, !86, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 658, i32 3}
!91 = !{ptr @efc_nport_vport_new.__UNIQUE_ID_ddebug333, !90, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 669, i32 3}
!94 = !{ptr @efc_nport_vport_new._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @efc_nport_vport_new._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 751, i32 4}
!98 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @efc_vport_create_spec._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @efc_vport_create_spec._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @xa_init_flags.__key, !102, !"__key", i1 false, i1 false}
!102 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!103 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 300, i32 5}
!106 = !{ptr @__efc_nport_common.__UNIQUE_ID_ddebug318, !105, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 313, i32 3}
!109 = !{ptr @__efc_nport_common.__UNIQUE_ID_ddebug319, !108, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 236, i32 3}
!112 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @efc_nport_shutdown.__UNIQUE_ID_ddebug317, !111, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/elx/libefc/efc_nport.c", i32 249, i32 3}
!116 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @efc_nport_shutdown._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @efc_nport_shutdown._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{i64 2148504210, i64 2148504215, i64 2148504228, i64 2148504272, i64 2148504306, i64 2148504327}
!129 = !{i8 0, i8 2}
!130 = !{i64 2148681925, i64 2148681957, i64 2148681986, i64 2148682020, i64 2148682051, i64 2148682074}
!131 = !{!"branch_weights", i32 1, i32 2000}
!132 = !{!"branch_weights", i32 2000, i32 1}
!133 = !{i64 2148769950}
!134 = !{i64 2148684390, i64 2148684422, i64 2148684451, i64 2148684485, i64 2148684516, i64 2148684539}
!135 = !{i64 2150072791}
!136 = !{i64 1165908, i64 1165932, i64 1165953, i64 1165970, i64 1165987}
