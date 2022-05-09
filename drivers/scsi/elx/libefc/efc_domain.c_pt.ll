; ModuleID = '/llk/IR_all_yes/drivers/scsi/elx/libefc/efc_domain.c_pt.bc'
source_filename = "../drivers/scsi/elx/libefc/efc_domain.c"
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
%struct.efc_domain_record = type { i32, i32, [6 x i8], [8 x i8], %union.anon.79, i32, i32, i8, i8 }
%union.anon.79 = type { [512 x i8] }
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
%struct.efc_domain = type { ptr, [32 x i8], %struct.list_head, %struct.kref, ptr, ptr, ptr, i32, i32, i32, i32, %struct.efc_dma, i64, %struct.efc_sm_ctx, i8, i8, i8, i8, i8, i8, i8, i8, %struct.efc_domain_record, [120 x i8], [120 x i8], %struct.xarray, ptr }
%struct.efc_dma = type { ptr, ptr, i32, i32, i32, ptr }
%struct.efc_sm_ctx = type { ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.efc_nport = type { %struct.list_head, %struct.kref, ptr, ptr, i32, [32 x i8], i8, i8, i8, i8, i8, ptr, i64, i64, ptr, ptr, i32, i32, %struct.efc_dma, [32 x i8], i64, i64, %struct.efc_sm_ctx, %struct.xarray, i8, i8, i8, i8, i32, i32, [120 x i8], i32 }
%struct.efc_hw_sequence = type { %struct.list_head, ptr, i8, ptr, ptr, ptr }
%struct.efc_hw_rq_buffer = type { i16, %struct.efc_dma }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.efc_node = type { ptr, [32 x i8], ptr, %struct.kref, ptr, i8, i8, i8, i8, i8, i8, i8, i8, %struct.spinlock, %struct.list_head, ptr, ptr, %struct.efc_remote_node, %struct.efc_sm_ctx, i32, i32, ptr, i32, i32, i32, i8, i8, i8, %struct.efc_dma, [120 x i8], %struct.spinlock, %struct.list_head, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], i32, i32, ptr, %struct.timer_list, i64, [32 x i8], [32 x i8] }
%struct.efc_remote_node = type { i32, i32, i32, i8, ptr, ptr }

@efc_domain_cb.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"efct\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"efc_domain_cb\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/scsi/elx/libefc/efc_domain.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Domain found: wwn %016llX\0A\00", [37 x i8] zeroinitializer }, align 32
@efc_domain_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 41, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"efc_domain_alloc() failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@efc_domain_cb._entry_ptr = internal global ptr @efc_domain_cb._entry, section ".printk_index", align 4
@efc_domain_cb.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%s]EFC_HW_DOMAIN_LOST:\0A\00", [39 x i8] zeroinitializer }, align 32
@efc_domain_cb.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%s]EFC_HW_DOMAIN_ALLOC_OK:\0A\00", [35 x i8] zeroinitializer }, align 32
@efc_domain_cb.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%s]EFC_HW_DOMAIN_ALLOC_FAIL:\0A\00", [33 x i8] zeroinitializer }, align 32
@efc_domain_cb.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%s]EFC_HW_DOMAIN_ATTACH_OK:\0A\00", [34 x i8] zeroinitializer }, align 32
@efc_domain_cb.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%s]EFC_HW_DOMAIN_ATTACH_FAIL:\0A\00", [32 x i8] zeroinitializer }, align 32
@efc_domain_cb.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%s]EFC_HW_DOMAIN_FREE_OK:\0A\00", [36 x i8] zeroinitializer }, align 32
@efc_domain_cb.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%s]EFC_HW_DOMAIN_FREE_FAIL:\0A\00", [34 x i8] zeroinitializer }, align 32
@efc_domain_cb._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 91, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unsupported event %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@efc_domain_cb._entry_ptr.17 = internal global ptr @efc_domain_cb._entry.14, section ".printk_index", align 4
@efc_domain_free.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efc_domain_free\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Domain free: wwn %016llX\0A\00", [38 x i8] zeroinitializer }, align 32
@efc_domain_alloc.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"efc_domain_alloc\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Domain allocated: wwn %016llX\0A\00", [33 x i8] zeroinitializer }, align 32
@__efc_domain_init.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__efc_domain_init\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[domain:%s] %-20s %-20s\0A\00", [39 x i8] zeroinitializer }, align 32
@__efc_domain_init.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"using default hardware WWN config\0A\00", [61 x i8] zeroinitializer }, align 32
@__efc_domain_init.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.25, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Create nport WWPN %016llX WWNN %016llX\0A\00", [56 x i8] zeroinitializer }, align 32
@__efc_domain_init._entry = internal constant %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.2, i32 265, ptr @.str.5, ptr @.str.6 }, align 1
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"efc_nport_alloc() failed\0A\00", [38 x i8] zeroinitializer }, align 32
@__efc_domain_init._entry_ptr = internal global ptr @__efc_domain_init._entry, section ".printk_index", align 4
@__efc_domain_init._entry.27 = internal constant %struct.pi_entry { ptr @.str.28, ptr @.str.22, ptr @.str.2, i32 276, ptr @.str.5, ptr @.str.6 }, align 1
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Can't allocate port\0A\00", [43 x i8] zeroinitializer }, align 32
@__efc_domain_init._entry_ptr.29 = internal global ptr @__efc_domain_init._entry.27, section ".printk_index", align 4
@__efc_domain_init._entry.30 = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.22, ptr @.str.2, i32 297, ptr @.str.5, ptr @.str.6 }, align 1
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to initiate HW domain allocation\0A\00", [55 x i8] zeroinitializer }, align 32
@__efc_domain_init._entry_ptr.32 = internal global ptr @__efc_domain_init._entry.30, section ".printk_index", align 4
@__efc_domain_init.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.33, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s fc_id=%#x speed=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"public-loop\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"loop\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"other\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"s%06x\00", [26 x i8] zeroinitializer }, align 32
@__efc_domain_init.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.38, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%d position map entries\0A\00", [39 x i8] zeroinitializer }, align 32
@__efc_domain_init.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.39, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%#x -> %#x\0A\00", [20 x i8] zeroinitializer }, align 32
@__efc_domain_init._entry.40 = internal constant %struct.pi_entry { ptr @.str.41, ptr @.str.22, ptr @.str.2, i32 332, ptr @.str.5, ptr @.str.6 }, align 1
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"efc_node_alloc() failed\0A\00", [39 x i8] zeroinitializer }, align 32
@__efc_domain_init._entry_ptr.42 = internal global ptr @__efc_domain_init._entry.40, section ".printk_index", align 4
@__efc_domain_init._entry.43 = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.22, ptr @.str.2, i32 345, ptr @.str.5, ptr @.str.6 }, align 1
@__efc_domain_init._entry_ptr.44 = internal global ptr @__efc_domain_init._entry.43, section ".printk_index", align 4
@__efc_domain_wait_alloc.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.23, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__efc_domain_wait_alloc\00", [40 x i8] zeroinitializer }, align 32
@__efc_domain_wait_alloc._entry = internal constant %struct.pi_entry { ptr @.str.46, ptr @.str.45, ptr @.str.2, i32 415, ptr @.str.5, ptr @.str.6 }, align 1
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Fabric Controller node already exists\0A\00", [57 x i8] zeroinitializer }, align 32
@__efc_domain_wait_alloc._entry_ptr = internal global ptr @__efc_domain_wait_alloc._entry, section ".printk_index", align 4
@__efc_domain_wait_alloc._entry.47 = internal constant %struct.pi_entry { ptr @.str.48, ptr @.str.45, ptr @.str.2, i32 422, ptr @.str.5, ptr @.str.6 }, align 1
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error: efc_node_alloc() failed\0A\00", [32 x i8] zeroinitializer }, align 32
@__efc_domain_wait_alloc._entry_ptr.49 = internal global ptr @__efc_domain_wait_alloc._entry.47, section ".printk_index", align 4
@__efc_domain_wait_alloc._entry.50 = internal constant %struct.pi_entry { ptr @.str.51, ptr @.str.45, ptr @.str.2, i32 437, ptr @.str.5, ptr @.str.6 }, align 1
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s recv'd waiting for DOMAIN_ALLOC_OK;\00", [57 x i8] zeroinitializer }, align 32
@__efc_domain_wait_alloc._entry_ptr.52 = internal global ptr @__efc_domain_wait_alloc._entry.50, section ".printk_index", align 4
@__efc_domain_wait_alloc._entry.53 = internal constant %struct.pi_entry { ptr @.str.54, ptr @.str.45, ptr @.str.2, i32 438, ptr @.str.5, ptr @.str.6 }, align 1
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"shutting down domain\0A\00", [42 x i8] zeroinitializer }, align 32
@__efc_domain_wait_alloc._entry_ptr.55 = internal global ptr @__efc_domain_wait_alloc._entry.53, section ".printk_index", align 4
@__efc_domain_wait_alloc.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.56, i8 0, i8 112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s received while waiting for hw_domain_alloc()\0A\00", [47 x i8] zeroinitializer }, align 32
@__efc_domain_allocated.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.23, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__efc_domain_allocated\00", [41 x i8] zeroinitializer }, align 32
@__efc_domain_allocated.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Requesting hw domain attach fc_id x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@__efc_domain_allocated._entry = internal constant %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 481, ptr @.str.5, ptr @.str.6 }, align 1
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Sport lookup store failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__efc_domain_allocated._entry_ptr = internal global ptr @__efc_domain_allocated._entry, section ".printk_index", align 4
@__efc_domain_allocated._entry.60 = internal constant %struct.pi_entry { ptr @.str.61, ptr @.str.57, ptr @.str.2, i32 493, ptr @.str.5, ptr @.str.6 }, align 1
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"efc_hw_domain_attach failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__efc_domain_allocated._entry_ptr.62 = internal global ptr @__efc_domain_allocated._entry.60, section ".printk_index", align 4
@__efc_domain_allocated._entry.63 = internal constant %struct.pi_entry { ptr @.str.64, ptr @.str.57, ptr @.str.2, i32 504, ptr @.str.5, ptr @.str.6 }, align 1
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: evt: %d should not happen\0A\00", [33 x i8] zeroinitializer }, align 32
@__efc_domain_allocated._entry_ptr.65 = internal global ptr @__efc_domain_allocated._entry.63, section ".printk_index", align 4
@__efc_domain_allocated.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.66, i8 0, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s received while in EFC_EVT_DOMAIN_REQ_ATTACH\0A\00", [48 x i8] zeroinitializer }, align 32
@__efc_domain_allocated._entry.67 = internal constant %struct.pi_entry { ptr @.str.68, ptr @.str.57, ptr @.str.2, i32 532, ptr @.str.5, ptr @.str.6 }, align 1
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hw_domain_free failed\0A\00", [41 x i8] zeroinitializer }, align 32
@__efc_domain_allocated._entry_ptr.69 = internal global ptr @__efc_domain_allocated._entry.67, section ".printk_index", align 4
@__efc_domain_wait_attach.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.23, i8 0, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__efc_domain_wait_attach\00", [39 x i8] zeroinitializer }, align 32
@__efc_domain_wait_attach.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 0, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s received while waiting for hw attach\0A\00", [55 x i8] zeroinitializer }, align 32
@__efc_domain_wait_attach._entry = internal constant %struct.pi_entry { ptr @.str.64, ptr @.str.70, ptr @.str.2, i32 600, ptr @.str.5, ptr @.str.6 }, align 1
@__efc_domain_wait_attach._entry_ptr = internal global ptr @__efc_domain_wait_attach._entry, section ".printk_index", align 4
@__efc_domain_ready.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.23, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__efc_domain_ready\00", [45 x i8] zeroinitializer }, align 32
@__efc_domain_ready.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.73, i8 0, i8 -97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"efc_vport_start didn't start vports\0A\00", [59 x i8] zeroinitializer }, align 32
@__efc_domain_ready._entry = internal constant %struct.pi_entry { ptr @.str.68, ptr @.str.72, ptr @.str.2, i32 661, ptr @.str.5, ptr @.str.6 }, align 1
@__efc_domain_ready._entry_ptr = internal global ptr @__efc_domain_ready._entry, section ".printk_index", align 4
@__efc_domain_ready._entry.74 = internal constant %struct.pi_entry { ptr @.str.64, ptr @.str.72, ptr @.str.2, i32 669, ptr @.str.5, ptr @.str.6 }, align 1
@__efc_domain_ready._entry_ptr.75 = internal global ptr @__efc_domain_ready._entry.74, section ".printk_index", align 4
@__efc_domain_wait_nports_free.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.23, i8 0, i8 -81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"__efc_domain_wait_nports_free\00", [34 x i8] zeroinitializer }, align 32
@__efc_domain_wait_nports_free._entry = internal constant %struct.pi_entry { ptr @.str.77, ptr @.str.76, ptr @.str.2, i32 714, ptr @.str.5, ptr @.str.6 }, align 1
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"efc_hw_domain_free() failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__efc_domain_wait_nports_free._entry_ptr = internal global ptr @__efc_domain_wait_nports_free._entry, section ".printk_index", align 4
@__efc_domain_wait_shutdown.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.23, i8 0, i8 -74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__efc_domain_wait_shutdown\00", [37 x i8] zeroinitializer }, align 32
@__efc_domain_wait_shutdown.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.79, i8 0, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Reallocating domain\0A\00", [43 x i8] zeroinitializer }, align 32
@__efc_domain_wait_shutdown._entry = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.78, ptr @.str.2, i32 751, ptr @.str.5, ptr @.str.6 }, align 1
@__efc_domain_wait_shutdown._entry_ptr = internal global ptr @__efc_domain_wait_shutdown._entry, section ".printk_index", align 4
@__efc_domain_wait_domain_lost.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.23, i8 0, i8 -62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"__efc_domain_wait_domain_lost\00", [34 x i8] zeroinitializer }, align 32
@__efc_domain_wait_domain_lost._entry = internal constant %struct.pi_entry { ptr @.str.81, ptr @.str.80, ptr @.str.2, i32 808, ptr @.str.5, ptr @.str.6 }, align 1
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hw_domain_free() failed\0A\00", [39 x i8] zeroinitializer }, align 32
@__efc_domain_wait_domain_lost._entry_ptr = internal global ptr @__efc_domain_wait_domain_lost._entry, section ".printk_index", align 4
@__efc_domain_wait_domain_lost._entry.82 = internal constant %struct.pi_entry { ptr @.str.83, ptr @.str.80, ptr @.str.2, i32 815, ptr @.str.5, ptr @.str.6 }, align 1
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[domain] %-20s: failed\0A\00", [40 x i8] zeroinitializer }, align 32
@__efc_domain_wait_domain_lost._entry_ptr.84 = internal global ptr @__efc_domain_wait_domain_lost._entry.82, section ".printk_index", align 4
@efc_domain_dispatch_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 949, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Sequence header or payload is null\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"efc_domain_dispatch_frame\00", [38 x i8] zeroinitializer }, align 32
@efc_domain_dispatch_frame._entry_ptr = internal global ptr @efc_domain_dispatch_frame._entry, section ".printk_index", align 4
@efc_domain_dispatch_frame._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 966, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FCP frame with invalid d_id x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@efc_domain_dispatch_frame._entry_ptr.89 = internal global ptr @efc_domain_dispatch_frame._entry.87, section ".printk_index", align 4
@efc_domain_dispatch_frame._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.2, i32 973, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Physical nport is NULL\0A\00", [40 x i8] zeroinitializer }, align 32
@efc_domain_dispatch_frame._entry_ptr.92 = internal global ptr @efc_domain_dispatch_frame._entry.90, section ".printk_index", align 4
@efc_domain_dispatch_frame.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.93, i8 0, i8 -9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sol data/ctrl frame without node\0A\00", [62 x i8] zeroinitializer }, align 32
@efc_domain_dispatch_frame._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.86, ptr @.str.2, i32 995, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@efc_domain_dispatch_frame._entry_ptr.95 = internal global ptr @efc_domain_dispatch_frame._entry.94, section ".printk_index", align 4
@efc_node_dispatch_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 1044, ptr @.str.98, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[%s] Drop frame hdr = %08x %08x %08x %08x %08x %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"efc_node_dispatch_frame\00", [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@efc_node_dispatch_frame._entry_ptr = internal global ptr @efc_node_dispatch_frame._entry, section ".printk_index", align 4
@efc_node_dispatch_frame._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.97, ptr @.str.2, i32 1058, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Received ABTS:\0A\00", [16 x i8] zeroinitializer }, align 32
@efc_node_dispatch_frame._entry_ptr.101 = internal global ptr @efc_node_dispatch_frame._entry.99, section ".printk_index", align 4
@efc_node_dispatch_frame._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.97, ptr @.str.2, i32 1070, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Recvd FCP CMD. Drop IO\0A\00", [40 x i8] zeroinitializer }, align 32
@efc_node_dispatch_frame._entry_ptr.104 = internal global ptr @efc_node_dispatch_frame._entry.102, section ".printk_index", align 4
@efc_node_dispatch_frame._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.97, ptr @.str.2, i32 1074, ptr @.str.98, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%s] solicited data recvd. Drop IO\0A\00", [60 x i8] zeroinitializer }, align 32
@efc_node_dispatch_frame._entry_ptr.107 = internal global ptr @efc_node_dispatch_frame._entry.105, section ".printk_index", align 4
@efc_node_dispatch_frame._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.97, ptr @.str.2, i32 1086, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unhandled frame rctl: %02x\0A\00", [36 x i8] zeroinitializer }, align 32
@efc_node_dispatch_frame._entry_ptr.110 = internal global ptr @efc_node_dispatch_frame._entry.108, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__efc_domain_common._entry = internal constant %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 188, ptr @.str.16, ptr @.str.6 }, align 1
@.str.112 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%-20s %-20s not handled\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__efc_domain_common\00", [44 x i8] zeroinitializer }, align 32
@__efc_domain_common._entry_ptr = internal global ptr @__efc_domain_common._entry, section ".printk_index", align 4
@__efc_domain_common_shutdown._entry = internal constant %struct.pi_entry { ptr @.str.112, ptr @.str.114, ptr @.str.2, i32 216, ptr @.str.16, ptr @.str.6 }, align 1
@.str.114 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"__efc_domain_common_shutdown\00", [35 x i8] zeroinitializer }, align 32
@__efc_domain_common_shutdown._entry_ptr = internal global ptr @__efc_domain_common_shutdown._entry, section ".printk_index", align 4
@efct_domain_process_pending.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.115, ptr @.str.2, ptr @.str.116, i8 0, i8 -31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"efct_domain_process_pending\00", [36 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%u domain frames held and processed\0A\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.117 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 9]
@__sancov_gen_cov_switch_values.118 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 4, i64 9, i64 10, i64 11, i64 15]
@__sancov_gen_cov_switch_values.119 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 4, i64 9, i64 12, i64 15]
@__sancov_gen_cov_switch_values.120 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 11, i64 13, i64 14]
@__sancov_gen_cov_switch_values.121 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 9, i64 15]
@__sancov_gen_cov_switch_values.122 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 4, i64 9, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.123 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 9, i64 15]
@__sancov_gen_cov_switch_values.124 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 9, i64 15]
@__sancov_gen_cov_switch_values.125 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 4, i64 9, i64 12, i64 15]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.127 = internal global [10 x i64] [i64 8, i64 8, i64 2, i64 6, i64 34, i64 35, i64 128, i64 129, i64 132, i64 133]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 32]
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 34, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 41, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 53, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 59, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 64, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 70, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 75, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 81, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 86, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 91, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 125, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 153, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 235, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 252, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 257, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 265, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 276, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 296, i32 5 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 304, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 313, i32 5 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 318, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 324, i32 6 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 331, i32 7 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 362, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 414, i32 5 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 421, i32 5 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 436, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 438, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 447, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 464, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 475, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 481, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 492, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 503, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 508, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 532, i32 5 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 549, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 592, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 629, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 635, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 700, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 713, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 729, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 745, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 779, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 808, i32 5 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 814, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 949, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 965, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 973, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 989, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 995, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1037, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1058, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1070, i32 5 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1073, i32 5 }
@___asan_gen_.369 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 1086, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 378, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 187, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 215, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.394 = private constant [40 x i8] c"../drivers/scsi/elx/libefc/efc_domain.c\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 900, i32 3 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @__efc_domain_allocated._entry, ptr @__efc_domain_allocated._entry.60, ptr @__efc_domain_allocated._entry.63, ptr @__efc_domain_allocated._entry.67, ptr @__efc_domain_allocated._entry_ptr, ptr @__efc_domain_allocated._entry_ptr.62, ptr @__efc_domain_allocated._entry_ptr.65, ptr @__efc_domain_allocated._entry_ptr.69, ptr @__efc_domain_common._entry, ptr @__efc_domain_common._entry_ptr, ptr @__efc_domain_common_shutdown._entry, ptr @__efc_domain_common_shutdown._entry_ptr, ptr @__efc_domain_init._entry, ptr @__efc_domain_init._entry.27, ptr @__efc_domain_init._entry.30, ptr @__efc_domain_init._entry.40, ptr @__efc_domain_init._entry.43, ptr @__efc_domain_init._entry_ptr, ptr @__efc_domain_init._entry_ptr.29, ptr @__efc_domain_init._entry_ptr.32, ptr @__efc_domain_init._entry_ptr.42, ptr @__efc_domain_init._entry_ptr.44, ptr @__efc_domain_ready._entry, ptr @__efc_domain_ready._entry.74, ptr @__efc_domain_ready._entry_ptr, ptr @__efc_domain_ready._entry_ptr.75, ptr @__efc_domain_wait_alloc._entry, ptr @__efc_domain_wait_alloc._entry.47, ptr @__efc_domain_wait_alloc._entry.50, ptr @__efc_domain_wait_alloc._entry.53, ptr @__efc_domain_wait_alloc._entry_ptr, ptr @__efc_domain_wait_alloc._entry_ptr.49, ptr @__efc_domain_wait_alloc._entry_ptr.52, ptr @__efc_domain_wait_alloc._entry_ptr.55, ptr @__efc_domain_wait_attach._entry, ptr @__efc_domain_wait_attach._entry_ptr, ptr @__efc_domain_wait_domain_lost._entry, ptr @__efc_domain_wait_domain_lost._entry.82, ptr @__efc_domain_wait_domain_lost._entry_ptr, ptr @__efc_domain_wait_domain_lost._entry_ptr.84, ptr @__efc_domain_wait_nports_free._entry, ptr @__efc_domain_wait_nports_free._entry_ptr, ptr @__efc_domain_wait_shutdown._entry, ptr @__efc_domain_wait_shutdown._entry_ptr, ptr @efc_domain_cb._entry, ptr @efc_domain_cb._entry.14, ptr @efc_domain_cb._entry_ptr, ptr @efc_domain_cb._entry_ptr.17, ptr @efc_domain_dispatch_frame._entry, ptr @efc_domain_dispatch_frame._entry.87, ptr @efc_domain_dispatch_frame._entry.90, ptr @efc_domain_dispatch_frame._entry.94, ptr @efc_domain_dispatch_frame._entry_ptr, ptr @efc_domain_dispatch_frame._entry_ptr.89, ptr @efc_domain_dispatch_frame._entry_ptr.92, ptr @efc_domain_dispatch_frame._entry_ptr.95, ptr @efc_node_dispatch_frame._entry, ptr @efc_node_dispatch_frame._entry.102, ptr @efc_node_dispatch_frame._entry.105, ptr @efc_node_dispatch_frame._entry.108, ptr @efc_node_dispatch_frame._entry.99, ptr @efc_node_dispatch_frame._entry_ptr, ptr @efc_node_dispatch_frame._entry_ptr.101, ptr @efc_node_dispatch_frame._entry_ptr.104, ptr @efc_node_dispatch_frame._entry_ptr.107, ptr @efc_node_dispatch_frame._entry_ptr.110, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @xa_init_flags.__key, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_domain_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_domain_cb._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_domain_dispatch_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_domain_dispatch_frame._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_domain_dispatch_frame._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_domain_dispatch_frame._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_dispatch_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_dispatch_frame._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_dispatch_frame._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_dispatch_frame._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efc_node_dispatch_frame._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_domain_cb(ptr noundef %arg, i32 noundef %event, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %event)
  %cmp.not = icmp eq i32 %event, 7
  %spec.select = select i1 %cmp.not, ptr null, ptr %data
  %lock = getelementptr inbounds %struct.efc, ptr %arg, i32 0, i32 16
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %do.end192 [
    i32 7, label %sw.bb
    i32 6, label %do.body31
    i32 0, label %do.body53
    i32 1, label %do.body76
    i32 2, label %do.body99
    i32 3, label %do.body122
    i32 4, label %do.body145
    i32 5, label %do.body168
  ]

sw.bb:                                            ; preds = %entry
  %wwn = getelementptr inbounds %struct.efc_domain_record, ptr %data, i32 0, i32 3
  %1 = ptrtoint ptr %wwn to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %wwn, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_domain_cb.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_domain_cb, %if.then11)) #7
          to label %do.end14 [label %if.then11], !srcloc !250

if.then11:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %pci = getelementptr inbounds %struct.efc, ptr %arg, i32 0, i32 1
  %3 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_domain_cb.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.3, i64 noundef %2) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %sw.bb
  %domain15 = getelementptr inbounds %struct.efc, ptr %arg, i32 0, i32 20
  %5 = ptrtoint ptr %domain15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %domain15, align 8
  %tobool16.not = icmp eq ptr %6, null
  br i1 %tobool16.not, label %if.then17, label %do.end14.if.end27_crit_edge

do.end14.if.end27_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then17:                                        ; preds = %do.end14
  %call18 = tail call ptr @efc_domain_alloc(ptr noundef %arg, i64 noundef %2)
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %pci24 = getelementptr inbounds %struct.efc, ptr %arg, i32 0, i32 1
  %7 = ptrtoint ptr %pci24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci24, align 4
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.4) #10
  br label %sw.epilog

if.end26:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %drvsm = getelementptr inbounds %struct.efc_domain, ptr %call18, i32 0, i32 13
  tail call void @efc_sm_transition(ptr noundef %drvsm, ptr noundef nonnull @__efc_domain_init, ptr noundef null) #7
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %do.end14.if.end27_crit_edge
  %domain.1 = phi ptr [ %6, %do.end14.if.end27_crit_edge ], [ %call18, %if.end26 ]
  %drvsm.i = getelementptr inbounds %struct.efc_domain, ptr %domain.1, i32 0, i32 13
  %call.i = tail call i32 @efc_sm_post_event(ptr noundef %drvsm.i, i32 noundef 9, ptr noundef %data) #7
  %req_domain_free1.i = getelementptr inbounds %struct.efc_domain, ptr %domain.1, i32 0, i32 19
  %9 = ptrtoint ptr %req_domain_free1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %req_domain_free1.i, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %req_domain_free1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %req_domain_free1.i, align 1
  br i1 %tobool.not.i, label %if.end27.sw.epilog_crit_edge, label %if.then.i

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_domain_free(ptr noundef nonnull %domain.1) #7
  br label %sw.epilog

do.body31:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_domain_cb.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_domain_cb, %if.then43)) #7
          to label %do.end50 [label %if.then43], !srcloc !250

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spec.select, align 8
  %pci45 = getelementptr inbounds %struct.efc, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pci45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci45, align 4
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_domain_cb.__UNIQUE_ID_ddebug314, ptr noundef %dev46, ptr noundef nonnull @.str.7, ptr noundef %display_name) #7
  br label %do.end50

do.end50:                                         ; preds = %if.then43, %do.body31
  %hold_frames = getelementptr inbounds %struct.efc, ptr %arg, i32 0, i32 30
  %16 = ptrtoint ptr %hold_frames to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %hold_frames, align 4
  %drvsm.i269 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 13
  %call.i270 = tail call i32 @efc_sm_post_event(ptr noundef %drvsm.i269, i32 noundef 15, ptr noundef null) #7
  %req_domain_free1.i271 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 19
  %17 = ptrtoint ptr %req_domain_free1.i271 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %req_domain_free1.i271, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i272 = icmp eq i8 %18, 0
  %19 = ptrtoint ptr %req_domain_free1.i271 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %req_domain_free1.i271, align 1
  br i1 %tobool.not.i272, label %do.end50.sw.epilog_crit_edge, label %if.then.i273

do.end50.sw.epilog_crit_edge:                     ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i273:                                     ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_domain_free(ptr noundef %spec.select) #7
  br label %sw.epilog

do.body53:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_domain_cb.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_domain_cb, %if.then65)) #7
          to label %do.end73 [label %if.then65], !srcloc !250

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spec.select, align 8
  %pci67 = getelementptr inbounds %struct.efc, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pci67 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci67, align 4
  %dev68 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %display_name69 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_domain_cb.__UNIQUE_ID_ddebug315, ptr noundef %dev68, ptr noundef nonnull @.str.8, ptr noundef %display_name69) #7
  br label %do.end73

do.end73:                                         ; preds = %if.then65, %do.body53
  %drvsm.i275 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 13
  %call.i276 = tail call i32 @efc_sm_post_event(ptr noundef %drvsm.i275, i32 noundef 10, ptr noundef null) #7
  %req_domain_free1.i277 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 19
  %24 = ptrtoint ptr %req_domain_free1.i277 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %req_domain_free1.i277, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i278 = icmp eq i8 %25, 0
  %26 = ptrtoint ptr %req_domain_free1.i277 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %req_domain_free1.i277, align 1
  br i1 %tobool.not.i278, label %do.end73.sw.epilog_crit_edge, label %if.then.i279

do.end73.sw.epilog_crit_edge:                     ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i279:                                     ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_domain_free(ptr noundef %spec.select) #7
  br label %sw.epilog

do.body76:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_domain_cb.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_domain_cb, %if.then88)) #7
          to label %do.end96 [label %if.then88], !srcloc !250

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spec.select, align 8
  %pci90 = getelementptr inbounds %struct.efc, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pci90 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci90, align 4
  %dev91 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %display_name92 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_domain_cb.__UNIQUE_ID_ddebug316, ptr noundef %dev91, ptr noundef nonnull @.str.9, ptr noundef %display_name92) #7
  br label %do.end96

do.end96:                                         ; preds = %if.then88, %do.body76
  %drvsm.i281 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 13
  %call.i282 = tail call i32 @efc_sm_post_event(ptr noundef %drvsm.i281, i32 noundef 11, ptr noundef null) #7
  %req_domain_free1.i283 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 19
  %31 = ptrtoint ptr %req_domain_free1.i283 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %req_domain_free1.i283, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i284 = icmp eq i8 %32, 0
  %33 = ptrtoint ptr %req_domain_free1.i283 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %req_domain_free1.i283, align 1
  br i1 %tobool.not.i284, label %do.end96.sw.epilog_crit_edge, label %if.then.i285

do.end96.sw.epilog_crit_edge:                     ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i285:                                     ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_domain_free(ptr noundef %spec.select) #7
  br label %sw.epilog

do.body99:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_domain_cb.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_domain_cb, %if.then111)) #7
          to label %do.end119 [label %if.then111], !srcloc !250

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spec.select, align 8
  %pci113 = getelementptr inbounds %struct.efc, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %pci113 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci113, align 4
  %dev114 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %display_name115 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_domain_cb.__UNIQUE_ID_ddebug317, ptr noundef %dev114, ptr noundef nonnull @.str.10, ptr noundef %display_name115) #7
  br label %do.end119

do.end119:                                        ; preds = %if.then111, %do.body99
  %drvsm.i287 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 13
  %call.i288 = tail call i32 @efc_sm_post_event(ptr noundef %drvsm.i287, i32 noundef 13, ptr noundef null) #7
  %req_domain_free1.i289 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 19
  %38 = ptrtoint ptr %req_domain_free1.i289 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %req_domain_free1.i289, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i290 = icmp eq i8 %39, 0
  %40 = ptrtoint ptr %req_domain_free1.i289 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %req_domain_free1.i289, align 1
  br i1 %tobool.not.i290, label %do.end119.sw.epilog_crit_edge, label %if.then.i291

do.end119.sw.epilog_crit_edge:                    ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i291:                                     ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_domain_free(ptr noundef %spec.select) #7
  br label %sw.epilog

do.body122:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_domain_cb.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_domain_cb, %if.then134)) #7
          to label %do.end142 [label %if.then134], !srcloc !250

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %spec.select, align 8
  %pci136 = getelementptr inbounds %struct.efc, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %pci136 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci136, align 4
  %dev137 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %display_name138 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_domain_cb.__UNIQUE_ID_ddebug318, ptr noundef %dev137, ptr noundef nonnull @.str.11, ptr noundef %display_name138) #7
  br label %do.end142

do.end142:                                        ; preds = %if.then134, %do.body122
  %drvsm.i293 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 13
  %call.i294 = tail call i32 @efc_sm_post_event(ptr noundef %drvsm.i293, i32 noundef 14, ptr noundef null) #7
  %req_domain_free1.i295 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 19
  %45 = ptrtoint ptr %req_domain_free1.i295 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %req_domain_free1.i295, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i296 = icmp eq i8 %46, 0
  %47 = ptrtoint ptr %req_domain_free1.i295 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %req_domain_free1.i295, align 1
  br i1 %tobool.not.i296, label %do.end142.sw.epilog_crit_edge, label %if.then.i297

do.end142.sw.epilog_crit_edge:                    ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i297:                                     ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_domain_free(ptr noundef %spec.select) #7
  br label %sw.epilog

do.body145:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_domain_cb.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_domain_cb, %if.then157)) #7
          to label %do.end165 [label %if.then157], !srcloc !250

if.then157:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %spec.select, align 8
  %pci159 = getelementptr inbounds %struct.efc, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %pci159 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pci159, align 4
  %dev160 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %display_name161 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_domain_cb.__UNIQUE_ID_ddebug319, ptr noundef %dev160, ptr noundef nonnull @.str.12, ptr noundef %display_name161) #7
  br label %do.end165

do.end165:                                        ; preds = %if.then157, %do.body145
  %drvsm.i299 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 13
  %call.i300 = tail call i32 @efc_sm_post_event(ptr noundef %drvsm.i299, i32 noundef 16, ptr noundef null) #7
  %req_domain_free1.i301 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 19
  %52 = ptrtoint ptr %req_domain_free1.i301 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %req_domain_free1.i301, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i302 = icmp eq i8 %53, 0
  %54 = ptrtoint ptr %req_domain_free1.i301 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %req_domain_free1.i301, align 1
  br i1 %tobool.not.i302, label %do.end165.sw.epilog_crit_edge, label %if.then.i303

do.end165.sw.epilog_crit_edge:                    ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i303:                                     ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_domain_free(ptr noundef %spec.select) #7
  br label %sw.epilog

do.body168:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_domain_cb.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_domain_cb, %if.then180)) #7
          to label %do.end188 [label %if.then180], !srcloc !250

if.then180:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %spec.select, align 8
  %pci182 = getelementptr inbounds %struct.efc, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %pci182 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pci182, align 4
  %dev183 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %display_name184 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_domain_cb.__UNIQUE_ID_ddebug320, ptr noundef %dev183, ptr noundef nonnull @.str.13, ptr noundef %display_name184) #7
  br label %do.end188

do.end188:                                        ; preds = %if.then180, %do.body168
  %drvsm.i305 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 13
  %call.i306 = tail call i32 @efc_sm_post_event(ptr noundef %drvsm.i305, i32 noundef 17, ptr noundef null) #7
  %req_domain_free1.i307 = getelementptr inbounds %struct.efc_domain, ptr %spec.select, i32 0, i32 19
  %59 = ptrtoint ptr %req_domain_free1.i307 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %req_domain_free1.i307, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i308 = icmp eq i8 %60, 0
  %61 = ptrtoint ptr %req_domain_free1.i307 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %req_domain_free1.i307, align 1
  br i1 %tobool.not.i308, label %do.end188.sw.epilog_crit_edge, label %if.then.i309

do.end188.sw.epilog_crit_edge:                    ; preds = %do.end188
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i309:                                     ; preds = %do.end188
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_domain_free(ptr noundef %spec.select) #7
  br label %sw.epilog

do.end192:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pci193 = getelementptr inbounds %struct.efc, ptr %arg, i32 0, i32 1
  %62 = ptrtoint ptr %pci193 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pci193, align 4
  %dev194 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev194, ptr noundef nonnull @.str.15, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end192, %if.then.i309, %do.end188.sw.epilog_crit_edge, %if.then.i303, %do.end165.sw.epilog_crit_edge, %if.then.i297, %do.end142.sw.epilog_crit_edge, %if.then.i291, %do.end119.sw.epilog_crit_edge, %if.then.i285, %do.end96.sw.epilog_crit_edge, %if.then.i279, %do.end73.sw.epilog_crit_edge, %if.then.i273, %do.end50.sw.epilog_crit_edge, %if.then.i, %if.end27.sw.epilog_crit_edge, %do.end23
  %rc.1 = phi i32 [ 0, %do.end192 ], [ -1, %do.end23 ], [ 0, %if.end27.sw.epilog_crit_edge ], [ 0, %if.then.i ], [ 0, %do.end50.sw.epilog_crit_edge ], [ 0, %if.then.i273 ], [ 0, %do.end73.sw.epilog_crit_edge ], [ 0, %if.then.i279 ], [ 0, %do.end96.sw.epilog_crit_edge ], [ 0, %if.then.i285 ], [ 0, %do.end119.sw.epilog_crit_edge ], [ 0, %if.then.i291 ], [ 0, %do.end142.sw.epilog_crit_edge ], [ 0, %if.then.i297 ], [ 0, %do.end165.sw.epilog_crit_edge ], [ 0, %if.then.i303 ], [ 0, %do.end188.sw.epilog_crit_edge ], [ 0, %if.then.i309 ]
  %domain.3 = phi ptr [ %spec.select, %do.end192 ], [ null, %do.end23 ], [ %domain.1, %if.end27.sw.epilog_crit_edge ], [ %domain.1, %if.then.i ], [ %spec.select, %do.end50.sw.epilog_crit_edge ], [ %spec.select, %if.then.i273 ], [ %spec.select, %do.end73.sw.epilog_crit_edge ], [ %spec.select, %if.then.i279 ], [ %spec.select, %do.end96.sw.epilog_crit_edge ], [ %spec.select, %if.then.i285 ], [ %spec.select, %do.end119.sw.epilog_crit_edge ], [ %spec.select, %if.then.i291 ], [ %spec.select, %do.end142.sw.epilog_crit_edge ], [ %spec.select, %if.then.i297 ], [ %spec.select, %do.end165.sw.epilog_crit_edge ], [ %spec.select, %if.then.i303 ], [ %spec.select, %do.end188.sw.epilog_crit_edge ], [ %spec.select, %if.then.i309 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  %domain196 = getelementptr inbounds %struct.efc, ptr %arg, i32 0, i32 20
  %64 = ptrtoint ptr %domain196 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %domain196, align 8
  %tobool197.not = icmp eq ptr %65, null
  br i1 %tobool197.not, label %sw.epilog.if.end203_crit_edge, label %land.lhs.true

sw.epilog.if.end203_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end203

land.lhs.true:                                    ; preds = %sw.epilog
  %req_accept_frames = getelementptr inbounds %struct.efc_domain, ptr %domain.3, i32 0, i32 20
  %66 = ptrtoint ptr %req_accept_frames to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %req_accept_frames, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool198.not = icmp eq i8 %67, 0
  br i1 %tobool198.not, label %land.lhs.true.if.end203_crit_edge, label %if.then200

land.lhs.true.if.end203_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end203

if.then200:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %req_accept_frames to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %req_accept_frames, align 2
  %hold_frames202 = getelementptr inbounds %struct.efc, ptr %arg, i32 0, i32 30
  %69 = ptrtoint ptr %hold_frames202 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %hold_frames202, align 4
  br label %if.end203

if.end203:                                        ; preds = %if.then200, %land.lhs.true.if.end203_crit_edge, %sw.epilog.if.end203_crit_edge
  ret i32 %rc.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efc_domain_alloc(ptr noundef %efc, i64 noundef %fcf_wwn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 976) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %efc, ptr %call7.i.i, align 8
  %app = getelementptr inbounds %struct.efc_domain, ptr %call7.i.i, i32 0, i32 13, i32 2
  %2 = ptrtoint ptr %app to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %app, align 8
  %ref = getelementptr inbounds %struct.efc_domain, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #7
  %3 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %ref, align 4
  %release = getelementptr inbounds %struct.efc_domain, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @_efc_domain_free, ptr %release, align 8
  %lookup = getelementptr inbounds %struct.efc_domain, ptr %call7.i.i, i32 0, i32 25
  tail call void @__raw_spin_lock_init(ptr noundef %lookup, ptr noundef nonnull @.str.111, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  %xa_flags.i.i = getelementptr inbounds %struct.efc_domain, ptr %call7.i.i, i32 0, i32 25, i32 1
  %5 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.efc_domain, ptr %call7.i.i, i32 0, i32 25, i32 2
  %6 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %xa_head.i.i, align 8
  %nport_list = getelementptr inbounds %struct.efc_domain, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %nport_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %nport_list, ptr %nport_list, align 4
  %prev.i = getelementptr inbounds %struct.efc_domain, ptr %call7.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %nport_list, ptr %prev.i, align 8
  %domain2 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 20
  %9 = ptrtoint ptr %domain2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %domain2, align 8
  %fcf_wwn3 = getelementptr inbounds %struct.efc_domain, ptr %call7.i.i, i32 0, i32 12
  %10 = ptrtoint ptr %fcf_wwn3 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %fcf_wwn, ptr %fcf_wwn3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_domain_alloc.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_domain_alloc, %if.then8)) #7
          to label %cleanup [label %if.then8], !srcloc !250

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pci = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %11 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %fcf_wwn3 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %fcf_wwn3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_domain_alloc.__UNIQUE_ID_ddebug322, ptr noundef %dev, ptr noundef nonnull @.str.21, i64 noundef %14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_sm_transition(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_domain_init(ptr noundef %ctx, i32 noundef %evt, ptr noundef %arg) #0 align 64 {
entry:
  %bewwpn = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %lor.rhs.if.end_crit_edge, !prof !252

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 233, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs.if.end_crit_edge
  %app22 = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %app22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %app22, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %do.end43, label %if.end.if.end49_crit_edge, !prof !252

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 233, i32 noundef 9, ptr noundef null) #7
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end.if.end49_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_domain_init.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_domain_init, %if.then67)) #7
          to label %do.end72 [label %if.then67], !srcloc !250

if.then67:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 1
  %call69 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_domain_init.__UNIQUE_ID_ddebug323, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef %display_name, ptr noundef nonnull @.str.22, ptr noundef %call69) #7
  br label %do.end72

do.end72:                                         ; preds = %if.then67, %if.end49
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %evt, label %do.end.i [
    i32 0, label %sw.bb
    i32 9, label %sw.bb73
    i32 4, label %do.end72.sw.epilog_crit_edge
    i32 1, label %do.end72.sw.epilog_crit_edge368
    i32 2, label %do.end72.sw.epilog_crit_edge369
  ]

do.end72.sw.epilog_crit_edge369:                  ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end72.sw.epilog_crit_edge368:                  ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end72.sw.epilog_crit_edge:                     ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  %attached = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 14
  %13 = ptrtoint ptr %attached to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %attached, align 4
  br label %sw.epilog

sw.bb73:                                          ; preds = %do.end72
  %req_wwnn = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 5
  %14 = ptrtoint ptr %req_wwnn to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %req_wwnn, align 8
  %req_wwpn = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %req_wwpn to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %req_wwpn, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bewwpn) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp = icmp eq i64 %17, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %cmp74 = icmp eq i64 %15, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp74
  br i1 %or.cond, label %do.body76, label %sw.bb73.do.body95_crit_edge

sw.bb73.do.body95_crit_edge:                      ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body95

do.body76:                                        ; preds = %sw.bb73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_domain_init.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_domain_init, %if.then88)) #7
          to label %do.end93 [label %if.then88], !srcloc !250

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %pci89 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %pci89 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci89, align 4
  %dev90 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_domain_init.__UNIQUE_ID_ddebug324, ptr noundef %dev90, ptr noundef nonnull @.str.24) #7
  br label %do.end93

do.end93:                                         ; preds = %if.then88, %do.body76
  %def_wwpn = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 6
  %20 = ptrtoint ptr %def_wwpn to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %def_wwpn, align 8
  %def_wwnn = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 7
  %22 = ptrtoint ptr %def_wwnn to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %def_wwnn, align 8
  br label %do.body95

do.body95:                                        ; preds = %do.end93, %sw.bb73.do.body95_crit_edge
  %my_wwpn.0 = phi i64 [ %21, %do.end93 ], [ %17, %sw.bb73.do.body95_crit_edge ]
  %my_wwnn.0 = phi i64 [ %23, %do.end93 ], [ %15, %sw.bb73.do.body95_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_domain_init.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_domain_init, %if.then107)) #7
          to label %do.end112 [label %if.then107], !srcloc !250

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #9
  %pci108 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %pci108 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci108, align 4
  %dev109 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_domain_init.__UNIQUE_ID_ddebug325, ptr noundef %dev109, ptr noundef nonnull @.str.25, i64 noundef %my_wwpn.0, i64 noundef %my_wwnn.0) #7
  br label %do.end112

do.end112:                                        ; preds = %if.then107, %do.body95
  %enable_ini = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 17
  %26 = ptrtoint ptr %enable_ini to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enable_ini, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool113 = icmp ne i8 %27, 0
  %enable_tgt = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 18
  %28 = ptrtoint ptr %enable_tgt to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %enable_tgt, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool114 = icmp ne i8 %29, 0
  %call115 = tail call ptr @efc_nport_alloc(ptr noundef %3, i64 noundef %my_wwpn.0, i64 noundef %my_wwnn.0, i32 noundef -1, i1 noundef zeroext %tobool113, i1 noundef zeroext %tobool114) #7
  %tobool116.not = icmp eq ptr %call115, null
  br i1 %tobool116.not, label %do.end120, label %if.end123

do.end120:                                        ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #9
  %pci121 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %30 = ptrtoint ptr %pci121 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci121, align 4
  %dev122 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev122, ptr noundef nonnull @.str.26) #10
  br label %cleanup262

if.end123:                                        ; preds = %do.end112
  %sm = getelementptr inbounds %struct.efc_nport, ptr %call115, i32 0, i32 22
  tail call void @efc_sm_transition(ptr noundef %sm, ptr noundef nonnull @__efc_nport_allocated, ptr noundef null) #7
  %wwpn = getelementptr inbounds %struct.efc_nport, ptr %call115, i32 0, i32 12
  %32 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %wwpn, align 8
  %34 = ptrtoint ptr %bewwpn to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %bewwpn, align 8
  %call124 = call i32 @efc_cmd_nport_alloc(ptr noundef %7, ptr noundef nonnull %call115, ptr noundef null, ptr noundef nonnull %bewwpn) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end132, label %do.end129

do.end129:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  %pci130 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %35 = ptrtoint ptr %pci130 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci130, align 4
  %dev131 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev131, ptr noundef nonnull @.str.28) #10
  call void @efc_nport_free(ptr noundef nonnull %call115) #7
  br label %cleanup262

if.end132:                                        ; preds = %if.end123
  %is_loop = getelementptr inbounds %struct.efc_domain_record, ptr %arg, i32 0, i32 7
  %37 = ptrtoint ptr %is_loop to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_loop, align 4, !range !251
  %is_loop134 = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 16
  %39 = ptrtoint ptr %is_loop134 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %is_loop134, align 2
  %map = getelementptr inbounds %struct.efc_domain_record, ptr %arg, i32 0, i32 4
  %arrayidx = getelementptr %struct.efc_domain_record, ptr %arg, i32 0, i32 4, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp136 = icmp eq i8 %41, 0
  %is_nlport = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 17
  %frombool138 = zext i1 %cmp136 to i8
  %42 = ptrtoint ptr %is_nlport to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %frombool138, ptr %is_nlport, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool140.not = icmp eq i8 %38, 0
  br i1 %tobool140.not, label %if.then141, label %do.body152

if.then141:                                       ; preds = %if.end132
  %43 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arg, align 4
  %call142 = call i32 @efc_cmd_domain_alloc(ptr noundef %7, ptr noundef %3, i32 noundef %44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end150, label %do.end147

do.end147:                                        ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #9
  %pci148 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %45 = ptrtoint ptr %pci148 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pci148, align 4
  %dev149 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev149, ptr noundef nonnull @.str.31) #10
  br label %cleanup262

if.end150:                                        ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #9
  call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_domain_wait_alloc, ptr noundef %arg) #7
  br label %cleanup262

do.body152:                                       ; preds = %if.end132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_domain_init.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_domain_init, %if.then164)) #7
          to label %do.end176 [label %if.then164], !srcloc !250

if.then164:                                       ; preds = %do.body152
  %pci165 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %47 = ptrtoint ptr %pci165 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pci165, align 4
  %dev166 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %49 = ptrtoint ptr %is_loop to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %is_loop, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool168.not = icmp eq i8 %50, 0
  br i1 %tobool168.not, label %if.then164.cond.end_crit_edge, label %cond.true

if.then164.cond.end_crit_edge:                    ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %is_nlport to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %is_nlport, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool171.not = icmp eq i8 %52, 0
  %cond = select i1 %tobool171.not, ptr @.str.35, ptr @.str.34
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then164.cond.end_crit_edge
  %cond173 = phi ptr [ %cond, %cond.true ], [ @.str.36, %if.then164.cond.end_crit_edge ]
  %fc_id = getelementptr inbounds %struct.efc_domain_record, ptr %arg, i32 0, i32 6
  %53 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fc_id, align 4
  %speed = getelementptr inbounds %struct.efc_domain_record, ptr %arg, i32 0, i32 5
  %55 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %speed, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_domain_init.__UNIQUE_ID_ddebug326, ptr noundef %dev166, ptr noundef nonnull @.str.33, ptr noundef nonnull %cond173, i32 noundef %54, i32 noundef %56) #7
  br label %do.end176

do.end176:                                        ; preds = %cond.end, %do.body152
  %fc_id177 = getelementptr inbounds %struct.efc_domain_record, ptr %arg, i32 0, i32 6
  %57 = ptrtoint ptr %fc_id177 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fc_id177, align 4
  %fc_id178 = getelementptr inbounds %struct.efc_nport, ptr %call115, i32 0, i32 17
  %59 = ptrtoint ptr %fc_id178 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %fc_id178, align 4
  %topology = getelementptr inbounds %struct.efc_nport, ptr %call115, i32 0, i32 29
  %60 = ptrtoint ptr %topology to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 3, ptr %topology, align 8
  %display_name179 = getelementptr inbounds %struct.efc_nport, ptr %call115, i32 0, i32 5
  %61 = load i32, ptr %fc_id177, align 4
  %call182 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %display_name179, i32 noundef 32, ptr noundef nonnull @.str.37, i32 noundef %61)
  %62 = ptrtoint ptr %enable_ini to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %enable_ini, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool184.not = icmp eq i8 %63, 0
  br i1 %tobool184.not, label %do.end176.if.end251_crit_edge, label %if.then185

do.end176.if.end251_crit_edge:                    ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251

if.then185:                                       ; preds = %do.end176
  %64 = ptrtoint ptr %map to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %map, align 2
  %conv188 = zext i8 %65 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_domain_init.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_domain_init, %if.then201)) #7
          to label %do.end206 [label %if.then201], !srcloc !250

if.then201:                                       ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #9
  %pci202 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %66 = ptrtoint ptr %pci202 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pci202, align 4
  %dev203 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_domain_init.__UNIQUE_ID_ddebug327, ptr noundef %dev203, ptr noundef nonnull @.str.38, i32 noundef %conv188) #7
  br label %do.end206

do.end206:                                        ; preds = %if.then201, %if.then185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp207.not366 = icmp eq i8 %65, 0
  br i1 %cmp207.not366, label %do.end206.if.end251_crit_edge, label %for.body.lr.ph

do.end206.if.end251_crit_edge:                    ; preds = %do.end206
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251

for.body.lr.ph:                                   ; preds = %do.end206
  %pci229 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0367 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx210 = getelementptr [128 x i8], ptr %map, i32 0, i32 %i.0367
  %68 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx210, align 1
  %conv211 = zext i8 %69 to i32
  %70 = ptrtoint ptr %fc_id177 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fc_id177, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %conv211)
  %cmp213.not = icmp eq i32 %71, %conv211
  br i1 %cmp213.not, label %for.body.for.inc_crit_edge, label %if.then215

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then215:                                       ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_domain_init.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_domain_init, %if.then228)) #7
          to label %do.end237 [label %if.then228], !srcloc !250

if.then228:                                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %pci229 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pci229, align 4
  %dev230 = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %74 = ptrtoint ptr %fc_id177 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fc_id177, align 4
  %76 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx210, align 1
  %conv234 = zext i8 %77 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_domain_init.__UNIQUE_ID_ddebug328, ptr noundef %dev230, ptr noundef nonnull @.str.39, i32 noundef %75, i32 noundef %conv234) #7
  br label %do.end237

do.end237:                                        ; preds = %if.then228, %if.then215
  %78 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx210, align 1
  %conv240 = zext i8 %79 to i32
  %call241 = call ptr @efc_node_alloc(ptr noundef nonnull %call115, i32 noundef %conv240, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %tobool242.not = icmp eq ptr %call241, null
  br i1 %tobool242.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end237
  call void @__sanitizer_cov_trace_pc() #9
  call void @efc_node_transition(ptr noundef nonnull %call241, ptr noundef nonnull @__efc_d_wait_loop, ptr noundef null) #7
  br label %for.inc

cleanup:                                          ; preds = %do.end237
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %pci229 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pci229, align 4
  %dev248 = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev248, ptr noundef nonnull @.str.41) #10
  br label %if.end251

for.inc:                                          ; preds = %cleanup.thread, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0367, 1
  %exitcond = icmp eq i32 %i.0367, %conv188
  br i1 %exitcond, label %for.inc.if.end251_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end251_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251

if.end251:                                        ; preds = %for.inc.if.end251_crit_edge, %cleanup, %do.end206.if.end251_crit_edge, %do.end176.if.end251_crit_edge
  %82 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arg, align 4
  %call253 = call i32 @efc_cmd_domain_alloc(ptr noundef %7, ptr noundef %3, i32 noundef %83) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %if.end261, label %do.end258

do.end258:                                        ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #9
  %pci259 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %84 = ptrtoint ptr %pci259 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pci259, align 4
  %dev260 = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev260, ptr noundef nonnull @.str.31) #10
  br label %cleanup262

if.end261:                                        ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #9
  call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_domain_wait_alloc, ptr noundef %arg) #7
  br label %cleanup262

cleanup262:                                       ; preds = %if.end261, %do.end258, %if.end150, %do.end147, %do.end129, %do.end120
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bewwpn) #7
  br label %sw.epilog

do.end.i:                                         ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %app22 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %app22, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %pci.i = getelementptr inbounds %struct.efc, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  %call.i = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.22, ptr noundef %call.i) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i, %cleanup262, %sw.bb, %do.end72.sw.epilog_crit_edge, %do.end72.sw.epilog_crit_edge368, %do.end72.sw.epilog_crit_edge369
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_domain_post_event(ptr noundef %domain, i32 noundef %event, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvsm = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 13
  %call = tail call i32 @efc_sm_post_event(ptr noundef %drvsm, i32 noundef %event, ptr noundef %arg) #7
  %req_domain_free1 = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 19
  %0 = ptrtoint ptr %req_domain_free1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %req_domain_free1, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %req_domain_free1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %req_domain_free1, align 1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_domain_free(ptr noundef %domain)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_domain_free(ptr noundef %domain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 8
  %hold_frames = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %hold_frames to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %hold_frames, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_domain_free.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_domain_free, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %fcf_wwn = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 12
  %5 = ptrtoint ptr %fcf_wwn to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %fcf_wwn, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_domain_free.__UNIQUE_ID_ddebug321, ptr noundef %dev, ptr noundef nonnull @.str.19, i64 noundef %6) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lookup = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 25
  tail call void @xa_destroy(ptr noundef %lookup) #7
  %domain4 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %domain4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %domain4, align 8
  %ref = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 3
  %release = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 4
  %8 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %release, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !253
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #7
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #7, !srcloc !254
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !255

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #7
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !256
  tail call void %9(ptr noundef %ref) #7
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_efc_domain_free(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %arg, i32 -44
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %domain_free_cb = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %domain_free_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain_free_cb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %domain_free_cb_arg = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %domain_free_cb_arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain_free_cb_arg, align 8
  tail call void %3(ptr noundef %1, ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_register_domain_free_cb(ptr noundef %efc, ptr noundef %callback, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain_free_cb = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 21
  %0 = ptrtoint ptr %domain_free_cb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %callback, ptr %domain_free_cb, align 4
  %domain_free_cb_arg = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 22
  %1 = ptrtoint ptr %domain_free_cb_arg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arg, ptr %domain_free_cb_arg, align 8
  %domain = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 20
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain, align 8
  %tobool.not = icmp ne ptr %3, null
  %tobool1.not = icmp eq ptr %callback, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %callback(ptr noundef %efc, ptr noundef %arg) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efc_sm_event_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efc_nport_alloc(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__efc_nport_allocated(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_cmd_nport_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_nport_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_cmd_domain_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_domain_wait_alloc(ptr noundef %ctx, i32 noundef %evt, ptr nocapture readnone %arg) #0 align 64 {
entry:
  %s_id.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %lor.rhs.if.end_crit_edge, !prof !252

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 360, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs.if.end_crit_edge
  %app22 = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %app22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %app22, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %do.end43, label %if.end.if.end49_crit_edge, !prof !252

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 360, i32 noundef 9, ptr noundef null) #7
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end.if.end49_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_domain_wait_alloc.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_domain_wait_alloc, %if.then67)) #7
          to label %do.end72 [label %if.then67], !srcloc !250

if.then67:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 1
  %call69 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_domain_wait_alloc.__UNIQUE_ID_ddebug329, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef %display_name, ptr noundef nonnull @.str.45, ptr noundef %call69) #7
  br label %do.end72

do.end72:                                         ; preds = %if.then67, %if.end49
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %evt, label %do.end.i [
    i32 10, label %sw.bb
    i32 11, label %do.end146
    i32 9, label %do.end72.cleanup175_crit_edge
    i32 15, label %do.body156
    i32 0, label %do.end72.cleanup175_crit_edge226
    i32 1, label %do.end72.cleanup175_crit_edge227
    i32 2, label %do.end72.cleanup175_crit_edge228
    i32 4, label %do.end72.cleanup175_crit_edge229
  ]

do.end72.cleanup175_crit_edge229:                 ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup175

do.end72.cleanup175_crit_edge228:                 ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup175

do.end72.cleanup175_crit_edge227:                 ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup175

do.end72.cleanup175_crit_edge226:                 ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup175

do.end72.cleanup175_crit_edge:                    ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup175

sw.bb:                                            ; preds = %do.end72
  %nport73 = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 26
  %13 = ptrtoint ptr %nport73 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nport73, align 4
  %tobool75.not = icmp eq ptr %14, null
  br i1 %tobool75.not, label %do.end93, label %if.end109, !prof !252

do.end93:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 370, i32 noundef 9, ptr noundef null) #7
  br label %cleanup175

if.end109:                                        ; preds = %sw.bb
  %add.ptr = getelementptr %struct.efc_domain, ptr %3, i32 0, i32 23, i32 4
  %dma = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 11
  %15 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma, align 4
  %17 = call ptr @memcpy(ptr %add.ptr, ptr %16, i32 112)
  %add.ptr115 = getelementptr %struct.efc_nport, ptr %14, i32 0, i32 30, i32 4
  %18 = call ptr @memcpy(ptr %add.ptr115, ptr %16, i32 112)
  %wwpn = getelementptr inbounds %struct.efc_nport, ptr %14, i32 0, i32 12
  %19 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %wwpn, align 8
  %fl_wwpn = getelementptr inbounds %struct.efc_nport, ptr %14, i32 0, i32 30, i32 20
  %21 = ptrtoint ptr %fl_wwpn to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %fl_wwpn, align 1
  %wwnn = getelementptr inbounds %struct.efc_nport, ptr %14, i32 0, i32 13
  %22 = ptrtoint ptr %wwnn to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %wwnn, align 8
  %fl_wwnn = getelementptr inbounds %struct.efc_nport, ptr %14, i32 0, i32 30, i32 28
  %24 = ptrtoint ptr %fl_wwnn to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %fl_wwnn, align 1
  %is_loop = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 16
  %25 = ptrtoint ptr %is_loop to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_loop, align 2, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool118.not = icmp eq i8 %26, 0
  br i1 %tobool118.not, label %if.end109.if.end121_crit_edge, label %land.lhs.true

if.end109.if.end121_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

land.lhs.true:                                    ; preds = %if.end109
  %is_nlport = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 17
  %27 = ptrtoint ptr %is_nlport to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_nlport, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool119.not = icmp eq i8 %28, 0
  br i1 %tobool119.not, label %if.then120, label %land.lhs.true.if.end121_crit_edge

land.lhs.true.if.end121_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

if.then120:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_domain_allocated, ptr noundef null) #7
  %fc_id = getelementptr inbounds %struct.efc_nport, ptr %14, i32 0, i32 17
  %29 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fc_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s_id.addr.i)
  %31 = ptrtoint ptr %s_id.addr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %s_id.addr.i, align 4
  %32 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma, align 4
  %add.ptr.i = getelementptr %struct.efc_domain, ptr %3, i32 0, i32 24, i32 4
  %34 = call ptr @memcpy(ptr %33, ptr %add.ptr.i, i32 112)
  %drvsm.i = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 13
  %call.i = call i32 @efc_sm_post_event(ptr noundef %drvsm.i, i32 noundef 12, ptr noundef nonnull %s_id.addr.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s_id.addr.i)
  br label %cleanup175

if.end121:                                        ; preds = %land.lhs.true.if.end121_crit_edge, %if.end109.if.end121_crit_edge
  %call122 = tail call ptr @efc_node_find(ptr noundef nonnull %14, i32 noundef 16777214) #7
  %tobool123.not = icmp eq ptr %call122, null
  br i1 %tobool123.not, label %if.end130, label %do.end127

do.end127:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  %pci128 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %35 = ptrtoint ptr %pci128 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci128, align 4
  %dev129 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev129, ptr noundef nonnull @.str.46) #10
  br label %cleanup175

if.end130:                                        ; preds = %if.end121
  %call131 = tail call ptr @efc_node_alloc(ptr noundef nonnull %14, i32 noundef 16777214, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %tobool132.not = icmp eq ptr %call131, null
  br i1 %tobool132.not, label %do.end136, label %if.else

do.end136:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  %pci137 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %37 = ptrtoint ptr %pci137 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci137, align 4
  %dev138 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev138, ptr noundef nonnull @.str.48) #10
  br label %if.end139

if.else:                                          ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_node_transition(ptr noundef nonnull %call131, ptr noundef nonnull @__efc_fabric_init, ptr noundef null) #7
  br label %if.end139

if.end139:                                        ; preds = %if.else, %do.end136
  %req_accept_frames = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 20
  %39 = ptrtoint ptr %req_accept_frames to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %req_accept_frames, align 2
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_domain_allocated, ptr noundef null) #7
  br label %cleanup175

do.end146:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  %pci147 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %40 = ptrtoint ptr %pci147 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pci147, align 4
  %dev148 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %call149 = tail call ptr @efc_sm_event_name(i32 noundef 11) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev148, ptr noundef nonnull @.str.51, ptr noundef %call149) #10
  %42 = ptrtoint ptr %pci147 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci147, align 4
  %dev154 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev154, ptr noundef nonnull @.str.54) #10
  %req_domain_free = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 19
  %44 = ptrtoint ptr %req_domain_free to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %req_domain_free, align 1
  br label %cleanup175

do.body156:                                       ; preds = %do.end72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_domain_wait_alloc.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_domain_wait_alloc, %if.then168)) #7
          to label %do.end174 [label %if.then168], !srcloc !250

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #9
  %pci169 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %45 = ptrtoint ptr %pci169 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pci169, align 4
  %dev170 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %call171 = tail call ptr @efc_sm_event_name(i32 noundef 15) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_domain_wait_alloc.__UNIQUE_ID_ddebug330, ptr noundef %dev170, ptr noundef nonnull @.str.56, ptr noundef %call171) #7
  br label %do.end174

do.end174:                                        ; preds = %if.then168, %do.body156
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_domain_wait_domain_lost, ptr noundef null) #7
  br label %cleanup175

do.end.i:                                         ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %app22 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %app22, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %pci.i = getelementptr inbounds %struct.efc, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %call.i223 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.45, ptr noundef %call.i223) #10
  br label %cleanup175

cleanup175:                                       ; preds = %do.end.i, %do.end174, %do.end146, %if.end139, %do.end127, %if.then120, %do.end93, %do.end72.cleanup175_crit_edge, %do.end72.cleanup175_crit_edge226, %do.end72.cleanup175_crit_edge227, %do.end72.cleanup175_crit_edge228, %do.end72.cleanup175_crit_edge229
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efc_node_alloc(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_transition(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__efc_d_wait_loop(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_domain_allocated(ptr noundef %ctx, i32 noundef %evt, ptr noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %lor.rhs.if.end_crit_edge, !prof !252

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 462, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs.if.end_crit_edge
  %app22 = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %app22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %app22, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %do.end43, label %if.end.if.end49_crit_edge, !prof !252

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 462, i32 noundef 9, ptr noundef null) #7
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end.if.end49_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_domain_allocated.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_domain_allocated, %if.then67)) #7
          to label %do.end72 [label %if.then67], !srcloc !250

if.then67:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 1
  %call69 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_domain_allocated.__UNIQUE_ID_ddebug331, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef %display_name, ptr noundef nonnull @.str.57, ptr noundef %call69) #7
  br label %do.end72

do.end72:                                         ; preds = %if.then67, %if.end49
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %evt, label %do.end.i [
    i32 12, label %sw.bb
    i32 9, label %do.end153
    i32 15, label %do.body157
    i32 0, label %do.end72.cleanup206_crit_edge
    i32 1, label %do.end72.cleanup206_crit_edge264
    i32 2, label %do.end72.cleanup206_crit_edge265
    i32 4, label %do.end72.cleanup206_crit_edge266
  ]

do.end72.cleanup206_crit_edge266:                 ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup206

do.end72.cleanup206_crit_edge265:                 ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup206

do.end72.cleanup206_crit_edge264:                 ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup206

do.end72.cleanup206_crit_edge:                    ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup206

sw.bb:                                            ; preds = %do.end72
  %tobool74.not = icmp eq ptr %arg, null
  br i1 %tobool74.not, label %do.end92, label %if.end108, !prof !252

do.end92:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 471, i32 noundef 9, ptr noundef null) #7
  br label %cleanup206

if.end108:                                        ; preds = %sw.bb
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arg, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_domain_allocated.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_domain_allocated, %if.then121)) #7
          to label %do.end126 [label %if.then121], !srcloc !250

if.then121:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  %pci122 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %pci122 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci122, align 4
  %dev123 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_domain_allocated.__UNIQUE_ID_ddebug332, ptr noundef %dev123, ptr noundef nonnull @.str.58, i32 noundef %14) #7
  br label %do.end126

do.end126:                                        ; preds = %if.then121, %if.end108
  %lookup = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 25
  %nport = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 26
  %17 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nport, align 4
  %call127 = tail call ptr @xa_store(ptr noundef %lookup, i32 noundef %14, ptr noundef %18, i32 noundef 2592) #7
  %19 = ptrtoint ptr %call127 to i32
  %and.i.i.i = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i)
  %cmp.i.i.i = icmp ne i32 %and.i.i.i, 2
  %cmp.i.i = icmp ult ptr %call127, inttoptr (i32 -16378 to ptr)
  %tobool129.not261 = icmp ult ptr %call127, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i = or i1 %cmp.i.i, %cmp.i.i.i
  %tobool129.not = or i1 %tobool129.not261, %not.spec.select.i.i
  br i1 %tobool129.not, label %if.end136, label %do.end133

do.end133:                                        ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i = ashr i32 %19, 2
  %pci134 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %20 = ptrtoint ptr %pci134 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci134, align 4
  %dev135 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev135, ptr noundef nonnull @.str.59, i32 noundef %shr.i) #10
  br label %cleanup206

if.end136:                                        ; preds = %do.end126
  %22 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nport, align 4
  %display_name138 = getelementptr inbounds %struct.efc_nport, ptr %23, i32 0, i32 5
  tail call void @efc_node_fcid_display(i32 noundef %14, ptr noundef %display_name138, i32 noundef 32) #7
  %call140 = tail call i32 @efc_cmd_domain_attach(ptr noundef %7, ptr noundef %3, i32 noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end148, label %do.end145

do.end145:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  %pci146 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %pci146 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci146, align 4
  %dev147 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev147, ptr noundef nonnull @.str.61, i32 noundef %call140) #10
  br label %cleanup206

if.end148:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_domain_wait_attach, ptr noundef null) #7
  br label %cleanup206

do.end153:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  %pci154 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %26 = ptrtoint ptr %pci154 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci154, align 4
  %dev155 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev155, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.57, i32 noundef 9) #10
  br label %cleanup206

do.body157:                                       ; preds = %do.end72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_domain_allocated.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_domain_allocated, %if.then169)) #7
          to label %do.end175 [label %if.then169], !srcloc !250

if.then169:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #9
  %pci170 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %28 = ptrtoint ptr %pci170 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci170, align 4
  %dev171 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %call172 = tail call ptr @efc_sm_event_name(i32 noundef 15) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_domain_allocated.__UNIQUE_ID_ddebug333, ptr noundef %dev171, ptr noundef nonnull @.str.66, ptr noundef %call172) #7
  br label %do.end175

do.end175:                                        ; preds = %if.then169, %do.body157
  %nport_list = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %nport_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %nport_list, align 4
  %cmp.i.not = icmp eq ptr %31, %nport_list
  br i1 %cmp.i.not, label %if.else, label %if.then178

if.then178:                                       ; preds = %do.end175
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_domain_wait_nports_free, ptr noundef null) #7
  %32 = ptrtoint ptr %nport_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nport_list, align 4
  %cmp.not262 = icmp eq ptr %33, %nport_list
  br i1 %cmp.not262, label %if.then178.cleanup206_crit_edge, label %if.then178.for.body_crit_edge

if.then178.for.body_crit_edge:                    ; preds = %if.then178
  br label %for.body

if.then178.cleanup206_crit_edge:                  ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup206

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then178.for.body_crit_edge
  %nport179.0263 = phi ptr [ %nport_next.0, %for.body.for.body_crit_edge ], [ %33, %if.then178.for.body_crit_edge ]
  %34 = ptrtoint ptr %nport179.0263 to i32
  call void @__asan_load4_noabort(i32 %34)
  %nport_next.0 = load ptr, ptr %nport179.0263, align 8
  %sm = getelementptr inbounds %struct.efc_nport, ptr %nport179.0263, i32 0, i32 22
  %call190 = tail call i32 @efc_sm_post_event(ptr noundef %sm, i32 noundef 3, ptr noundef null) #7
  %cmp.not = icmp eq ptr %nport_next.0, %nport_list
  br i1 %cmp.not, label %for.body.cleanup206_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup206_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup206

if.else:                                          ; preds = %do.end175
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_domain_wait_shutdown, ptr noundef null) #7
  %call196 = tail call i32 @efc_cmd_domain_free(ptr noundef %7, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.else.cleanup206_crit_edge, label %do.end201

if.else.cleanup206_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup206

do.end201:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %pci202 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %35 = ptrtoint ptr %pci202 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci202, align 4
  %dev203 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev203, ptr noundef nonnull @.str.68) #10
  br label %cleanup206

do.end.i:                                         ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %app22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %app22, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %pci.i = getelementptr inbounds %struct.efc, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %call.i = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.57, ptr noundef %call.i) #10
  br label %cleanup206

cleanup206:                                       ; preds = %do.end.i, %do.end201, %if.else.cleanup206_crit_edge, %for.body.cleanup206_crit_edge, %if.then178.cleanup206_crit_edge, %do.end153, %if.end148, %do.end145, %do.end133, %do.end92, %do.end72.cleanup206_crit_edge, %do.end72.cleanup206_crit_edge264, %do.end72.cleanup206_crit_edge265, %do.end72.cleanup206_crit_edge266
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_domain_attach_internal(ptr noundef %domain, i32 noundef %s_id) local_unnamed_addr #0 align 64 {
entry:
  %s_id.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s_id.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %s_id, ptr %s_id.addr, align 4
  %dma = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 11
  %1 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma, align 4
  %add.ptr = getelementptr %struct.efc_domain, ptr %domain, i32 0, i32 24, i32 4
  %3 = call ptr @memcpy(ptr %2, ptr %add.ptr, i32 112)
  %drvsm = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 13
  %call = call i32 @efc_sm_post_event(ptr noundef %drvsm, i32 noundef 12, ptr noundef nonnull %s_id.addr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efc_node_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__efc_fabric_init(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_domain_wait_domain_lost(ptr noundef %ctx, i32 noundef %evt, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %lor.rhs.if.end_crit_edge, !prof !252

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 777, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs.if.end_crit_edge
  %app22 = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %app22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %app22, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %do.end43, label %if.end.if.end49_crit_edge, !prof !252

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 777, i32 noundef 9, ptr noundef null) #7
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end.if.end49_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_domain_wait_domain_lost.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_domain_wait_domain_lost, %if.then67)) #7
          to label %do.end72 [label %if.then67], !srcloc !250

if.then67:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 1
  %call69 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_domain_wait_domain_lost.__UNIQUE_ID_ddebug341, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef %display_name, ptr noundef nonnull @.str.80, ptr noundef %call69) #7
  br label %do.end72

do.end72:                                         ; preds = %if.then67, %if.end49
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %evt, label %sw.default [
    i32 10, label %do.end72.sw.bb_crit_edge
    i32 13, label %do.end72.sw.bb_crit_edge134
    i32 11, label %do.end72.do.end105_crit_edge
    i32 14, label %do.end72.do.end105_crit_edge135
  ]

do.end72.do.end105_crit_edge135:                  ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end105

do.end72.do.end105_crit_edge:                     ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end105

do.end72.sw.bb_crit_edge134:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.end72.sw.bb_crit_edge:                         ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %do.end72.sw.bb_crit_edge, %do.end72.sw.bb_crit_edge134
  %nport_list = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %nport_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %nport_list, align 4
  %cmp.i.not = icmp eq ptr %14, %nport_list
  br i1 %cmp.i.not, label %if.else, label %if.then75

if.then75:                                        ; preds = %sw.bb
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_domain_wait_nports_free, ptr noundef null) #7
  %15 = ptrtoint ptr %nport_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nport_list, align 4
  %cmp.not132 = icmp eq ptr %16, %nport_list
  br i1 %cmp.not132, label %if.then75.sw.epilog_crit_edge, label %if.then75.for.body_crit_edge

if.then75.for.body_crit_edge:                     ; preds = %if.then75
  br label %for.body

if.then75.sw.epilog_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then75.for.body_crit_edge
  %nport.0133 = phi ptr [ %nport_next.0, %for.body.for.body_crit_edge ], [ %16, %if.then75.for.body_crit_edge ]
  %17 = ptrtoint ptr %nport.0133 to i32
  call void @__asan_load4_noabort(i32 %17)
  %nport_next.0 = load ptr, ptr %nport.0133, align 8
  %sm = getelementptr inbounds %struct.efc_nport, ptr %nport.0133, i32 0, i32 22
  %call86 = tail call i32 @efc_sm_post_event(ptr noundef %sm, i32 noundef 3, ptr noundef null) #7
  %cmp.not = icmp eq ptr %nport_next.0, %nport_list
  br i1 %cmp.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_domain_wait_shutdown, ptr noundef null) #7
  %call92 = tail call i32 @efc_cmd_domain_free(ptr noundef %7, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.else.sw.epilog_crit_edge, label %do.end97

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end97:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %pci98 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %pci98 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci98, align 4
  %dev99 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev99, ptr noundef nonnull @.str.81) #10
  br label %sw.epilog

do.end105:                                        ; preds = %do.end72.do.end105_crit_edge, %do.end72.do.end105_crit_edge135
  %pci106 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %20 = ptrtoint ptr %pci106 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci106, align 4
  %dev107 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %call108 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev107, ptr noundef nonnull @.str.83, ptr noundef %call108) #10
  br label %sw.epilog

sw.default:                                       ; preds = %do.end72
  %22 = ptrtoint ptr %app22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %app22, align 4
  %24 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %evt, label %do.end.i [
    i32 0, label %sw.default.sw.epilog_crit_edge
    i32 1, label %sw.default.sw.epilog_crit_edge136
    i32 2, label %sw.default.sw.epilog_crit_edge137
    i32 9, label %sw.bb1.i
    i32 15, label %sw.bb2.i
  ]

sw.default.sw.epilog_crit_edge137:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default.sw.epilog_crit_edge136:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %pending_drec.i = getelementptr inbounds %struct.efc_domain, ptr %23, i32 0, i32 22
  %25 = call ptr @memcpy(ptr %pending_drec.i, ptr %arg, i32 548)
  %domain_found_pending.i = getelementptr inbounds %struct.efc_domain, ptr %23, i32 0, i32 18
  %26 = ptrtoint ptr %domain_found_pending.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %domain_found_pending.i, align 8
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %domain_found_pending3.i = getelementptr inbounds %struct.efc_domain, ptr %23, i32 0, i32 18
  %27 = ptrtoint ptr %domain_found_pending3.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %domain_found_pending3.i, align 8
  br label %sw.epilog

do.end.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %23, align 8
  %pci.i = getelementptr inbounds %struct.efc, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %call.i = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.80, ptr noundef %call.i) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i, %sw.bb2.i, %sw.bb1.i, %sw.default.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge136, %sw.default.sw.epilog_crit_edge137, %do.end105, %do.end97, %if.else.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge, %if.then75.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_fcid_display(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_cmd_domain_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_domain_wait_attach(ptr noundef %ctx, i32 noundef %evt, ptr nocapture readnone %arg) #0 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %lor.rhs.if.end_crit_edge, !prof !252

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 547, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs.if.end_crit_edge
  %app22 = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %app22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %app22, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %do.end43, label %if.end.if.end49_crit_edge, !prof !252

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 547, i32 noundef 9, ptr noundef null) #7
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end.if.end49_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_domain_wait_attach.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_domain_wait_attach, %if.then67)) #7
          to label %do.end72 [label %if.then67], !srcloc !250

if.then67:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 1
  %call69 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_domain_wait_attach.__UNIQUE_ID_ddebug334, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef %display_name, ptr noundef nonnull @.str.70, ptr noundef %call69) #7
  br label %do.end72

do.end72:                                         ; preds = %if.then67, %if.end49
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %evt, label %do.end.i [
    i32 13, label %sw.bb
    i32 14, label %do.body97
    i32 9, label %do.end119
    i32 15, label %sw.bb122
    i32 12, label %do.end72.sw.epilog_crit_edge
    i32 0, label %do.end72.sw.epilog_crit_edge160
    i32 1, label %do.end72.sw.epilog_crit_edge161
    i32 2, label %do.end72.sw.epilog_crit_edge162
    i32 4, label %do.end72.sw.epilog_crit_edge163
  ]

do.end72.sw.epilog_crit_edge163:                  ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end72.sw.epilog_crit_edge162:                  ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end72.sw.epilog_crit_edge161:                  ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end72.sw.epilog_crit_edge160:                  ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end72.sw.epilog_crit_edge:                     ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #7
  %13 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %index, align 4, !annotation !257
  %domain_notify_pend = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 21
  %14 = ptrtoint ptr %domain_notify_pend to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %domain_notify_pend, align 1
  %attached = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 14
  %15 = ptrtoint ptr %attached to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %attached, align 4
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_domain_ready, ptr noundef null) #7
  %req_accept_frames = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 20
  %16 = ptrtoint ptr %req_accept_frames to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %req_accept_frames, align 2
  %nport_list = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %nport_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nport_list, align 4
  %cmp.not157 = icmp eq ptr %18, %nport_list
  br i1 %cmp.not157, label %sw.bb.for.end94_crit_edge, label %sw.bb.for.body_crit_edge

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  br label %for.body

sw.bb.for.end94_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end94

for.cond.loopexit:                                ; preds = %for.body85.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %cmp.not = icmp eq ptr %next_nport.0159, %nport_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end94_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.loopexit.for.end94_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end94

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %sw.bb.for.body_crit_edge
  %nport.0158 = phi ptr [ %next_nport.0159, %for.cond.loopexit.for.body_crit_edge ], [ %18, %sw.bb.for.body_crit_edge ]
  %19 = ptrtoint ptr %nport.0158 to i32
  call void @__asan_load4_noabort(i32 %19)
  %next_nport.0159 = load ptr, ptr %nport.0158, align 8
  %20 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %index, align 4
  %lookup = getelementptr inbounds %struct.efc_nport, ptr %nport.0158, i32 0, i32 23
  %call82 = call ptr @xa_find(ptr noundef %lookup, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #7
  %tobool84.not154 = icmp eq ptr %call82, null
  br i1 %tobool84.not154, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body85_crit_edge

for.body.for.body85_crit_edge:                    ; preds = %for.body
  br label %for.body85

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

for.body85:                                       ; preds = %for.body85.for.body85_crit_edge, %for.body.for.body85_crit_edge
  %node.0155 = phi ptr [ %call87, %for.body85.for.body85_crit_edge ], [ %call82, %for.body.for.body85_crit_edge ]
  call void @efc_node_post_event(ptr noundef nonnull %node.0155, i32 noundef 13, ptr noundef null) #7
  %call87 = call ptr @xa_find_after(ptr noundef %lookup, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #7
  %tobool84.not = icmp eq ptr %call87, null
  br i1 %tobool84.not, label %for.body85.for.cond.loopexit_crit_edge, label %for.body85.for.body85_crit_edge

for.body85.for.body85_crit_edge:                  ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body85

for.body85.for.cond.loopexit_crit_edge:           ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

for.end94:                                        ; preds = %for.cond.loopexit.for.end94_crit_edge, %sw.bb.for.end94_crit_edge
  %21 = ptrtoint ptr %domain_notify_pend to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %domain_notify_pend, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #7
  br label %sw.epilog

do.body97:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_domain_wait_attach.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_domain_wait_attach, %if.then109)) #7
          to label %sw.epilog [label %if.then109], !srcloc !250

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #9
  %pci110 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %22 = ptrtoint ptr %pci110 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci110, align 4
  %dev111 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %call112 = tail call ptr @efc_sm_event_name(i32 noundef 14) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_domain_wait_attach.__UNIQUE_ID_ddebug335, ptr noundef %dev111, ptr noundef nonnull @.str.71, ptr noundef %call112) #7
  br label %sw.epilog

do.end119:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  %pci120 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %pci120 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci120, align 4
  %dev121 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev121, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.70, i32 noundef 9) #10
  br label %sw.epilog

sw.bb122:                                         ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_domain_wait_domain_lost, ptr noundef null) #7
  br label %sw.epilog

do.end.i:                                         ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %app22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %app22, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %pci.i = getelementptr inbounds %struct.efc, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %call.i = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.70, ptr noundef %call.i) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i, %sw.bb122, %do.end119, %if.then109, %do.body97, %for.end94, %do.end72.sw.epilog_crit_edge, %do.end72.sw.epilog_crit_edge160, %do.end72.sw.epilog_crit_edge161, %do.end72.sw.epilog_crit_edge162, %do.end72.sw.epilog_crit_edge163
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_domain_wait_nports_free(ptr noundef %ctx, i32 noundef %evt, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %lor.rhs.if.end_crit_edge, !prof !252

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 698, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs.if.end_crit_edge
  %app22 = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %app22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %app22, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %do.end43, label %if.end.if.end49_crit_edge, !prof !252

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 698, i32 noundef 9, ptr noundef null) #7
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end.if.end49_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_domain_wait_nports_free.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_domain_wait_nports_free, %if.then67)) #7
          to label %do.end72 [label %if.then67], !srcloc !250

if.then67:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 1
  %call69 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_domain_wait_nports_free.__UNIQUE_ID_ddebug338, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef %display_name, ptr noundef nonnull @.str.76, ptr noundef %call69) #7
  br label %do.end72

do.end72:                                         ; preds = %if.then67, %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %evt)
  %cond = icmp eq i32 %evt, 4
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %do.end72
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_domain_wait_shutdown, ptr noundef null) #7
  %call73 = tail call i32 @efc_cmd_domain_free(ptr noundef %7, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %sw.bb.sw.epilog_crit_edge, label %do.end78

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end78:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %pci79 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %pci79 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci79, align 4
  %dev80 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev80, ptr noundef nonnull @.str.77, i32 noundef %call73) #10
  br label %sw.epilog

sw.default:                                       ; preds = %do.end72
  %14 = ptrtoint ptr %app22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %app22, align 4
  %16 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %evt, label %do.end.i [
    i32 0, label %sw.default.sw.epilog_crit_edge
    i32 1, label %sw.default.sw.epilog_crit_edge97
    i32 2, label %sw.default.sw.epilog_crit_edge98
    i32 9, label %sw.bb1.i
    i32 15, label %sw.bb2.i
  ]

sw.default.sw.epilog_crit_edge98:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default.sw.epilog_crit_edge97:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %pending_drec.i = getelementptr inbounds %struct.efc_domain, ptr %15, i32 0, i32 22
  %17 = call ptr @memcpy(ptr %pending_drec.i, ptr %arg, i32 548)
  %domain_found_pending.i = getelementptr inbounds %struct.efc_domain, ptr %15, i32 0, i32 18
  %18 = ptrtoint ptr %domain_found_pending.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %domain_found_pending.i, align 8
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %domain_found_pending3.i = getelementptr inbounds %struct.efc_domain, ptr %15, i32 0, i32 18
  %19 = ptrtoint ptr %domain_found_pending3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %domain_found_pending3.i, align 8
  br label %sw.epilog

do.end.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 8
  %pci.i = getelementptr inbounds %struct.efc, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %call.i = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.76, ptr noundef %call.i) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i, %sw.bb2.i, %sw.bb1.i, %sw.default.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge97, %sw.default.sw.epilog_crit_edge98, %do.end78, %sw.bb.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_sm_post_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_domain_wait_shutdown(ptr noundef readonly %ctx, i32 noundef %evt, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  %drec = alloca %struct.efc_domain_record, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %lor.rhs.if.end_crit_edge, !prof !252

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 727, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs.if.end_crit_edge
  %app22 = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %app22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %app22, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %do.end43, label %if.end.if.end49_crit_edge, !prof !252

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 727, i32 noundef 9, ptr noundef null) #7
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end.if.end49_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_domain_wait_shutdown.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_domain_wait_shutdown, %if.then67)) #7
          to label %do.end72 [label %if.then67], !srcloc !250

if.then67:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 1
  %call69 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_domain_wait_shutdown.__UNIQUE_ID_ddebug339, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef %display_name, ptr noundef nonnull @.str.78, ptr noundef %call69) #7
  br label %do.end72

do.end72:                                         ; preds = %if.then67, %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %evt)
  %cond = icmp eq i32 %evt, 16
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %do.end72
  %domain_found_pending = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %domain_found_pending to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %domain_found_pending, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool73.not = icmp eq i8 %13, 0
  br i1 %tobool73.not, label %if.else, label %if.then74

if.then74:                                        ; preds = %sw.bb
  %fcf_wwn75 = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %fcf_wwn75 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %fcf_wwn75, align 8
  call void @llvm.lifetime.start.p0(i64 548, ptr nonnull %drec) #7
  %pending_drec = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 22
  %16 = call ptr @memcpy(ptr %drec, ptr %pending_drec, i32 548)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_domain_wait_shutdown.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_domain_wait_shutdown, %if.then88)) #7
          to label %do.end93 [label %if.then88], !srcloc !250

if.then88:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  %pci89 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %pci89 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci89, align 4
  %dev90 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_domain_wait_shutdown.__UNIQUE_ID_ddebug340, ptr noundef %dev90, ptr noundef nonnull @.str.79) #7
  br label %do.end93

do.end93:                                         ; preds = %if.then88, %if.then74
  %req_domain_free = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 19
  %19 = ptrtoint ptr %req_domain_free to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %req_domain_free, align 1
  %call94 = tail call ptr @efc_domain_alloc(ptr noundef %7, i64 noundef %15)
  %tobool95.not = icmp eq ptr %call94, null
  br i1 %tobool95.not, label %do.end99, label %if.end102

do.end99:                                         ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #9
  %pci100 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %20 = ptrtoint ptr %pci100 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci100, align 4
  %dev101 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev101, ptr noundef nonnull @.str.4) #10
  call void @llvm.lifetime.end.p0(i64 548, ptr nonnull %drec) #7
  br label %cleanup108

if.end102:                                        ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #9
  %drvsm = getelementptr inbounds %struct.efc_domain, ptr %call94, i32 0, i32 13
  tail call void @efc_sm_transition(ptr noundef %drvsm, ptr noundef nonnull @__efc_domain_init, ptr noundef null) #7
  %call104 = call i32 @efc_sm_post_event(ptr noundef %drvsm, i32 noundef 9, ptr noundef nonnull %drec) #7
  call void @llvm.lifetime.end.p0(i64 548, ptr nonnull %drec) #7
  br label %cleanup108

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %req_domain_free106 = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 19
  %22 = ptrtoint ptr %req_domain_free106 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %req_domain_free106, align 1
  br label %cleanup108

sw.default:                                       ; preds = %do.end72
  %23 = ptrtoint ptr %app22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %app22, align 4
  %25 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %evt, label %do.end.i [
    i32 0, label %sw.default.cleanup108_crit_edge
    i32 1, label %sw.default.cleanup108_crit_edge138
    i32 2, label %sw.default.cleanup108_crit_edge139
    i32 9, label %sw.bb1.i
    i32 15, label %sw.bb2.i
  ]

sw.default.cleanup108_crit_edge139:               ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup108

sw.default.cleanup108_crit_edge138:               ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup108

sw.default.cleanup108_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup108

sw.bb1.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %pending_drec.i = getelementptr inbounds %struct.efc_domain, ptr %24, i32 0, i32 22
  %26 = call ptr @memcpy(ptr %pending_drec.i, ptr %arg, i32 548)
  %domain_found_pending.i = getelementptr inbounds %struct.efc_domain, ptr %24, i32 0, i32 18
  %27 = ptrtoint ptr %domain_found_pending.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %domain_found_pending.i, align 8
  br label %cleanup108

sw.bb2.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %domain_found_pending3.i = getelementptr inbounds %struct.efc_domain, ptr %24, i32 0, i32 18
  %28 = ptrtoint ptr %domain_found_pending3.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %domain_found_pending3.i, align 8
  br label %cleanup108

do.end.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %24, align 8
  %pci.i = getelementptr inbounds %struct.efc, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %call.i = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.78, ptr noundef %call.i) #10
  br label %cleanup108

cleanup108:                                       ; preds = %do.end.i, %sw.bb2.i, %sw.bb1.i, %sw.default.cleanup108_crit_edge, %sw.default.cleanup108_crit_edge138, %sw.default.cleanup108_crit_edge139, %if.else, %if.end102, %do.end99
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_cmd_domain_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efc_domain_ready(ptr noundef %ctx, i32 noundef %evt, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %app = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %lor.rhs.if.end_crit_edge, !prof !252

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 627, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs.if.end_crit_edge
  %app22 = getelementptr inbounds %struct.efc_sm_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %app22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %app22, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %do.end43, label %if.end.if.end49_crit_edge, !prof !252

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 627, i32 noundef 9, ptr noundef null) #7
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end.if.end49_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_domain_ready.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_domain_ready, %if.then67)) #7
          to label %do.end72 [label %if.then67], !srcloc !250

if.then67:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %pci = getelementptr inbounds %struct.efc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 1
  %call69 = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_domain_ready.__UNIQUE_ID_ddebug336, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef %display_name, ptr noundef nonnull @.str.72, ptr noundef %call69) #7
  br label %do.end72

do.end72:                                         ; preds = %if.then67, %if.end49
  %12 = zext i32 %evt to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %evt, label %do.end.i [
    i32 0, label %sw.bb
    i32 15, label %sw.bb96
    i32 9, label %do.end129
    i32 12, label %sw.bb132
    i32 4, label %do.end72.sw.epilog_crit_edge
    i32 1, label %do.end72.sw.epilog_crit_edge235
    i32 2, label %do.end72.sw.epilog_crit_edge236
  ]

do.end72.sw.epilog_crit_edge236:                  ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end72.sw.epilog_crit_edge235:                  ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end72.sw.epilog_crit_edge:                     ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end72
  %call73 = tail call i32 @efc_vport_start(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %sw.bb.sw.epilog_crit_edge, label %do.body76

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body76:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__efc_domain_ready.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__efc_domain_ready, %if.then88)) #7
          to label %sw.epilog [label %if.then88], !srcloc !250

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 8
  %pci90 = getelementptr inbounds %struct.efc, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %pci90 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci90, align 4
  %dev91 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__efc_domain_ready.__UNIQUE_ID_ddebug337, ptr noundef %dev91, ptr noundef nonnull @.str.73) #7
  br label %sw.epilog

sw.bb96:                                          ; preds = %do.end72
  %nport_list = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %nport_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %nport_list, align 4
  %cmp.i.not = icmp eq ptr %18, %nport_list
  br i1 %cmp.i.not, label %if.else, label %if.then99

if.then99:                                        ; preds = %sw.bb96
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_domain_wait_nports_free, ptr noundef null) #7
  %19 = ptrtoint ptr %nport_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nport_list, align 4
  %cmp.not233 = icmp eq ptr %20, %nport_list
  br i1 %cmp.not233, label %if.then99.sw.epilog_crit_edge, label %if.then99.for.body_crit_edge

if.then99.for.body_crit_edge:                     ; preds = %if.then99
  br label %for.body

if.then99.sw.epilog_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then99.for.body_crit_edge
  %nport.0234 = phi ptr [ %nport_next.0, %for.body.for.body_crit_edge ], [ %20, %if.then99.for.body_crit_edge ]
  %21 = ptrtoint ptr %nport.0234 to i32
  call void @__asan_load4_noabort(i32 %21)
  %nport_next.0 = load ptr, ptr %nport.0234, align 8
  %sm = getelementptr inbounds %struct.efc_nport, ptr %nport.0234, i32 0, i32 22
  %call110 = tail call i32 @efc_sm_post_event(ptr noundef %sm, i32 noundef 3, ptr noundef null) #7
  %cmp.not = icmp eq ptr %nport_next.0, %nport_list
  br i1 %cmp.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb96
  tail call void @efc_sm_transition(ptr noundef %ctx, ptr noundef nonnull @__efc_domain_wait_shutdown, ptr noundef null) #7
  %call116 = tail call i32 @efc_cmd_domain_free(ptr noundef %7, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.else.sw.epilog_crit_edge, label %do.end121

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end121:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %pci122 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %22 = ptrtoint ptr %pci122 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci122, align 4
  %dev123 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev123, ptr noundef nonnull @.str.68) #10
  br label %sw.epilog

do.end129:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  %pci130 = getelementptr inbounds %struct.efc, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %pci130 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci130, align 4
  %dev131 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev131, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.72, i32 noundef 9) #10
  br label %sw.epilog

sw.bb132:                                         ; preds = %do.end72
  %26 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arg, align 4
  %attached = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 14
  %28 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %attached, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool134.not = icmp eq i8 %29, 0
  br i1 %tobool134.not, label %do.end152, label %sw.bb132.if.end158_crit_edge, !prof !252

sw.bb132.if.end158_crit_edge:                     ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158

do.end152:                                        ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 679, i32 noundef 9, ptr noundef null) #7
  br label %if.end158

if.end158:                                        ; preds = %do.end152, %sw.bb132.if.end158_crit_edge
  %nport167 = getelementptr inbounds %struct.efc_domain, ptr %3, i32 0, i32 26
  %30 = ptrtoint ptr %nport167 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nport167, align 4
  %fc_id168 = getelementptr inbounds %struct.efc_nport, ptr %31, i32 0, i32 17
  %32 = ptrtoint ptr %fc_id168 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fc_id168, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %27)
  %cmp169.not = icmp eq i32 %33, %27
  br i1 %cmp169.not, label %if.end158.sw.epilog_crit_edge, label %do.end185, !prof !255

if.end158.sw.epilog_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end185:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 685, i32 noundef 9, ptr noundef null) #7
  br label %sw.epilog

do.end.i:                                         ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %app22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %app22, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %pci.i = getelementptr inbounds %struct.efc, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %call.i = tail call ptr @efc_sm_event_name(i32 noundef %evt) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.72, ptr noundef %call.i) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i, %do.end185, %if.end158.sw.epilog_crit_edge, %do.end129, %do.end121, %if.else.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge, %if.then99.sw.epilog_crit_edge, %if.then88, %do.body76, %sw.bb.sw.epilog_crit_edge, %do.end72.sw.epilog_crit_edge, %do.end72.sw.epilog_crit_edge235, %do.end72.sw.epilog_crit_edge236
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_post_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_vport_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_domain_attach(ptr noundef %domain, i32 noundef %s_id) local_unnamed_addr #0 align 64 {
entry:
  %s_id.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s_id.addr.i)
  %0 = ptrtoint ptr %s_id.addr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %s_id, ptr %s_id.addr.i, align 4
  %dma.i = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 11
  %1 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma.i, align 4
  %add.ptr.i = getelementptr %struct.efc_domain, ptr %domain, i32 0, i32 24, i32 4
  %3 = call ptr @memcpy(ptr %2, ptr %add.ptr.i, i32 112)
  %drvsm.i = getelementptr inbounds %struct.efc_domain, ptr %domain, i32 0, i32 13
  %call.i = call i32 @efc_sm_post_event(ptr noundef %drvsm.i, i32 noundef 12, ptr noundef nonnull %s_id.addr.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s_id.addr.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_dispatch_frame(ptr noundef %efc, ptr noundef %seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain1 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 20
  %0 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %hold_frames = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 30
  %2 = ptrtoint ptr %hold_frames to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hold_frames, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %if.then14.critedge34

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %pend_frames = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 32
  %4 = ptrtoint ptr %pend_frames to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pend_frames, align 4
  %cmp.i.not = icmp eq ptr %5, %pend_frames
  br i1 %cmp.i.not, label %if.else, label %if.then14.critedge

if.then14.critedge:                               ; preds = %lor.lhs.false3
  %pend_frames_lock.c = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 31
  %call7.c = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pend_frames_lock.c) #7
  %6 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %seq, ptr %seq, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %seq, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %seq, ptr %prev.i, align 4
  %prev.i43 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 32, i32 1
  %8 = ptrtoint ptr %prev.i43 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i43, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %seq, ptr noundef %9, ptr noundef %pend_frames) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then14.critedge.list_add_tail.exit_crit_edge

if.then14.critedge.list_add_tail.exit_crit_edge:  ; preds = %if.then14.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then14.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %prev.i43 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %seq, ptr %prev.i43, align 4
  %11 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pend_frames, ptr %seq, align 4
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %seq, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then14.critedge.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pend_frames_lock.c, i32 noundef %call7.c) #7
  br label %if.then14

if.then14.critedge34:                             ; preds = %lor.lhs.false
  %pend_frames_lock.c35 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 31
  %call7.c37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pend_frames_lock.c35) #7
  %14 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %seq, ptr %seq, align 4
  %prev.i44 = getelementptr inbounds %struct.list_head, ptr %seq, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i44 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %seq, ptr %prev.i44, align 4
  %pend_frames11.c38 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 32
  %prev.i45 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 32, i32 1
  %16 = ptrtoint ptr %prev.i45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i45, align 4
  %call.i.i46 = tail call zeroext i1 @__list_add_valid(ptr noundef %seq, ptr noundef %17, ptr noundef %pend_frames11.c38) #7
  br i1 %call.i.i46, label %if.end.i.i48, label %if.then14.critedge34.list_add_tail.exit49_crit_edge

if.then14.critedge34.list_add_tail.exit49_crit_edge: ; preds = %if.then14.critedge34
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit49

if.end.i.i48:                                     ; preds = %if.then14.critedge34
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %prev.i45 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %seq, ptr %prev.i45, align 4
  %19 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pend_frames11.c38, ptr %seq, align 4
  %20 = ptrtoint ptr %prev.i44 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev.i44, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %seq, ptr %17, align 4
  br label %list_add_tail.exit49

list_add_tail.exit49:                             ; preds = %if.end.i.i48, %if.then14.critedge34.list_add_tail.exit49_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pend_frames_lock.c35, i32 noundef %call7.c37) #7
  br label %if.then14

if.then14:                                        ; preds = %list_add_tail.exit49, %list_add_tail.exit
  tail call fastcc void @efct_domain_process_pending(ptr noundef nonnull %1)
  br label %if.end20

if.end.critedge:                                  ; preds = %entry
  %pend_frames_lock.c39 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 31
  %call7.c41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pend_frames_lock.c39) #7
  %22 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %seq, ptr %seq, align 4
  %prev.i50 = getelementptr inbounds %struct.list_head, ptr %seq, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %seq, ptr %prev.i50, align 4
  %pend_frames11.c42 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 32
  %prev.i51 = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 32, i32 1
  %24 = ptrtoint ptr %prev.i51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i51, align 4
  %call.i.i52 = tail call zeroext i1 @__list_add_valid(ptr noundef %seq, ptr noundef %25, ptr noundef %pend_frames11.c42) #7
  br i1 %call.i.i52, label %if.end.i.i54, label %if.end.critedge.list_add_tail.exit55_crit_edge

if.end.critedge.list_add_tail.exit55_crit_edge:   ; preds = %if.end.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit55

if.end.i.i54:                                     ; preds = %if.end.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %prev.i51 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %seq, ptr %prev.i51, align 4
  %27 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pend_frames11.c42, ptr %seq, align 4
  %28 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev.i50, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %seq, ptr %25, align 4
  br label %list_add_tail.exit55

list_add_tail.exit55:                             ; preds = %if.end.i.i54, %if.end.critedge.list_add_tail.exit55_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pend_frames_lock.c39, i32 noundef %call7.c41) #7
  br label %if.end20

if.else:                                          ; preds = %lor.lhs.false3
  %call15 = tail call i32 @efc_domain_dispatch_frame(ptr noundef nonnull %1, ptr noundef %seq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.else.if.end20_crit_edge, label %if.then17

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %hw_seq_free = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 15, i32 7
  %30 = ptrtoint ptr %hw_seq_free to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_seq_free, align 4
  %call18 = tail call i32 %31(ptr noundef %efc, ptr noundef %seq) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.else.if.end20_crit_edge, %list_add_tail.exit55, %if.then14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efct_domain_process_pending(ptr noundef %domain) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 8
  %hold_frames = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %hold_frames to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hold_frames, align 4, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not60 = icmp eq i8 %3, 0
  br i1 %tobool.not60, label %do.body2.lr.ph, label %entry.if.end37_crit_edge

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.body2.lr.ph:                                   ; preds = %entry
  %pend_frames_lock = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 31
  %pend_frames = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 32
  %pend_frames_processed17 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 33
  %hw_seq_free = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 15, i32 7
  br label %do.body2

do.body2:                                         ; preds = %if.end23.do.body2_crit_edge, %do.body2.lr.ph
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pend_frames_lock) #7
  %4 = ptrtoint ptr %pend_frames to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pend_frames, align 4
  %cmp.i.not = icmp eq ptr %5, %pend_frames
  br i1 %cmp.i.not, label %do.body2.for.end_crit_edge, label %if.then8

do.body2.for.end_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then8:                                         ; preds = %do.body2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.if.end11_crit_edge

if.then8.if.end11_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
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
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %if.end11.for.end_crit_edge, label %if.end16

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end16:                                         ; preds = %if.end11
  %14 = ptrtoint ptr %pend_frames_processed17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pend_frames_processed17, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %pend_frames_processed17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pend_frames_lock, i32 noundef %call3) #7
  %call19 = tail call i32 @efc_domain_dispatch_frame(ptr noundef %domain, ptr noundef nonnull %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end16.if.end23_crit_edge, label %if.then21

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %hw_seq_free to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_seq_free, align 4
  %call22 = tail call i32 %17(ptr noundef %1, ptr noundef nonnull %5) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end16.if.end23_crit_edge
  %18 = ptrtoint ptr %hold_frames to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hold_frames, align 4, !range !251
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.end23.do.body2_crit_edge, label %if.end23.if.end37_crit_edge

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end23.do.body2_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %do.body2.for.end_crit_edge
  %20 = ptrtoint ptr %pend_frames_processed17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pend_frames_processed17, align 4
  store i32 0, ptr %pend_frames_processed17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pend_frames_lock, i32 noundef %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp24.not = icmp eq i32 %21, 0
  br i1 %cmp24.not, label %for.end.if.end37_crit_edge, label %do.body27

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.body27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_domain_process_pending.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_domain_process_pending, %if.then33)) #7
          to label %if.end37 [label %if.then33], !srcloc !250

if.then33:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_domain_process_pending.__UNIQUE_ID_ddebug342, ptr noundef %dev, ptr noundef nonnull @.str.116, i32 noundef %21) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %do.body27, %for.end.if.end37_crit_edge, %if.end23.if.end37_crit_edge, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efc_domain_dispatch_frame(ptr noundef %arg, ptr noundef %seq) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 8
  %header = getelementptr inbounds %struct.efc_hw_sequence, ptr %seq, i32 0, i32 3
  %2 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %dma = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false4

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %payload = getelementptr inbounds %struct.efc_hw_sequence, ptr %seq, i32 0, i32 4
  %6 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %payload, align 4
  %dma5 = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dma5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma5, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %lor.lhs.false4.do.end_crit_edge, label %if.end

lor.lhs.false4.do.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false4.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %pci = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %fh_s_id = getelementptr inbounds %struct.fc_frame_header, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %fh_s_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fh_s_id, align 1
  %conv.i = zext i8 %13 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr %struct.fc_frame_header, ptr %5, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %15 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr %struct.fc_frame_header, ptr %5, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %17 to i32
  %or6.i = or i32 %or.i, %conv5.i
  %fh_d_id = getelementptr inbounds %struct.fc_frame_header, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %fh_d_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fh_d_id, align 1
  %conv.i140 = zext i8 %19 to i32
  %shl.i141 = shl nuw nsw i32 %conv.i140, 16
  %arrayidx1.i142 = getelementptr %struct.fc_frame_header, ptr %5, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx1.i142 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx1.i142, align 1
  %conv2.i143 = zext i8 %21 to i32
  %shl3.i144 = shl nuw nsw i32 %conv2.i143, 8
  %or.i145 = or i32 %shl3.i144, %shl.i141
  %arrayidx4.i146 = getelementptr %struct.fc_frame_header, ptr %5, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %arrayidx4.i146 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx4.i146, align 1
  %conv5.i147 = zext i8 %23 to i32
  %or6.i148 = or i32 %or.i145, %conv5.i147
  %lock = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 16
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %call21 = tail call ptr @efc_nport_find(ptr noundef %arg, i32 noundef %or6.i148) #7
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.then23, label %if.end.if.end46_crit_edge

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then23:                                        ; preds = %if.end
  %fh_type = getelementptr inbounds %struct.fc_frame_header, ptr %5, i32 0, i32 4
  %24 = ptrtoint ptr %fh_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fh_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %25)
  %cmp25 = icmp eq i8 %25, 8
  br i1 %cmp25, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %pci31 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %pci31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci31, align 4
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev32, ptr noundef nonnull @.str.88, i32 noundef %or6.i148) #10
  br label %out

if.end33:                                         ; preds = %if.then23
  %nport34 = getelementptr inbounds %struct.efc_domain, ptr %arg, i32 0, i32 26
  %28 = ptrtoint ptr %nport34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nport34, align 4
  %tobool35.not = icmp eq ptr %29, null
  br i1 %tobool35.not, label %if.end33.do.end42_crit_edge, label %lor.lhs.false36

if.end33.do.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

lor.lhs.false36:                                  ; preds = %if.end33
  %ref = getelementptr inbounds %struct.efc_nport, ptr %29, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #7
  %30 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %ref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.lhs.false36
  %32 = phi i32 [ %31, %lor.lhs.false36 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %33 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %32, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #7
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #7
  %34 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %36 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 %35, i32 %add.i.i.i.i, ptr elementtype(i32) %ref) #7, !srcloc !258
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %36, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %36, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %35
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !255

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %37 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %38, 1
  %39 = or i32 %add5.i.i.i.i, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %.not.i.i.i.i = icmp sgt i32 %39, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !255

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 0) #7
  %40 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %41 = phi i32 [ %38, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool12.i.i.i.i.not = icmp eq i32 %41, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.do.end42_crit_edge, label %kref_get_unless_zero.exit.if.end46_crit_edge

kref_get_unless_zero.exit.if.end46_crit_edge:     ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

kref_get_unless_zero.exit.do.end42_crit_edge:     ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

do.end42:                                         ; preds = %kref_get_unless_zero.exit.do.end42_crit_edge, %if.end33.do.end42_crit_edge
  %pci43 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %pci43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci43, align 4
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.91) #10
  br label %out

if.end46:                                         ; preds = %kref_get_unless_zero.exit.if.end46_crit_edge, %if.end.if.end46_crit_edge
  %nport.0 = phi ptr [ %call21, %if.end.if.end46_crit_edge ], [ %29, %kref_get_unless_zero.exit.if.end46_crit_edge ]
  %call47 = call ptr @efc_node_find(ptr noundef %nport.0, i32 noundef %or6.i) #7
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %if.then49, label %if.end46.if.end81_crit_edge

if.end46.if.end81_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then49:                                        ; preds = %if.end46
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %5, align 4
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %45, label %if.end71 [
    i8 1, label %if.then49.do.body59_crit_edge
    i8 3, label %if.then49.do.body59_crit_edge157
  ]

if.then49.do.body59_crit_edge157:                 ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body59

if.then49.do.body59_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body59

do.body59:                                        ; preds = %if.then49.do.body59_crit_edge, %if.then49.do.body59_crit_edge157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efc_domain_dispatch_frame.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efc_domain_dispatch_frame, %if.then65)) #7
          to label %out_release [label %if.then65], !srcloc !250

if.then65:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #9
  %pci66 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %47 = ptrtoint ptr %pci66 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pci66, align 4
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efc_domain_dispatch_frame.__UNIQUE_ID_ddebug343, ptr noundef %dev67, ptr noundef nonnull @.str.93) #7
  br label %out_release

if.end71:                                         ; preds = %if.then49
  %call72 = call ptr @efc_node_alloc(ptr noundef %nport.0, i32 noundef %or6.i, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %do.end77, label %if.end80

do.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %pci78 = getelementptr inbounds %struct.efc, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %pci78 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pci78, align 4
  %dev79 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev79, ptr noundef nonnull @.str.41) #10
  br label %out_release

if.end80:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  call void @efc_node_init_device(ptr noundef nonnull %call72, i1 noundef zeroext false) #7
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.end46.if.end81_crit_edge
  %node.0 = phi ptr [ %call47, %if.end46.if.end81_crit_edge ], [ %call72, %if.end80 ]
  %hold_frames = getelementptr inbounds %struct.efc_node, ptr %node.0, i32 0, i32 5
  %51 = ptrtoint ptr %hold_frames to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %hold_frames, align 8, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool82.not = icmp eq i8 %52, 0
  br i1 %tobool82.not, label %lor.lhs.false84, label %if.end81.if.then87_crit_edge

if.end81.if.then87_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87

lor.lhs.false84:                                  ; preds = %if.end81
  %pend_frames = getelementptr inbounds %struct.efc_node, ptr %node.0, i32 0, i32 31
  %53 = ptrtoint ptr %pend_frames to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %pend_frames, align 4
  %cmp.i.not = icmp eq ptr %54, %pend_frames
  br i1 %cmp.i.not, label %if.end91, label %lor.lhs.false84.if.then87_crit_edge

lor.lhs.false84.if.then87_crit_edge:              ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87

if.then87:                                        ; preds = %lor.lhs.false84.if.then87_crit_edge, %if.end81.if.then87_crit_edge
  %pend_frames_lock = getelementptr inbounds %struct.efc_node, ptr %node.0, i32 0, i32 30
  call void @_raw_spin_lock(ptr noundef %pend_frames_lock) #7
  %55 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %seq, ptr %seq, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %seq, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %seq, ptr %prev.i, align 4
  %pend_frames89 = getelementptr inbounds %struct.efc_node, ptr %node.0, i32 0, i32 31
  %prev.i151 = getelementptr inbounds %struct.efc_node, ptr %node.0, i32 0, i32 31, i32 1
  %57 = ptrtoint ptr %prev.i151 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i151, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %seq, ptr noundef %58, ptr noundef %pend_frames89) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then87.list_add_tail.exit_crit_edge

if.then87.list_add_tail.exit_crit_edge:           ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %prev.i151 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %seq, ptr %prev.i151, align 4
  %60 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %pend_frames89, ptr %seq, align 4
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %seq, ptr %58, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then87.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %pend_frames_lock) #7
  br label %out_release

if.end91:                                         ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #9
  call void @efc_node_dispatch_frame(ptr noundef nonnull %node.0, ptr noundef %seq)
  br label %out_release

out_release:                                      ; preds = %if.end91, %list_add_tail.exit, %do.end77, %if.then65, %do.body59
  %rc.0 = phi i32 [ 0, %list_add_tail.exit ], [ 1, %if.end91 ], [ 1, %if.then65 ], [ 1, %do.end77 ], [ 1, %do.body59 ]
  %ref92 = getelementptr inbounds %struct.efc_nport, ptr %nport.0, i32 0, i32 1
  %release = getelementptr inbounds %struct.efc_nport, ptr %nport.0, i32 0, i32 2
  %63 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %release, align 4
  %call.i.i.i.i.i.i152 = call zeroext i1 @__kasan_check_write(ptr noundef %ref92, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !253
  call void @llvm.prefetch.p0(ptr %ref92, i32 1, i32 3, i32 1) #7
  %65 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref92, ptr %ref92, i32 1, ptr elementtype(i32) %ref92) #7, !srcloc !254
  %asmresult.i.i.i.i.i.i.i153 = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i153)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i153, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out_release
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i153)
  %.not.i.i.i.i154 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i153, 0
  br i1 %.not.i.i.i.i154, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i155, !prof !255

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then10.i.i.i.i155:                             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %ref92, i32 noundef 3) #7
  br label %out

if.then.i:                                        ; preds = %out_release
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !256
  call void %64(ptr noundef %ref92) #7
  br label %out

out:                                              ; preds = %if.then.i, %if.then10.i.i.i.i155, %if.end5.i.i.i.i.out_crit_edge, %do.end42, %do.end30
  %rc.1 = phi i32 [ 1, %do.end30 ], [ 1, %do.end42 ], [ %rc.0, %if.end5.i.i.i.i.out_crit_edge ], [ %rc.0, %if.then10.i.i.i.i155 ], [ %rc.0, %if.then.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %rc.1, %out ], [ 1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efc_nport_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_init_device(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efc_node_dispatch_frame(ptr noundef %arg, ptr noundef %seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %header = getelementptr inbounds %struct.efc_hw_sequence, ptr %seq, i32 0, i32 3
  %0 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %header, align 4
  %dma = getelementptr inbounds %struct.efc_hw_rq_buffer, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma, align 4
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg, align 8
  %fh_s_id = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %fh_s_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fh_s_id, align 1
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr %struct.fc_frame_header, ptr %3, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %9 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr %struct.fc_frame_header, ptr %3, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %11 to i32
  %or6.i = or i32 %or.i, %conv5.i
  %fc_id = getelementptr inbounds %struct.efc_node, ptr %arg, i32 0, i32 17, i32 2
  %12 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fc_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or6.i, i32 %13)
  %cmp.not = icmp eq i32 %or6.i, %13
  br i1 %cmp.not, label %if.end22, label %do.end, !prof !255

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1032, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end22:                                         ; preds = %entry
  %fh_f_ctl = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %fh_f_ctl to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fh_f_ctl, align 1
  %16 = and i8 %15, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %16)
  %.not = icmp eq i8 %16, 9
  br i1 %.not, label %if.end42, label %do.end34

do.end34:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %pci = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_node, ptr %arg, i32 0, i32 1
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %3, align 4
  %arrayidx37 = getelementptr i32, ptr %3, i32 1
  %21 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx37, align 4
  %arrayidx38 = getelementptr i32, ptr %3, i32 2
  %23 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx38, align 4
  %arrayidx39 = getelementptr i32, ptr %3, i32 3
  %25 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx39, align 4
  %arrayidx40 = getelementptr i32, ptr %3, i32 4
  %27 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx40, align 4
  %arrayidx41 = getelementptr i32, ptr %3, i32 5
  %29 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx41, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.96, ptr noundef %display_name, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30) #10
  br label %cleanup

if.end42:                                         ; preds = %if.end22
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %3, align 4
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %32, label %do.end86 [
    i8 34, label %if.end42.sw.bb_crit_edge
    i8 35, label %if.end42.sw.bb_crit_edge141
    i8 -127, label %if.end42.do.end46_crit_edge
    i8 -124, label %if.end42.do.end46_crit_edge142
    i8 -123, label %if.end42.do.end46_crit_edge143
    i8 -128, label %if.end42.do.end46_crit_edge144
    i8 6, label %if.end42.sw.bb49_crit_edge
    i8 2, label %if.end42.sw.bb49_crit_edge145
  ]

if.end42.sw.bb49_crit_edge145:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb49

if.end42.sw.bb49_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb49

if.end42.do.end46_crit_edge144:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

if.end42.do.end46_crit_edge143:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

if.end42.do.end46_crit_edge142:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

if.end42.do.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

if.end42.sw.bb_crit_edge141:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end42.sw.bb_crit_edge:                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end42.sw.bb_crit_edge, %if.end42.sw.bb_crit_edge141
  tail call void @efc_node_recv_els_frame(ptr noundef %arg, ptr noundef %seq) #7
  br label %cleanup

do.end46:                                         ; preds = %if.end42.do.end46_crit_edge, %if.end42.do.end46_crit_edge142, %if.end42.do.end46_crit_edge143, %if.end42.do.end46_crit_edge144
  %pci47 = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 1
  %34 = ptrtoint ptr %pci47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci47, align 4
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.100) #10
  br label %cleanup

sw.bb49:                                          ; preds = %if.end42.sw.bb49_crit_edge, %if.end42.sw.bb49_crit_edge145
  %fh_type = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 4
  %36 = ptrtoint ptr %fh_type to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fh_type, align 4
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %37, label %sw.bb49.cleanup_crit_edge [
    i8 8, label %sw.bb51
    i8 32, label %sw.bb82
  ]

sw.bb49.cleanup_crit_edge:                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb51:                                          ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %32)
  %cond = icmp eq i8 %32, 6
  br i1 %cond, label %if.then57, label %sw.bb51.cleanup_crit_edge

sw.bb51.cleanup_crit_edge:                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then57:                                        ; preds = %sw.bb51
  %fcp_enabled = getelementptr inbounds %struct.efc_node, ptr %arg, i32 0, i32 10
  %39 = ptrtoint ptr %fcp_enabled to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fcp_enabled, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool58.not = icmp eq i8 %40, 0
  br i1 %tobool58.not, label %if.then59, label %do.end63

if.then59:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_node_recv_fcp_cmd(ptr noundef %arg, ptr noundef %seq) #7
  br label %cleanup

do.end63:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %pci64 = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 1
  %41 = ptrtoint ptr %pci64 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci64, align 4
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull @.str.103) #10
  br label %cleanup

sw.bb82:                                          ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @efc_node_recv_ct_frame(ptr noundef %arg, ptr noundef %seq) #7
  br label %cleanup

do.end86:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %32 to i32
  %pci87 = getelementptr inbounds %struct.efc, ptr %5, i32 0, i32 1
  %43 = ptrtoint ptr %pci87 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci87, align 4
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev88, ptr noundef nonnull @.str.109, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end86, %sw.bb82, %do.end63, %if.then59, %sw.bb51.cleanup_crit_edge, %sw.bb49.cleanup_crit_edge, %do.end46, %sw.bb, %do.end34, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_recv_els_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_recv_fcp_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_recv_ct_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !74, !76, !78, !79, !81, !82, !84, !85, !86, !88, !89, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !134, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !202, !203, !205, !206, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !230, !231, !232, !233, !235, !236, !237, !239, !240}
!llvm.module.flags = !{!241, !242, !243, !244, !245, !246, !247, !248}
!llvm.ident = !{!249}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 34, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @efc_domain_cb.__UNIQUE_ID_ddebug313, !1, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 41, i32 5}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @efc_domain_cb._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @efc_domain_cb._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 53, i32 3}
!14 = !{ptr @efc_domain_cb.__UNIQUE_ID_ddebug314, !13, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 59, i32 3}
!17 = !{ptr @efc_domain_cb.__UNIQUE_ID_ddebug315, !16, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 64, i32 3}
!20 = !{ptr @efc_domain_cb.__UNIQUE_ID_ddebug316, !19, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 70, i32 3}
!23 = !{ptr @efc_domain_cb.__UNIQUE_ID_ddebug317, !22, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 75, i32 3}
!26 = !{ptr @efc_domain_cb.__UNIQUE_ID_ddebug318, !25, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 81, i32 3}
!29 = !{ptr @efc_domain_cb.__UNIQUE_ID_ddebug319, !28, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 86, i32 3}
!32 = !{ptr @efc_domain_cb.__UNIQUE_ID_ddebug320, !31, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 91, i32 3}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @efc_domain_cb._entry.14, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @efc_domain_cb._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 125, i32 2}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @efc_domain_free.__UNIQUE_ID_ddebug321, !39, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 153, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @efc_domain_alloc.__UNIQUE_ID_ddebug322, !43, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 235, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @__efc_domain_init.__UNIQUE_ID_ddebug323, !47, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 252, i32 4}
!52 = !{ptr @__efc_domain_init.__UNIQUE_ID_ddebug324, !51, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 257, i32 3}
!55 = !{ptr @__efc_domain_init.__UNIQUE_ID_ddebug325, !54, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 265, i32 4}
!58 = !{ptr @__efc_domain_init._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @__efc_domain_init._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 276, i32 4}
!62 = !{ptr @__efc_domain_init._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @__efc_domain_init._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 296, i32 5}
!66 = !{ptr @__efc_domain_init._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @__efc_domain_init._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 304, i32 3}
!70 = !{ptr @__efc_domain_init.__UNIQUE_ID_ddebug326, !69, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!71 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 313, i32 5}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 318, i32 4}
!78 = !{ptr @__efc_domain_init.__UNIQUE_ID_ddebug327, !77, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 324, i32 6}
!81 = !{ptr @__efc_domain_init.__UNIQUE_ID_ddebug328, !80, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 331, i32 7}
!84 = !{ptr @__efc_domain_init._entry.40, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @__efc_domain_init._entry_ptr.42, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @__efc_domain_init._entry.43, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 344, i32 4}
!88 = !{ptr @__efc_domain_init._entry_ptr.44, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 362, i32 2}
!91 = !{ptr @__efc_domain_wait_alloc.__UNIQUE_ID_ddebug329, !90, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 414, i32 5}
!94 = !{ptr @__efc_domain_wait_alloc._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @__efc_domain_wait_alloc._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 421, i32 5}
!98 = !{ptr @__efc_domain_wait_alloc._entry.47, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @__efc_domain_wait_alloc._entry_ptr.49, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 436, i32 3}
!102 = !{ptr @__efc_domain_wait_alloc._entry.50, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @__efc_domain_wait_alloc._entry_ptr.52, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 438, i32 3}
!106 = !{ptr @__efc_domain_wait_alloc._entry.53, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @__efc_domain_wait_alloc._entry_ptr.55, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 447, i32 3}
!110 = !{ptr @__efc_domain_wait_alloc.__UNIQUE_ID_ddebug330, !109, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 464, i32 2}
!113 = !{ptr @__efc_domain_allocated.__UNIQUE_ID_ddebug331, !112, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 475, i32 3}
!116 = !{ptr @__efc_domain_allocated.__UNIQUE_ID_ddebug332, !115, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 481, i32 4}
!119 = !{ptr @__efc_domain_allocated._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @__efc_domain_allocated._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 492, i32 4}
!123 = !{ptr @__efc_domain_allocated._entry.60, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @__efc_domain_allocated._entry_ptr.62, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 503, i32 3}
!127 = !{ptr @__efc_domain_allocated._entry.63, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @__efc_domain_allocated._entry_ptr.65, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 508, i32 3}
!131 = !{ptr @__efc_domain_allocated.__UNIQUE_ID_ddebug333, !130, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 532, i32 5}
!134 = !{ptr @__efc_domain_allocated._entry.67, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @__efc_domain_allocated._entry_ptr.69, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 549, i32 2}
!138 = !{ptr @__efc_domain_wait_attach.__UNIQUE_ID_ddebug334, !137, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 592, i32 3}
!141 = !{ptr @__efc_domain_wait_attach.__UNIQUE_ID_ddebug335, !140, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!142 = !{ptr @__efc_domain_wait_attach._entry, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 599, i32 3}
!144 = !{ptr @__efc_domain_wait_attach._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 629, i32 2}
!147 = !{ptr @__efc_domain_ready.__UNIQUE_ID_ddebug336, !146, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 635, i32 4}
!150 = !{ptr @__efc_domain_ready.__UNIQUE_ID_ddebug337, !149, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!151 = !{ptr @__efc_domain_ready._entry, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 661, i32 5}
!153 = !{ptr @__efc_domain_ready._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @__efc_domain_ready._entry.74, !155, !"_entry", i1 false, i1 false}
!155 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 668, i32 3}
!156 = !{ptr @__efc_domain_ready._entry_ptr.75, !155, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 700, i32 2}
!159 = !{ptr @__efc_domain_wait_nports_free.__UNIQUE_ID_ddebug338, !158, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 713, i32 4}
!162 = !{ptr @__efc_domain_wait_nports_free._entry, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @__efc_domain_wait_nports_free._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 729, i32 2}
!166 = !{ptr @__efc_domain_wait_shutdown.__UNIQUE_ID_ddebug339, !165, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!167 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 745, i32 4}
!169 = !{ptr @__efc_domain_wait_shutdown.__UNIQUE_ID_ddebug340, !168, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!170 = !{ptr @__efc_domain_wait_shutdown._entry, !171, !"_entry", i1 false, i1 false}
!171 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 750, i32 5}
!172 = !{ptr @__efc_domain_wait_shutdown._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 779, i32 2}
!175 = !{ptr @__efc_domain_wait_domain_lost.__UNIQUE_ID_ddebug341, !174, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!176 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 808, i32 5}
!178 = !{ptr @__efc_domain_wait_domain_lost._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @__efc_domain_wait_domain_lost._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 814, i32 3}
!182 = !{ptr @__efc_domain_wait_domain_lost._entry.82, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @__efc_domain_wait_domain_lost._entry_ptr.84, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.85, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 949, i32 3}
!186 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @efc_domain_dispatch_frame._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @efc_domain_dispatch_frame._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 965, i32 4}
!191 = !{ptr @efc_domain_dispatch_frame._entry.87, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @efc_domain_dispatch_frame._entry_ptr.89, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 973, i32 4}
!195 = !{ptr @efc_domain_dispatch_frame._entry.90, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @efc_domain_dispatch_frame._entry_ptr.92, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.93, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 989, i32 4}
!199 = !{ptr @efc_domain_dispatch_frame.__UNIQUE_ID_ddebug343, !198, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!200 = !{ptr @efc_domain_dispatch_frame._entry.94, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 995, i32 4}
!202 = !{ptr @efc_domain_dispatch_frame._entry_ptr.95, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.96, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 1037, i32 3}
!205 = !{ptr @.str.97, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.98, !204, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @efc_node_dispatch_frame._entry, !204, !"_entry", i1 false, i1 false}
!208 = !{ptr @efc_node_dispatch_frame._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.100, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 1058, i32 3}
!211 = !{ptr @efc_node_dispatch_frame._entry.99, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @efc_node_dispatch_frame._entry_ptr.101, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.103, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 1070, i32 5}
!215 = !{ptr @efc_node_dispatch_frame._entry.102, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @efc_node_dispatch_frame._entry_ptr.104, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.106, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 1073, i32 5}
!219 = !{ptr @efc_node_dispatch_frame._entry.105, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @efc_node_dispatch_frame._entry_ptr.107, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.109, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 1086, i32 3}
!223 = !{ptr @efc_node_dispatch_frame._entry.108, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @efc_node_dispatch_frame._entry_ptr.110, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @xa_init_flags.__key, !226, !"__key", i1 false, i1 false}
!226 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!227 = !{ptr @.str.111, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.112, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 187, i32 3}
!230 = !{ptr @.str.113, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @__efc_domain_common._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @__efc_domain_common._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.114, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 215, i32 3}
!235 = !{ptr @__efc_domain_common_shutdown._entry, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @__efc_domain_common_shutdown._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.115, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/scsi/elx/libefc/efc_domain.c", i32 900, i32 3}
!239 = !{ptr @.str.116, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @efct_domain_process_pending.__UNIQUE_ID_ddebug342, !238, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!241 = !{i32 1, !"wchar_size", i32 2}
!242 = !{i32 1, !"min_enum_size", i32 4}
!243 = !{i32 8, !"branch-target-enforcement", i32 0}
!244 = !{i32 8, !"sign-return-address", i32 0}
!245 = !{i32 8, !"sign-return-address-all", i32 0}
!246 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!247 = !{i32 7, !"uwtable", i32 1}
!248 = !{i32 7, !"frame-pointer", i32 2}
!249 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!250 = !{i64 2148511945, i64 2148511950, i64 2148511963, i64 2148512007, i64 2148512041, i64 2148512062}
!251 = !{i8 0, i8 2}
!252 = !{!"branch_weights", i32 1, i32 2000}
!253 = !{i64 2148777685}
!254 = !{i64 2148692125, i64 2148692157, i64 2148692186, i64 2148692220, i64 2148692251, i64 2148692274}
!255 = !{!"branch_weights", i32 2000, i32 1}
!256 = !{i64 2150080526}
!257 = !{!"auto-init"}
!258 = !{i64 1173643, i64 1173667, i64 1173688, i64 1173705, i64 1173722}
