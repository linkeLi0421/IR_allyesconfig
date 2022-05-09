; ModuleID = '/llk/IR_all_yes/drivers/cxl/pci.c_pt.bc'
source_filename = "../drivers/cxl/pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.cxl_register_map = type { ptr, i64, i8, i8, %union.anon.76 }
%union.anon.76 = type { %struct.cxl_device_reg_map }
%struct.cxl_device_reg_map = type { %struct.cxl_reg_map, %struct.cxl_reg_map, %struct.cxl_reg_map }
%struct.cxl_reg_map = type { i8, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.71 = type { ptr }
%struct.cxl_dev_state = type { ptr, %struct.cxl_regs, i32, i32, %struct.mutex, [16 x i8], [1 x i32], [1 x i32], %struct.range, %struct.range, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.cxl_regs = type { %union.anon.77, %union.anon.79 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr, ptr }
%struct.range = type { i64, i64 }
%struct.cxl_mbox_cmd = type { i16, ptr, ptr, i32, i32, i16 }

@__UNIQUE_ID_file334 = internal constant [33 x i8] c"cxl_pci.file=drivers/cxl/cxl_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license335 = internal constant [23 x i8] c"cxl_pci.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_cxl_pci__336_547_cxl_pci_driver_init6 = internal global ptr @cxl_pci_driver_init, section ".initcall6.init", align 4
@cxl_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @cxl_mem_pci_tbl, ptr @cxl_pci_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cxl_pci_driver_exit = internal global ptr @cxl_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_import_ns337 = internal constant [22 x i8] c"cxl_pci.import_ns=CXL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cxl_pci\00", [24 x i8] zeroinitializer }, align 32
@cxl_mem_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 328208, i32 -1, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cxl_map_regblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 319, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BAR%d: %pr: too small (offset: %pa)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxl_map_regblock\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/cxl/pci.c\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cxl_map_regblock._entry_ptr = internal global ptr @cxl_map_regblock._entry, section ".printk_index", align 4
@cxl_map_regblock._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to map registers\0A\00", [39 x i8] zeroinitializer }, align 32
@cxl_map_regblock._entry_ptr.8 = internal global ptr @cxl_map_regblock._entry.6, section ".printk_index", align 4
@cxl_map_regblock.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 0, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Mapped CXL Memory Device resource bar %u @ %pa\0A\00", [48 x i8] zeroinitializer }, align 32
@cxl_probe_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 355, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"HDM decoder registers not found\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cxl_probe_regs\00", [17 x i8] zeroinitializer }, align 32
@cxl_probe_regs._entry_ptr = internal global ptr @cxl_probe_regs._entry, section ".printk_index", align 4
@cxl_probe_regs.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Set up component registers\0A\00", [36 x i8] zeroinitializer }, align 32
@cxl_probe_regs._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.3, i32 369, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"registers not found: %s%s%s\0A\00", [35 x i8] zeroinitializer }, align 32
@cxl_probe_regs._entry_ptr.15 = internal global ptr @cxl_probe_regs._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"status \00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mbox \00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"memdev \00", [24 x i8] zeroinitializer }, align 32
@cxl_probe_regs.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.3, ptr @.str.20, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Probing device registers...\0A\00", [35 x i8] zeroinitializer }, align 32
@cxl_map_regs.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cxl_map_regs\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Mapping component registers...\0A\00", [32 x i8] zeroinitializer }, align 32
@cxl_map_regs.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.3, ptr @.str.20, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cxl_pci_setup_mailbox._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 299, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Mailbox is too small (%zub)\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxl_pci_setup_mailbox\00", [42 x i8] zeroinitializer }, align 32
@cxl_pci_setup_mailbox._entry_ptr = internal global ptr @cxl_pci_setup_mailbox._entry, section ".printk_index", align 4
@cxl_pci_setup_mailbox.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Mailbox payload sized %zu\00", [38 x i8] zeroinitializer }, align 32
@cxl_pci_mbox_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 219, ptr @.str.28, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Mailbox interface not ready\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxl_pci_mbox_get\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cxl_pci_mbox_get._entry_ptr = internal global ptr @cxl_pci_mbox_get._entry, section ".printk_index", align 4
@cxl_pci_mbox_get._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.3, i32 225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"mbox: reported doorbell ready, but not mbox ready\0A\00", [45 x i8] zeroinitializer }, align 32
@cxl_pci_mbox_get._entry_ptr.31 = internal global ptr @cxl_pci_mbox_get._entry.29, section ".printk_index", align 4
@cxl_pci_mbox_get._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.27, ptr @.str.3, i32 236, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mbox: reported ready, but fatal\0A\00", [63 x i8] zeroinitializer }, align 32
@cxl_pci_mbox_get._entry_ptr.34 = internal global ptr @cxl_pci_mbox_get._entry.32, section ".printk_index", align 4
@cxl_pci_mbox_get._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.27, ptr @.str.3, i32 240, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mbox: reported ready, but halted\0A\00", [62 x i8] zeroinitializer }, align 32
@cxl_pci_mbox_get._entry_ptr.37 = internal global ptr @cxl_pci_mbox_get._entry.35, section ".printk_index", align 4
@cxl_pci_mbox_get._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.27, ptr @.str.3, i32 244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mbox: reported ready, but reset needed\0A\00", [56 x i8] zeroinitializer }, align 32
@cxl_pci_mbox_get._entry_ptr.40 = internal global ptr @cxl_pci_mbox_get._entry.38, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cxl_pci_mbox_wait_for_doorbell.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cxl_pci_mbox_wait_for_doorbell\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Doorbell wait took %dms\00", [40 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__cxl_pci_mbox_send_cmd._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.__cxl_pci_mbox_send_cmd = private unnamed_addr constant [24 x i8] c"__cxl_pci_mbox_send_cmd\00", align 1
@__cxl_pci_mbox_send_cmd._entry = internal constant %struct.pi_entry { ptr @.str.44, ptr @__func__.__cxl_pci_mbox_send_cmd, ptr @.str.3, i32 121, ptr @.str.4, ptr @.str.5 }, align 1
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Mailbox re-busy after acquiring\0A\00", [63 x i8] zeroinitializer }, align 32
@__cxl_pci_mbox_send_cmd._entry_ptr = internal global ptr @__cxl_pci_mbox_send_cmd._entry, section ".printk_index", align 4
@__cxl_pci_mbox_send_cmd.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__cxl_pci_mbox_send_cmd, ptr @.str.3, ptr @.str.45, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Sending command\0A\00", [47 x i8] zeroinitializer }, align 32
@__cxl_pci_mbox_send_cmd.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.__cxl_pci_mbox_send_cmd, ptr @.str.3, ptr @.str.46, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Mailbox operation had an error\0A\00", [32 x i8] zeroinitializer }, align 32
@cxl_pci_mbox_timeout.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxl_pci_mbox_timeout\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Mailbox command (opcode: %#x size: %zub) timed out\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"cxl_pci_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 537, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 547, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [16 x i8] c"cxl_mem_pci_tbl\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 530, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 318, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 325, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 329, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 355, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 359, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 366, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 373, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 390, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 298, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 303, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 219, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 225, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 236, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 240, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 244, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 55, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 121, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 140, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 157, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [21 x i8] c"../drivers/cxl/pci.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 65, i32 2 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_file334, ptr @__UNIQUE_ID_import_ns337, ptr @__UNIQUE_ID_license335, ptr @__cxl_pci_mbox_send_cmd._entry, ptr @__cxl_pci_mbox_send_cmd._entry_ptr, ptr @__exitcall_cxl_pci_driver_exit, ptr @__initcall__kmod_cxl_pci__336_547_cxl_pci_driver_init6, ptr @cxl_map_regblock._entry, ptr @cxl_map_regblock._entry.6, ptr @cxl_map_regblock._entry_ptr, ptr @cxl_map_regblock._entry_ptr.8, ptr @cxl_pci_driver_exit, ptr @cxl_pci_mbox_get._entry, ptr @cxl_pci_mbox_get._entry.29, ptr @cxl_pci_mbox_get._entry.32, ptr @cxl_pci_mbox_get._entry.35, ptr @cxl_pci_mbox_get._entry.38, ptr @cxl_pci_mbox_get._entry_ptr, ptr @cxl_pci_mbox_get._entry_ptr.31, ptr @cxl_pci_mbox_get._entry_ptr.34, ptr @cxl_pci_mbox_get._entry_ptr.37, ptr @cxl_pci_mbox_get._entry_ptr.40, ptr @cxl_pci_setup_mailbox._entry, ptr @cxl_pci_setup_mailbox._entry_ptr, ptr @cxl_probe_regs._entry, ptr @cxl_probe_regs._entry.13, ptr @cxl_probe_regs._entry_ptr, ptr @cxl_probe_regs._entry_ptr.15, ptr @cxl_pci_driver, ptr @.str, ptr @cxl_mem_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_mem_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_map_regblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_map_regblock._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_probe_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_probe_regs._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_pci_setup_mailbox._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_pci_mbox_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_pci_mbox_get._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_pci_mbox_get._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_pci_mbox_get._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_pci_mbox_get._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cxl_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @cxl_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cxl_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @cxl_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxl_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %regloc_size.i.i = alloca i32, align 4
  %reg_lo.i.i = alloca i32, align 4
  %reg_hi.i.i = alloca i32, align 4
  %map = alloca %struct.cxl_register_map, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %map) #6
  %0 = call ptr @memset(ptr %map, i32 255, i32 56)
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call1 = tail call ptr @cxl_dev_state_create(ptr noundef %dev) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regloc_size.i.i) #6
  %2 = ptrtoint ptr %regloc_size.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regloc_size.i.i, align 4, !annotation !113
  %call.i.i = tail call zeroext i16 @pci_find_dvsec_capability(ptr noundef %pdev, i16 noundef zeroext 7832, i16 noundef zeroext 8) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.i)
  %tobool.not.i.i = icmp eq i16 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end5.cxl_find_regblock.exit.thread.i_crit_edge, label %if.end.i.i

if.end5.cxl_find_regblock.exit.thread.i_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxl_find_regblock.exit.thread.i

if.end.i.i:                                       ; preds = %if.end5
  %conv.i.i = zext i16 %call.i.i to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 4
  %call1.i.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add.i.i, ptr noundef nonnull %regloc_size.i.i) #6
  %3 = ptrtoint ptr %regloc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regloc_size.i.i, align 4
  %shr.i.i = lshr i32 %4, 20
  store i32 %shr.i.i, ptr %regloc_size.i.i, align 4
  %sub.i.i = add nsw i32 %shr.i.i, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i)
  %cmp2.not.i.i = icmp ult i32 %sub.i.i, 8
  br i1 %cmp2.not.i.i, label %if.end.i.i.cxl_find_regblock.exit.thread.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.cxl_find_regblock.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxl_find_regblock.exit.thread.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %div1.i.i = lshr i32 %sub.i.i, 3
  %add14.i.i = add nuw nsw i32 %conv.i.i, 12
  %block_offset.i.i.i = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 1
  %barno.i.i.i = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 3
  %reg_type.i.i.i = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 2
  %umax.i.i = call i32 @llvm.umax.i32(i32 %div1.i.i, i32 1) #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.04.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %regloc.03.i.i = phi i32 [ %add14.i.i, %for.body.lr.ph.i.i ], [ %add25.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_lo.i.i) #6
  %5 = ptrtoint ptr %reg_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %reg_lo.i.i, align 4, !annotation !113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_hi.i.i) #6
  %6 = ptrtoint ptr %reg_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg_hi.i.i, align 4, !annotation !113
  %call16.i.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %regloc.03.i.i, ptr noundef nonnull %reg_lo.i.i) #6
  %add17.i.i = add i32 %regloc.03.i.i, 4
  %call18.i.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add17.i.i, ptr noundef nonnull %reg_hi.i.i) #6
  %7 = ptrtoint ptr %reg_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_lo.i.i, align 4
  %9 = ptrtoint ptr %reg_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_hi.i.i, align 4
  %conv.i.i.i = zext i32 %10 to i64
  %shl.i.i.i = shl nuw i64 %conv.i.i.i, 32
  %and.i.i.i = and i32 %8, -65536
  %conv1.i.i.i = zext i32 %and.i.i.i to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv1.i.i.i
  %11 = ptrtoint ptr %block_offset.i.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %or.i.i.i, ptr %block_offset.i.i.i, align 8
  %12 = trunc i32 %8 to i8
  %conv11.i.i.i = and i8 %12, 7
  %13 = ptrtoint ptr %barno.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv11.i.i.i, ptr %barno.i.i.i, align 1
  %and23.i.i.i = lshr i32 %8, 8
  %conv25.i.i.i = trunc i32 %and23.i.i.i to i8
  %14 = ptrtoint ptr %reg_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv25.i.i.i, ptr %reg_type.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv25.i.i.i)
  %cmp20.i.i = icmp eq i8 %conv25.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_hi.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_lo.i.i) #6
  br i1 %cmp20.i.i, label %if.end.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.04.i.i, 1
  %add25.i.i = add i32 %regloc.03.i.i, 8
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cxl_find_regblock.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.cxl_find_regblock.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxl_find_regblock.exit.thread.i

cxl_find_regblock.exit.thread.i:                  ; preds = %for.inc.i.i.cxl_find_regblock.exit.thread.i_crit_edge, %if.end.i.i.cxl_find_regblock.exit.thread.i_crit_edge, %if.end5.cxl_find_regblock.exit.thread.i_crit_edge
  %retval.2.i.ph.i = phi i32 [ -19, %if.end.i.i.cxl_find_regblock.exit.thread.i_crit_edge ], [ -6, %if.end5.cxl_find_regblock.exit.thread.i_crit_edge ], [ -19, %for.inc.i.i.cxl_find_regblock.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regloc_size.i.i) #6
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regloc_size.i.i) #6
  %call1.i = call fastcc i32 @cxl_map_regblock(ptr noundef %pdev, ptr noundef nonnull %map) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %cxl_setup_regs.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cxl_setup_regs.exit:                              ; preds = %if.end.i
  %call5.i = call fastcc i32 @cxl_probe_regs(ptr noundef %pdev, ptr noundef nonnull %map) #6
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 8
  %17 = ptrtoint ptr %block_offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %block_offset.i.i.i, align 8
  %idx.ext.i.i = trunc i64 %18 to i32
  %idx.neg.i.i = sub i32 0, %idx.ext.i.i
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %idx.neg.i.i
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef %add.ptr.i.i) #6
  %19 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %map, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool7.not = icmp eq i32 %call5.i, 0
  br i1 %tobool7.not, label %if.end9, label %cxl_setup_regs.exit.cleanup_crit_edge

cxl_setup_regs.exit.cleanup_crit_edge:            ; preds = %cxl_setup_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %cxl_setup_regs.exit
  %20 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call1, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 -136
  %22 = ptrtoint ptr %reg_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg_type.i.i.i, align 8
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i8 %23, label %if.end9.cxl_map_regs.exit_crit_edge [
    i8 1, label %sw.bb.i
    i8 3, label %sw.bb6.i
  ]

if.end9.cxl_map_regs.exit_crit_edge:              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cxl_map_regs.exit

sw.bb.i:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i = getelementptr inbounds %struct.cxl_dev_state, ptr %call1, i32 0, i32 1
  %call.i = call i32 @cxl_map_component_regs(ptr noundef %add.ptr.i, ptr noundef %regs.i, ptr noundef nonnull %map) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_map_regs.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_pci_probe, %if.then.i)) #6
          to label %cxl_map_regs.exit [label %if.then.i], !srcloc !114

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_map_regs.__UNIQUE_ID_ddebug316, ptr noundef %21, ptr noundef nonnull @.str.22) #6
  br label %cxl_map_regs.exit

sw.bb6.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %25 = getelementptr inbounds %struct.cxl_dev_state, ptr %call1, i32 0, i32 1, i32 1
  %call8.i = call i32 @cxl_map_device_regs(ptr noundef %add.ptr.i, ptr noundef %25, ptr noundef nonnull %map) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_map_regs.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_pci_probe, %if.then21.i)) #6
          to label %cxl_map_regs.exit [label %if.then21.i], !srcloc !114

if.then21.i:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_map_regs.__UNIQUE_ID_ddebug317, ptr noundef %21, ptr noundef nonnull @.str.20) #6
  br label %cxl_map_regs.exit

cxl_map_regs.exit:                                ; preds = %if.then21.i, %sw.bb6.i, %if.then.i, %sw.bb.i, %if.end9.cxl_map_regs.exit_crit_edge
  %mbox.i = getelementptr inbounds %struct.cxl_dev_state, ptr %call1, i32 0, i32 1, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %mbox.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mbox.i, align 4
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #6, !srcloc !115
  %29 = lshr i32 %28, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %mbox_send.i = getelementptr inbounds %struct.cxl_dev_state, ptr %call1, i32 0, i32 18
  %30 = ptrtoint ptr %mbox_send.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @cxl_pci_mbox_send, ptr %mbox_send.i, align 8
  %and.i = and i32 %29, 31
  %shl.i = shl nuw i32 1, %and.i
  %payload_size.i = getelementptr inbounds %struct.cxl_dev_state, ptr %call1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and.i)
  %cmp.i69 = icmp ult i32 %and.i, 20
  %shl..i = select i1 %cmp.i69, i32 %shl.i, i32 1048576
  %31 = ptrtoint ptr %payload_size.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shl..i, ptr %payload_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %shl..i)
  %cmp19.i = icmp ult i32 %shl..i, 256
  br i1 %cmp19.i, label %cxl_pci_setup_mailbox.exit.thread76, label %do.body24.i

cxl_pci_setup_mailbox.exit.thread76:              ; preds = %cxl_map_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.23, i32 noundef %shl..i) #9
  br label %cleanup

do.body24.i:                                      ; preds = %cxl_map_regs.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_pci_setup_mailbox.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_pci_probe, %cxl_pci_setup_mailbox.exit.thread)) #6
          to label %if.end17 [label %cxl_pci_setup_mailbox.exit.thread], !srcloc !114

cxl_pci_setup_mailbox.exit.thread:                ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call1, align 8
  %36 = ptrtoint ptr %payload_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %payload_size.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_pci_setup_mailbox.__UNIQUE_ID_ddebug312, ptr noundef %35, ptr noundef nonnull @.str.25, i32 noundef %37) #6
  br label %if.end17

if.end17:                                         ; preds = %cxl_pci_setup_mailbox.exit.thread, %do.body24.i
  %call18 = call i32 @cxl_enumerate_cmds(ptr noundef %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %call22 = call i32 @cxl_dev_state_identify(ptr noundef %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %call26 = call i32 @cxl_mem_create_range_info(ptr noundef %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = call ptr @devm_cxl_add_memdev(ptr noundef %call1) #6
  %cmp.i71 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  %38 = ptrtoint ptr %call30 to i32
  %spec.select = select i1 %cmp.i71, i32 %38, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %cxl_pci_setup_mailbox.exit.thread76, %cxl_setup_regs.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %cxl_find_regblock.exit.thread.i, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ %call5.i, %cxl_setup_regs.exit.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ -6, %cxl_pci_setup_mailbox.exit.thread76 ], [ %retval.2.i.ph.i, %cxl_find_regblock.exit.thread.i ], [ %call1.i, %if.end.i.cleanup_crit_edge ], [ %spec.select, %if.end29 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %map) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxl_dev_state_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxl_enumerate_cmds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxl_dev_state_identify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxl_mem_create_range_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_cxl_add_memdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxl_map_regblock(ptr noundef %pdev, ptr nocapture noundef %map) unnamed_addr #2 align 64 {
entry:
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %barno = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %barno to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %barno, align 1
  %conv = zext i8 %1 to i32
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #6
  %block_offset = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 1
  %2 = ptrtoint ptr %block_offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %block_offset, align 8
  %conv2 = trunc i64 %3 to i32
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv2, ptr %offset, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %conv
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %conv, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %6, 1
  %add = sub i32 %sub, %8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv2)
  %cmp9 = icmp ult i32 %cond, %conv2
  br i1 %cmp9, label %do.end, label %if.end

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %conv, ptr noundef %arrayidx, ptr noundef nonnull %offset) #9
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %call = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef %conv, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end16, label %do.body18

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

do.body18:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_map_regblock.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_map_regblock, %if.then23)) #6
          to label %do.end26 [label %if.then23], !srcloc !114

if.then23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_map_regblock.__UNIQUE_ID_ddebug313, ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %conv, ptr noundef nonnull %offset) #6
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body18
  %9 = ptrtoint ptr %block_offset to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %block_offset, align 8
  %idx.ext = trunc i64 %10 to i32
  %add.ptr = getelementptr i8, ptr %call, i32 %idx.ext
  %11 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %map, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %do.end16, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %do.end26 ], [ -12, %do.end16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxl_probe_regs(ptr noundef %pdev, ptr noundef %map) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %reg_type = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 2
  %2 = ptrtoint ptr %reg_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_type, align 8
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 3, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 4
  tail call void @cxl_probe_component_regs(ptr noundef %dev1, ptr noundef %1, ptr noundef %5) #6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.end, label %do.body3

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %cleanup

do.body3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_probe_regs.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_probe_regs, %if.then7)) #6
          to label %cleanup [label %if.then7], !srcloc !114

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_probe_regs.__UNIQUE_ID_ddebug314, ptr noundef %dev1, ptr noundef nonnull @.str.12) #6
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %8 = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 4
  tail call void @cxl_probe_device_regs(ptr noundef %dev1, ptr noundef %1, ptr noundef %8) #6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  br i1 %tobool13.not, label %sw.bb11.do.end22_crit_edge, label %lor.lhs.false

sw.bb11.do.end22_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

lor.lhs.false:                                    ; preds = %sw.bb11
  %mbox = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %mbox to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mbox, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool15.not = icmp eq i8 %12, 0
  br i1 %tobool15.not, label %lor.lhs.false.do.end22_crit_edge, label %lor.lhs.false16

lor.lhs.false.do.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %memdev = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 4, i32 0, i32 2
  %13 = ptrtoint ptr %memdev to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %memdev, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool18.not = icmp eq i8 %14, 0
  br i1 %tobool18.not, label %lor.lhs.false16.do.end22_crit_edge, label %do.body41

lor.lhs.false16.do.end22_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

do.end22:                                         ; preds = %lor.lhs.false16.do.end22_crit_edge, %lor.lhs.false.do.end22_crit_edge, %sw.bb11.do.end22_crit_edge
  %cond = phi ptr [ @.str.16, %sw.bb11.do.end22_crit_edge ], [ @.str.17, %lor.lhs.false.do.end22_crit_edge ], [ @.str.17, %lor.lhs.false16.do.end22_crit_edge ]
  %mbox28 = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 4, i32 0, i32 1
  %15 = ptrtoint ptr %mbox28 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mbox28, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool30.not = icmp eq i8 %16, 0
  %cond33 = select i1 %tobool30.not, ptr @.str.18, ptr @.str.17
  %memdev34 = getelementptr inbounds %struct.cxl_register_map, ptr %map, i32 0, i32 4, i32 0, i32 2
  %17 = ptrtoint ptr %memdev34 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %memdev34, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool36.not = icmp eq i8 %18, 0
  %cond39 = select i1 %tobool36.not, ptr @.str.19, ptr @.str.17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond, ptr noundef nonnull %cond33, ptr noundef nonnull %cond39) #9
  br label %cleanup

do.body41:                                        ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_probe_regs.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_probe_regs, %if.then53)) #6
          to label %cleanup [label %if.then53], !srcloc !114

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_probe_regs.__UNIQUE_ID_ddebug315, ptr noundef %dev1, ptr noundef nonnull @.str.20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %do.body41, %do.end22, %if.then7, %do.body3, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end22 ], [ -6, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then53 ], [ 0, %if.then7 ], [ 0, %do.body3 ], [ 0, %do.body41 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_dvsec_capability(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxl_probe_component_regs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxl_probe_device_regs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxl_map_component_regs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxl_map_device_regs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxl_pci_mbox_send(ptr noundef %cxlds, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cxlds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cxlds, align 8
  %mbox_mutex.i = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 4
  tail call void @mutex_lock_io_nested(ptr noundef %mbox_mutex.i, i32 noundef 0) #6
  %call.i = tail call fastcc i32 @cxl_pci_mbox_wait_for_doorbell(ptr noundef %cxlds) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %memdev.i = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 1, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %memdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memdev.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  %6 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %7 = zext i32 %6 to i64
  %8 = and i64 %7, 28
  call void @__sanitizer_cov_trace_const_cmp8(i64 20, i64 %8)
  %9 = icmp eq i64 %8, 20
  br i1 %9, label %if.end25.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.30) #9
  br label %cleanup

if.end25.i:                                       ; preds = %if.end.i
  %and26.i = and i64 %7, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and26.i)
  %tobool27.not.i = icmp eq i64 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end32.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.33) #9
  br label %cleanup

if.end32.i:                                       ; preds = %if.end25.i
  %and33.i = and i64 %7, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33.i)
  %tobool34.not.i = icmp eq i64 %and33.i, 0
  br i1 %tobool34.not.i, label %do.end54.i, label %do.end38.i

do.end38.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.36) #9
  br label %cleanup

do.end54.i:                                       ; preds = %if.end32.i
  %10 = and i64 %7, 224
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp59.not.i = icmp eq i64 %10, 0
  br i1 %cmp59.not.i, label %if.end, label %do.end64.i

do.end64.i:                                       ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.39) #9
  br label %cleanup

if.end:                                           ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @__cxl_pci_mbox_send_cmd(ptr noundef %cxlds, ptr noundef %cmd)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end64.i, %do.end38.i, %do.end31.i, %do.end24.i, %do.end.i
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i, %do.end.i ], [ -14, %do.end31.i ], [ -14, %do.end38.i ], [ -14, %do.end64.i ], [ -16, %do.end24.i ]
  tail call void @mutex_unlock(ptr noundef %mbox_mutex.i) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__cxl_pci_mbox_send_cmd(ptr noundef %cxlds, ptr nocapture noundef %mbox_cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 1, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = ptrtoint ptr %cxlds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cxlds, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 4, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !120

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 100, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mbox, align 4
  %add.ptr27 = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool31.not = icmp eq i32 %8, 0
  br i1 %tobool31.not, label %do.body50, label %do.body33

do.body33:                                        ; preds = %if.end
  %call34 = tail call i32 @___ratelimit(ptr noundef nonnull @__cxl_pci_mbox_send_cmd._rs, ptr noundef nonnull @__func__.__cxl_pci_mbox_send_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.body33.cleanup_crit_edge, label %do.end39

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.44) #9
  br label %cleanup

do.body50:                                        ; preds = %if.end
  %9 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mbox_cmd, align 4
  %conv66 = zext i16 %10 to i32
  %size_in = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd, i32 0, i32 3
  %11 = ptrtoint ptr %size_in to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool68.not = icmp eq i32 %12, 0
  br i1 %tobool68.not, label %do.body50.if.end137_crit_edge, label %if.then69

do.body50.if.end137_crit_edge:                    ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

if.then69:                                        ; preds = %do.body50
  %payload_in = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd, i32 0, i32 1
  %13 = ptrtoint ptr %payload_in to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %payload_in, align 4
  %tobool71.not = icmp eq ptr %14, null
  br i1 %tobool71.not, label %do.end89, label %do.end129, !prof !120

do.end89:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 128, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.end129:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  %shl133 = shl i32 %12, 16
  %or = or i32 %shl133, %conv66
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef nonnull %14, i32 noundef %12) #6
  %15 = shl i32 %12, 8
  %phi.bo = and i32 %15, 520093696
  br label %if.end137

if.end137:                                        ; preds = %do.end129, %do.body50.if.end137_crit_edge
  %cmd_reg.0.off0 = phi i32 [ %or, %do.end129 ], [ %conv66, %do.body50.if.end137_crit_edge ]
  %cmd_reg.0.off32 = phi i32 [ %phi.bo, %do.end129 ], [ 0, %do.body50.if.end137_crit_edge ]
  %16 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mbox, align 4
  %add.ptr140 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %cmd_reg.0.off0) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140, i32 %18) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %cmd_reg.0.off32) #6, !srcloc !123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cxl_pci_mbox_send_cmd.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__cxl_pci_mbox_send_cmd, %if.then151)) #6
          to label %do.body155 [label %if.then151], !srcloc !114

if.then151:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__cxl_pci_mbox_send_cmd.__UNIQUE_ID_ddebug279, ptr noundef %3, ptr noundef nonnull @.str.45) #6
  br label %do.body155

do.body155:                                       ; preds = %if.then151, %if.end137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mbox, align 4
  %add.ptr160 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160, i32 16777216) #6, !srcloc !123
  %call161 = tail call fastcc i32 @cxl_pci_mbox_wait_for_doorbell(ptr noundef %cxlds)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call161)
  %cmp162 = icmp eq i32 %call161, -110
  br i1 %cmp162, label %if.then164, label %if.end165

if.then164:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %cxlds to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cxlds, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_pci_mbox_timeout.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__cxl_pci_mbox_send_cmd, %if.then.i)) #6
          to label %cleanup [label %if.then.i], !srcloc !114

if.then.i:                                        ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mbox_cmd, align 4
  %conv.i303 = zext i16 %24 to i32
  %25 = ptrtoint ptr %size_in to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size_in, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_pci_mbox_timeout.__UNIQUE_ID_ddebug268, ptr noundef %22, ptr noundef nonnull @.str.48, i32 noundef %conv.i303, i32 noundef %26) #6
  br label %cleanup

if.end165:                                        ; preds = %do.body155
  %27 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mbox, align 4
  %add.ptr168 = getelementptr i8, ptr %28, i32 16
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr168) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %add.ptr.i304 = getelementptr i8, ptr %28, i32 20
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i304) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  %31 = zext i32 %30 to i64
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #6
  %and186 = lshr exact i64 %32, 32
  %conv187 = trunc i64 %and186 to i16
  %return_code = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd, i32 0, i32 5
  %33 = ptrtoint ptr %return_code to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv187, ptr %return_code, align 4
  %34 = and i64 %32, 281470681743360
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %cmp190.not = icmp eq i64 %34, 0
  br i1 %cmp190.not, label %if.end209, label %do.body193

do.body193:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cxl_pci_mbox_send_cmd.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__cxl_pci_mbox_send_cmd, %if.then205)) #6
          to label %cleanup [label %if.then205], !srcloc !114

if.then205:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__cxl_pci_mbox_send_cmd.__UNIQUE_ID_ddebug285, ptr noundef %3, ptr noundef nonnull @.str.46) #6
  br label %cleanup

if.end209:                                        ; preds = %if.end165
  %35 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mbox, align 4
  %add.ptr212 = getelementptr i8, ptr %36, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr212) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %add.ptr.i305 = getelementptr i8, ptr %36, i32 12
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i305) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  %39 = zext i32 %38 to i64
  %40 = zext i32 %37 to i64
  %41 = shl nuw i64 %40, 32
  %42 = or i64 %41, %39
  %43 = tail call i64 @llvm.bswap.i64(i64 %42) #6
  %and230 = lshr i64 %43, 16
  %44 = trunc i64 %and230 to i32
  %conv232 = and i32 %44, 2097151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv232)
  %tobool233.not = icmp eq i32 %conv232, 0
  br i1 %tobool233.not, label %if.end209.if.else_crit_edge, label %land.lhs.true

if.end209.if.else_crit_edge:                      ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end209
  %payload_out = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd, i32 0, i32 2
  %45 = ptrtoint ptr %payload_out to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %payload_out, align 4
  %tobool234.not = icmp eq ptr %46, null
  br i1 %tobool234.not, label %land.lhs.true.if.else_crit_edge, label %if.then235

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then235:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %size_out = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd, i32 0, i32 4
  %47 = ptrtoint ptr %size_out to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size_out, align 4
  %payload_size = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 2
  %49 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %payload_size, align 4
  %51 = tail call i32 @llvm.umin.i32(i32 %48, i32 %50)
  %52 = tail call i32 @llvm.umin.i32(i32 %51, i32 %conv232)
  tail call void @mmiocpy(ptr noundef nonnull %46, ptr noundef %add.ptr, i32 noundef %52) #6
  %53 = ptrtoint ptr %size_out to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %size_out, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end209.if.else_crit_edge
  %size_out250 = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd, i32 0, i32 4
  %54 = ptrtoint ptr %size_out250 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %size_out250, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then235, %if.then205, %do.body193, %if.then.i, %if.then164, %do.end89, %do.end39, %do.body33.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end89 ], [ -16, %do.end39 ], [ -16, %do.body33.cleanup_crit_edge ], [ 0, %if.then205 ], [ 0, %if.else ], [ 0, %if.then235 ], [ -110, %if.then164 ], [ -110, %if.then.i ], [ 0, %do.body193 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_io_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxl_pci_mbox_wait_for_doorbell(ptr nocapture noundef readonly %cxlds) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %mbox = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 1, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mbox, align 4
  %add.ptr42 = getelementptr i8, ptr %2, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not43 = icmp eq i32 %4, 0
  br i1 %tobool.not43, label %entry.do.body20_crit_edge, label %while.body.lr.ph

entry.do.body20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

while.body.lr.ph:                                 ; preds = %entry
  %add = add i32 %0, 200
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %while.body
  %6 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mbox, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %if.then.do.body20_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.do.body20_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

do.end:                                           ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !129
  %10 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mbox, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  %13 = and i32 %12, 16777216
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %do.end.do.body20_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.end.do.body20_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

do.body20:                                        ; preds = %do.end.do.body20_crit_edge, %if.then.do.body20_crit_edge, %entry.do.body20_crit_edge
  %end.1 = phi i32 [ %5, %if.then.do.body20_crit_edge ], [ %0, %entry.do.body20_crit_edge ], [ %5, %do.end.do.body20_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_pci_mbox_wait_for_doorbell.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_pci_mbox_wait_for_doorbell, %if.then26)) #6
          to label %cleanup [label %if.then26], !srcloc !114

if.then26:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %cxlds to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cxlds, align 8
  %call27 = tail call i32 @jiffies_to_msecs(i32 noundef %end.1) #6
  %call28 = tail call i32 @jiffies_to_msecs(i32 noundef %0) #6
  %sub29 = sub i32 %call27, %call28
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_pci_mbox_wait_for_doorbell.__UNIQUE_ID_ddebug267, ptr noundef %15, ptr noundef nonnull @.str.42, i32 noundef %sub29) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %do.body20, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %do.body20 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !32, !33, !35, !36, !38, !39, !40, !41, !42, !43, !44, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !63, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !93, !94, !96, !97, !99, !100, !102, !103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__UNIQUE_ID_file334, !1, !"__UNIQUE_ID_file334", i1 false, i1 false}
!1 = !{!"../drivers/cxl/pci.c", i32 546, i32 1}
!2 = !{ptr @__UNIQUE_ID_license335, !1, !"__UNIQUE_ID_license335", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_cxl_pci__336_547_cxl_pci_driver_init6, !4, !"__initcall__kmod_cxl_pci__336_547_cxl_pci_driver_init6", i1 false, i1 false}
!4 = !{!"../drivers/cxl/pci.c", i32 547, i32 1}
!5 = !{ptr @__exitcall_cxl_pci_driver_exit, !4, !"__exitcall_cxl_pci_driver_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_import_ns337, !7, !"__UNIQUE_ID_import_ns337", i1 false, i1 false}
!7 = !{!"../drivers/cxl/pci.c", i32 548, i32 1}
!8 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cxl_pci_driver, !10, !"cxl_pci_driver", i1 false, i1 false}
!10 = !{!"../drivers/cxl/pci.c", i32 537, i32 26}
!11 = !{ptr @cxl_mem_pci_tbl, !12, !"cxl_mem_pci_tbl", i1 false, i1 false}
!12 = !{!"../drivers/cxl/pci.c", i32 530, i32 35}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/cxl/pci.c", i32 318, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cxl_map_regblock._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @cxl_map_regblock._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/cxl/pci.c", i32 325, i32 3}
!23 = !{ptr @cxl_map_regblock._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @cxl_map_regblock._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/cxl/pci.c", i32 329, i32 2}
!27 = !{ptr @cxl_map_regblock.__UNIQUE_ID_ddebug313, !26, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/cxl/pci.c", i32 355, i32 4}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cxl_probe_regs._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @cxl_probe_regs._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/cxl/pci.c", i32 359, i32 3}
!35 = !{ptr @cxl_probe_regs.__UNIQUE_ID_ddebug314, !34, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/cxl/pci.c", i32 366, i32 4}
!38 = !{ptr @cxl_probe_regs._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cxl_probe_regs._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/cxl/pci.c", i32 373, i32 3}
!46 = !{ptr @cxl_probe_regs.__UNIQUE_ID_ddebug315, !45, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/cxl/pci.c", i32 390, i32 3}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @cxl_map_regs.__UNIQUE_ID_ddebug316, !48, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!51 = !{ptr @cxl_map_regs.__UNIQUE_ID_ddebug317, !52, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!52 = !{!"../drivers/cxl/pci.c", i32 394, i32 3}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/cxl/pci.c", i32 298, i32 3}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @cxl_pci_setup_mailbox._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @cxl_pci_setup_mailbox._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/cxl/pci.c", i32 303, i32 2}
!60 = !{ptr @cxl_pci_setup_mailbox.__UNIQUE_ID_ddebug312, !59, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/cxl/pci.c", i32 219, i32 3}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @cxl_pci_mbox_get._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @cxl_pci_mbox_get._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/cxl/pci.c", i32 225, i32 3}
!69 = !{ptr @cxl_pci_mbox_get._entry.29, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @cxl_pci_mbox_get._entry_ptr.31, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/cxl/pci.c", i32 236, i32 3}
!73 = !{ptr @cxl_pci_mbox_get._entry.32, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @cxl_pci_mbox_get._entry_ptr.34, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/cxl/pci.c", i32 240, i32 3}
!77 = !{ptr @cxl_pci_mbox_get._entry.35, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @cxl_pci_mbox_get._entry_ptr.37, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/cxl/pci.c", i32 244, i32 3}
!81 = !{ptr @cxl_pci_mbox_get._entry.38, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @cxl_pci_mbox_get._entry_ptr.40, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/cxl/pci.c", i32 55, i32 2}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @cxl_pci_mbox_wait_for_doorbell.__UNIQUE_ID_ddebug267, !84, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/cxl/pci.c", i32 121, i32 3}
!89 = !{ptr @__cxl_pci_mbox_send_cmd._rs, !88, !"_rs", i1 false, i1 false}
!90 = !{ptr @__func__.__cxl_pci_mbox_send_cmd, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @__cxl_pci_mbox_send_cmd._entry, !88, !"_entry", i1 false, i1 false}
!93 = !{ptr @__cxl_pci_mbox_send_cmd._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/cxl/pci.c", i32 140, i32 2}
!96 = !{ptr @__cxl_pci_mbox_send_cmd.__UNIQUE_ID_ddebug279, !95, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/cxl/pci.c", i32 157, i32 3}
!99 = !{ptr @__cxl_pci_mbox_send_cmd.__UNIQUE_ID_ddebug285, !98, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/cxl/pci.c", i32 65, i32 2}
!102 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @cxl_pci_mbox_timeout.__UNIQUE_ID_ddebug268, !101, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"auto-init"}
!114 = !{i64 2148168208, i64 2148168213, i64 2148168226, i64 2148168270, i64 2148168304, i64 2148168325}
!115 = !{i64 701469}
!116 = !{i64 2155075352}
!117 = !{i8 0, i8 2}
!118 = !{i64 2149366090}
!119 = !{i64 2149366528}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = !{i64 2154791688}
!122 = !{i64 2149366898}
!123 = !{i64 701051}
!124 = !{i64 2149367271}
!125 = !{i64 2154882640}
!126 = !{i64 2154783742}
!127 = !{i64 2154784854}
!128 = !{i64 2154785215}
!129 = !{i64 2154785057}
