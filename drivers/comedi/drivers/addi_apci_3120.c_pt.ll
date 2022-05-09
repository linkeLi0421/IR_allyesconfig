; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/addi_apci_3120.c_pt.bc'
source_filename = "../drivers/comedi/drivers/addi_apci_3120.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
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
%struct.apci3120_board = type { ptr, i8 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.apci3120_private = type { i32, i32, i32, i8, [2 x %struct.apci3120_dmabuf], i8, i8, i8, i16 }
%struct.apci3120_dmabuf = type { ptr, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.67 = type { ptr }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_addi_apci_3120__236_1113_apci3120_driver_init6 = internal global ptr @apci3120_driver_init, section ".initcall6.init", align 4
@apci3120_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @apci3120_detach, ptr @apci3120_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@apci3120_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @apci3120_pci_table, ptr @apci3120_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_apci3120_driver_exit = internal global ptr @apci3120_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [52 x i8] c"addi_apci_3120.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [67 x i8] c"addi_apci_3120.description=ADDI-DATA APCI-3120, Analog input board\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [58 x i8] c"addi_apci_3120.file=drivers/comedi/drivers/addi_apci_3120\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [27 x i8] c"addi_apci_3120.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"addi_apci_3120\00", [17 x i8] zeroinitializer }, align 32
@apci3120_boardtypes = internal constant { [2 x %struct.apci3120_board], [16 x i8] } { [2 x %struct.apci3120_board] [%struct.apci3120_board { ptr @.str.1, i8 -64 }, %struct.apci3120_board { ptr @.str.2, i8 0 }], [16 x i8] zeroinitializer }, align 32
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apci3120\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apci3001\00", [23 x i8] zeroinitializer }, align 32
@apci3120_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 484, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IRQ from unknown source\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"apci3120_interrupt\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/comedi/drivers/addi_apci_3120.c\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@apci3120_interrupt._entry_ptr = internal global ptr @apci3120_interrupt._entry, section ".printk_index", align 4
@apci3120_interrupt._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 494, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AMCC IRQ - MASTER DMA ABORT!\0A\00", [34 x i8] zeroinitializer }, align 32
@apci3120_interrupt._entry_ptr.10 = internal global ptr @apci3120_interrupt._entry.8, section ".printk_index", align 4
@apci3120_interrupt._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 496, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AMCC IRQ - TARGET DMA ABORT!\0A\00", [34 x i8] zeroinitializer }, align 32
@apci3120_interrupt._entry_ptr.13 = internal global ptr @apci3120_interrupt._entry.11, section ".printk_index", align 4
@apci3120_interrupt_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 439, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Interrupted DMA transfer!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"apci3120_interrupt_dma\00", [41 x i8] zeroinitializer }, align 32
@apci3120_interrupt_dma._entry_ptr = internal global ptr @apci3120_interrupt_dma._entry, section ".printk_index", align 4
@apci3120_interrupt_dma._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.5, i32 441, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Odd count of bytes in DMA ring!\0A\00", [63 x i8] zeroinitializer }, align 32
@apci3120_interrupt_dma._entry_ptr.18 = internal global ptr @apci3120_interrupt_dma._entry.16, section ".printk_index", align 4
@apci3120_ai_range = internal constant { { i32, [8 x %struct.comedi_krange] }, [60 x i8] } { { i32, [8 x %struct.comedi_krange] } { i32 8, [8 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2000000, i32 2000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }] }, [60 x i8] zeroinitializer }, align 32
@apci3120_pci_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4328, i32 33165, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4328, i32 33421, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@switch.table.apci3120_timer_insn_config = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\10\10\00\10\00 ", [26 x i8] zeroinitializer }, align 32
@switch.table.apci3120_timer_insn_config.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\00\10\00 0", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 31, i64 32, i64 33, i64 4097]
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"apci3120_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1087, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"apci3120_pci_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1107, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1088, i32 17 }
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"apci3120_boardtypes\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 125, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 127, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 132, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 484, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 494, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 496, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 439, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 441, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"apci3120_ai_range\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 101, i32 35 }
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"apci3120_pci_table\00", align 1
@___asan_gen_.90 = private constant [43 x i8] c"../drivers/comedi/drivers/addi_apci_3120.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1100, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant [40 x i8] c"switch.table.apci3120_timer_insn_config\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [43 x i8] c"switch.table.apci3120_timer_insn_config.20\00", align 1
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_apci3120_driver_exit, ptr @__initcall__kmod_addi_apci_3120__236_1113_apci3120_driver_init6, ptr @apci3120_driver_exit, ptr @apci3120_interrupt._entry, ptr @apci3120_interrupt._entry.11, ptr @apci3120_interrupt._entry.8, ptr @apci3120_interrupt._entry_ptr, ptr @apci3120_interrupt._entry_ptr.10, ptr @apci3120_interrupt._entry_ptr.13, ptr @apci3120_interrupt_dma._entry, ptr @apci3120_interrupt_dma._entry.16, ptr @apci3120_interrupt_dma._entry_ptr, ptr @apci3120_interrupt_dma._entry_ptr.18, ptr @apci3120_driver, ptr @apci3120_pci_driver, ptr @.str, ptr @apci3120_boardtypes, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @apci3120_ai_range, ptr @apci3120_pci_table, ptr @switch.table.apci3120_timer_insn_config, ptr @switch.table.apci3120_timer_insn_config.20], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3120_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3120_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3120_boardtypes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3120_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3120_interrupt._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3120_interrupt._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3120_interrupt_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3120_interrupt_dma._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3120_ai_range to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3120_pci_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.apci3120_timer_insn_config to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.apci3120_timer_insn_config.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3120_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @apci3120_driver, ptr noundef nonnull @apci3120_pci_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @apci3120_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @apci3120_driver, ptr noundef nonnull @apci3120_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apci3120_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @comedi_pci_detach(ptr noundef %dev) #7
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.apci3120_dma_free.exit_crit_edge, label %for.cond.preheader.i

entry.apci3120_dma_free.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %apci3120_dma_free.exit

for.cond.preheader.i:                             ; preds = %entry
  %hw_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 7
  %arrayidx.i = getelementptr %struct.apci3120_private, ptr %1, i32 0, i32 4, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %for.cond.preheader.i.for.inc.i_crit_edge, label %if.then3.i

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then3.i:                                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %hw_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_dev.i, align 4
  %size.i = getelementptr %struct.apci3120_private, ptr %1, i32 0, i32 4, i32 0, i32 2
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  %hw.i = getelementptr %struct.apci3120_private, ptr %1, i32 0, i32 4, i32 0, i32 1
  %8 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw.i, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %3, i32 noundef %9, i32 noundef 0) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %for.cond.preheader.i.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.apci3120_private, ptr %1, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool2.not.1.i = icmp eq ptr %11, null
  br i1 %tobool2.not.1.i, label %for.inc.i.apci3120_dma_free.exit_crit_edge, label %if.then3.1.i

for.inc.i.apci3120_dma_free.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %apci3120_dma_free.exit

if.then3.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %hw_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_dev.i, align 4
  %size.1.i = getelementptr %struct.apci3120_private, ptr %1, i32 0, i32 4, i32 1, i32 2
  %14 = ptrtoint ptr %size.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.1.i, align 4
  %hw.1.i = getelementptr %struct.apci3120_private, ptr %1, i32 0, i32 4, i32 1, i32 1
  %16 = ptrtoint ptr %hw.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw.1.i, align 4
  tail call void @dma_free_attrs(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %11, i32 noundef %17, i32 noundef 0) #7
  br label %apci3120_dma_free.exit

apci3120_dma_free.exit:                           ; preds = %if.then3.1.i, %for.inc.i.apci3120_dma_free.exit_crit_edge, %entry.apci3120_dma_free.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3120_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %context)
  %cmp = icmp ugt i32 %context, 1
  %arrayidx = getelementptr [2 x %struct.apci3120_board], ptr @apci3120_boardtypes, i32 0, i32 %context
  %tobool.not178 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not178
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %entry
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %arrayidx, ptr %board_ptr, align 4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %board_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %board_name, align 4
  %call3 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 56) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %call7 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  tail call void @pci_set_master(ptr noundef %call) #7
  %resource = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 47
  %arrayidx11 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 1
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx11, align 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %iobase, align 4
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resource, align 8
  %9 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call3, align 4
  %arrayidx16 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 2
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx16, align 8
  %addon = getelementptr inbounds %struct.apci3120_private, ptr %call3, i32 0, i32 1
  %12 = ptrtoint ptr %addon to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %addon, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase, align 4
  %add.i = add i32 %14, 14
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %15 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 0) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %and6.i = and i32 %17, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %18 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 0) #7, !srcloc !63
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase, align 4
  %add10.i = add i32 %20, 2
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %21 = inttoptr i32 %add12.i to ptr
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %21) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp18.not = icmp eq i32 %24, 0
  br i1 %cmp18.not, label %if.end10.if.end28_crit_edge, label %if.then19

if.end10.if.end28_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then19:                                        ; preds = %if.end10
  %25 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %24, ptr noundef nonnull @apci3120_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %26, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp23 = icmp eq i32 %call.i, 0
  br i1 %cmp23, label %if.then24, label %if.then19.if.end28_crit_edge

if.then19.if.end28_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then24:                                        ; preds = %if.then19
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq, align 4
  %irq26 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %29 = ptrtoint ptr %irq26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %irq26, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %30 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private.i, align 4
  %hw_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 7
  %use_double_buffer.i = getelementptr inbounds %struct.apci3120_private, ptr %31, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.apci3120_private, ptr %31, i32 0, i32 4, i32 0
  %hw.i = getelementptr %struct.apci3120_private, ptr %31, i32 0, i32 4, i32 0, i32 1
  %32 = ptrtoint ptr %hw_dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_dev.i, align 4
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %33, i32 noundef 16384, ptr noundef %hw.i, i32 noundef 3264, i32 noundef 0) #7
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.inc.i, label %if.then24.for.inc20.i_crit_edge

if.then24.for.inc20.i_crit_edge:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i

for.inc.i:                                        ; preds = %if.then24
  %35 = ptrtoint ptr %hw_dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_dev.i, align 4
  %call.i.1.i = tail call ptr @dma_alloc_attrs(ptr noundef %36, i32 noundef 8192, ptr noundef %hw.i, i32 noundef 3264, i32 noundef 0) #7
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.1.i, ptr %arrayidx.i, align 4
  %tobool.not.1.i = icmp eq ptr %call.i.1.i, null
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %for.inc.i.for.inc20.i_crit_edge

for.inc.i.for.inc20.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %38 = ptrtoint ptr %hw_dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_dev.i, align 4
  %call.i.2.i = tail call ptr @dma_alloc_attrs(ptr noundef %39, i32 noundef 4096, ptr noundef %hw.i, i32 noundef 3264, i32 noundef 0) #7
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.2.i, ptr %arrayidx.i, align 4
  %tobool.not.2.i = icmp eq ptr %call.i.2.i, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.if.end28_crit_edge, label %for.inc.1.i.for.inc20.i_crit_edge

for.inc.1.i.for.inc20.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i

for.inc.1.i.if.end28_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

for.inc20.i:                                      ; preds = %for.inc.1.i.for.inc20.i_crit_edge, %for.inc.i.for.inc20.i_crit_edge, %if.then24.for.inc20.i_crit_edge
  %order.038.i = phi i32 [ 2, %if.then24.for.inc20.i_crit_edge ], [ 1, %for.inc.i.for.inc20.i_crit_edge ], [ 0, %for.inc.1.i.for.inc20.i_crit_edge ]
  %shl10.i = shl nuw nsw i32 4096, %order.038.i
  %size.i = getelementptr %struct.apci3120_private, ptr %31, i32 0, i32 4, i32 0, i32 2
  %41 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shl10.i, ptr %size.i, align 4
  %42 = ptrtoint ptr %use_double_buffer.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i = load i8, ptr %use_double_buffer.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %use_double_buffer.i, align 4
  %arrayidx.1.i = getelementptr %struct.apci3120_private, ptr %31, i32 0, i32 4, i32 1
  %hw.1.i = getelementptr %struct.apci3120_private, ptr %31, i32 0, i32 4, i32 1, i32 1
  %43 = ptrtoint ptr %hw_dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_dev.i, align 4
  %call.i.142.i = tail call ptr @dma_alloc_attrs(ptr noundef %44, i32 noundef 16384, ptr noundef %hw.1.i, i32 noundef 3264, i32 noundef 0) #7
  %45 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i.142.i, ptr %arrayidx.1.i, align 4
  %tobool.not.143.i = icmp eq ptr %call.i.142.i, null
  br i1 %tobool.not.143.i, label %for.inc.144.i, label %for.inc20.i.for.inc20.1.i_crit_edge

for.inc20.i.for.inc20.1.i_crit_edge:              ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.1.i

for.inc.144.i:                                    ; preds = %for.inc20.i
  %46 = ptrtoint ptr %hw_dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_dev.i, align 4
  %call.i.1.1.i = tail call ptr @dma_alloc_attrs(ptr noundef %47, i32 noundef 8192, ptr noundef %hw.1.i, i32 noundef 3264, i32 noundef 0) #7
  %48 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i.1.1.i, ptr %arrayidx.1.i, align 4
  %tobool.not.1.1.i = icmp eq ptr %call.i.1.1.i, null
  br i1 %tobool.not.1.1.i, label %for.inc.1.1.i, label %for.inc.144.i.for.inc20.1.i_crit_edge

for.inc.144.i.for.inc20.1.i_crit_edge:            ; preds = %for.inc.144.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.1.i

for.inc.1.1.i:                                    ; preds = %for.inc.144.i
  %49 = ptrtoint ptr %hw_dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_dev.i, align 4
  %call.i.2.1.i = tail call ptr @dma_alloc_attrs(ptr noundef %50, i32 noundef 4096, ptr noundef %hw.1.i, i32 noundef 3264, i32 noundef 0) #7
  %51 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i.2.1.i, ptr %arrayidx.1.i, align 4
  %tobool.not.2.1.i = icmp eq ptr %call.i.2.1.i, null
  br i1 %tobool.not.2.1.i, label %for.inc.1.1.i.if.end28_crit_edge, label %for.inc.1.1.i.for.inc20.1.i_crit_edge

for.inc.1.1.i.for.inc20.1.i_crit_edge:            ; preds = %for.inc.1.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.1.i

for.inc.1.1.i.if.end28_crit_edge:                 ; preds = %for.inc.1.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

for.inc20.1.i:                                    ; preds = %for.inc.1.1.i.for.inc20.1.i_crit_edge, %for.inc.144.i.for.inc20.1.i_crit_edge, %for.inc20.i.for.inc20.1.i_crit_edge
  %order.038.1.i = phi i32 [ 2, %for.inc20.i.for.inc20.1.i_crit_edge ], [ 1, %for.inc.144.i.for.inc20.1.i_crit_edge ], [ 0, %for.inc.1.1.i.for.inc20.1.i_crit_edge ]
  %shl10.1.i = shl nuw nsw i32 4096, %order.038.1.i
  %size.1.i = getelementptr %struct.apci3120_private, ptr %31, i32 0, i32 4, i32 1, i32 2
  %52 = ptrtoint ptr %size.1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %shl10.1.i, ptr %size.1.i, align 4
  %53 = ptrtoint ptr %use_double_buffer.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load16.1.i = load i8, ptr %use_double_buffer.i, align 4
  %bf.set18.1.i = or i8 %bf.load16.1.i, 64
  store i8 %bf.set18.1.i, ptr %use_double_buffer.i, align 4
  br label %if.end28

if.end28:                                         ; preds = %for.inc20.1.i, %for.inc.1.1.i.if.end28_crit_edge, %for.inc.1.i.if.end28_crit_edge, %if.then19.if.end28_crit_edge, %if.end10.if.end28_crit_edge
  %54 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %iobase, align 4
  %add = add i32 %55, 2
  %and = and i32 %add, 1048575
  %add30 = or i32 %and, -18874368
  %56 = inttoptr i32 %add30 to ptr
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %56) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %.mask = and i16 %57, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20480, i16 %.mask)
  %cmp34 = icmp eq i16 %.mask, -20480
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %context)
  %cmp36 = icmp eq i32 %context, 1
  %or.cond = or i1 %cmp36, %cmp34
  %spec.select = select i1 %or.cond, i32 50, i32 70
  %58 = getelementptr inbounds %struct.apci3120_private, ptr %call3, i32 0, i32 2
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %spec.select, ptr %58, align 4
  %call41 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44:                                         ; preds = %if.end28
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %60 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 4
  %63 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 7405568, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 3
  %64 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 16, ptr %n_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %context)
  %tobool46.not = icmp eq i32 %context, 1
  %cond = select i1 %tobool46.not, i32 4095, i32 65535
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 13
  %65 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %cond, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 15
  %66 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @apci3120_ai_range, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 18
  %67 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @apci3120_ai_insn_read, ptr %insn_read, align 4
  %irq47 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %68 = ptrtoint ptr %irq47 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irq47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool48.not = icmp eq i32 %69, 0
  br i1 %tobool48.not, label %if.end44.if.end52_crit_edge, label %if.then49

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %70 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %61, ptr %read_subdev, align 4
  %71 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %subdev_flags, align 4
  %or = or i32 %72, 32768
  store i32 %or, ptr %subdev_flags, align 4
  %73 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %n_chan, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 5
  %75 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 23
  %76 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @apci3120_ai_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 22
  %77 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @apci3120_ai_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 25
  %78 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @apci3120_cancel, ptr %cancel, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end44.if.end52_crit_edge
  %79 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %subdevices, align 4
  br i1 %tobool46.not, label %if.else69, label %if.then59

if.then59:                                        ; preds = %if.end52
  %arrayidx54 = getelementptr %struct.comedi_subdevice, ptr %80, i32 1
  %type60 = getelementptr %struct.comedi_subdevice, ptr %80, i32 1, i32 2
  %81 = ptrtoint ptr %type60 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 2, ptr %type60, align 4
  %subdev_flags61 = getelementptr %struct.comedi_subdevice, ptr %80, i32 1, i32 4
  %82 = ptrtoint ptr %subdev_flags61 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 3276800, ptr %subdev_flags61, align 4
  %n_chan62 = getelementptr %struct.comedi_subdevice, ptr %80, i32 1, i32 3
  %83 = ptrtoint ptr %n_chan62 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 8, ptr %n_chan62, align 4
  %maxdata63 = getelementptr %struct.comedi_subdevice, ptr %80, i32 1, i32 13
  %84 = ptrtoint ptr %maxdata63 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 16383, ptr %maxdata63, align 4
  %range_table64 = getelementptr %struct.comedi_subdevice, ptr %80, i32 1, i32 15
  %85 = ptrtoint ptr %range_table64 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @range_bipolar10, ptr %range_table64, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %80, i32 1, i32 19
  %86 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @apci3120_ao_insn_write, ptr %insn_write, align 4
  %call65 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then59.if.end71_crit_edge, label %if.then59.cleanup_crit_edge

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then59.if.end71_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.else69:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %type70 = getelementptr %struct.comedi_subdevice, ptr %80, i32 1, i32 2
  %87 = ptrtoint ptr %type70 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %type70, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.else69, %if.then59.if.end71_crit_edge
  %88 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %subdevices, align 4
  %type74 = getelementptr %struct.comedi_subdevice, ptr %89, i32 2, i32 2
  %90 = ptrtoint ptr %type74 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 3, ptr %type74, align 4
  %subdev_flags75 = getelementptr %struct.comedi_subdevice, ptr %89, i32 2, i32 4
  %91 = ptrtoint ptr %subdev_flags75 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 65536, ptr %subdev_flags75, align 4
  %n_chan76 = getelementptr %struct.comedi_subdevice, ptr %89, i32 2, i32 3
  %92 = ptrtoint ptr %n_chan76 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 4, ptr %n_chan76, align 4
  %maxdata77 = getelementptr %struct.comedi_subdevice, ptr %89, i32 2, i32 13
  %93 = ptrtoint ptr %maxdata77 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %maxdata77, align 4
  %range_table78 = getelementptr %struct.comedi_subdevice, ptr %89, i32 2, i32 15
  %94 = ptrtoint ptr %range_table78 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @range_unipolar5, ptr %range_table78, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %89, i32 2, i32 20
  %95 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @apci3120_di_insn_bits, ptr %insn_bits, align 4
  %96 = load ptr, ptr %subdevices, align 4
  %type81 = getelementptr %struct.comedi_subdevice, ptr %96, i32 3, i32 2
  %97 = ptrtoint ptr %type81 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 4, ptr %type81, align 4
  %subdev_flags82 = getelementptr %struct.comedi_subdevice, ptr %96, i32 3, i32 4
  %98 = ptrtoint ptr %subdev_flags82 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 131072, ptr %subdev_flags82, align 4
  %n_chan83 = getelementptr %struct.comedi_subdevice, ptr %96, i32 3, i32 3
  %99 = ptrtoint ptr %n_chan83 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 4, ptr %n_chan83, align 4
  %maxdata84 = getelementptr %struct.comedi_subdevice, ptr %96, i32 3, i32 13
  %100 = ptrtoint ptr %maxdata84 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %maxdata84, align 4
  %range_table85 = getelementptr %struct.comedi_subdevice, ptr %96, i32 3, i32 15
  %101 = ptrtoint ptr %range_table85 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @range_unipolar5, ptr %range_table85, align 4
  %insn_bits86 = getelementptr %struct.comedi_subdevice, ptr %96, i32 3, i32 20
  %102 = ptrtoint ptr %insn_bits86 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @apci3120_do_insn_bits, ptr %insn_bits86, align 4
  %103 = load ptr, ptr %subdevices, align 4
  %type89 = getelementptr %struct.comedi_subdevice, ptr %103, i32 4, i32 2
  %104 = ptrtoint ptr %type89 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 7, ptr %type89, align 4
  %subdev_flags90 = getelementptr %struct.comedi_subdevice, ptr %103, i32 4, i32 4
  %105 = ptrtoint ptr %subdev_flags90 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 65536, ptr %subdev_flags90, align 4
  %n_chan91 = getelementptr %struct.comedi_subdevice, ptr %103, i32 4, i32 3
  %106 = ptrtoint ptr %n_chan91 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %n_chan91, align 4
  %maxdata92 = getelementptr %struct.comedi_subdevice, ptr %103, i32 4, i32 13
  %107 = ptrtoint ptr %maxdata92 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 16777215, ptr %maxdata92, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %103, i32 4, i32 21
  %108 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @apci3120_timer_insn_config, ptr %insn_config, align 4
  %insn_read93 = getelementptr %struct.comedi_subdevice, ptr %103, i32 4, i32 18
  %109 = ptrtoint ptr %insn_read93 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @apci3120_timer_insn_read, ptr %insn_read93, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.then59.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end71 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call41, %if.end28.cleanup_crit_edge ], [ %call65, %if.then59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3120_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %2 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_subdev, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async1, align 4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add = add i32 %7, 2
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %8 = inttoptr i32 %add3 to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #7, !srcloc !64
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %add6 = add i32 %12, 56
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %13 = inttoptr i32 %add8 to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #7, !srcloc !68
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %and12 = and i32 %conv, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  %and13 = and i32 %15, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or.cond = select i1 %tobool.not, i1 %tobool14.not, i1 false
  br i1 %or.cond, label %do.end, label %do.body15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %16 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.3) #10
  br label %cleanup

do.body15:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %or = or i32 %15, 16711680
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %add19 = add i32 %20, 56
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %21 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 %18) #7, !srcloc !71
  %ctrl = getelementptr inbounds %struct.apci3120_private, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %ctrl to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %23)
  %tobool25.not = icmp sgt i16 %23, -1
  br i1 %tobool25.not, label %do.body15.if.end27_crit_edge, label %if.then26

do.body15.if.end27_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then26:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private, align 4
  %ctrl.i = getelementptr inbounds %struct.apci3120_private, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ctrl.i, align 4
  %28 = and i16 %27, 32767
  store i16 %28, ptr %ctrl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ctrl.i, align 4
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #7
  %32 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase, align 4
  %and6.i = and i32 %33, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %34 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 %31) #7, !srcloc !63
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %do.body15.if.end27_crit_edge
  %and28 = and i32 %15, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end35_crit_edge, label %do.end33

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev34 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %35 = ptrtoint ptr %class_dev34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %class_dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.9) #10
  br label %if.end35

if.end35:                                         ; preds = %do.end33, %if.end27.if.end35_crit_edge
  %and36 = and i32 %15, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end43_crit_edge, label %do.end41

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev42 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %37 = ptrtoint ptr %class_dev42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %class_dev42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.12) #10
  br label %if.end43

if.end43:                                         ; preds = %do.end41, %if.end35.if.end43_crit_edge
  %and44 = and i32 %conv, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end74_crit_edge, label %land.lhs.true46

if.end43.if.end74_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

land.lhs.true46:                                  ; preds = %if.end43
  %mode = getelementptr inbounds %struct.apci3120_private, ptr %1, i32 0, i32 7
  %39 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mode, align 2
  %41 = and i8 %40, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool49.not = icmp eq i8 %41, 0
  br i1 %tobool49.not, label %land.lhs.true46.if.end74_crit_edge, label %if.then50

land.lhs.true46.if.end74_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then50:                                        ; preds = %land.lhs.true46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #7
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -1, ptr %val, align 2, !annotation !73
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %43 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp141.not = icmp eq i32 %44, 0
  br i1 %cmp141.not, label %if.then50.for.end_crit_edge, label %if.then50.for.body_crit_edge

if.then50.for.body_crit_edge:                     ; preds = %if.then50
  br label %for.body

if.then50.for.end_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then50.for.body_crit_edge
  %i.0142 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then50.for.body_crit_edge ]
  %45 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iobase, align 4
  %and55 = and i32 %46, 1048575
  %add56 = or i32 %and55, -18874368
  %47 = inttoptr i32 %add56 to ptr
  %48 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %47) #7, !srcloc !64
  %49 = call i16 @llvm.bswap.i16(i16 %48)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %50 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %val, align 2
  %call60 = call i32 @comedi_buf_write_samples(ptr noundef %3, ptr noundef nonnull %val, i32 noundef 1) #7
  %inc = add nuw i32 %i.0142, 1
  %51 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %chanlist_len, align 4
  %cmp = icmp ult i32 %inc, %52
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then50.for.end_crit_edge
  %53 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %mode, align 2
  %55 = or i8 %54, 2
  store i8 %55, ptr %mode, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  call void @arm_heavy_mb() #7
  %56 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %mode, align 2
  %58 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iobase, align 4
  %add70 = add i32 %59, 14
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %60 = inttoptr i32 %add72 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 %57) #7, !srcloc !61
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #7
  br label %if.end74

if.end74:                                         ; preds = %for.end, %land.lhs.true46.if.end74_crit_edge, %if.end43.if.end74_crit_edge
  %and75 = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.if.end78_crit_edge, label %if.then77

if.end74.if.end78_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %iobase, align 4
  %add.i = add i32 %62, 13
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %63 = inttoptr i32 %add1.i to ptr
  %64 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %63) #7, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end74.if.end78_crit_edge
  %and79 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.if.end90_crit_edge, label %do.body82

if.end78.if.end90_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

do.body82:                                        ; preds = %if.end78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  call void @arm_heavy_mb() #7
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %1, align 4
  %add86 = add i32 %66, 56
  %and87 = and i32 %add86, 1048575
  %add88 = or i32 %and87, -18874368
  %67 = inttoptr i32 %add88 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %67, i32 1024) #7, !srcloc !71
  %68 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %private, align 4
  %70 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %async1, align 4
  %cur_dmabuf.i = getelementptr inbounds %struct.apci3120_private, ptr %69, i32 0, i32 3
  %72 = ptrtoint ptr %cur_dmabuf.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load.i = load i8, ptr %cur_dmabuf.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 5
  %bf.clear.i = and i8 %bf.lshr.i, 1
  %bf.cast.i = zext i8 %bf.clear.i to i32
  %arrayidx.i = getelementptr %struct.apci3120_private, ptr %69, i32 0, i32 4, i32 %bf.cast.i
  %use_size.i = getelementptr %struct.apci3120_private, ptr %69, i32 0, i32 4, i32 %bf.cast.i, i32 3
  %73 = ptrtoint ptr %use_size.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %use_size.i, align 4
  %75 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %69, align 4
  %add.i139 = add i32 %76, 40
  %and.i140 = and i32 %add.i139, 1048575
  %add4.i = or i32 %and.i140, -18874368
  %77 = inttoptr i32 %add4.i to ptr
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %77) #7, !srcloc !68
  %79 = call i32 @llvm.bswap.i32(i32 %78) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %sub.i = sub i32 %74, %79
  %80 = ptrtoint ptr %use_size.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %use_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %81)
  %cmp.i = icmp ult i32 %sub.i, %81
  br i1 %cmp.i, label %do.end.i, label %do.body82.if.end.i_crit_edge

do.body82.if.end.i_crit_edge:                     ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %82 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %class_dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.14) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %do.body82.if.end.i_crit_edge
  %and7.i = and i32 %sub.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool.not.i, label %if.end13.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev12.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %84 = ptrtoint ptr %class_dev12.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %class_dev12.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.17) #10
  %events.i = getelementptr inbounds %struct.comedi_async, ptr %71, i32 0, i32 16
  %86 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %events.i, align 4
  %or.i = or i32 %87, 16
  store i32 %or.i, ptr %events.i, align 4
  br label %if.end90

if.end13.i:                                       ; preds = %if.end.i
  %subdev_flags.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 4
  %88 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i.i = and i32 %89, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %shr.i.i = lshr i32 %sub.i, %cond.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i)
  %tobool15.not.i = icmp eq i32 %shr.i.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end24.i_crit_edge, label %if.then16.i

if.end13.i.if.end24.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then16.i:                                      ; preds = %if.end13.i
  %90 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i, align 4
  %call17.i = call i32 @comedi_buf_write_samples(ptr noundef %3, ptr noundef %91, i32 noundef %shr.i.i) #7
  %flags.i = getelementptr inbounds %struct.comedi_async, ptr %71, i32 0, i32 17, i32 1
  %92 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags.i, align 4
  %and18.i = and i32 %93, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.then16.i.if.end24.i_crit_edge

if.then16.i.if.end24.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then20.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  %events21.i = getelementptr inbounds %struct.comedi_async, ptr %71, i32 0, i32 16
  %94 = ptrtoint ptr %events21.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %events21.i, align 4
  %or22.i = or i32 %95, 1
  store i32 %or22.i, ptr %events21.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then20.i, %if.then16.i.if.end24.i_crit_edge, %if.end13.i.if.end24.i_crit_edge
  %events25.i = getelementptr inbounds %struct.comedi_async, ptr %71, i32 0, i32 16
  %96 = ptrtoint ptr %events25.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %events25.i, align 4
  %and26.i = and i32 %97, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %lor.lhs.false.i, label %if.end24.i.if.end90_crit_edge

if.end24.i.if.end90_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

lor.lhs.false.i:                                  ; preds = %if.end24.i
  %stop_src.i = getelementptr inbounds %struct.comedi_async, ptr %71, i32 0, i32 17, i32 10
  %98 = ptrtoint ptr %stop_src.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %stop_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %99)
  %cmp28.i = icmp eq i32 %99, 32
  br i1 %cmp28.i, label %land.lhs.true.i, label %lor.lhs.false.i.if.end31.i_crit_edge

lor.lhs.false.i.if.end31.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %scans_done.i = getelementptr inbounds %struct.comedi_async, ptr %71, i32 0, i32 11
  %100 = ptrtoint ptr %scans_done.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %scans_done.i, align 4
  %stop_arg.i = getelementptr inbounds %struct.comedi_async, ptr %71, i32 0, i32 17, i32 11
  %102 = ptrtoint ptr %stop_arg.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %stop_arg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %103)
  %cmp29.not.i = icmp ult i32 %101, %103
  br i1 %cmp29.not.i, label %land.lhs.true.i.if.end31.i_crit_edge, label %land.lhs.true.i.if.end90_crit_edge

land.lhs.true.i.if.end90_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.end31.i:                                       ; preds = %land.lhs.true.i.if.end31.i_crit_edge, %lor.lhs.false.i.if.end31.i_crit_edge
  %104 = ptrtoint ptr %cur_dmabuf.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load32.i = load i8, ptr %cur_dmabuf.i, align 4
  %105 = and i8 %bf.load32.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool36.not.i = icmp eq i8 %105, 0
  br i1 %tobool36.not.i, label %if.else.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set.i = xor i8 %bf.load32.i, 32
  %106 = ptrtoint ptr %cur_dmabuf.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %bf.set.i, ptr %cur_dmabuf.i, align 4
  %bf.lshr50.i = lshr i8 %bf.set.i, 5
  %bf.clear51.i = and i8 %bf.lshr50.i, 1
  %bf.cast52.i = zext i8 %bf.clear51.i to i32
  %arrayidx53.i = getelementptr %struct.apci3120_private, ptr %69, i32 0, i32 4, i32 %bf.cast52.i
  call fastcc void @apci3120_init_dma(ptr noundef %d, ptr noundef %arrayidx53.i) #7
  br label %if.end90

if.else.i:                                        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @apci3120_init_dma(ptr noundef %d, ptr noundef %arrayidx.i) #7
  br label %if.end90

if.end90:                                         ; preds = %if.else.i, %if.then37.i, %land.lhs.true.i.if.end90_crit_edge, %if.end24.i.if.end90_crit_edge, %do.end11.i, %if.end78.if.end90_crit_edge
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 10
  %107 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %108)
  %cmp91 = icmp eq i32 %108, 32
  br i1 %cmp91, label %land.lhs.true93, label %if.end90.if.end98_crit_edge

if.end90.if.end98_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

land.lhs.true93:                                  ; preds = %if.end90
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 11
  %109 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %scans_done, align 4
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 11
  %111 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %112)
  %cmp94.not = icmp ult i32 %110, %112
  br i1 %cmp94.not, label %land.lhs.true93.if.end98_crit_edge, label %if.then96

land.lhs.true93.if.end98_crit_edge:               ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then96:                                        ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #9
  %events = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %113 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %events, align 4
  %or97 = or i32 %114, 2
  store i32 %or97, ptr %events, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %land.lhs.true93.if.end98_crit_edge, %if.end90.if.end98_crit_edge
  %call99 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %do.end
  %retval.0 = phi i32 [ 1, %if.end98 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3120_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %mode = getelementptr inbounds %struct.apci3120_private, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %mode, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mode, align 2
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add = add i32 %6, 14
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %7 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %4) #7, !srcloc !61
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  tail call fastcc void @apci3120_set_chanlist(ptr noundef %dev, ptr noundef %s, i32 noundef 1, ptr noundef %chanspec)
  %8 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private, align 4
  %timer_mode.i = getelementptr inbounds %struct.apci3120_private, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %timer_mode.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %timer_mode.i, align 1
  %conv1.i = and i8 %11, -4
  %conv6.i = or i8 %conv1.i, 2
  store i8 %conv6.i, ptr %timer_mode.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %timer_mode.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %timer_mode.i, align 1
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add.i = add i32 %15, 12
  %and8.i = and i32 %add.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %16 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %13) #7, !srcloc !61
  %17 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private, align 4
  %ctrl.i = getelementptr inbounds %struct.apci3120_private, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ctrl.i, align 4
  %conv1.i32 = or i16 %20, 4096
  store i16 %conv1.i32, ptr %ctrl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ctrl.i, align 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #7
  %24 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase, align 4
  %and9.i = and i32 %25, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %26 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 %23) #7, !srcloc !63
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %27 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp40.not = icmp eq i32 %28, 0
  br i1 %cmp40.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %29 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private, align 4
  %osc_base.i = getelementptr inbounds %struct.apci3120_private, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %osc_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %osc_base.i, align 4
  %mul.i = mul i32 %32, 10
  %div429.i = lshr exact i32 %mul.i, 1
  %add5.i = add nuw i32 %div429.i, 10000
  %divisor.0.i = udiv i32 %add5.i, %mul.i
  %divisor.1.i = tail call i32 @llvm.umin.i32(i32 %divisor.0.i, i32 65535) #7
  %33 = tail call i32 @llvm.umax.i32(i32 %divisor.1.i, i32 2) #7
  %conv8.i = trunc i32 %33 to i16
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #7
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %35 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %do_bits.i = getelementptr inbounds %struct.apci3120_private, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %do_bits.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %do_bits.i, align 4
  %shl.i = shl i8 %38, 4
  %39 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iobase, align 4
  %add.i38 = add i32 %40, 13
  %and.i = and i32 %add.i38, 1048575
  %add3.i = or i32 %and.i, -18874368
  %41 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %shl.i) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iobase, align 4
  %add10.i39 = add i32 %43, 4
  %and11.i = and i32 %add10.i39, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %44 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %44, i16 %34) #7, !srcloc !63
  %call4 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @apci3120_ai_eoc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %45 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iobase, align 4
  %and7 = and i32 %46, 1048575
  %add8 = or i32 %and7, -18874368
  %47 = inttoptr i32 %add8 to ptr
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %47) #7, !srcloc !64
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %conv = zext i16 %49 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 %i.041
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.041, 1
  %51 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %52
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %52, %if.end.cleanup_crit_edge ], [ %call4, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @apci3120_ai_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 66
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %1)
  %cmp1.not.i = icmp eq i32 %and.i, %1
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_begin_src, align 4
  %and.i100 = and i32 %3, 20
  store i32 %and.i100, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100)
  %cmp.i101 = icmp ne i32 %and.i100, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i100, i32 %3)
  %cmp1.not.i102 = icmp eq i32 %and.i100, %3
  %or.cond.i103 = and i1 %cmp.i101, %cmp1.not.i102
  %4 = select i1 %or.cond.i, i1 %or.cond.i103, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i105 = and i32 %6, 16
  store i32 %and.i105, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105)
  %cmp.i106 = icmp ne i32 %and.i105, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i105, i32 %6)
  %cmp1.not.i107 = icmp eq i32 %and.i105, %6
  %or.cond.i108 = and i1 %cmp.i106, %cmp1.not.i107
  %7 = select i1 %4, i1 %or.cond.i108, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i110 = and i32 %9, 32
  store i32 %and.i110, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110)
  %cmp.i111 = icmp ne i32 %and.i110, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i110, i32 %9)
  %cmp1.not.i112 = icmp eq i32 %and.i110, %9
  %or.cond.i113 = and i1 %cmp.i111, %cmp1.not.i112
  %10 = select i1 %7, i1 %or.cond.i113, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i115 = and i32 %12, 33
  store i32 %and.i115, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %cmp.i116 = icmp ne i32 %and.i115, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i115, i32 %12)
  %cmp1.not.i117 = icmp eq i32 %and.i115, %12
  %or.cond.i118 = and i1 %cmp.i116, %cmp1.not.i117
  %13 = select i1 %10, i1 %or.cond.i118, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %1) #7, !range !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  %15 = tail call i32 @llvm.ctpop.i32(i32 %3) #7, !range !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i120 = icmp ult i32 %15, 2
  %16 = select i1 %cmp.not.i, i1 %cmp.not.i120, i1 false
  %17 = tail call i32 @llvm.ctpop.i32(i32 %12) #7, !range !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i122 = icmp ult i32 %17, 2
  %18 = select i1 %16, i1 %cmp.not.i122, i1 false
  br i1 %18, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i124 = icmp eq i32 %20, 0
  br i1 %cmp.not.i124, label %if.end20.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end20.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end20.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i125 = phi i32 [ -22, %if.then.i ], [ 0, %if.end20.comedi_check_trigger_arg_is.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp eq i32 %3, 16
  br i1 %cmp, label %if.then24, label %comedi_check_trigger_arg_is.exit.if.end27_crit_edge

comedi_check_trigger_arg_is.exit.if.end27_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then24:                                        ; preds = %comedi_check_trigger_arg_is.exit
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %22 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %23)
  %cmp.i126 = icmp ult i32 %23, 100000
  br i1 %cmp.i126, label %if.then.i127, label %if.then24.comedi_check_trigger_arg_min.exit_crit_edge

if.then24.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit

if.then.i127:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 100000, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i127, %if.then24.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i128 = phi i32 [ -22, %if.then.i127 ], [ 0, %if.then24.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or26 = or i32 %retval.0.i128, %retval.0.i125
  br label %if.end27

if.end27:                                         ; preds = %comedi_check_trigger_arg_min.exit, %comedi_check_trigger_arg_is.exit.if.end27_crit_edge
  %err.0 = phi i32 [ %or26, %comedi_check_trigger_arg_min.exit ], [ %retval.0.i125, %comedi_check_trigger_arg_is.exit.if.end27_crit_edge ]
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %25 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %26)
  %cmp.i129 = icmp ult i32 %26, 10000
  br i1 %cmp.i129, label %if.then.i130, label %if.end27.comedi_check_trigger_arg_min.exit132_crit_edge

if.end27.comedi_check_trigger_arg_min.exit132_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit132

if.then.i130:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 10000, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_min.exit132

comedi_check_trigger_arg_min.exit132:             ; preds = %if.then.i130, %if.end27.comedi_check_trigger_arg_min.exit132_crit_edge
  %retval.0.i131 = phi i32 [ -22, %if.then.i130 ], [ 0, %if.end27.comedi_check_trigger_arg_min.exit132_crit_edge ]
  %or29 = or i32 %retval.0.i131, %err.0
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %28 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i133 = icmp eq i32 %29, 0
  br i1 %cmp.i133, label %if.then.i134, label %comedi_check_trigger_arg_min.exit132.comedi_check_trigger_arg_min.exit136_crit_edge

comedi_check_trigger_arg_min.exit132.comedi_check_trigger_arg_min.exit136_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit132
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit136

if.then.i134:                                     ; preds = %comedi_check_trigger_arg_min.exit132
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %chanlist_len, align 4
  br label %comedi_check_trigger_arg_min.exit136

comedi_check_trigger_arg_min.exit136:             ; preds = %if.then.i134, %comedi_check_trigger_arg_min.exit132.comedi_check_trigger_arg_min.exit136_crit_edge
  %retval.0.i135 = phi i32 [ -22, %if.then.i134 ], [ 0, %comedi_check_trigger_arg_min.exit132.comedi_check_trigger_arg_min.exit136_crit_edge ]
  %or31 = or i32 %or29, %retval.0.i135
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %31 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chanlist_len, align 4
  %33 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %32)
  %cmp.not.i137 = icmp eq i32 %34, %32
  br i1 %cmp.not.i137, label %comedi_check_trigger_arg_min.exit136.comedi_check_trigger_arg_is.exit140_crit_edge, label %if.then.i138

comedi_check_trigger_arg_min.exit136.comedi_check_trigger_arg_is.exit140_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit136
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit140

if.then.i138:                                     ; preds = %comedi_check_trigger_arg_min.exit136
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %32, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit140

comedi_check_trigger_arg_is.exit140:              ; preds = %if.then.i138, %comedi_check_trigger_arg_min.exit136.comedi_check_trigger_arg_is.exit140_crit_edge
  %retval.0.i139 = phi i32 [ -22, %if.then.i138 ], [ 0, %comedi_check_trigger_arg_min.exit136.comedi_check_trigger_arg_is.exit140_crit_edge ]
  %or34 = or i32 %or31, %retval.0.i139
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp36 = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %36 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i141 = icmp eq i32 %37, 0
  br i1 %cmp36, label %if.then37, label %if.else

if.then37:                                        ; preds = %comedi_check_trigger_arg_is.exit140
  br i1 %cmp.i141, label %if.then37.if.end43.sink.split_crit_edge, label %if.then37.if.end43_crit_edge

if.then37.if.end43_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then37.if.end43.sink.split_crit_edge:          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit140
  br i1 %cmp.i141, label %if.else.if.end43_crit_edge, label %if.else.if.end43.sink.split_crit_edge

if.else.if.end43.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.sink.split

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.end43.sink.split:                              ; preds = %if.else.if.end43.sink.split_crit_edge, %if.then37.if.end43.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then37.if.end43.sink.split_crit_edge ], [ 0, %if.else.if.end43.sink.split_crit_edge ]
  %38 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %if.else.if.end43_crit_edge, %if.then37.if.end43_crit_edge
  %call38.pn = phi i32 [ 0, %if.then37.if.end43_crit_edge ], [ 0, %if.else.if.end43_crit_edge ], [ -22, %if.end43.sink.split ]
  %err.1 = or i32 %or34, %call38.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool44.not = icmp ne i32 %err.1, 0
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %tobool44.not, i1 true, i1 %cmp.not
  %.mux = select i1 %tobool44.not, i32 3, i32 0
  br i1 %brmerge, label %if.end43.cleanup_crit_edge, label %if.then49

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then49:                                        ; preds = %if.end43
  %39 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %convert_arg, align 4
  %41 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %scan_end_arg, align 4
  %mul = mul i32 %42, %40
  %scan_begin_arg52 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %43 = ptrtoint ptr %scan_begin_arg52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %scan_begin_arg52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %mul)
  %cmp.i149 = icmp ult i32 %44, %mul
  br i1 %cmp.i149, label %if.end55, label %if.then49.cleanup_crit_edge

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end55:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %scan_begin_arg52 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul, ptr %scan_begin_arg52, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then49.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ %.mux, %if.end43.cleanup_crit_edge ], [ 4, %if.end55 ], [ 0, %if.then49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3120_ai_cmd(ptr noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %mode = getelementptr inbounds %struct.apci3120_private, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %mode, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %add = add i32 %6, 56
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %7 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 1024) #7, !srcloc !71
  %cur_dmabuf = getelementptr inbounds %struct.apci3120_private, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %cur_dmabuf to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %cur_dmabuf, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %cur_dmabuf, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %9 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chanlist_len, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %11 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chanlist, align 4
  tail call fastcc void @apci3120_set_chanlist(ptr noundef %dev, ptr noundef %s, i32 noundef %10, ptr noundef %12)
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 2
  %13 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %14)
  %cmp = icmp eq i32 %14, 64
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private, align 4
  %ctrl.i = getelementptr inbounds %struct.apci3120_private, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ctrl.i, align 4
  %.sink.i = or i16 %18, -32768
  store i16 %.sink.i, ptr %ctrl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ctrl.i, align 4
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #7
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %22 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase.i, align 4
  %and6.i = and i32 %23, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %24 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 %21) #7, !srcloc !63
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %scan_begin_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 4
  %25 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %26)
  %cmp3 = icmp eq i32 %26, 16
  br i1 %cmp3, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 5
  %27 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %scan_begin_arg, align 4
  %flags = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 1
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %31 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private, align 4
  %osc_base.i = getelementptr inbounds %struct.apci3120_private, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %osc_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %osc_base.i, align 4
  %mul.i = mul i32 %34, 1000
  %and.i = and i32 %30, 196608
  %35 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %sw.default.i [
    i32 131072, label %sw.bb.i
    i32 65536, label %if.then4.apci3120_ns_to_timer.exit_crit_edge
  ]

if.then4.apci3120_ns_to_timer.exit_crit_edge:     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %apci3120_ns_to_timer.exit

sw.bb.i:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i32 %28, -1
  %sub.i = add i32 %add.i, %mul.i
  br label %apci3120_ns_to_timer.exit

sw.default.i:                                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %div429.i = lshr exact i32 %mul.i, 1
  %add5.i = add i32 %div429.i, %28
  br label %apci3120_ns_to_timer.exit

apci3120_ns_to_timer.exit:                        ; preds = %sw.default.i, %sw.bb.i, %if.then4.apci3120_ns_to_timer.exit_crit_edge
  %add5.pn.i = phi i32 [ %add5.i, %sw.default.i ], [ %sub.i, %sw.bb.i ], [ %28, %if.then4.apci3120_ns_to_timer.exit_crit_edge ]
  %divisor.0.i = udiv i32 %add5.pn.i, %mul.i
  %divisor.1.i = tail call i32 @llvm.umin.i32(i32 %divisor.0.i, i32 65535) #7
  %36 = tail call i32 @llvm.umax.i32(i32 %divisor.1.i, i32 2) #7
  %timer_mode.i = getelementptr inbounds %struct.apci3120_private, ptr %32, i32 0, i32 6
  %37 = ptrtoint ptr %timer_mode.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %timer_mode.i, align 1
  %conv1.i = and i8 %38, -13
  %conv6.i = or i8 %conv1.i, 4
  store i8 %conv6.i, ptr %timer_mode.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %timer_mode.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %timer_mode.i, align 1
  %iobase.i57 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %41 = ptrtoint ptr %iobase.i57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iobase.i57, align 4
  %add.i58 = add i32 %42, 12
  %and8.i = and i32 %add.i58, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %43 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %40) #7, !srcloc !61
  %44 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %do_bits.i = getelementptr inbounds %struct.apci3120_private, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %do_bits.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %do_bits.i, align 4
  %shl.i = shl i8 %47, 4
  %or.i = or i8 %shl.i, 1
  %48 = ptrtoint ptr %iobase.i57 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iobase.i57, align 4
  %add.i61 = add i32 %49, 13
  %and.i62 = and i32 %add.i61, 1048575
  %add3.i = or i32 %and.i62, -18874368
  %50 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 %or.i) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %conv8.i = trunc i32 %36 to i16
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #7
  %52 = ptrtoint ptr %iobase.i57 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iobase.i57, align 4
  %add10.i = add i32 %53, 4
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %54 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %54, i16 %51) #7, !srcloc !63
  br label %if.end6

if.end6:                                          ; preds = %apci3120_ns_to_timer.exit, %if.end.if.end6_crit_edge
  %convert_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 7
  %55 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %convert_arg, align 4
  %flags7 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 1
  %57 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags7, align 4
  %59 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %private, align 4
  %osc_base.i64 = getelementptr inbounds %struct.apci3120_private, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %osc_base.i64 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %osc_base.i64, align 4
  %mul.i65 = mul i32 %62, 10
  %and.i66 = and i32 %58, 196608
  %63 = zext i32 %and.i66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %and.i66, label %sw.default.i72 [
    i32 131072, label %sw.bb.i69
    i32 65536, label %if.end6.apci3120_ns_to_timer.exit76_crit_edge
  ]

if.end6.apci3120_ns_to_timer.exit76_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %apci3120_ns_to_timer.exit76

sw.bb.i69:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %add.i67 = add i32 %56, -1
  %sub.i68 = add i32 %add.i67, %mul.i65
  br label %apci3120_ns_to_timer.exit76

sw.default.i72:                                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %div429.i70 = lshr exact i32 %mul.i65, 1
  %add5.i71 = add i32 %div429.i70, %56
  br label %apci3120_ns_to_timer.exit76

apci3120_ns_to_timer.exit76:                      ; preds = %sw.default.i72, %sw.bb.i69, %if.end6.apci3120_ns_to_timer.exit76_crit_edge
  %add5.pn.i73 = phi i32 [ %add5.i71, %sw.default.i72 ], [ %sub.i68, %sw.bb.i69 ], [ %56, %if.end6.apci3120_ns_to_timer.exit76_crit_edge ]
  %divisor.0.i74 = udiv i32 %add5.pn.i73, %mul.i65
  %divisor.1.i75 = tail call i32 @llvm.umin.i32(i32 %divisor.0.i74, i32 65535) #7
  %64 = tail call i32 @llvm.umax.i32(i32 %divisor.1.i75, i32 2) #7
  %timer_mode.i78 = getelementptr inbounds %struct.apci3120_private, ptr %60, i32 0, i32 6
  %65 = ptrtoint ptr %timer_mode.i78 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %timer_mode.i78, align 1
  %conv1.i79 = and i8 %66, -4
  %conv6.i80 = or i8 %conv1.i79, 1
  store i8 %conv6.i80, ptr %timer_mode.i78, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %67 = ptrtoint ptr %timer_mode.i78 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %timer_mode.i78, align 1
  %iobase.i81 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %69 = ptrtoint ptr %iobase.i81 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %iobase.i81, align 4
  %add.i82 = add i32 %70, 12
  %and8.i83 = and i32 %add.i82, 1048575
  %add9.i84 = or i32 %and8.i83, -18874368
  %71 = inttoptr i32 %add9.i84 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 %68) #7, !srcloc !61
  %72 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %do_bits.i86 = getelementptr inbounds %struct.apci3120_private, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %do_bits.i86 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %do_bits.i86, align 4
  %shl.i88 = shl i8 %75, 4
  %76 = ptrtoint ptr %iobase.i81 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %iobase.i81, align 4
  %add.i91 = add i32 %77, 13
  %and.i92 = and i32 %add.i91, 1048575
  %add3.i93 = or i32 %and.i92, -18874368
  %78 = inttoptr i32 %add3.i93 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 %shl.i88) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %conv8.i94 = trunc i32 %64 to i16
  %79 = tail call i16 @llvm.bswap.i16(i16 %conv8.i94) #7
  %80 = ptrtoint ptr %iobase.i81 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %iobase.i81, align 4
  %add10.i95 = add i32 %81, 4
  %and11.i96 = and i32 %add10.i95, 1048575
  %add12.i97 = or i32 %and11.i96, -18874368
  %82 = inttoptr i32 %add12.i97 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %82, i16 %79) #7, !srcloc !63
  %83 = ptrtoint ptr %cur_dmabuf to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load9 = load i8, ptr %cur_dmabuf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load9)
  %tobool.not = icmp sgt i8 %bf.load9, -1
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %apci3120_ns_to_timer.exit76
  %84 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %private, align 4
  %86 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %async, align 4
  %size.i = getelementptr inbounds %struct.apci3120_private, ptr %85, i32 0, i32 4, i32 0, i32 2
  %88 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %size.i, align 4
  %size4.i = getelementptr %struct.apci3120_private, ptr %85, i32 0, i32 4, i32 1, i32 2
  %90 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %size4.i, align 4
  %scan_end_arg.i = getelementptr inbounds %struct.comedi_async, ptr %87, i32 0, i32 17, i32 9
  %92 = ptrtoint ptr %scan_end_arg.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %scan_end_arg.i, align 4
  %subdev_flags.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %94 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i.i = and i32 %95, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %shl.i.i = shl i32 %93, %cond.i.i.i
  %stop_src.i = getelementptr inbounds %struct.comedi_async, ptr %87, i32 0, i32 17, i32 10
  %96 = ptrtoint ptr %stop_src.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %stop_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %97)
  %cmp.i = icmp eq i32 %97, 32
  br i1 %cmp.i, label %if.then.i, label %if.then10.if.end17.i_crit_edge

if.then10.if.end17.i_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then.i:                                        ; preds = %if.then10
  %stop_arg.i = getelementptr inbounds %struct.comedi_async, ptr %87, i32 0, i32 17, i32 11
  %98 = ptrtoint ptr %stop_arg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %stop_arg.i, align 4
  %mul.i99 = mul i32 %99, %shl.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i99, i32 %89)
  %cmp5.i = icmp ult i32 %mul.i99, %89
  br i1 %cmp5.i, label %if.then.i.if.end17.i_crit_edge, label %if.else.i

if.then.i.if.end17.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i100 = sub i32 %mul.i99, %89
  %100 = tail call i32 @llvm.umin.i32(i32 %91, i32 %sub.i100) #7
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %if.then.i.if.end17.i_crit_edge, %if.then10.if.end17.i_crit_edge
  %dmalen0.0.i = phi i32 [ %89, %if.then10.if.end17.i_crit_edge ], [ %mul.i99, %if.then.i.if.end17.i_crit_edge ], [ %89, %if.else.i ]
  %dmalen1.0.i = phi i32 [ %91, %if.then10.if.end17.i_crit_edge ], [ %91, %if.then.i.if.end17.i_crit_edge ], [ %100, %if.else.i ]
  %flags.i = getelementptr inbounds %struct.comedi_async, ptr %87, i32 0, i32 17, i32 1
  %101 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags.i, align 4
  %and.i101 = and i32 %102, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i101)
  %tobool.not.i = icmp eq i32 %and.i101, 0
  br i1 %tobool.not.i, label %if.else39.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %dmalen0.0.i, i32 %shl.i.i)
  %cmp19.i = icmp ugt i32 %dmalen0.0.i, %shl.i.i
  %and22.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  %add.i102 = add i32 %shl.i.i, 2
  %spec.select94.i = select i1 %tobool23.not.i, i32 %shl.i.i, i32 %add.i102
  %dmalen0.1.i = select i1 %cmp19.i, i32 %spec.select94.i, i32 %dmalen0.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %dmalen1.0.i, i32 %shl.i.i)
  %cmp27.i = icmp ugt i32 %dmalen1.0.i, %shl.i.i
  br i1 %cmp27.i, label %if.then28.i, label %if.then18.i.apci3120_setup_dma.exit_crit_edge

if.then18.i.apci3120_setup_dma.exit_crit_edge:    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %apci3120_setup_dma.exit

if.then28.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub33.i = add i32 %shl.i.i, -2
  %spec.select95.i = select i1 %tobool23.not.i, i32 %shl.i.i, i32 %sub33.i
  %103 = tail call i32 @llvm.umax.i32(i32 %spec.select95.i, i32 4) #7
  br label %apci3120_setup_dma.exit

if.else39.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %prealloc_bufsz.i = getelementptr inbounds %struct.comedi_async, ptr %87, i32 0, i32 1
  %104 = ptrtoint ptr %prealloc_bufsz.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %prealloc_bufsz.i, align 4
  %106 = tail call i32 @llvm.umin.i32(i32 %dmalen0.0.i, i32 %105) #7
  %107 = tail call i32 @llvm.umin.i32(i32 %dmalen1.0.i, i32 %105) #7
  br label %apci3120_setup_dma.exit

apci3120_setup_dma.exit:                          ; preds = %if.else39.i, %if.then28.i, %if.then18.i.apci3120_setup_dma.exit_crit_edge
  %dmalen0.3.i = phi i32 [ %dmalen0.1.i, %if.then28.i ], [ %dmalen0.1.i, %if.then18.i.apci3120_setup_dma.exit_crit_edge ], [ %106, %if.else39.i ]
  %dmalen1.2.i = phi i32 [ %103, %if.then28.i ], [ %dmalen1.0.i, %if.then18.i.apci3120_setup_dma.exit_crit_edge ], [ %107, %if.else39.i ]
  %dmabuf.i = getelementptr inbounds %struct.apci3120_private, ptr %85, i32 0, i32 4
  %use_size.i = getelementptr inbounds %struct.apci3120_private, ptr %85, i32 0, i32 4, i32 0, i32 3
  %108 = ptrtoint ptr %use_size.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %dmalen0.3.i, ptr %use_size.i, align 4
  %use_size54.i = getelementptr %struct.apci3120_private, ptr %85, i32 0, i32 4, i32 1, i32 3
  %109 = ptrtoint ptr %use_size54.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %dmalen1.2.i, ptr %use_size54.i, align 4
  tail call fastcc void @apci3120_init_dma(ptr noundef %dev, ptr noundef %dmabuf.i) #7
  br label %do.body14

if.else:                                          ; preds = %apci3120_ns_to_timer.exit76
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %mode, align 2
  %112 = or i8 %111, 2
  store i8 %112, ptr %mode, align 2
  br label %do.body14

do.body14:                                        ; preds = %if.else, %apci3120_setup_dma.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %113 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %mode, align 2
  %115 = ptrtoint ptr %iobase.i81 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %iobase.i81, align 4
  %add18 = add i32 %116, 14
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %117 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %117, i8 %114) #7, !srcloc !61
  %118 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %119)
  %cmp23 = icmp eq i32 %119, 16
  br i1 %cmp23, label %if.then25, label %do.body14.if.end26_crit_edge

do.body14.if.end26_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then25:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %private, align 4
  %ctrl.i104 = getelementptr inbounds %struct.apci3120_private, ptr %121, i32 0, i32 8
  %122 = ptrtoint ptr %ctrl.i104 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %ctrl.i104, align 4
  %conv1.i105 = or i16 %123, 8192
  store i16 %conv1.i105, ptr %ctrl.i104, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %124 = ptrtoint ptr %ctrl.i104 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %ctrl.i104, align 4
  %126 = tail call i16 @llvm.bswap.i16(i16 %125) #7
  %127 = ptrtoint ptr %iobase.i81 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %iobase.i81, align 4
  %and9.i = and i32 %128, 1048575
  %add10.i108 = or i32 %and9.i, -18874368
  %129 = inttoptr i32 %add10.i108 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %129, i16 %126) #7, !srcloc !63
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %do.body14.if.end26_crit_edge
  %130 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %private, align 4
  %ctrl.i110 = getelementptr inbounds %struct.apci3120_private, ptr %131, i32 0, i32 8
  %132 = ptrtoint ptr %ctrl.i110 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %ctrl.i110, align 4
  %conv1.i111 = or i16 %133, 4096
  store i16 %conv1.i111, ptr %ctrl.i110, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %134 = ptrtoint ptr %ctrl.i110 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %ctrl.i110, align 4
  %136 = tail call i16 @llvm.bswap.i16(i16 %135) #7
  %137 = ptrtoint ptr %iobase.i81 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %iobase.i81, align 4
  %and9.i115 = and i32 %138, 1048575
  %add10.i116 = or i32 %and9.i115, -18874368
  %139 = inttoptr i32 %add10.i116 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %139, i16 %136) #7, !srcloc !63
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3120_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %addon = getelementptr inbounds %struct.apci3120_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %addon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addon, align 4
  %add = add i32 %3, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 0) #7, !srcloc !63
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %addon.i = getelementptr inbounds %struct.apci3120_private, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %addon.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addon.i, align 4
  %and.i = and i32 %8, 1048575
  %add1.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 15360) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %addon.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addon.i, align 4
  %add8.i = add i32 %11, 2
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %12 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 0) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %addon.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addon.i, align 4
  %and19.i = and i32 %14, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %15 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 15872) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %addon.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addon.i, align 4
  %add28.i = add i32 %17, 2
  %and29.i = and i32 %add28.i, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %18 = inttoptr i32 %add30.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 0) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %add5 = add i32 %20, 60
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %21 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 0) #7, !srcloc !71
  %ctrl = getelementptr inbounds %struct.apci3120_private, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %ctrl to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %ctrl to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ctrl, align 4
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %26 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase, align 4
  %and14 = and i32 %27, 1048575
  %add15 = or i32 %and14, -18874368
  %28 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 %25) #7, !srcloc !63
  %mode = getelementptr inbounds %struct.apci3120_private, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %mode, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mode, align 2
  %32 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase, align 4
  %add22 = add i32 %33, 14
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %34 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %31) #7, !srcloc !61
  %35 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase, align 4
  %add27 = add i32 %36, 2
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %37 = inttoptr i32 %add29 to ptr
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %37) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %cur_dmabuf = getelementptr inbounds %struct.apci3120_private, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %cur_dmabuf to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %cur_dmabuf, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %cur_dmabuf, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3120_ao_insn_write(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp26.not = icmp eq i32 %3, 0
  br i1 %cmp26.not, label %entry.cleanup10_crit_edge, label %for.body.lr.ph

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

for.body.lr.ph:                                   ; preds = %entry
  %and1 = shl i32 %1, 14
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = lshr i32 %1, 1
  %mul = and i32 %4, 32766
  %add = add nuw nsw i32 %mul, 8
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.027
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @apci3120_ao_ready, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %for.body.cleanup10_crit_edge

for.body.cleanup10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

for.inc:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %or = or i32 %6, %and1
  %conv = trunc i32 %or to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %add3 = add i32 %add, %9
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %10 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 %7) #7, !srcloc !63
  %11 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %readback, align 4
  %arrayidx7 = getelementptr i32, ptr %12, i32 %and
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %6, ptr %arrayidx7, align 4
  %inc = add nuw i32 %i.027, 1
  %14 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup10_crit_edge

for.inc.cleanup10_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup10:                                        ; preds = %for.inc.cleanup10_crit_edge, %for.body.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup10_crit_edge ], [ %call, %for.body.cleanup10_crit_edge ], [ %15, %for.inc.cleanup10_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3120_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  %4 = and i16 %3, 15
  %and3 = zext i16 %4 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and3, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3120_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %conv = trunc i32 %3 to i8
  %do_bits = getelementptr inbounds %struct.apci3120_private, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %do_bits to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %do_bits, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %do_bits to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %do_bits, align 4
  %shl = shl i8 %6, 4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add = add i32 %8, 13
  %and = and i32 %add, 1048575
  %add4 = or i32 %and, -18874368
  %9 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %shl) #7, !srcloc !61
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state6 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %10 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state6, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n, align 4
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3120_timer_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 31, label %sw.bb
    i32 32, label %sw.bb2
    i32 33, label %sw.bb3
    i32 4097, label %sw.bb22
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %6, 13
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add1.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1, align 4
  %11 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private, align 4
  %osc_base.i = getelementptr inbounds %struct.apci3120_private, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %osc_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %osc_base.i, align 4
  %mul.i = mul i32 %14, 1000
  %divisor.0.i = udiv i32 %10, %mul.i
  %divisor.1.i = tail call i32 @llvm.umin.i32(i32 %divisor.0.i, i32 16777215) #7
  %15 = tail call i32 @llvm.umax.i32(i32 %divisor.1.i, i32 2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %do_bits.i = getelementptr inbounds %struct.apci3120_private, ptr %12, i32 0, i32 5
  %16 = ptrtoint ptr %do_bits.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %do_bits.i, align 4
  %shl.i = shl i8 %17, 4
  %or.i = or i8 %shl.i, 2
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i, align 4
  %add.i72 = add i32 %19, 13
  %and.i73 = and i32 %add.i72, 1048575
  %add3.i = or i32 %and.i73, -18874368
  %20 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %or.i) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %conv8.i = trunc i32 %15 to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #7
  %22 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase.i, align 4
  %add10.i = add i32 %23, 4
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %24 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 %21) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %do_bits.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %do_bits.i, align 4
  %shl20.i = shl i8 %26, 4
  %or23.i = or i8 %shl20.i, 3
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iobase.i, align 4
  %add26.i = add i32 %28, 13
  %and27.i = and i32 %add26.i, 1048575
  %add28.i = or i32 %and27.i, -18874368
  %29 = inttoptr i32 %add28.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %or23.i) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %sh.diff = lshr i32 %15, 8
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %30 = and i16 %tr.sh.diff, -256
  %31 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase.i, align 4
  %add36.i = add i32 %32, 4
  %and37.i = and i32 %add36.i, 1048575
  %add38.i = or i32 %and37.i, -18874368
  %33 = inttoptr i32 %add38.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %33, i16 %30) #7, !srcloc !63
  %34 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private, align 4
  %ctrl.i = getelementptr inbounds %struct.apci3120_private, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ctrl.i, align 4
  %conv1.i = or i16 %37, 16384
  store i16 %conv1.i, ptr %ctrl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ctrl.i, align 4
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #7
  %41 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iobase.i, align 4
  %and9.i = and i32 %42, 1048575
  %add10.i76 = or i32 %and9.i, -18874368
  %43 = inttoptr i32 %add10.i76 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %43, i16 %40) #7, !srcloc !63
  br label %sw.epilog43

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl.i78 = getelementptr inbounds %struct.apci3120_private, ptr %1, i32 0, i32 8
  %44 = ptrtoint ptr %ctrl.i78 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ctrl.i78, align 4
  %conv6.i80 = and i16 %45, -16385
  store i16 %conv6.i80, ptr %ctrl.i78, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %ctrl.i78 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ctrl.i78, align 4
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #7
  %iobase.i82 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %49 = ptrtoint ptr %iobase.i82 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase.i82, align 4
  %and9.i83 = and i32 %50, 1048575
  %add10.i84 = or i32 %and9.i83, -18874368
  %51 = inttoptr i32 %add10.i84 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %51, i16 %48) #7, !srcloc !63
  %52 = ptrtoint ptr %iobase.i82 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iobase.i82, align 4
  %add.i86 = add i32 %53, 13
  %and.i87 = and i32 %add.i86, 1048575
  %add1.i88 = or i32 %and.i87, -18874368
  %54 = inttoptr i32 %add1.i88 to ptr
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %54) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  br label %sw.epilog43

sw.bb3:                                           ; preds = %entry
  %arrayidx4 = getelementptr i32, ptr %data, i32 1
  %56 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %data, i32 2
  %57 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 7, ptr %arrayidx5, align 4
  %ctrl = getelementptr inbounds %struct.apci3120_private, ptr %1, i32 0, i32 8
  %58 = ptrtoint ptr %ctrl to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %ctrl, align 4
  %60 = and i16 %59, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool.not = icmp eq i16 %60, 0
  br i1 %tobool.not, label %sw.bb3.if.end_crit_edge, label %if.then

sw.bb3.if.end_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 3, ptr %arrayidx4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb3.if.end_crit_edge
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %62 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %iobase, align 4
  %add = add i32 %63, 2
  %and9 = and i32 %add, 1048575
  %add10 = or i32 %and9, -18874368
  %64 = inttoptr i32 %add10 to ptr
  %65 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %64) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  %66 = and i16 %65, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool15.not = icmp eq i16 %66, 0
  br i1 %tobool15.not, label %if.end.sw.epilog43_crit_edge, label %if.then16

if.end.sw.epilog43_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog43

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx4, align 4
  %and18 = and i32 %68, -7
  %or20 = or i32 %and18, 4
  store i32 %or20, ptr %arrayidx4, align 4
  br label %sw.epilog43

sw.bb22:                                          ; preds = %entry
  %arrayidx23 = getelementptr i32, ptr %data, i32 1
  %69 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx23, align 4
  %71 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %71)
  %72 = icmp ult i32 %71, 6
  br i1 %72, label %switch.hole_check, label %sw.bb22.cleanup_crit_edge

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb22
  %switch.maskindex = trunc i32 %71 to i8
  %switch.shifted = lshr i8 53, %switch.maskindex
  %73 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %switch.lobit.not = icmp eq i8 %73, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.apci3120_timer_insn_config, i32 0, i32 %71
  %74 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %74)
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.gep106 = getelementptr inbounds [6 x i8], ptr @switch.table.apci3120_timer_insn_config.20, i32 0, i32 %71
  %75 = ptrtoint ptr %switch.gep106 to i32
  call void @__asan_load1_noabort(i32 %75)
  %switch.load107 = load i8, ptr %switch.gep106, align 1
  %ctrl.i90 = getelementptr inbounds %struct.apci3120_private, ptr %1, i32 0, i32 8
  %76 = ptrtoint ptr %ctrl.i90 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %ctrl.i90, align 4
  %conv6.i92 = and i16 %77, -16385
  store i16 %conv6.i92, ptr %ctrl.i90, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %78 = ptrtoint ptr %ctrl.i90 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %ctrl.i90, align 4
  %80 = tail call i16 @llvm.bswap.i16(i16 %79) #7
  %iobase.i94 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %81 = ptrtoint ptr %iobase.i94 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %iobase.i94, align 4
  %and9.i95 = and i32 %82, 1048575
  %add10.i96 = or i32 %and9.i95, -18874368
  %83 = inttoptr i32 %add10.i96 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %83, i16 %80) #7, !srcloc !63
  %84 = ptrtoint ptr %iobase.i94 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %iobase.i94, align 4
  %add.i98 = add i32 %85, 13
  %and.i99 = and i32 %add.i98, 1048575
  %add1.i100 = or i32 %and.i99, -18874368
  %86 = inttoptr i32 %add1.i100 to ptr
  %87 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %86) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %88 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %private, align 4
  %timer_mode.i = getelementptr inbounds %struct.apci3120_private, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %timer_mode.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %timer_mode.i, align 1
  %conv1.i102 = and i8 %91, -49
  %conv6.i103 = or i8 %conv1.i102, %switch.load107
  store i8 %conv6.i103, ptr %timer_mode.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %92 = ptrtoint ptr %timer_mode.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %timer_mode.i, align 1
  %94 = ptrtoint ptr %iobase.i94 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %iobase.i94, align 4
  %add.i105 = add i32 %95, 12
  %and8.i = and i32 %add.i105, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %96 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 %93) #7, !srcloc !61
  %mode28 = getelementptr inbounds %struct.apci3120_private, ptr %1, i32 0, i32 7
  %97 = ptrtoint ptr %mode28 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %mode28, align 2
  %99 = and i8 %98, -49
  %or34 = or i8 %99, %switch.load
  store i8 %or34, ptr %mode28, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  %100 = ptrtoint ptr %mode28 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %mode28, align 2
  %102 = ptrtoint ptr %iobase.i94 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %iobase.i94, align 4
  %add38 = add i32 %103, 14
  %and39 = and i32 %add38, 1048575
  %add40 = or i32 %and39, -18874368
  %104 = inttoptr i32 %add40 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %104, i8 %101) #7, !srcloc !61
  br label %sw.epilog43

sw.epilog43:                                      ; preds = %switch.lookup, %if.then16, %if.end.sw.epilog43_crit_edge, %sw.bb2, %sw.bb
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %105 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog43, %switch.hole_check.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %106, %sw.epilog43 ], [ -22, %sw.bb22.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3120_timer_insn_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %do_bits.i = getelementptr inbounds %struct.apci3120_private, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %do_bits.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %do_bits.i, align 4
  %shl.i = shl i8 %5, 4
  %or.i = or i8 %shl.i, 2
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %7, 13
  %and.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %or.i) #7, !srcloc !61
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i, align 4
  %add5.i = add i32 %10, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %11 = inttoptr i32 %add7.i to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %do_bits.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %do_bits.i, align 4
  %shl17.i = shl i8 %14, 4
  %or20.i = or i8 %shl17.i, 3
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i, align 4
  %add23.i = add i32 %16, 13
  %and24.i = and i32 %add23.i, 1048575
  %add25.i = or i32 %and24.i, -18874368
  %17 = inttoptr i32 %add25.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %or20.i) #7, !srcloc !61
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i, align 4
  %add29.i = add i32 %19, 4
  %and30.i = and i32 %add29.i, 1048575
  %add31.i = or i32 %and30.i, -18874368
  %20 = inttoptr i32 %add31.i to ptr
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %20) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  %22 = zext i16 %21 to i32
  %23 = zext i16 %12 to i32
  %24 = shl nuw i32 %23, 16
  %25 = or i32 %24, %22
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  %arrayidx = getelementptr i32, ptr %data, i32 %i.06
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.06, 1
  %28 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %29
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %29, %for.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apci3120_init_dma(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dmabuf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, 60
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %4, i32 18) #7, !srcloc !71
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %addon.i = getelementptr inbounds %struct.apci3120_private, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %addon.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addon.i, align 4
  %and.i = and i32 %8, 1048575
  %add1.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 15360) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %addon.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addon.i, align 4
  %add8.i = add i32 %11, 2
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %12 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 0) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %addon.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addon.i, align 4
  %and19.i = and i32 %14, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %15 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 15872) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %addon.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addon.i, align 4
  %add28.i = add i32 %17, 2
  %and29.i = and i32 %add28.i, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %18 = inttoptr i32 %add30.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 18) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %add6 = add i32 %20, 60
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %21 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 262148) #7, !srcloc !71
  %hw = getelementptr inbounds %struct.apci3120_dmabuf, ptr %dmabuf, i32 0, i32 1
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hw, align 4
  %24 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %addon.i33 = getelementptr inbounds %struct.apci3120_private, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %addon.i33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addon.i33, align 4
  %and.i34 = and i32 %27, 1048575
  %add1.i35 = or i32 %and.i34, -18874368
  %28 = inttoptr i32 %add1.i35 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 9216) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %conv6.i = trunc i32 %23 to i16
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv6.i) #7
  %30 = ptrtoint ptr %addon.i33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addon.i33, align 4
  %add8.i36 = add i32 %31, 2
  %and9.i37 = and i32 %add8.i36, 1048575
  %add10.i38 = or i32 %and9.i37, -18874368
  %32 = inttoptr i32 %add10.i38 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %32, i16 %29) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %addon.i33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addon.i33, align 4
  %and19.i39 = and i32 %34, 1048575
  %add20.i40 = or i32 %and19.i39, -18874368
  %35 = inttoptr i32 %add20.i40 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %35, i16 9728) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %shr.i = lshr i32 %23, 16
  %conv26.i = trunc i32 %shr.i to i16
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv26.i) #7
  %37 = ptrtoint ptr %addon.i33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addon.i33, align 4
  %add28.i41 = add i32 %38, 2
  %and29.i42 = and i32 %add28.i41, 1048575
  %add30.i43 = or i32 %and29.i42, -18874368
  %39 = inttoptr i32 %add30.i43 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 %36) #7, !srcloc !63
  %use_size = getelementptr inbounds %struct.apci3120_dmabuf, ptr %dmabuf, i32 0, i32 3
  %40 = ptrtoint ptr %use_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %use_size, align 4
  %42 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %addon.i45 = getelementptr inbounds %struct.apci3120_private, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %addon.i45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addon.i45, align 4
  %and.i46 = and i32 %45, 1048575
  %add1.i47 = or i32 %and.i46, -18874368
  %46 = inttoptr i32 %add1.i47 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %46, i16 22528) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %conv6.i48 = trunc i32 %41 to i16
  %47 = tail call i16 @llvm.bswap.i16(i16 %conv6.i48) #7
  %48 = ptrtoint ptr %addon.i45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %addon.i45, align 4
  %add8.i49 = add i32 %49, 2
  %and9.i50 = and i32 %add8.i49, 1048575
  %add10.i51 = or i32 %and9.i50, -18874368
  %50 = inttoptr i32 %add10.i51 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %50, i16 %47) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %51 = ptrtoint ptr %addon.i45 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %addon.i45, align 4
  %and19.i52 = and i32 %52, 1048575
  %add20.i53 = or i32 %and19.i52, -18874368
  %53 = inttoptr i32 %add20.i53 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %53, i16 23040) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %shr.i54 = lshr i32 %41, 16
  %conv26.i55 = trunc i32 %shr.i54 to i16
  %54 = tail call i16 @llvm.bswap.i16(i16 %conv26.i55) #7
  %55 = ptrtoint ptr %addon.i45 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %addon.i45, align 4
  %add28.i56 = add i32 %56, 2
  %and29.i57 = and i32 %add28.i56, 1048575
  %add30.i58 = or i32 %and29.i57, -18874368
  %57 = inttoptr i32 %add30.i58 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %57, i16 %54) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %1, align 4
  %add14 = add i32 %59, 56
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %60 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %60, i32 4194336) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %addon = getelementptr inbounds %struct.apci3120_private, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %addon to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %addon, align 4
  %add21 = add i32 %62, 4
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %63 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %63, i16 768) #7, !srcloc !63
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apci3120_set_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, i32 noundef %n_chan, ptr nocapture noundef readonly %chanlist) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_chan)
  %cmp54 = icmp sgt i32 %n_chan, 0
  br i1 %cmp54, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %chanlist, i32 %i.055
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %3, 16
  %and2 = and i32 %shr, 255
  %and3 = and i32 %3, 15
  %and4 = shl nuw nsw i32 %shr, 4
  %shl5 = and i32 %and4, 48
  %and6 = shl i32 %i.055, 8
  %shl7 = and i32 %and6, 3840
  %or = or i32 %and3, %shl7
  %or8 = or i32 %or, %shl5
  %4 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %5, i32 0, i32 1, i32 %and2
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %or9 = or i32 %or8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i53 = icmp slt i32 %7, 0
  %spec.select = select i1 %cmp.i53, i32 %or8, i32 %or9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %conv = trunc i32 %spec.select to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add = add i32 %10, 6
  %and10 = and i32 %add, 1048575
  %add11 = or i32 %and10, -18874368
  %11 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 %8) #7, !srcloc !63
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %n_chan
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %iobase13 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %12 = ptrtoint ptr %iobase13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase13, align 4
  %add14 = add i32 %13, 12
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %14 = inttoptr i32 %add16 to ptr
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %14) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  %n_chan.tr = trunc i32 %n_chan to i16
  %16 = shl i16 %n_chan.tr, 8
  %17 = add i16 %16, 3840
  %conv22 = and i16 %17, 3840
  %ctrl = getelementptr inbounds %struct.apci3120_private, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %ctrl to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv22, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ctrl, align 4
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %22 = ptrtoint ptr %iobase13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase13, align 4
  %and29 = and i32 %23, 1048575
  %add30 = or i32 %and29, -18874368
  %24 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 %21) #7, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n_chan)
  %cmp32 = icmp sgt i32 %n_chan, 1
  br i1 %cmp32, label %if.then34, label %for.end.if.end38_crit_edge

for.end.if.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %mode = getelementptr inbounds %struct.apci3120_private, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mode, align 2
  %27 = or i8 %26, 8
  store i8 %27, ptr %mode, align 2
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %for.end.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3120_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %.mask = and i16 %3, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask)
  %cmp = icmp eq i16 %.mask, 0
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3120_ao_ready(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %4 = and i16 %3, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3120_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @apci3120_driver, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_addi_apci_3120__236_1113_apci3120_driver_init6, !1, !"__initcall__kmod_addi_apci_3120__236_1113_apci3120_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/addi_apci_3120.c", i32 1113, i32 1}
!2 = !{ptr @__exitcall_apci3120_driver_exit, !1, !"__exitcall_apci3120_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/addi_apci_3120.c", i32 1115, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/addi_apci_3120.c", i32 1116, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/addi_apci_3120.c", i32 1117, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/addi_apci_3120.c", i32 1088, i32 17}
!12 = !{ptr @apci3120_driver, !13, !"apci3120_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/addi_apci_3120.c", i32 1087, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/addi_apci_3120.c", i32 127, i32 12}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/addi_apci_3120.c", i32 132, i32 12}
!18 = !{ptr @apci3120_boardtypes, !19, !"apci3120_boardtypes", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/addi_apci_3120.c", i32 125, i32 36}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/addi_apci_3120.c", i32 484, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @apci3120_interrupt._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @apci3120_interrupt._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/addi_apci_3120.c", i32 494, i32 3}
!30 = !{ptr @apci3120_interrupt._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @apci3120_interrupt._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/addi_apci_3120.c", i32 496, i32 3}
!34 = !{ptr @apci3120_interrupt._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @apci3120_interrupt._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/addi_apci_3120.c", i32 439, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @apci3120_interrupt_dma._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @apci3120_interrupt_dma._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/comedi/drivers/addi_apci_3120.c", i32 441, i32 3}
!43 = !{ptr @apci3120_interrupt_dma._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @apci3120_interrupt_dma._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @apci3120_ai_range, !46, !"apci3120_ai_range", i1 false, i1 false}
!46 = !{!"../drivers/comedi/drivers/addi_apci_3120.c", i32 101, i32 35}
!47 = !{ptr @apci3120_pci_driver, !48, !"apci3120_pci_driver", i1 false, i1 false}
!48 = !{!"../drivers/comedi/drivers/addi_apci_3120.c", i32 1107, i32 26}
!49 = !{ptr @apci3120_pci_table, !50, !"apci3120_pci_table", i1 false, i1 false}
!50 = !{!"../drivers/comedi/drivers/addi_apci_3120.c", i32 1100, i32 35}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2154594236}
!61 = !{i64 4644324}
!62 = !{i64 2154594621}
!63 = !{i64 4643901}
!64 = !{i64 4644101}
!65 = !{i64 2154595526}
!66 = !{i64 2154596811}
!67 = !{i64 2154575590}
!68 = !{i64 4644939}
!69 = !{i64 2154576285}
!70 = !{i64 2154578224}
!71 = !{i64 4644521}
!72 = !{i64 2154568580}
!73 = !{!"auto-init"}
!74 = !{i64 2154582783}
!75 = !{i64 2154583099}
!76 = !{i64 4644719}
!77 = !{i64 2154562803}
!78 = !{i64 2154583674}
!79 = !{i64 2154571543}
!80 = !{i64 2154588760}
!81 = !{i64 2154567287}
!82 = !{i64 2154567900}
!83 = !{i64 2154563115}
!84 = !{i64 2154563511}
!85 = !{i64 2154589587}
!86 = !{i32 0, i32 33}
!87 = !{i64 2154584300}
!88 = !{i64 2154584880}
!89 = !{i64 2154585392}
!90 = !{i64 2154557591}
!91 = !{i64 2154558088}
!92 = !{i64 2154558598}
!93 = !{i64 2154559111}
!94 = !{i64 2154585875}
!95 = !{i64 2154586365}
!96 = !{i64 2154586841}
!97 = !{i64 2154587655}
!98 = !{i64 2154590777}
!99 = !{i64 2154591787}
!100 = !{i64 2154592089}
!101 = !{i64 2154564071}
!102 = !{i64 2154564475}
!103 = !{i64 2154593014}
!104 = !{i64 2154593583}
!105 = !{i64 2154565043}
!106 = !{i64 2154565857}
!107 = !{i64 2154566177}
!108 = !{i64 2154566991}
!109 = !{i64 2154559674}
!110 = !{i64 2154560271}
!111 = !{i64 2154560942}
!112 = !{i64 2154561723}
!113 = !{i64 2154569294}
!114 = !{i64 2154570203}
!115 = !{i64 2154570524}
!116 = !{i64 2154588342}
!117 = !{i64 2154590274}
